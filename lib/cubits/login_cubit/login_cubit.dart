import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);


//*login function
  void userLogin ({
    required String email,
    required String password,
  }) async{
    emit(LoginLoadingState());
FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
).then((value) {
  emit(LoginSuccessState());
}).catchError((error){
  emit(LoginErrorState(error.toString()));
});
  }

  //*change password visibility
  bool isPassword = true;
  IconData suffix = Icons.visibility_outlined;
  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(LoginChangePasswordVisibilityState());
  }

  //*login with google
  void loginWithGoogle() {
    emit(LoginLoadingState());
    FirebaseAuth.instance.signInWithPopup(GoogleAuthProvider()).then((value) {
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
    });
  }


}
