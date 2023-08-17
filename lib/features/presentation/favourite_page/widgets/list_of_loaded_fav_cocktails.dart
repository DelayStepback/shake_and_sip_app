import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_fav_bloc/cocktails_fav_event.dart';
import 'package:shake_and_sip_app/utils/colors.dart';
import '../../../data/cocktail/model/cocktail.dart';
import '../../bloc/cocktails_fav_bloc/cocktails_fav_bloc.dart';
import '../../loading_screen/loading_screen.dart';

class ListOfLoadedFavCocktails extends StatelessWidget {
  const ListOfLoadedFavCocktails({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CocktailsFavBloc>().state;
    return state.when(
        loadingFav: () {
          context.read<CocktailsFavBloc>().add(const LoadingFavCocktailsEvent());
          return const LoadingScreen();},
        loadedFav: (favCocktails) => _ListViewCocktails(cocktails: favCocktails),
        error: (error) => Text('error to load $error'));
  }
}

class _ListViewCocktails extends StatelessWidget {
  const _ListViewCocktails({required this.cocktails});
  final List<Cocktail> cocktails;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0).r,
            child: GestureDetector(
              onTap: () => context.goNamed('home'),
              child: Container(
                decoration: BoxDecoration(
                    color: MyColor.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)).r),
                child: Padding(
                  padding:  EdgeInsets.all(8.0).r,
                  child: Text(
                    'Home',
                    style: TextStyle(
                        color: MyColor.deepBlack,
                        fontSize: 18.sp,
                        fontFamily: 'Inter'),
                  ),
                ),
              ),
            ),
          ),

          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 12).w,
            itemCount: cocktails.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => context.goNamed('fav',
                    pathParameters: {'id': cocktails[index].id}),
                child: Container(
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
                          borderRadius: BorderRadius.circular(20).r,
                          child: SizedBox.fromSize(
                              size: Size.fromRadius(40.r),
                              child: Image.network(
                                  cocktails[index].image,
                                  fit: BoxFit.fitWidth)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cocktails[index].title,
                                  style:
                                  Theme.of(context).textTheme.titleMedium,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'difficulty: ${cocktails[index].difficulty}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
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
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 30.h,
              );
            },
          ),
        ],
      ),
    );

  }
}
