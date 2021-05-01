import 'dart:io';

import 'package:flutter_app_apitest2/TestModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'odo.dart';


class FetchApi {

  Future < responseOdoo > fetchTest(odoo body) async{
    var _odoo = json.encode(body.toJson());
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/json",
    };
    http.Response response = await http.post(Uri.http('vmi403182.contaboserver.net:8014', 'get_partners2'), body:_odoo, headers: headers);


    if( response.statusCode == 200 ) {
      var body = jsonDecode(response.body);

      //List <responseOdoo> stories = [];

      /* for(var item in body) {
        stories.add(TestModel.fromJson(item));
      }
      return stories;
    } */

      responseOdoo reponse = responseOdoo.fromJson(json.decode(response.body));
      return reponse;
    }
    return null;

  }
}