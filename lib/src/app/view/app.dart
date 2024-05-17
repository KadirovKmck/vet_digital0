// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../locator.dart';
import '../../modules/home/home.dart';
import '../../modules/news/page/logic/cubit/news_info_cubit.dart';
import '../../modules/vet/page/logic/cubit/news_info_cubit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InfoAboutAppCubit>(
          create: (context) => sl<InfoAboutAppCubit>(),
        ),
        BlocProvider<InfoNewsCubit>(
          create: (context) => sl<InfoNewsCubit>(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
