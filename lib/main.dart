import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:msbm/routes/route.dart';
import 'package:msbm/screens/get_started.dart';
import 'package:page_transition/page_transition.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) async {
      // await Hive.openBox(HiveKeys.appBox);
      runApp(
        const ProviderScope(child: TaskApp()),
      );
    },
  );
}

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);
  // final _appRouter = CooperativeRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Cooperative',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // routerDelegate: _appRouter.delegate(),
      home: AnimatedSplashScreen(
        duration: 7000,
        splash: Column(children: [
          Image.asset(
            "assets/images/horse.jpg",
            height: 200,
            width: 200,
          ),
        ]),
        nextScreen: const GetStartedView(),
        nextRoute: GetStartedView.routeName,
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: 220,
        pageTransitionType: PageTransitionType.scale,
        backgroundColor: const Color(0xFF020C2F),
      ),
      routes: routes,
    );
  }
}
