import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/colors.dart';
import '../bloc/auth_bloc/auth_bloc.dart';
import '../bloc/auth_bloc/auth_event.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.deepBlack,
      body: SafeArea(child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${FirebaseAuth.instance.currentUser?.email}', style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,),
              SizedBox(height: 10.h,),
              const _ChangePasswordButton(),
              SizedBox(height: 20.h,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _HomeButton(),
                  _LogoutButton(),
                ],
              )
            ]
        ),
      )),
    );
  }
}

class _ChangePasswordButton extends StatefulWidget {
  const _ChangePasswordButton({super.key});

  @override
  State<_ChangePasswordButton> createState() => _ChangePasswordButtonState();
}

class _ChangePasswordButtonState extends State<_ChangePasswordButton> {

  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        showModalBottomSheet(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            backgroundColor: MyColor.darkWhite,

            context: context, builder: (context) {
          return
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom).h ,
              child: SizedBox(
                height: 300.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Change password', style: TextStyle(
                        color: MyColor.deepBlack,
                        fontSize: 18.sp,
                        fontFamily: 'Inter'),),
                    TextFormField(
                      autofocus: true,
                      controller: _passwordController,
                      style: TextStyle(
                        color: const Color(0xFF171010),
                        fontSize: 16.sp,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'new password',
                        labelStyle:  TextStyle(
                          color: const Color(0xFF4E4343),
                          fontSize: 13.sp,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        context.read<AuthBloc>().add(AuthEvent.changePassword(password: _passwordController.text));
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Password has been changed')));
                        context.goNamed('home');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: MyColor.white,
                            borderRadius: const BorderRadius
                                .all(Radius.circular(10))
                                .r),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0).r,
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                                color: MyColor.deepBlack,
                                fontSize: 18.sp,
                                fontFamily: 'Inter'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );

        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: MyColor.white,
            borderRadius: const BorderRadius
                .all(Radius.circular(10))
                .r),
        child: Padding(
          padding: const EdgeInsets.all(8.0).r,
          child: Text(
            'Change password',
            style: TextStyle(
                color: MyColor.deepBlack,
                fontSize: 18.sp,
                fontFamily: 'Inter'),
          ),
        ),
      ),
    );
  }
}


class _LogoutButton extends StatelessWidget {
  const _LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<AuthBloc>().add(const AuthEvent.signOut());
        context.goNamed('welcome');
      },
      child: Container(
        decoration: BoxDecoration(
            color: MyColor.white,
            borderRadius: const BorderRadius
                .all(Radius.circular(10))
                .r),
        child: Padding(
          padding: const EdgeInsets.all(8.0).r,
          child: Text(
            'Logout',
            style: TextStyle(
                color: Colors.red,
                fontSize: 18.sp,
                fontFamily: 'Inter'),
          ),
        ),
      ),
    );
  }
}


class _HomeButton extends StatelessWidget {
  const _HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed('home');
      },
      child: Container(
        decoration: BoxDecoration(
            color: MyColor.white,
            borderRadius: const BorderRadius
                .all(Radius.circular(10))
                .r),
        child: Padding(
          padding: const EdgeInsets.all(8.0).r,
          child: Text(
            'Home',
            style: TextStyle(
                color: Colors.green,
                fontSize: 18.sp,
                fontFamily: 'Inter'),
          ),
        ),
      ),
    );
  }
}

