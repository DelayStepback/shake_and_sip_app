import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/domain/entities/cocktail_entity.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_bloc/cocktails_event.dart';
import 'package:shake_and_sip_app/features/presentation/loading_screen/loading_screen.dart';
import 'package:shake_and_sip_app/utils/colors.dart';
import '../../bloc/cocktails_bloc/cocktails_bloc.dart';

class ListOfLoadedCocktails extends StatelessWidget {
  const ListOfLoadedCocktails({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CocktailsBloc>().state;
    return state.when(
        loadingAll: () {
          context.read<CocktailsBloc>().add(const LoadingAllCocktailsEvent());
          return const LoadingScreen(
            text: 'LOADING',
          );
        },
        loadedAll: (allCocktails, pag) => _ListViewCocktails(
              cocktails: allCocktails,
              pagination: pag,
            ),
        error: (error) => Center(child: Text('error to load $error')));
  }
}

class _ListViewCocktails extends StatelessWidget {
  const _ListViewCocktails({required this.cocktails, required this.pagination});

  final int pagination;
  final List<CocktailEntity> cocktails;

  @override
  Widget build(BuildContext context) {
    final int itemCount =
        5 * (pagination + 1) < cocktails.length ? 5 : (cocktails.length % 5);
    final int pages = (cocktails.length / 5).ceil() - 1;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0).r,
                child: GestureDetector(
                  onTap: () {
                    context.goNamed('settings');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: MyColor.deepBlack,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)).r),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0).r,
                      child: Icon(Icons.settings,
                          size: 24.r, color: MyColor.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0).r,
                child: GestureDetector(
                  onTap: () => context.goNamed('allFav'),
                  child: Container(
                    decoration: BoxDecoration(
                        color: MyColor.deepBlack,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)).r),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0).r,
                      child: Text(
                        'Favourite',
                        style: TextStyle(
                            color: MyColor.white,
                            fontSize: 18.sp,
                            fontFamily: 'Inter'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 12).w,
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int indexList) {
              int index = indexList + 5 * pagination;
              return GestureDetector(
                onTap: () => context.goNamed(
                  'fav',
                  pathParameters: {'id': cocktails[index].id},
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: MyColor.deepBlack,
                  ),
                  width: 365.r,
                  height: 100.r,
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
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.r),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.all(16.0.r),
                  textStyle: TextStyle(fontSize: 20.sp),
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
                  padding: EdgeInsets.all(16.0.r),
                  textStyle: TextStyle(fontSize: 20.sp),
                ),
                onPressed: () {
                  context.read<CocktailsBloc>().add(
                        NextPaginationAllCocktailsEvent(
                            cocktails: cocktails, pagination: pagination),
                      );
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
