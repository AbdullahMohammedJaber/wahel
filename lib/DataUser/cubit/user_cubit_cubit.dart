import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'user_cubit_state.dart';

class UserCubitCubit extends Cubit<UserCubitState> {
  UserCubitCubit() : super(UserCubitInitial());

  static UserCubitCubit get(context) => BlocProvider.of(context);

// login user into firebase
  void loginFirebaseUser({
    required String email,
    required String password,
  }) {
    emit(LoginUserLoaded());
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      emit(LoginUserDone());
    }).catchError((onError) {
      print(onError.toString());
      emit(LoginUserError());
    });
  }

  // sign up user & create new account in firebase

  void signupFirebase({
    required String email,
    required String password,
    required String phone,
    required String name,
  }) {
    emit(CreateAccountUserLoaded());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      FirebaseFirestore.instance.collection("User").doc(value.user!.uid).set({
        'id': value.user!.uid,
        'name': name,
        'phone': phone,
        'email': email,
        'password': password,
        'active': "yes",
      }).then((value) {
        emit(CreateAccountUserDone());
      });
    }).catchError((onError) {
      emit(CreateAccountUserError());
    });
  }
}
