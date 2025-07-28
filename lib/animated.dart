import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class ChatMessage {
  final String id;
  final String text;

  ChatMessage({required this.id, required this.text});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat with Animation',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ChatScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<ChatMessage> _messages = [
    ChatMessage(id: '1', text: 'Hello!'),
    ChatMessage(id: '2', text: 'How are you?'),
    ChatMessage(id: '3', text: 'Let’s meet tomorrow.'),
  ];

  final TextEditingController _controller = TextEditingController();

  void _sendMessage(String text) {
    if (text.trim().isEmpty) return;
    final newMessage = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: text.trim(),
    );

    setState(() {
      _messages.insert(0, newMessage); // Insert at top due to reverse:true
    });
    _listKey.currentState?.insertItem(0);
    _controller.clear();
  }

  void _deleteMessage(int index) {
    final removed = _messages[index];
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => ChatBubble(
        message: removed,
        animation: animation,
      ),
      duration: Duration(milliseconds: 200),
    );
    setState(() {
      _messages.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat Animation')),
      body: Column(
        children: [
          Expanded(
            child: AnimatedList(
              key: _listKey,
              reverse: true,
              padding: EdgeInsets.all(12),
              initialItemCount: _messages.length,
              itemBuilder: (context, index, animation) {
                return GestureDetector(
                  onLongPress: () => _showDeletePopup(index),
                  child: ChatBubble(
                    message: _messages[index],
                    animation: animation,
                  ),
                );
              },
            ),
          ),
          Divider(height: 1),
          _buildInput(),
        ],
      ),
    );
  }

  Widget _buildInput() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                onSubmitted: _sendMessage,
                decoration: InputDecoration(
                  hintText: "Type a message...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                ),
              ),
            ),
            SizedBox(width: 8),
            IconButton(
              onPressed: () => _sendMessage(_controller.text),
              icon: Icon(Icons.send, color: Colors.teal),
            )
          ],
        ),
      ),
    );
  }

  void _showDeletePopup(int index) {
    final msg = _messages[index];
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Delete Message?"),
        content: Text(msg.text),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: Text("Cancel")),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _deleteMessage(index);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text("Delete"),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final ChatMessage message;
  final Animation<double> animation;

  const ChatBubble({
    super.key,
    required this.message,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(parent: animation, curve: Curves.easeOut),
      child: FadeTransition(
        opacity: animation,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.teal.shade100,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.teal.shade300),
          ),
          child: Text(
            message.text,
            style: TextStyle(fontSize: 16, color: Colors.teal.shade900),
          ),
        ),
      ),
    );
  }
}
