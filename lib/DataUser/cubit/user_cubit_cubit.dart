import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'user_cubit_state.dart';

class UserCubitCubit extends Cubit<UserCubitState> {
  UserCubitCubit() : super(UserCubitInitial());

  static UserCubitCubit get(context) => BlocProvider.of(context);



  void loginFirebaseUser({
    required String email,
    required String password,
  }) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {

    });
  }
}
