import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controll_cubit_state.dart';

class ControllCubitCubit extends Cubit<ControllCubitState> {
  ControllCubitCubit() : super(ControllCubitInitial());
}
