import 'package:tbdm_chat/utlis/exports.dart';

const Color TBColor = Colors.teal;

class ChatMessage extends StatelessWidget {
  final String text, senid, recname, recId;
  bool private = false;

  ChatMessage({this.text, this.senid, this.recname, this.recId, this.private});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: senid == '123'
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Card(
                  color: TBColor.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: TBColor, width: 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.zero,
                    ),
                  ),
                  // margin: EdgeInsets.all(20.0),
                  child: new Container(
                    width: 150,
                    margin: const EdgeInsets.all(3.0),
                    padding: const EdgeInsets.all(3.0),
                    child: textTBDM(text,
                        maxLines: 50,
                        color: Colors.white,
                        align: TextAlign.end),
                  ),
                )
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: TBColor, width: 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  // margin: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      private == true
                          ? Container()
                          : GestureDetector(
                              child: new Container(
                                margin: const EdgeInsets.only(
                                    right: 10.0, left: 3.0),
                                padding: const EdgeInsets.only(
                                    right: 10.0, left: 3.0),
                                child: new Text(
                                  recname,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new PrivateChatPage()));
                              },
                            ),
                      new Container(
                        width: 150,
                        margin: const EdgeInsets.all(3.0),
                        padding: const EdgeInsets.all(3.0),
                        child: textTBDM(text,
                            maxLines: 50,
                            color: Colors.black,
                            align: TextAlign.start),
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}

Widget textTBDM(String text, {color, size, fontWeight, maxLines, align, dec}) {
  return Text(text,
      style: TextStyle(
          color: color == null ? TBColor : color,
          fontSize: size == null ? 12 : size,
          fontWeight: fontWeight,
          decoration: dec),
      maxLines: maxLines == null ? 1 : maxLines,
      textAlign: align,
      overflow: TextOverflow.ellipsis);
}
