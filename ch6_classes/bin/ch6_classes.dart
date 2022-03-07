void main() {
  ///cascade operator(..) semicolon on last line
  final user = User()
    ..name = 'bhavya'
    ..id = 27;
  print(user.toJson());
}

class User {
  int id = 0;
  String name = '';

  /// object serialization
  String toJson() {
    return '{"id":$id,"name":$name}';
  }

  /// override instance of 'user'
  /* @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }*/
}
