class UsersList {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<Data> data;

  UsersList({this.page, this.perPage, this.total, this.totalPages, this.data});

  factory UsersList.fromJson(Map<String, dynamic> parsedJson) {

    var dataJson = parsedJson['data'] as List;
    List<Data> dataList = dataJson.map((i) => Data.fromJson(i)).toList();

    return UsersList(
      page: parsedJson['page'],
      perPage: parsedJson['perPage'],
      total: parsedJson['total'],
      totalPages: parsedJson['totalPages'],
      data: dataList,
    );
  }
}

class Data {
  final int id;
  final String firstName;
  final String lastName;
  final String avatar;

  Data({this.id, this.firstName, this.lastName, this.avatar});

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    return Data(
      id: parsedJson['id'],
      firstName: parsedJson['firstName'],
      lastName: parsedJson['lastName'],
      avatar: parsedJson['avatar'],
    );
  }
}
