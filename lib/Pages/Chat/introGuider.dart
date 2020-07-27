import'package:tbdm_chat/utlis/exports.dart';


class IntroGuider extends StatefulWidget {
  @override
  IntroGuiderState createState() => new IntroGuiderState();
}

class IntroGuiderState extends State<IntroGuider> {

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 500), () {
            Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new MainRoomsPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             Text('TBDMChat',style: TextStyle(fontSize: 25,color: TBColor),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: new AlwaysStoppedAnimation<Color>(TBColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


