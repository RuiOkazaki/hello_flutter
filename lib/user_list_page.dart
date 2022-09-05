import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql/client.dart';

class UserListPage extends StatefulWidget {
  // constructor
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserListState();
}

class _UserListState extends State<UserListPage> {
  // state
  List users = [];

  void callUsersQuery() async {
    final endPoint = dotenv.env["GRAPHQL_ENDPOINT"];

    // ただの文字列をリンクとして認識させる
    final linkHttp = HttpLink('$endPoint/query');

    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: linkHttp,
    );

    // row String
    const String getUsersQuery = r'''
      query userListPage {
        userList {
          name
          id
        }
      }
    ''';

    final QueryOptions options = QueryOptions(document: gql(getUsersQuery));

    final QueryResult result = await client.query(options);

    try {
      if (result.hasException) {
        throw FormatException(result.exception.toString());
      }

      final resultData = result.data;
      if (resultData == null) {
        throw const FormatException('result.data is null');
      }

      setState(() {
        users = resultData['userList'];
      });
    } catch (e) {
      print(e);
    }
  }

  Widget _buildChild() {
    if (users.isNotEmpty) {
      return Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text(users[index]['name']),
                    );
                  })),
        ],
      );
    }

    return Column(
      children: [
        IconButton(
            onPressed: () {
              callUsersQuery();
            },
            icon: const Icon(Icons.sync)),
        const Text('データを取得してください'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UserListPage'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(child: _buildChild()));
  }
}
