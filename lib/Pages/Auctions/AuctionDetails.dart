import 'package:tbdm_chat/utlis/exports.dart';

class AuctionDetailsPage extends StatefulWidget {
  final String auctionName, auctionDescription;

  const AuctionDetailsPage({Key key, this.auctionName, this.auctionDescription})
      : super(key: key);

  @override
  _AuctionDetailsPageState createState() => _AuctionDetailsPageState();
}

class _AuctionDetailsPageState extends State<AuctionDetailsPage> {
  TextEditingController priceController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverAppBar(expandedHeight: 300),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((_, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 50.0, right: 15.0, left: 15.0, bottom: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    textTBDM('Silver Bed',
                        size: 25.0, fontWeight: FontWeight.bold),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        child: textTBDM('Good Bed with Silver Color',
                            align: TextAlign.start, maxLines: 6),
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          textTBDM('Start at:',
                              color: Colors.black,
                              align: TextAlign.start,
                              size: 15.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: textTBDM('15/10/2020',
                                align: TextAlign.start, size: 15.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          textTBDM('End at:',
                              color: Colors.black,
                              align: TextAlign.start,
                              size: 15.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: textTBDM('15/11/2020',
                                align: TextAlign.start, size: 15.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          textTBDM('Status:',
                              color: Colors.black,
                              align: TextAlign.start,
                              size: 15.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: textTBDM('Pending',
                                align: TextAlign.start, size: 15.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          textTBDM('Increment value:',
                              color: Colors.black,
                              align: TextAlign.start,
                              size: 15.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: textTBDM('1000',
                                align: TextAlign.start, size: 15.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: textTBDM('L.E',
                                align: TextAlign.start, size: 10.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          textTBDM('Open Price:',
                              color: Colors.black,
                              align: TextAlign.start,
                              size: 15.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: textTBDM('5000',
                                align: TextAlign.start, size: 15.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: textTBDM('L.E',
                                align: TextAlign.start, size: 10.0),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 150,
                          child: RaisedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  child: new AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    title: new Text("Post Price"),
                                    content: new TextField(
                                      controller: priceController,
                                      decoration: InputDecoration(
                                          hintText: 'ex: 5.000'),
                                    ),
                                    actions: <Widget>[
                                      textTBDM('Increment Value : 1.000 L.E',
                                          align: TextAlign.start),
                                      SizedBox(width: 20.0),
                                      RaisedButton(
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text('Post'),
                                        elevation: 2,
                                        textColor: Colors.white,
                                        color: TBColor,
                                      )
                                    ],
                                  ));
                            },
                            child: Text('Post Price'),
                            elevation: 2,
                            textColor: Colors.white,
                            color: TBColor,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height - 150,
                          color: TBColor.withOpacity(0.3),
                          margin: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                          child: ListView.builder(
                            itemCount: 35,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                    child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            padding: const EdgeInsets.only(
                                                left: 5.0),
                                            child: textTBDM('Muhammad $index',
                                                align: TextAlign.start,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            textTBDM('1.000.000'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5.0),
                                              child: textTBDM('L.E'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Image.network(
          'https://cdn.sleepnumber.com/image/upload/f_auto,q_auto:good/v043229913436682579326006/medias/%7CDESKTOP%7Cc2-hero-image-lg.jpg.jpg',
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text(
              "Silver Bed",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 1.5 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 4,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              color: Colors.transparent,
              child: SizedBox(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://cdn.sleepnumber.com/image/upload/f_auto,q_auto:good/v043229913436682579326006/medias/%7CDESKTOP%7Cc2-hero-image-lg.jpg.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
