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
        session: 'YOUR_SESSION_ID',
        token: 'YOUR_TOKEN',
        apiKey: 'YOUR_API_KEY');
  }
}
