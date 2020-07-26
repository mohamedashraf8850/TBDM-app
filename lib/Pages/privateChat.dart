import 'package:tbdm_chat/utlis/exports.dart';

class PrivateChatPage extends StatefulWidget {
  final String reciverName;
  PrivateChatPage({this.reciverName});
  @override
  State createState() => new PrivateChatPageState();
}

class PrivateChatPageState extends State<PrivateChatPage> {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
                child: Image.network(
                  'https://img.icons8.com/clouds/2x/user.png',
                  width: 50,
                  height: 50,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.reciverName,
                style: TextStyle(
                    color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'View Profile'}
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
        centerTitle: true,
        elevation: 0,
        backgroundColor: TBColor.withOpacity(0.3),
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          new Divider(
            height: 1.0,
          ),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _textComposerWidget(),
          ),
        ],
      ),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'View Profile':
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => new UserChatProfile(
              recName: 'Muhammad Dev',
              phoneNum: '01121749886',
            )));
        break;
//      case 'Mute':
//        break;
//      case 'Block':
//        break;
//      case 'Report':
//        break;
    }
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
      senid: '123',
      recname: 'MuhammadDev',
      recId: '456',
      private: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
                controller: _textController,
                onSubmitted: _handleSubmitted,
              ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            )
          ],
        ),
      ),
    );
  }
}
