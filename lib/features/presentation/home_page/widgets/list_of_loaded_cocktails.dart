import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_bloc/cocktails_event.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_bloc/cocktails_state.dart';
import 'package:shake_and_sip_app/features/presentation/loading_screen/loading_screen.dart';
import 'package:shake_and_sip_app/utils/colors.dart';
import '../../../data/cocktail/model/cocktail.dart';
import '../../bloc/cocktails_bloc/cocktails_bloc.dart';

class ListOfLoadedCocktails extends StatelessWidget {
  const ListOfLoadedCocktails({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CocktailsBloc>().state;
    return state.when(
        loadingAll: () {
          context.read<CocktailsBloc>().add(const LoadingAllCocktailsEvent());
          return const LoadingScreen();
        },
        loadedAll: (allCocktails, pag) => _ListViewCocktails(
              cocktails: allCocktails,
              pagination: pag,
            ),
        error: (error) => Text('error to load $error'));
  }
}

class _ListViewCocktails extends StatelessWidget {
  const _ListViewCocktails(
      {super.key, required this.cocktails, required this.pagination});

  final int pagination;
  final List<Cocktail> cocktails;

  @override
  Widget build(BuildContext context) {
    int itemCount =
        5 * (pagination + 1) < cocktails.length ? 5 : (cocktails.length % 5);
    int pages = (cocktails.length / 5).ceil() - 1;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => context.goNamed('allFav'),
              child: Container(
                decoration: BoxDecoration(
                    color: MyColor.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Favourite',
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
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int indexList) {
              int index = indexList + 5 * pagination;
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
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                              size: Size.fromRadius(40.r),
                              child: Image.network(cocktails[index].image,
                                  fit: BoxFit.fitWidth)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(4).r,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  context.read<CocktailsBloc>().add(
                      PreviousPaginationAllCocktailsEvent(
                          cocktails: cocktails, pagination: pagination));
                },
                child: Text(
                  'Previous',
                  style: TextStyle(
                      color: MyColor.white,
                      fontSize: 18.sp,
                      fontFamily: 'Inter'),
                ),
              ),
              Text(
                '${pagination + 1}/${pages + 1}',
                style: TextStyle(
                    color: MyColor.white, fontSize: 18.sp, fontFamily: 'Inter'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  context.read<CocktailsBloc>().add(
                      NextPaginationAllCocktailsEvent(
                          cocktails: cocktails, pagination: pagination));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: MyColor.white,
                      fontSize: 18.sp,
                      fontFamily: 'Inter'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
