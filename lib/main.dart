import 'package:flutter/material.dart';
import 'package:shared_preferances/local_data/user_shared_pref.dart';
import 'package:shared_preferances/screen/local_data_view.dart';

Future main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  // local data
  await UserSharedPreferance().initSharedPref();
  // main app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalDataView(),
    );
  }
}
