import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'admin_cubit_state.dart';

class AdminCubitCubit extends Cubit<AdminCubitState> {
  AdminCubitCubit() : super(AdminCubitInitial());
}
