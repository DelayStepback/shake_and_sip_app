import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_event.dart';

import '../../data/cocktail/model/cocktail.dart';
import '../bloc/cocktails_bloc.dart';
import '../bloc/cocktails_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF024D4D),
        body: _BodyHomePage());
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
          List<Cocktail>? cocktailsList = state.allCocktails;
          int? cocktailsCount = cocktailsList?.length;
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16).w,
            itemCount: cocktailsCount!,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [Center(
                  child: Column(

                    children: [

                      Text(cocktailsList![index].title, style: Theme.of(context).textTheme.titleMedium,),
                      SizedBox(height: 10.h),
                      SizedBox(
                        width: 100.r,
                        height: 100.r,
                        child: Image.network(
                          cocktailsList[index].image,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0).r,
                        child: Text(cocktailsList![index].difficulty, style: Theme.of(context).textTheme.bodySmall,),
                      ),

                    ],
                  ),
                ),
                Positioned(
                    top: 0.h,
                    right: 10.r,
                    child: Icon(Icons.star),width: 24.w, height: 24.h,),
                ],
              );
            }, separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 30,);
          },
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
