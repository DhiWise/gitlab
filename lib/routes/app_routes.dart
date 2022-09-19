import 'package:gitlab/presentation/splash_screen/splash_screen.dart';
import 'package:gitlab/presentation/splash_screen/binding/splash_binding.dart';
import 'package:gitlab/presentation/access_token_screen/access_token_screen.dart';
import 'package:gitlab/presentation/access_token_screen/binding/access_token_binding.dart';
import 'package:gitlab/presentation/project_list_screen/project_list_screen.dart';
import 'package:gitlab/presentation/project_list_screen/binding/project_list_binding.dart';
import 'package:gitlab/presentation/project_details_screen/project_details_screen.dart';
import 'package:gitlab/presentation/project_details_screen/binding/project_details_binding.dart';
import 'package:gitlab/presentation/commits_screen/commits_screen.dart';
import 'package:gitlab/presentation/commits_screen/binding/commits_binding.dart';
import 'package:gitlab/presentation/jobs_screen/jobs_screen.dart';
import 'package:gitlab/presentation/jobs_screen/binding/jobs_binding.dart';
import 'package:gitlab/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:gitlab/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String accessTokenScreen = '/access_token_screen';

  static String projectListScreen = '/project_list_screen';

  static String projectDetailsScreen = '/project_details_screen';

  static String commitsScreen = '/commits_screen';

  static String jobsScreen = '/jobs_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: accessTokenScreen,
      page: () => AccessTokenScreen(),
      bindings: [
        AccessTokenBinding(),
      ],
    ),
    GetPage(
      name: projectListScreen,
      page: () => ProjectListScreen(),
      bindings: [
        ProjectListBinding(),
      ],
    ),
    GetPage(
      name: projectDetailsScreen,
      page: () => ProjectDetailsScreen(),
      bindings: [
        ProjectDetailsBinding(),
      ],
    ),
    GetPage(
      name: commitsScreen,
      page: () => CommitsScreen(),
      bindings: [
        CommitsBinding(),
      ],
    ),
    GetPage(
      name: jobsScreen,
      page: () => JobsScreen(),
      bindings: [
        JobsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
