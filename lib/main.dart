import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheel_app/DataAdmin/cubit/admin_cubit_cubit.dart';
import 'package:waheel_app/DataControll/cubit/controll_cubit_cubit.dart';
import 'package:waheel_app/DataMarcket/cubit/marcket_cubit_cubit.dart';
import 'package:waheel_app/DataUser/cubit/user_cubit_cubit.dart';
import 'package:waheel_app/splach_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext) => UserCubitCubit()),
        BlocProvider(create: (BuildContext) => AdminCubitCubit()),
        BlocProvider(create: (BuildContext) => MarcketCubitCubit()),
        BlocProvider(create: (BuildContext) => ControllCubitCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplachScreen(),
      ),
    );
  }
}
