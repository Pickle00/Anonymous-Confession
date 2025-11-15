import 'package:confesso/blocs/homepage_cubit/homepage_cubit.dart';
import 'package:confesso/blocs/search_cubit/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> appBlocProvider() {
  return [
    BlocProvider<HomepageCubit>(
      create: (context) => HomepageCubit(),
    ),
    BlocProvider<SearchCubit>(
      create: (context) => SearchCubit(),
    ),
  ];
}
