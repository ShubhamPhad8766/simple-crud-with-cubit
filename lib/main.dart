import 'package:crud/logic/delete/delete_cubit.dart';
import 'package:crud/logic/get/get_cubit.dart';
import 'package:crud/logic/post/post_cubit.dart';
import 'package:crud/logic/put/put_cubit.dart';
import 'package:crud/screen/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetCubit(),
        ),
        BlocProvider(
          create: (context) => PostCubit(),
        ),
        BlocProvider(
          create: (context) => PutCubit(),
        ),
        BlocProvider(
          create: (context) => DeleteCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PostScreen(),
      ),
    );
  }
}
