import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/const.dart';
import 'package:flutter_application_1/cubits/login_cubit/login_cubit.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:flutter_application_1/presentation/widgets/textfields.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/strings.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  double _screenWidth = WidgetsBinding.instance.window.physicalSize.width;
  @override
  //email and password controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return BlocProvider(
        create: ((context) => LoginCubit()),
        child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) => {},
            builder: (context, state) => Scaffold(
                  body: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(PaddingS),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //*logo
                          // title
                          // login text
                          Spacer(),
                          Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "${AppString.loginText}",
                            style: kBodyStyle,
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Divider(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  thickness: 2,
                                  indent: 10,
                                ),
                                Text('Or'),
                                Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                              ],
                            ),
                          ),
                          // email text field

                          _emailTextField(),
                          // password text field
                          _passwordTextField(),

                          // forgot password
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              _forgotPassword(),
                            ],
                          ),
                          // login button
                          _loginButton(),

                          // sign up
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(children: [
                              Text('Dont have an account?'),
                              _registerButton(),
                            ]),
                          ),

                          // terms and conditions
                          _termsAndConditions(),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                )));
  }
}

_emailTextField() => MyTextField(hintText: 'Email');

_passwordTextField() => MyTextField(
      hintText: 'Password',
      obscureText: true,
    );

_loginButton() => MyButton(
      bText: 'Login',
      width: sWidth,
    );

_forgotPassword() => TextButton(
      onPressed: () {},
      child: Text('Forgot Password?'),
    );

_registerButton() => TextButton(
      onPressed: () {},
      child: Text('Register !'),
    );

_loginWithGoogleButton() => Container(
      decoration: BoxDecoration(
        color: PrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
              width: WidgetsBinding.instance.window.physicalSize.width * 0.25,
              height: SBheight,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.google, color: Colors.black),
                  Text(
                    '   Google',
                    style: kBodyStyleBold(),
                  ),
                ],
              ))),
        ),
      ),
    );

_loginWithFacebookButton() => Container(
      decoration: BoxDecoration(
        color: PrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
              width: sWidth * 0.25,
              height: SBheight,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.black,
                    size: 26,
                  ),
                  Text(
                    '   Facebook',
                    style: kBodyStyleBold(),
                  ),
                ],
              ))),
        ),
      ),
    );

_termsAndConditions() =>
    TextButton(onPressed: () {}, child: Text('Terms and Conditions'));
