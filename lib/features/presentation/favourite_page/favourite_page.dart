import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/cocktails_bloc/cocktails_event.dart';
import 'package:shake_and_sip_app/features/presentation/favourite_page/widgets/list_of_loaded_fav_cocktails.dart';
import 'package:shake_and_sip_app/utils/colors.dart';

import '../bloc/cocktails_bloc/cocktails_bloc.dart';
import '../bloc/cocktails_bloc/cocktails_state.dart';
import '../bloc/cocktails_fav_bloc/cocktails_fav_bloc.dart';
import '../bloc/cocktails_fav_bloc/cocktails_fav_event.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});


  @override
  Widget build(BuildContext context) {
      BlocProvider.of<CocktailsFavBloc>(context)
        .add(const CocktailsFavEvent.initFavPage());
       return Scaffold(
          body: Column(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: MyColor.iconsColor),
                onPressed: () => {
                  context.go('/'),
                },
              ),
              const ListOfLoadedFavCocktails()
            ],
          ),
    );
  }
}
