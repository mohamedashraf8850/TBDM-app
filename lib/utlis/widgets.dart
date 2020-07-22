import 'package:tbdm_chat/utlis/exports.dart';

 const Color TBColor = Colors.teal;

 // Chat Message
class ChatMessage extends StatelessWidget {
 final String text;
 ChatMessage({this.text});

 @override
 Widget build(BuildContext context) {
  return new Container(
   margin: const EdgeInsets.symmetric(vertical: 10.0),
   child: new Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
     Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
       side: BorderSide(color: Colors.white70, width: 1),
       borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(20.0),
       child: new Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: new Text(text),
       ),
     )
    ],
   ),
  );
 }
}

Widget textTBDM(String text,{color,size ,fontWeight,maxLines,align,dec}){
 return Text(
  text,
 style: TextStyle(color: color == null ?TBColor: color,fontSize: size == null? 12:size,fontWeight:fontWeight,decoration: dec ),
  maxLines: maxLines ==null ? 1 : maxLines,
  textAlign:align ,
  overflow: TextOverflow.ellipsis
 );
}