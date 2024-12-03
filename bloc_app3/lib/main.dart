import 'package:bloc_app3/bloc/auth_bloc.dart';
import 'package:bloc_app3/loginscreen.dart';
import 'package:bloc_app3/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.dark()
              .copyWith(scaffoldBackgroundColor: Pallete.backgroundColor),
          home: const Loginscreen()),
    );
  }
}
