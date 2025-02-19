class Accountmodels {
  final String email;
  final String name;
  final String phone;

 const Accountmodels({required this.email, required this.name, required this.phone});
  factory Accountmodels.fromjson(Map<String,dynamic> data) {
    return Accountmodels(
        email: data['email'], name: data['name'], phone: data['phone']);
  }
}
