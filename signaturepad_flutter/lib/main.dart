import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

void main() {
  return runApp(SignaturePadApp());
}

///Renders the SignaturePad widget.
class SignaturePadApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signature Pad',
      home: _MyHomePage(title: 'Signature Pad'),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  _MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  void _handleClearButtonPressed() {
    signatureGlobalKey.currentState.clear();
  }

  void _handleSaveButtonPressed() async {
    final data = await signatureGlobalKey.currentState.toImage(pixelRatio: 3.0);
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
    if (data != null) {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(),
              body: Center(
                child: Container(
                  color: Colors.grey[300],
                  child: Image.memory(bytes.buffer.asUint8List()),
                ),
              ),
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  child: SfSignaturePad(
                      key: signatureGlobalKey,
                      backgroundColor: Colors.white,
                      strokeColor: Colors.black,
                      minimumStrokeWidth: 1.0,
                      maximumStrokeWidth: 4.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)))),
          SizedBox(height: 10),
          Row(children: <Widget>[
            FlatButton(
              child: Text('To Image'),
              onPressed: _handleSaveButtonPressed,
            ),
            FlatButton(
              child: Text('Clear'),
              onPressed: _handleClearButtonPressed,
            )
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)
        ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center));
  }
}
