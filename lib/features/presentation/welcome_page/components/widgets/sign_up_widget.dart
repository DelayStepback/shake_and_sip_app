import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors.dart';
import '../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../bloc/auth_bloc/auth_event.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key, required this.error});

  final String error;

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isValidEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I don't think we've seen you",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            widget.error,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Container(
            width: 350.w,
            height: 360.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(20).r),
                color: MyColor.deepBlack),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (!isValidEmail(value)) {
                          return 'Wrong email format';
                        }
                        return null;
                      },
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0).r,
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Email",
                        fillColor: Colors.white70,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0).r,
                        ),
                        filled: true,
                        hintStyle:
                            TextStyle(color: Colors.grey[800], fontSize: 16.r),
                        hintText: "Password",
                        fillColor: Colors.white70,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.loadSignIn());
                    },
                    child: Text(
                      'Sign In',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        context.read<AuthBloc>().add(AuthEvent.signUpRequested(
                            email: _emailController.text,
                            password: _passwordController.text));
                      }
                    },
                    child: Container(
                      width: 100.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0).r,
                        color: MyColor.darkWhite,
                      ),
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
