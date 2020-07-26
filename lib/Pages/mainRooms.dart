import 'package:tbdm_chat/utlis/exports.dart';

PageController Pagecontroller = PageController(viewportFraction: 1, keepPage: true);

class MainRoomsPage extends StatefulWidget {
  @override
  _MainRoomsPageState createState() => _MainRoomsPageState();
}

class _MainRoomsPageState extends State<MainRoomsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Rooms',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: TBColor.withOpacity(0.3),
      ),
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network('https://image.freepik.com/free-vector/geek-logo-design-template_7492-36.jpg',width: 150,height: 150,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            textTBDM('Geeks Circle', color: Colors.black,fontWeight: FontWeight.bold,size: 20.0),
                            textTBDM(' Room',size: 20.0),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: textTBDM(
                                  'Geeks Circe is a ChatRoom for Software Engineers, Software Developers and Programmers in Egypt and the Islamic world.',
                                  maxLines: 12,
                                  align: TextAlign.center,
                                  color: Colors.black),
                              width: 180,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Icon(Icons.group,size: 20,color:TBColor),
                            ),
                            textTBDM('15',size: 15.0),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: textTBDM('members',size: 15.0,color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      RaisedButton(onPressed: (){
                        Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) => new ChatRoomScreen(roomId: 'room123',roomName: 'GeeksRoom',)));
                      },child: Text('Join'),elevation: 2,textColor:Colors.white,color: TBColor,),
                    ],
                  ),
                ),
              );
            },
            controller: Pagecontroller,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemCount: navigationItems.length,
          ),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }

  @override
  void initState() {
    navigationItems = [
      NavigationModel(title: "Geeks Circle Room", icon: Icons.group),
      NavigationModel(title: "Devs Room", icon: Icons.group),
      NavigationModel(title: "Phog Room", icon: Icons.group),
      NavigationModel(title: "Designers Room", icon: Icons.group),
    ];
    super.initState();
  }
}
