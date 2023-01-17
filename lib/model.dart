// ignore: camel_case_types
class chatListModel {
  late String username;
  late String userimg;
  late String msg;
  late String date;

  chatListModel(
      {required this.username,
      required this.userimg,
      required this.msg,
      required this.date});
}

// ignore: camel_case_types
class statusModel {
  late String username;
  late String statusimg;
  late String date;

  statusModel(
      {required this.username, required this.statusimg, required this.date});
}

// ignore: camel_case_types
class callListModel {
  late String username;
  late String userimg;
  late String date;

  callListModel({
    required this.username,
    required this.userimg,
    required this.date,
  });
}
