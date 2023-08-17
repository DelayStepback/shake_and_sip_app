import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository{
  final _firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp({required String email, required String password}) async{
    try{
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

    }on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        throw Exception('This password is too weak');
      } else if(e.code == 'email-already-in-use'){
        throw Exception('Account already exists for that email');
      }
    }

    catch(e){
      throw Exception(e.toString());
    }
  }

}