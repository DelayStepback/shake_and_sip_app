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
  const _ListViewCocktails({super.key, required this.cocktails});
  final List<Cocktail> cocktails;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: MyColor.iconsColor),
            onPressed: () => {
              context.go('/'),
            },
          ),

          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 12).w,
            itemCount: cocktails.length,
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
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 30,
              );
            },
          ),
        ],
      ),
    );

  }
}
