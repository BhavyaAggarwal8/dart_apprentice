void main() {
  final user = User(id: 42, name: 'Ray');
  //final user = User();
  print(user);

  /// named constructor calling
  final anonymousUser = User.anonymous();
  print(anonymousUser);

  ///cascade operator(..) semicolon on last line
  /*  ..name = 'bhavya'
    ..id = 27;
  print(user.toJson());*/
}

class User {
  ///short-form constructor
  //User(this.id, this.name) {}
  User({this.id = 0, this.name = 'anonymous'});

  /// named constructor
  /*User.anonymous() {
    id = 0;
    name = 'anonymous';
  }*/
  /// forwarding constructor
  // User.anonymous() : this(0, 'anonymous');
  User.anonymous() : this();
  int id; // error without default values . use late keyword ch7
  String name;

  /// object serialization
  /*String toJson() {
    return '{"id":$id,"name":$name}';
  }*/

  /// override instance of 'user'
  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
