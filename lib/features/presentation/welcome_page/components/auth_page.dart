import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:internet_connectivity_checker/internet_connectivity_checker.dart';
import 'package:shake_and_sip_app/features/presentation/loading_screen/loading_screen.dart';
import 'package:shake_and_sip_app/features/presentation/welcome_page/components/widgets/sign_in_widget.dart';
import 'package:shake_and_sip_app/features/presentation/welcome_page/components/widgets/sign_up_widget.dart';
import '../../../../../utils/colors.dart';
import '../../bloc/auth_bloc/auth_bloc.dart';
import 'loading_page.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    return state.when(
      loading: () => const LoadingPage(error: ''),
      authenticated: () {
        return ConnectivityBuilder(
          builder: (ConnectivityStatus status) {
            if (status == ConnectivityStatus.online) {
              return Center(
                child: GestureDetector(
                  onTap: () => context.go('/'),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20)).r,
                      color: MyColor.darkWhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(60.0).r,
                      child: Text(
                        'Go to Cocktails',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                ),
              );
            }
            if (status == ConnectivityStatus.offline) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("check your internet connection ;c",
                        style: Theme.of(context).textTheme.displayLarge),
                    Text("but you can check your saved favourite's cocktails",
                        style: Theme.of(context).textTheme.bodySmall),
                    GestureDetector(
                      onTap: () => {context.goNamed('allFavLostConnectivity')},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)).r,
                          color: MyColor.deepBlack,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0).r,
                          child: Text("Favourite",
                              style: Theme.of(context).textTheme.titleLarge),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const LoadingScreen(
                text: 'Checking your connection...',
              );
            }
          },
        );
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
      },
    );
  }
}
