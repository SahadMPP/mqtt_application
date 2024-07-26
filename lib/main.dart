import 'package:application_mqtt/application/features/home/bloc/home_bloc.dart';
import 'package:application_mqtt/application/features/home/ui/home_ui.dart';
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
      BlocProvider(create: (context) => HomeBloc(),),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Home() ,
      ),
    );
  }
}