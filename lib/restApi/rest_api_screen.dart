import 'package:flutter/material.dart';
import 'package:state_management/restApi/rest_api_services.dart';

class RestApiScreen extends StatefulWidget {
  const RestApiScreen({Key? key}) : super(key: key);

  @override
  State<RestApiScreen> createState() => _RestApiScreenState();
}

class _RestApiScreenState extends State<RestApiScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest Api'),
        actions: [
          IconButton(
            onPressed: () async {
              await RestApiDemoServices().updateUser(
                fullName: 'ram prasad',
                password: 'ram',
                id: '-NG-T_tKdMPbCfGUKEdm',
              );
              setState(() {});
            },
            icon: Icon(
              Icons.edit,
            ),
          ),
          IconButton(
            onPressed: () async {
              await RestApiDemoServices().deleteUser(
                id: '-NG-T_tKdMPbCfGUKEdm',
              );
              setState(() {});
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await RestApiDemoServices().storeUser(fullName: 'Suren Yogi', password: 'suren12345');
          setState(() {});
        },
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: RestApiDemoServices().getAllUsers(),
        builder: (_, snapStore) {
          if (snapStore.hasData) {
            if (snapStore.data != null) {
              print('data from api: ${snapStore.data}');
            }
          }
          if (snapStore.hasError) {
            print('error in api : ${snapStore.error}');
          }
          return Center(
            child: Text('data here'),
          );
        },
      ),
    );
  }
}
