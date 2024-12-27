import 'package:flutter_bloc/flutter_bloc.dart';

class CuboidVolumeCubit extends Cubit<double> {
  CuboidVolumeCubit() : super(0.0);

  void calculateVolume(double length, double breadth, double height) {
    emit(length * breadth * height);
  }
}
