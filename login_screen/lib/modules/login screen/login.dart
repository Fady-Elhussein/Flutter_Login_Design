import 'package:flutter/material.dart';
import 'package:login_2/shared/components/component.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool passwordvisable=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defulttextformfiled(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      text: 'Email Address',
                      prefixIcon: Icon(Icons.email),
                    validator: (value)
                    {
                      if(value == null || value.isEmpty)
                      {
                        return 'Field is required.';
                      }
                      return null;

                    },
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  defulttextformfiled(
                    validator: (value)
                    {
                      if(value == null || value.isEmpty)
                      {
                        return 'Field is required.';
                      }
                      return null;

                    },
                    controller: passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    text: "Password",
                    prefixIcon: Icon(Icons.lock),
                    obscureText: passwordvisable,
                    suffixIcon:IconButton(onPressed: (){
                      setState((){
                    if(passwordvisable==true)
                      {
                        passwordvisable=false;
                      }
                    else
                      {
                        passwordvisable=true;
                      }
                    });},
                        icon:passwordvisable? Icon(Icons.visibility_off):Icon(Icons.visibility)),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  defultButton(
                    Background: Colors.red,
                    width: double.infinity,
                    function: () {
                      if (formkey.currentState!.validate()) {
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                      }
                    },
                    text: 'Login',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\tt  have an account?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Design By :'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Husseiny',
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
