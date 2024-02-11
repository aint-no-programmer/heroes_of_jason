import 'package:flutter/material.dart';
import 'package:heroes_of_jason/IntroPage.dart';
import 'package:heroes_of_jason/StartPage.dart';
import 'ChooseHeroPage.dart';
import 'OraclePageAnimation.dart';
import 'DirectoryParser.dart';
import 'package:flutter/services.dart';
import 'IntroPage.dart';
import 'CreatorsPage.dart';

Future<void> main() async {
  //initializing
  WidgetsFlutterBinding.ensureInitialized();

  //get json descriptions
  final heroes = await getAssetFiles();

  //"freeze" portrait orientation
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  //run
  runApp(MyApp(heroes));
}

class MyApp extends StatelessWidget {
  final List<HeroDescription> _heroes;
  const MyApp(this._heroes, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/ChooseHeroPage': (context) => ChooseHeroPage(_heroes),
        '/StartPage': (context) => StartPage(),
        '/CreatorsPage': (context) => CreatorsPage(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: 'Greece',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: ChooseHeroPage(_heroes),
      home: const IntroPage(),
    );
  }
}
