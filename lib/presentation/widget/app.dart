import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:web_test/presentation/widget/screen/edit_screen.dart';
import 'package:web_test/presentation/widget/screen/list_screen.dart';
import 'package:web_test/presentation/widget/screen/login_screen.dart';

class App extends StatelessWidget {
  // ****************************** LIFECYCLE ****************************** //

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();

    var mainHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return LoginScreen();
    });
    var listHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ListScreen();
    });

    var editHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return EditScreen(params: params);
    });

    router.define('/', handler: mainHandler, transitionType: TransitionType.native);
    router.define('/contents', handler: listHandler, transitionType: TransitionType.native);
    router.define('contents/:content', handler: editHandler, transitionType: TransitionType.native);

    return MaterialApp(
      title: 'Flutter Web Test',
      initialRoute: '/',
      onGenerateRoute: router.generator,
    );
  }
}
