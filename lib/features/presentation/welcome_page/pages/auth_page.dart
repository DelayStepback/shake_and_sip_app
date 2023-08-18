import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/presentation/welcome_page/pages/loading_page.dart';
import 'package:shake_and_sip_app/features/presentation/welcome_page/pages/widgets/sign_in_widget.dart';
import 'package:shake_and_sip_app/features/presentation/welcome_page/pages/widgets/sign_up_widget.dart';
import '../../../../../utils/colors.dart';
import '../../bloc/auth_bloc/auth_bloc.dart';
class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    return state.when(
        loading: () =>  const LoadingPage(error: ''),
        authenticated: () {
          return Center(
              child: GestureDetector(
                onTap: () => context.go('/'),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: MyColor.darkWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Text(
                      'Go to Cocktails',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                ),
              ));
        },
        unAuthenticatedSignUp: () => const SignUpWidget(
          error: '',
        ),
        unAuthenticatedSignIn: () => const SignInWidget(
          error: '',
        ),
        error: (error) {
          return SignUpWidget(
            error: error,
          );
        });
  }
}