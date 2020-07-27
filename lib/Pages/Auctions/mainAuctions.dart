import 'package:tbdm_chat/utlis/exports.dart';

class MainAuctions extends StatefulWidget {
  @override
  _MainAuctionsState createState() => _MainAuctionsState();
}

class _MainAuctionsState extends State<MainAuctions> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Auctions',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: TBColor.withOpacity(0.3),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 15,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new AuctionDetailsPage()));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      'https://cdn.sleepnumber.com/image/upload/f_auto,q_auto:good/v043229913436682579326006/medias/%7CDESKTOP%7Cc2-hero-image-lg.jpg.jpg',
                      width: 250,
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textTBDM('Silver Bed',
                          align: TextAlign.start,
                          maxLines: 1,
                          color: Colors.black,
                          size: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0,right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: textTBDM(
                              'Silver Bed for Sale in this Auction',
                              align: TextAlign.start,
                              maxLines: 2,
                              color: Colors.black,
                              size: 12.0,
                            ),
                            width: 120,
                          ),
                          CircleAvatar(child: Text('15',style: TextStyle(fontSize: 8.0),),backgroundColor:Colors.red,radius: 12,),
                        ],
                      ),
                    ),
                  ],
                ),
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                shadowColor: TBColor.withOpacity(0.3),
              ),
            );
          },
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

/*
return GridView(

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  shrinkWrap: true,
                  children: withSearch == false
                      ? snapshot.data.documents.map((doc) {
                          var listIndex = snapshot.data.documents
                              .map((e) => e.data['name']);
                          var passIndex =
                              listIndex.toList().indexOf(doc.data['name']);
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CatHome(
                                          index: passIndex,
                                          len: snapshot.data.documents.length,
                                        )),
                              );
                            },
                            child: catItem(doc),
                          );
                        }).toList()
                      : snapshot.data.documents
                          .where((l) => l.data['name'] == textSearch)
                          .toList()
                          .map((doc) {
                          var listIndex = snapshot.data.documents
                              .map((e) => e.data['name']);
                          var passIndex =
                              listIndex.toList().indexOf(doc.data['name']);

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CatHome(
                                          index: passIndex,
                                          len: snapshot.data.documents.length,
                                        )),
                              );
                            },
                            child: catItem(doc),
                          );
                        }).toList(),
                );
 */
