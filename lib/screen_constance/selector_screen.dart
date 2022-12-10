import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheel_app/DataUser/cubit/user_cubit_cubit.dart';

class SelectorScreen extends StatefulWidget {
  @override
  State<SelectorScreen> createState() => _SelectorScreenState();
}

class _SelectorScreenState extends State<SelectorScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubitCubit, UserCubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              elevation: 5,
              centerTitle: true,
              title: Text("Waheel"),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              ],
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            ),
          );
        });
  }
}
