
class AuthModel {
  String msg;
  int status;
  Data data;
  bool error;

  AuthModel({
    required this.msg,
    required this.status,
    required this.data,
    required this.error,
  });

}

class Data {
  int id;

  Data({
    required this.id,
  });

}