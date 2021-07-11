import 'package:flutter/material.dart';

void main() {
  runApp(FlutterChat());
}

class FlutterChat extends StatelessWidget {
  const FlutterChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final textcontroller = TextEditingController();
    void handlesubmitted(String text) {
      textcontroller.clear();
    }

    Widget textcomposer() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: textcontroller,
                onSubmitted: handlesubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: 'Send a Message'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () => handlesubmitted(textcontroller.text),
                icon: const Icon(Icons.send),
                color: Colors.amber,
              ),
            )
          ],
        ),
      );
    }

    ;
    return Scaffold(
      body: textcomposer(),
      appBar: AppBar(
        title: Text('FlutterChat'),
      ),
    );
  }
}
