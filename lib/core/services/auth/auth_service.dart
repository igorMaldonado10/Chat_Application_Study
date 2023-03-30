import 'dart:io';

import 'package:chat/core/models/chat_user.dart';
import 'package:chat/core/services/auth/auth_firebase_service.dart';

// Por ser uma classe abstrata você não consegue instanciar ela, mas você consegue instanciar classes que são subtipos, implementações dessa classe abstrata
abstract class AuthService {
  // usuário corrente ou usuário logado
  ChatUser? get currentUser;

  Stream<ChatUser?> get userChanges;

  Future<void> signup(
    String name,
    String email,
    String password,
    File? image,
  );

  Future<void> login(String email, String password);

  Future<void> logout();

// construtores factory: faz com que você consiga retorn uma subclasse, por exemplo da classe que você está chamando o construtor sem que ninguém saiba. Uma forma muito boa de retornar as implementações e não a interfáce, já que no caso, está é uma classe abstrata, ela apresenta apenas a interfáce, de como seria um serviço de authentication, sendo que por ser abstract ela não pode ser criada instância
  factory AuthService() {
    // return AuthMockService();
    return AuthFirebaseService();
  }
}
