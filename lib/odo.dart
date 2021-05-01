class odoo {
  String jsonrpc;
  Params params;

  odoo({this.jsonrpc, this.params});

  odoo.fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    params =
    json['params'] != null ? new Params.fromJson(json['params']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jsonrpc'] = this.jsonrpc;
    if (this.params != null) {
      data['params'] = this.params.toJson();
    }
    return data;
  }
}

class Params {
  String db;
  String login;
  String password;

  Params({this.db, this.login, this.password});

  Params.fromJson(Map<String, dynamic> json) {
    db = json['db'];
    login = json['login'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['db'] = this.db;
    data['login'] = this.login;
    data['password'] = this.password;
    return data;
  }
}
