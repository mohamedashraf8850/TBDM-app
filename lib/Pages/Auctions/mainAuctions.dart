
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
            onPressed: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new CreateAuctionPage()));
            },
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left:10.0,right:10.0),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            'https://cdn.sleepnumber.com/image/upload/f_auto,q_auto:good/v043229913436682579326006/medias/%7CDESKTOP%7Cc2-hero-image-lg.jpg.jpg',
                            width: 200,
                            height: 120,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: textTBDM('Electronics',
                                align: TextAlign.start,
                                maxLines: 1,
                                color: Colors.black,
                                size: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      color: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),side: BorderSide(color: TBColor)),
                      shadowColor: Colors.red.withOpacity(0.3),
                    ),
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,

              ),
            ),
            SizedBox(height: 15,),
            Expanded(
              flex: 3,
              child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new AuctionDetailsPage()));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Image.network(
                                'https://cdn.sleepnumber.com/image/upload/f_auto,q_auto:good/v043229913436682579326006/medias/%7CDESKTOP%7Cc2-hero-image-lg.jpg.jpg',
                                width: 250,
                                height: 100,
                              ),
                              Banner(
                                message: 'most common',
                                location: BannerLocation.topStart,
                                color: Colors.amber,
                                textDirection: TextDirection.ltr,
                                layoutDirection: TextDirection.ltr,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                textTBDM('Silver Bed',
                                    align: TextAlign.start,
                                    maxLines: 1,
                                    color: Colors.black,
                                    size: 15.0,
                                    fontWeight: FontWeight.bold),
                                textTBDM('5.000 L.E',
                                    align: TextAlign.start,
                                    maxLines: 1,
                                    color: Colors.black,
                                    size: 10.0,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                                CircleAvatar(
                                  child: Text(
                                    '15',
                                    style: TextStyle(fontSize: 8.0),
                                  ),
                                  backgroundColor: Colors.red,
                                  radius: 12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      color: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),side: BorderSide(color: Colors.amber)),
                      shadowColor: TBColor.withOpacity(0.3),
                    ),
                  );
                },
                scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
        color:Colors.white
      ),
    );
  }
}
