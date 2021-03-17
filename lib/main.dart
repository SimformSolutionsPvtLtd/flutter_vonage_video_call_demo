import 'package:flutter/material.dart';
import 'package:vonage_video_call_flutter/vonage_video_call.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Vonage Video Call Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Make Video Call'),
          onPressed: startVideoCall,
        ),
      ),
    );
  }

  void startVideoCall() {
    FlutterVonageVideoCall.init(
        session: '2_MX40Njg5NDQ2NH5-MTYxNDc3MjExODE5NH43WTl6Y3hxR1hPQ2VHaXJORXpiK1NhRkR-fg',
        token: 'T1==cGFydG5lcl9pZD00Njg5NDQ2NCZzaWc9Yjk0ZmMzYjJjZWRiMWIyMzE2OGFkMTAxMmM2MjRhYmRjMDBhNTg2ZTpzZXNzaW9uX2lkPTJfTVg0ME5qZzVORFEyTkg1LU1UWXhORGMzTWpFeE9ERTVOSDQzV1RsNlkzaHhSMWhQUTJWSGFYSk9SWHBpSzFOaFJrUi1mZyZjcmVhdGVfdGltZT0xNjE0NzcyMTM4Jm5vbmNlPTAuMDE1OTYyMDczOTMwNTAyNDImcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTYxNzM2MDQzOSZpbml0aWFsX2xheW91dF9jbGFzc19saXN0PQ==',
        apiKey: '46894464');
  }
}
