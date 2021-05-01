import 'package:flutter/material.dart';
import 'package:flutter_app_apitest2/FetchApi.dart';
import 'package:flutter_app_apitest2/odo.dart';

import 'TestModel.dart';

class Test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {

    FetchApi fetchApi = FetchApi();

    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: FutureBuilder(
        future: fetchApi.fetchTest(getodoo()),
        builder: (context, snapshot) {
          responseOdoo stories = snapshot.data;

          return ListView.builder(itemCount: stories.result.response.length, itemBuilder: (context, index) {
            return Text(stories.result.response[index].name);
          });
        },
      ),
    );
  }

  odoo getodoo() {
    odoo body= odoo();
    body.jsonrpc= "2.0";
    Params _params  = Params();
    _params.db = "Namaa_25_2";
    _params.login = "admin";
    _params.password= "namaa123";
    body.params= _params;

    return body;
  }
}