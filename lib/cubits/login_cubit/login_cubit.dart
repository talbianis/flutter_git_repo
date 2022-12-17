import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';

import '../../core/const.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);



TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
//*login function
  void userLogin({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
    });
  }

  //*change password visibility
  bool isPassword = false;

//  cubit.isPassword
//           ? FaIcon(FontAwesomeIcons.eyeSlash, color: PrimaryColor)
//           : FaIcon(FontAwesomeIcons.eye, color: PrimaryColor),

//     );
  Widget suffixIcon = FaIcon(FontAwesomeIcons.eyeSlash, color: PrimaryColor);

  Widget? changePasswordVisibility() {
    isPassword = !isPassword;
    return suffixIcon = isPassword
        ? FaIcon(FontAwesomeIcons.eyeSlash, color: PrimaryColor)
        : FaIcon(FontAwesomeIcons.eye, color: PrimaryColor);
    emit(LoginChangePasswordVisibilityState());
  }

  //!login with google
  void loginWithGoogle() {
    emit(LoginLoadingState());
    FirebaseAuth.instance.signInWithPopup(GoogleAuthProvider()).then((value) {
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
    });
  }

  //!login with facebook
  
}
