import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/detail_bloc/detail_event.dart';
import 'package:shake_and_sip_app/utils/colors.dart';

import '../../data/cocktail/model/cocktail.dart';
import '../bloc/detail_bloc/detail_bloc.dart';
import '../bloc/detail_bloc/detail_state.dart';
import '../loading_screen/loading_screen.dart';

class DetailSingleFavPage extends StatelessWidget {
  const DetailSingleFavPage({super.key, required this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DetailBloc>().state;
    context.read<DetailBloc>().add(DetailEvent.initDetailPage(id: id!));
    return state.when(
        loading: () => const LoadingScreen(),
        loaded: (cocktail, fav) => _DetailLoaded(cocktail: cocktail, isFav: fav),
        error: (error) => Text('error to load $error'));
  }
}

class _DetailLoaded extends StatelessWidget {
  const _DetailLoaded({super.key, required this.cocktail, required this.isFav});
  final bool isFav;
  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: false,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: GestureDetector(
                onTap: () => {
                  context.goNamed('home'),
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
              centerTitle: true,
              title: Text(cocktail.title.toString(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge,
              ),
            ),
            backgroundColor: MyColor.lightBlack,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                  ),
                  const _columnConnector(),
                  GestureDetector(
                    onTap: (){
                      if (!isFav){
                        context.read<DetailBloc>().add(DetailEvent.addFavCocktail(cocktail));
                      }
                      else{
                        context.read<DetailBloc>().add(DetailEvent.deleteFavCocktail(cocktail));
                      }
                    },
                    child: Container(
                      width: 180.w,
                      decoration: BoxDecoration(
                        color: MyColor.white,
                        borderRadius: const BorderRadius.all(Radius.circular(30)).r,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(isFav ? Icons.star :Icons.star_border, size: 20.r,),
                          Text(isFav ? 'Already favourite':'Make favourite', style: Theme.of(context)
                              .textTheme
                              .bodyMedium),
                        ],
                      ),
                    ),
                  ),
                  const _columnConnector(),
                  Container(
                    width: 250.w,
                    decoration: BoxDecoration(
                      color: MyColor.white,
                      borderRadius: const BorderRadius.all(Radius.circular(30)).r,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0).r,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.timer_sharp),
                              Flexible(
                                  child: Text(cocktail.time.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.person),
                              Flexible(
                                  child: Text(cocktail.portion.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const _columnConnector(),
                  _ContainerTitleSubTitle(
                      width: 321,
                      title: 'Ingredients',
                      subWidget: ListViewOfIngredients(cocktail: cocktail)),
                  const _columnConnector(),
                  _ContainerTitleSubTitle(
                      width: 250,
                      title: 'Description',
                      subWidget: Text(cocktail.description.toString(),
                          style: Theme.of(context).textTheme.bodyMedium)),
                  const _columnConnector(),
                  _ContainerTitleSubTitle(
                      width: 321,
                      title: 'How to make?',
                      subWidget: StepsOfCookingWidget(cocktail: cocktail)),
                  SizedBox(
                    height: 200.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ListViewOfIngredients extends StatelessWidget {
  const ListViewOfIngredients({
    super.key,
    required this.cocktail,
  });

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: cocktail.ingredients!.length,
          itemBuilder: (context, index) {
            return Text('* ${cocktail.ingredients![index]}',
                style: Theme.of(context).textTheme.bodyMedium);
          }),
    );
  }
}

class StepsOfCookingWidget extends StatelessWidget {
  const StepsOfCookingWidget({
    super.key,
    required this.cocktail,
  });

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: cocktail.method!.length,
          itemBuilder: (context, index) {
            return Text(
                '${cocktail.method![index].keys.toList().first.toString()} : ${cocktail.method![index][cocktail.method![index].keys.toList().first].toString()} ',
                style: Theme.of(context).textTheme.bodyMedium);
          }),
    );
  }
}

class _ContainerTitleSubTitle extends StatelessWidget {
  const _ContainerTitleSubTitle({
    super.key,
    required this.width,
    required this.title,
    required this.subWidget,
  });

  final int width;
  final String title;
  final Widget subWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      decoration: BoxDecoration(
        color: MyColor.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)).r,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(
              height: 10,
            ),
            subWidget,
          ],
        ),
      ),
    );
  }
}

class _columnConnector extends StatelessWidget {
  const _columnConnector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 30.h,
      decoration: const BoxDecoration(
        color: MyColor.deepBlack,
      ),
    );
  }
}
