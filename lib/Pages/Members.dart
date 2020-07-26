import 'package:tbdm_chat/utlis/exports.dart';

class MembersPage extends StatefulWidget {
  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Members',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: TBColor.withOpacity(0.3),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 150,
              color: Colors.white,
              child: ListView.builder(
                itemCount: 35,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                              child: Image.network(
                            'https://img.icons8.com/clouds/2x/user.png',
                            width: 50,
                            height: 50,
                          )),
                          Padding(
                            child: textTBDM('Muhammad $index',
                                align: TextAlign.start, color: Colors.black),
                            padding: const EdgeInsets.all(5.0),
                          ),
                        ],
                      ),
                      PopupMenuButton<String>(
                        onSelected: handleClick,
                        itemBuilder: (BuildContext context) {
                          return {'Send Message', 'View Profile'}
                              .map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                        color: TBColor.withOpacity(0.3),
                        elevation: 8,
                      ),
                    ],
                  ));
                },
              ),
            ),
            RaisedButton(
              onPressed: () {
                print("Wait API");
              },
              child: Text('Leave Room'),
              elevation: 2,
              textColor: Colors.white,
              color: TBColor,
            ),
          ],
        ),
      ),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Send Message':
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => new PrivateChatPage(
                  reciverName: 'Muhammad Dev',
                )));
        break;
      case 'View Profile':
        break;
    }
  }
}
