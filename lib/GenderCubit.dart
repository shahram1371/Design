// ignore_for_file: file_names

import 'package:bloc/bloc.dart';

class GenderCubit extends Cubit<bool> {
  GenderCubit() : super(true);
  void changeGender() => emit(!state);
}
