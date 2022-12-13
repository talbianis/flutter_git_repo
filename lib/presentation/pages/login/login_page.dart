import 'package:flutter/material.dart';

import '../../../core/strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
          children: [
            // google
            _loginWithGoogleButton(),
            // facebook
            _loginWithFacebookButton(),
          ],
        ),
        // terms and conditions
        _termsAndConditions(),
        
      ],),
    );
  }
}



_emailTextField()=>
  TextField(
    decoration: InputDecoration(
      hintText: 'Email',
      border: OutlineInputBorder(),
    ),
  );


_passwordTextField()=>TextField(
  decoration: InputDecoration(
    hintText: 'Password',
    border: OutlineInputBorder(),
  ),
);

_loginButton()=>ElevatedButton(
  onPressed: (){},
  child: Text('Login'),
);


_forgotPassword()=>TextButton(
  onPressed: (){},
  child: Text('Forgot Password'),
);


_registerButton()=>TextButton(
  onPressed: (){},
  child: Text('Register'),
);

_loginWithGoogleButton()=>ElevatedButton(
  onPressed: (){},
  child: Text('Login with Google'),
);


_loginWithFacebookButton()=>ElevatedButton(
  onPressed: (){},
  child: Text('Login with Facebook'),
);

_termsAndConditions()=>TextButton(
  onPressed: (){},
  child: Text('Terms and Conditions')
  );