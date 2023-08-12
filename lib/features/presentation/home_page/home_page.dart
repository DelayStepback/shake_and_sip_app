import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_event.dart';
import 'package:shake_and_sip_app/utils/colors.dart';

import '../../data/cocktail/model/cocktail.dart';
import '../bloc/cocktails_bloc.dart';
import '../bloc/cocktails_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF024D4D), body: _BodyHomePage());
  }
}

class _BodyHomePage extends StatelessWidget {
  const _BodyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CocktailsBloc, CocktailsState>(
      builder: (context, state) {
        if (state is CocktailsLoadingState) {
          BlocProvider.of<CocktailsBloc>(context).add(LoadCocktailsEvent());
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CocktailsLoadedState) {
          return SingleChildScrollView(

            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 12).w,
              itemCount: state.allCocktails!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                  color: MyColor.white,

                  ),
                  width: 365.r,
                  height: 103.r,
                  child: Padding(
                    padding: EdgeInsets.all(11.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                              size: Size.fromRadius(40.r),
                              child: Image.network(state.allCocktails![index].image,
                                  fit: BoxFit.fitWidth)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.allCocktails![index].title,
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'difficulty: ${state.allCocktails![index].difficulty}',
                                      style: Theme.of(context).textTheme.titleMedium,
                                    ),
                                    Text(state.allCocktails![index].favourite.toString()),
                                    GestureDetector(
                                      onTap: () => {
                                      context.read<CocktailsBloc>().add(FavouriteCocktailsEvent(cocktail: state.allCocktails![index], cocktails: state.allCocktails!))
                                    },
                                      child: Icon(
                                        state.allCocktails![index].favourite! ?
                                         Icons.favorite : Icons.favorite_border_rounded,
                                        color: MyColor.iconsColor,
                                        size: 24.r,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 30,
                );
              },
            ),

          );
        }
        if (state is CocktailsErrorState) {
          return Center(
            child: Text(state.error.toString()),
          );
        }
        return Text('null state');
      },
    );
  }
}
