import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

//* register with email and password
  void userRegister({
    required email,
    required password,
    required name,
  }) async {
    emit(RegisterLoadingState());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      emit(RegisterSuccessState());
    }).catchError((error) {
      emit(RegisterErrorState(error));
    });
  }

//! register with google account
  void registerWithGoogle() async {
    emit(RegisterLoadingState());

//FirebaseAuth.instance.
  }

//!register with facebook account
  void registerWithFacebook() async {}
}
