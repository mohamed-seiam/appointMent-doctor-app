import 'package:appointment_doctor_app/core/networking/api_services.dart';
import 'package:appointment_doctor_app/core/networking/dio_factory.dart';
import 'package:appointment_doctor_app/features/home/data/repos/home_repo.dart';
import 'package:appointment_doctor_app/features/login/data/repos/login_repo.dart';
import 'package:appointment_doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment_doctor_app/features/signup/data/repos/sign_up_repo.dart';
import 'package:appointment_doctor_app/features/signup/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  // Dio & apiServices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(
    () => ApiServices(dio),
  );

  //login
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(
      getIt(),
    ),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(
      getIt(),
    ),
  );

  // signup
  getIt.registerLazySingleton<SignUpRepo>(
    () => SignUpRepo(
      getIt(),
    ),
  );
  getIt.registerFactory<SignupCubit>(
    () => SignupCubit(
      getIt(),
    ),
  );

  // home
  getIt.registerLazySingleton<HomeRepo>(
        () => HomeRepo(
      getIt(),
    ),
  );
  // getIt.registerFactory<HomeCubit>(
  //       () => HomeCubit(
  //     getIt(),
  //   ),
  // );
}
