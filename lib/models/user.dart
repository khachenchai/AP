class User {
  late String id;
  late String name;
  late String email;
  late String password;
  late List? orderLists;

  User({required this.id, required this.name, required this.email, required this.password, this.orderLists});

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'email' : email,
    'password' : password,
    'orderLists' : orderLists
  };

  static User fromJson(Map<String, dynamic> json) => User(
    id: json['id'], 
    name: json['name'], 
    email: json['email'], 
    password: json['password']
  );
}