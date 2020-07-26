import 'package:tbdm_chat/utlis/exports.dart';

class UserChatProfile extends StatefulWidget {
  final String recName, phoneNum;

  const UserChatProfile({Key key, this.recName ,this.phoneNum}) : super(key: key);

  @override
  _UserChatProfileState createState() => _UserChatProfileState();
}

class _UserChatProfileState extends State<UserChatProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              expandedHeight: 220.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 50,
              backgroundColor: TBColor,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(widget.recName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    'https://img.icons8.com/clouds/2x/user.png',
                    fit: BoxFit.cover,
                  )),
            ),
            new SliverList(
                delegate: new SliverChildListDelegate([textTBDM(widget.recName,size: 20,fontWeight: FontWeight.bold), textTBDM(widget.phoneNum,size: 15,fontWeight: FontWeight.normal)])),
          ],
        ),
      ),
    );
  }
}
