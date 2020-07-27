import 'package:tbdm_chat/utlis/exports.dart';

class UserChatProfile extends StatefulWidget {
  final String recName, phoneNum;

  const UserChatProfile({Key key, this.recName, this.phoneNum})
      : super(key: key);

  @override
  _UserChatProfileState createState() => _UserChatProfileState();
}

class _UserChatProfileState extends State<UserChatProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                delegate: new SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    textTBDM('Name',
                        size: 15.0, fontWeight: FontWeight.normal,color: Colors.black),
                    SizedBox(width: 15,),
                    textTBDM(widget.recName, size: 20.0, fontWeight: FontWeight.bold),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    textTBDM('Phone Number',
                        size: 15.0, fontWeight: FontWeight.normal,color: Colors.black),
                    SizedBox(width: 15,),
                    textTBDM(widget.phoneNum,
                        size: 15.0, fontWeight: FontWeight.bold),
                  ],
                ),
              ),

            ])),
          ],
        ),
      ),
    );
  }
}
