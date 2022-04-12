import 'package:counter_app/Model/User.dart';
import 'package:get/get.dart';

class UserProvider extends GetConnect {
  // Get all user
  Future<Response> getAllUser() => get('https://6141b00e357db50017b3dc0c.mockapi.io/users');
  //get user
  Future<Response> getUser(int id) => get('https://6141b00e357db50017b3dc0c.mockapi.io/users/$id');
  //Post user
  Future<Response> postUsers() {
    final data = User(name: "pvDu", age: 12).toJson();
    return post('https://6141b00e357db50017b3dc0c.mockapi.io/users', data);
  }
  //put user
  Future<Response> putUser(int id) {
    final data = User(name: "aaaa", age: 1).toJson();
    return put('https://6141b00e357db50017b3dc0c.mockapi.io/users/${id}', data);
  }
  //delete user
  Future<Response> deleteUser(int id) {
    return delete('https://6141b00e357db50017b3dc0c.mockapi.io/users/${id}');
  }
}