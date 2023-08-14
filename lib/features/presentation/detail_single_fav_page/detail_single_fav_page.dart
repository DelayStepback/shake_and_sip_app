import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shake_and_sip_app/features/presentation/bloc/detail_bloc/detail_event.dart';

import '../../data/cocktail/model/cocktail.dart';
import '../bloc/detail_bloc/detail_bloc.dart';

class DetailSingleFavPage extends StatelessWidget {
  const DetailSingleFavPage({super.key, required this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DetailBloc>().state;
    context.read<DetailBloc>().add(DetailEvent.initDetailPage(id: id!));
    return state.when(
        loading: () => const CircularProgressIndicator(),
        loaded: (cocktail) => _DetailLoaded(cocktail: cocktail),
        error: (error) => Text('error to load $error'));
  }
}

class _DetailLoaded extends StatelessWidget {
  const _DetailLoaded({super.key, required this.cocktail});

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(cocktail.id),
          Text(cocktail.title),
          Image.network(cocktail.image),
          Text(cocktail.difficulty),
          Text(cocktail.favourite.toString()),
          Text(cocktail.ingredients.toString()),
          Text(cocktail.description.toString()),
          Text(cocktail.portion.toString()),
          Text(cocktail.time.toString()),
          Text(cocktail.method.toString()),
        ],
      ),
    );
  }
}
