import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/const.dart';
import 'package:flutter_application_1/cubits/login_cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/strings.dart';

class LoginPage extends StatelessWidget {
 LoginPage({super.key});

  @override
  //email and password controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => LoginCubit())
      ,child: BlocConsumer<LoginCubit,LoginState>(
        listener: (context, state) => {},
        builder: (context, state)  => Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(PaddingS),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //*logo
            // title
            Text("$AppString.appName"),
            // login text
            Text('Login'),
            // email text field
            _emailTextField(),
            // password text field
            _passwordTextField(),
            // login button
            _loginButton(),
            // forgot password
            _forgotPassword(),
            // sign up
            _registerButton(),
            // social media login
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // google
                _loginWithGoogleButton(),
                // facebook
                _loginWithFacebookButton(),
              ],
            ),
            // terms and conditions
            _termsAndConditions(),
          ],
        ),
      ),
    )));
  }
}

_emailTextField() => TextField(
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(),
      ),
    );

_passwordTextField() => TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(),
      ),
    );

_loginButton() => ElevatedButton(
      onPressed: () {},
      child: Text('Login'), 
    );

_forgotPassword() => TextButton(
      onPressed: () {},
      child: Text('Forgot Password'),
    );

_registerButton() => TextButton(
      onPressed: () {},
      child: Text('Register'),
    );

_loginWithGoogleButton() => ElevatedButton(
      onPressed: () {},
      child: Text('Login with Google'),
    );

_loginWithFacebookButton() => ElevatedButton(
      onPressed: () {},
      child: Text('Login with Facebook'),
    );

_termsAndConditions() =>
    TextButton(onPressed: () {}, child: Text('Terms and Conditions'));
