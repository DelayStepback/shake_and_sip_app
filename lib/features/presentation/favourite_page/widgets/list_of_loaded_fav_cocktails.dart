import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_fav_bloc/cocktails_fav_event.dart';
import 'package:shake_and_sip_app/utils/colors.dart';
import '../../bloc/cocktails_fav_bloc/cocktails_fav_bloc.dart';
import '../../loading_screen/loading_screen.dart';

class ListOfLoadedFavCocktails extends StatelessWidget {
  const ListOfLoadedFavCocktails({super.key, required this.connectivity});

  final bool connectivity;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CocktailsFavBloc>().state;
    return state.when(
      loadingFav: () {
        context.read<CocktailsFavBloc>().add(const LoadingFavCocktailsEvent());
        return const LoadingScreen();
      },
      loadedFav: (favCocktails) => _ListViewCocktails(
          cocktails: favCocktails, connectivity: connectivity),
      error: (error) => Text('error to load $error'),
    );
  }
}

class _ListViewCocktails extends StatelessWidget {
  const _ListViewCocktails(
      {required this.cocktails, required this.connectivity});

  final List<CocktailEntity> cocktails;
  final bool connectivity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: GestureDetector(
              onTap: () => connectivity
                  ? context.goNamed('home')
                  : context.goNamed('allFavLostConnectivity'),
              child: Container(
                decoration: BoxDecoration(
                    color: MyColor.deepBlack,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10)).r),
                child: Padding(
                  padding: const EdgeInsets.all(8.0).r,
                  child: Text(
                    connectivity ? 'Home' : 'Favourite',
                    style: TextStyle(
                        color: MyColor.white,
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
                onTap: () => connectivity
                    ? context.goNamed('fav',
                        pathParameters: {'id': cocktails[index].id})
                    : context.goNamed('favLostConnectivity',
                        pathParameters: {'id': cocktails[index].id}),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: MyColor.deepBlack,
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
                              child: Image.network(cocktails[index].image,
                                  fit: BoxFit.fitWidth)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(12.r),
                            child: SingleChildScrollView(
                              physics: const NeverScrollableScrollPhysics(),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cocktails[index].title,
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'difficulty: ${cocktails[index].difficulty}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
