import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:tbdm_chat/utlis/exports.dart';

class CreateAuctionPage extends StatefulWidget {
  @override
  _CreateAuctionPageState createState() => _CreateAuctionPageState();
}

class _CreateAuctionPageState extends State<CreateAuctionPage> {
  TextEditingController titleController,
      descController,
      start_at_Controller,
      end_at_Controller,
      increment_value_Controller,
      opnen_price_Controller;
  File _image;
  final picker = ImagePicker();
  @override
  void initState() {
    titleController = new TextEditingController();
    descController = new TextEditingController();
    start_at_Controller = new TextEditingController();
    end_at_Controller = new TextEditingController();
    increment_value_Controller = new TextEditingController();
    opnen_price_Controller = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Icons.file_upload,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            textTBDM('Title'),
            TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
            ),
            textTBDM('Description'),
            TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
            ),
            textTBDM('Start at'),
            TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
            ),
            textTBDM('End at'),
            TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
            ),
            textTBDM('Increment Value'),
            TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
            ),
            textTBDM('Open Price'),
            TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
            ),
            textTBDM('Cover Image'),
            IconButton(
              icon: _image != null
                  ? Stack(
                      children: <Widget>[
                        Opacity (child: Icon(Icons.add_circle),opacity: 0.3,),
                        Image.file(
                          _image,
                          height: 50,
                          width: 50,
                        )
                      ],
                    )
                  : Icon(Icons.add_circle),
              onPressed: () {},
            ),
            textTBDM('Image Details'),
            IconButton(
              icon: _image != null
                  ? Stack(
                children: <Widget>[
                  Opacity (child: Icon(Icons.add_circle),opacity: 0.3,),
                  Image.file(
                    _image,
                    height: 50,
                    width: 50,
                  )
                ],
              )
                  : Icon(Icons.add_circle),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
