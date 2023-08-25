import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/detail_bloc/detail_event.dart';
import 'package:shake_and_sip_app/utils/colors.dart';
import '../../data/models/cocktail.dart';
import '../bloc/detail_bloc/detail_bloc.dart';
import '../loading_screen/loading_screen.dart';

class DetailSingleFavPage extends StatelessWidget {
  const DetailSingleFavPage(
      {super.key, required this.id, required this.connectivity});

  final String? id;
  final bool connectivity;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DetailBloc>().state;
    context.read<DetailBloc>().add(DetailEvent.initDetailPage(id: id!));
    return state.when(
      loading: () => const LoadingScreen(),
      loaded: (cocktail, fav) => _DetailLoaded(
        cocktail: cocktail,
        isFav: fav,
        connectivity: connectivity,
      ),
      error: (error) => Text('error to load $error'),
    );
  }
}

class _DetailLoaded extends StatefulWidget {
  const _DetailLoaded(
      {super.key,
      required this.cocktail,
      required this.isFav,
      required this.connectivity});

  final Cocktail cocktail;
  final bool isFav;
  final bool connectivity;

  @override
  State<_DetailLoaded> createState() => _DetailLoadedState();
}

class _DetailLoadedState extends State<_DetailLoaded> {
  final PageController _pageController = PageController(initialPage: 0);
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 100.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                  controller: _pageController,
                  onPageChanged: (newPage) {
                    setState(
                      () {
                        page = newPage;
                      },
                    );
                  },
                  children: [
                    _TimeAndServes(
                      cocktail: widget.cocktail,
                    ),
                    _Ingredients(cocktail: widget.cocktail),
                    _Description(cocktail: widget.cocktail),
                    _StepsToCook(cocktail: widget.cocktail),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (!widget.isFav) {
                            context.read<DetailBloc>().add(
                                DetailEvent.addFavCocktail(widget.cocktail));
                          } else {
                            context.read<DetailBloc>().add(
                                DetailEvent.deleteFavCocktail(widget.cocktail));
                          }
                        },
                        child: Container(
                          width: 180.w,
                          decoration: BoxDecoration(
                            color: MyColor.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)).r,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                widget.isFav ? Icons.star : Icons.star_border,
                                size: 20.r,
                              ),
                              Text(
                                  widget.isFav
                                      ? 'Already favourite'
                                      : 'Make favourite',
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _indicators(4, page)),
                    ],
                  ),
                ),
                Positioned(
                  top: 10.h,
                  left: 10.w,
                  child: InkWell(
                      onTap: () => {
                            if (widget.connectivity)
                              {
                                context.goNamed('home'),
                              }
                            else
                              {
                                context.goNamed('allFavLostConnectivity'),
                              }
                          },
                      child: Icon(
                        Icons.navigate_before,
                        size: 34.r,
                        color: MyColor.deepBlack,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> _indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(3).w,
      width: currentIndex == index ? 30.w : 10.w,
      height: 10.h,
      decoration: BoxDecoration(
        color: MyColor.deepBlack,
        borderRadius: currentIndex == index
            ? const BorderRadius.all(Radius.circular(39)).w
            : const BorderRadius.all(Radius.circular(51)).w,
      ),
    );
  });
}

class _TimeAndServes extends StatelessWidget {
  const _TimeAndServes({super.key, required this.cocktail});

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0).r,
            child: Text('Time & Serves',
                style: Theme.of(context).textTheme.displayLarge),
          ),
          Container(
            width: 300.w,
            height: 250.h,
            decoration: BoxDecoration(
              color: MyColor.deepBlack,
              borderRadius: const BorderRadius.all(Radius.circular(30)).r,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0).r,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.timer_sharp,
                        color: MyColor.white,
                      ),
                      Flexible(
                          child: Text(cocktail.time.toString(),
                              style: Theme.of(context).textTheme.labelSmall)),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.person,
                        color: MyColor.white,
                      ),
                      Flexible(
                          child: Text(cocktail.portion.toString(),
                              style: Theme.of(context).textTheme.labelSmall)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Ingredients extends StatelessWidget {
  const _Ingredients({super.key, required this.cocktail});

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0).r,
              child: Text('Ingredients',
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            Container(
              width: 320.w,
              height: 400.h,
              decoration: BoxDecoration(
                color: MyColor.deepBlack,
                borderRadius: const BorderRadius.all(Radius.circular(30)).r,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20).r,
                child: Center(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: cocktail.ingredients!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0).r,
                        child: Text(
                          '+ ${cocktail.ingredients![index]}',
                          style: Theme.of(context).textTheme.labelSmall,
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({super.key, required this.cocktail});

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0).r,
            child: Text('Description',
                style: Theme.of(context).textTheme.displayLarge),
          ),
          Container(
            width: 300.w,
            height: 340.h,
            decoration: BoxDecoration(
              color: MyColor.deepBlack,
              borderRadius: const BorderRadius.all(Radius.circular(30)).r,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0).r,
              child: Center(
                child: SingleChildScrollView(
                  child: Text(cocktail.description.toString(),
                      style: Theme.of(context).textTheme.labelSmall),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StepsToCook extends StatelessWidget {
  const _StepsToCook({super.key, required this.cocktail});

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0).r,
            child:
                Text('Steps', style: Theme.of(context).textTheme.displayLarge),
          ),
          SizedBox(
            height: 370.h,
            width: 300.w,
            child: PageView.builder(
              itemCount: cocktail.method?.length,
              itemBuilder: (context, position) {
                return Container(
                  decoration: BoxDecoration(
                    color: MyColor.deepBlack,
                    borderRadius: const BorderRadius.all(Radius.circular(30)).r,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24).r,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  position != (cocktail.method!.length - 1)
                                      ? Icons.navigate_next
                                      : Icons.navigate_before,
                                  size: 24.r,
                                  color: MyColor.white,
                                ),
                                Text(
                                  'Step ${position + 1}',
                                  style: Theme.of(context).textTheme.titleLarge,
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  position != (cocktail.method!.length - 1)
                                      ? Icons.navigate_next
                                      : Icons.navigate_before,
                                  size: 24.r,
                                  color: MyColor.white,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              '${cocktail.method?[position].values}',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
