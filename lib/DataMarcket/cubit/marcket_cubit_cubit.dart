import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'marcket_cubit_state.dart';

class MarcketCubitCubit extends Cubit<MarcketCubitState> {
  MarcketCubitCubit() : super(MarcketCubitInitial());
}
