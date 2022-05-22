import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/counting_text_cubit.dart';
import 'package:task/ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CountingTextCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bulx Task',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0),
          textTheme: const TextTheme().copyWith(
            headline5: const TextStyle(
              fontFamily: 'SFProDisplay',
              color: Color(0xff101112),
              fontWeight: FontWeight.w900,
              fontSize: 24.0,
            ),
            subtitle2: const TextStyle(
              color: Color(0xff75808a),
              fontWeight: FontWeight.w600,
              fontFamily: "SFProText",
              fontStyle: FontStyle.normal,
              fontSize: 13.0,
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              primary: const Color(0xff101112),
              textStyle: const TextStyle(
                fontSize: 13.0,
                fontFamily: "SFProText",
                fontWeight: FontWeight.w600,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
