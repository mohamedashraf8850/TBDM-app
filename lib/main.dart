import 'package:tbdm_chat/utlis/exports.dart';

import 'Pages/Auctions/CreateAuction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: IntroGuider(),
    //  home: MainAuctions(),
      home: MyHomePage(),
    );
  }
}
