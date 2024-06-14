class UsersModel{
  final String id;
  final String fname;
  final String lname;
  final String birthday;
  final String email;
  final String password;

  //final String birthday;

  UsersModel({
    required this.id,
    required this.fname,
    required this.lname,
    required this.birthday,
    required this.email,
    required this.password,
    //required this.birthday
});
  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
      id: json['id'],
      fname: json['fname'],
      lname: json['lname'],
      birthday: json['birthday'],
      email: json['email'],
      password: json['password'],);

  Map<String, dynamic> toJson() =>{
    'id' : id,
    'fname': fname,
    'lname': lname,
    'birthday': birthday,
    'email': email,
    'password': password,
    //'birthday': birthday,
  };

}
