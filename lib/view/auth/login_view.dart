import 'package:event_club_app/Utils/utils.dart';
import 'package:event_club_app/res/components/round_button.dart';
import 'package:event_club_app/view/admin/admin_pages/admin_dashboard_view.dart';
import 'package:event_club_app/view/admin/admin_pages/total_view.dart';
import 'package:event_club_app/view/auth/forget_password.dart';
import 'package:event_club_app/view/auth/register_view.dart';
import 'package:event_club_app/view/bottom_bar/bottom_tab_view.dart';
import 'package:event_club_app/view/home/home_view.dart';
import 'package:event_club_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> _login(BuildContext context) async {
    setState(() {
      loading = true;
    });
    final String username = _emailController.text;
    final String password = _passwordController.text;

    if (username == 'admin@gmail.com' && password == 'admin') {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print(username);
      await prefs.setString('username', username);

      await prefs.setString('role', 'admin');

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AdminDashboardView()),
      );
    } else if (username == 'user@gmail.com' && password == '123456') {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('username', username);
      await prefs.setString('role', 'user');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomBarView()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid credentials')),
      );
    }
  }

  @override
  // void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final AuthViewModel viewModel = AuthViewModel();
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'E-Mail',
                                  // helperText: 'Enter email eg: xyz@gmail.com',
                                  prefixIcon: Icon(Icons.email),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: _passwordController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  // helperText: 'Enter email eg: xyz@gmail.com',
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  RoundButton(
                    title: 'Login',
                    loading: loading,
                    onPress: () {
                      print('logining.......');
                      if (_formKey.currentState!.validate()) {
                        _login(context);
                      }
                    },
                  ),

                  // RoundButton(
                  //     title: 'Login',
                  //     loading: authViewModel.loading,
                  //     onPress: () {
                  //       if (_emailController.text.isEmpty) {
                  //         Utils.flushBarErrorMessage(
                  //             'Please enter email', context);
                  //       } else if (_passwordController.text.isEmpty) {
                  //         Utils.flushBarErrorMessage(
                  //             'Please enter password', context);
                  //       } else if (_passwordController.text.length < 6) {
                  //         Utils.flushBarErrorMessage(
                  //             'Please enter 6 digit password', context);
                  //       } else {
                  //         Map data = {
                  //           "email": 'developer@gmail.com',
                  //           "password": '123456',
                  //         };
                  //         bool isLoggedIn = viewModel.login(
                  //             _emailController.text, _passwordController.text);
                  //         if (isLoggedIn) {
                  //           Utils.flushBarErrorMessage(
                  //               'Login Successful', context);
                  //         } else {
                  //           Fluttertoast.showToast(
                  //               msg: 'Invalid Username or Password');
                  //         }
                  //
                  //         print('Api hit');
                  //       }
                  //     }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()));
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Didn't have an account?",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterView()));
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ]),
                ],
              ),
            )));
  }
}
