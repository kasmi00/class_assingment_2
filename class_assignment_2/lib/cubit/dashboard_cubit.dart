import 'package:class_assignment_2/cubit/circle_area_cubit.dart';
import 'package:class_assignment_2/cubit/cuboid_volume_cubit.dart';
import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_2/view/circle_area_cubit_view.dart';
import 'package:class_assignment_2/view/cuboid_volume_cubit_view.dart';
import 'package:class_assignment_2/view/simple_interest_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._circleCubit,
    this._simpleInterestCubit,
    this._cuboidVolumeCubit,
  ) : super(null);

  final CircleAreaCubit _circleCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final CuboidVolumeCubit _cuboidVolumeCubit;

  void openCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _circleCubit,
          child: const CircleAreaView(),
        ),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestCubit,
          child: const SimpleInterestView(),
        ),
      ),
    );
  }

  void openCuboidVolumeView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _cuboidVolumeCubit,
          child: const CuboidVolumeView(),
        ),
      ),
    );
  }
}
