import 'package:get/get.dart';

import '../modules/ListPage/bindings/list_page_binding.dart';
import '../modules/ListPage/views/list_page_view.dart';
import '../modules/auth/LoginPage/bindings/login_page_binding.dart';
import '../modules/auth/LoginPage/views/login_page_view.dart';
import '../modules/Player/bindings/player_binding.dart';
import '../modules/Player/views/player_view.dart';
import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const HOME = Routes.HOME;
  static const ONBOARDING = Routes.ONBOARDING;
  static const DETAILS = Routes.DETAIL;
  static const LISTPAGE = Routes.LIST_PAGE;
  static const PLAYERPAGE = Routes.PLAYER;
  static const LOGINPAGE = Routes.LOGIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.LIST_PAGE,
      page: () => const ListPageView(),
      binding: ListPageBinding(),
    ),
    GetPage(
      name: _Paths.PLAYER,
      page: () => const PlayerView(),
      binding: PlayerBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
    ),
  ];
}
