import 'package:flutter/material.dart';

class Message {
  String sender;
  String text;
  String time;

  Message({required this.sender, required this.text, required this.time});
}

class LiveChat extends StatefulWidget {
  const LiveChat({super.key});

  @override
  State<LiveChat> createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  final List<Message> _messages = [
    Message(
        sender: 'veterinarian',
        text: 'Hello, how may I help you?',
        time: '3:05 pm'),
    Message(
        sender: 'owner',
        text: 'My dog needs to be vaccinated,\nIs there any date available?',
        time: '3:06 pm'),
    Message(
        sender: 'veterinarian',
        text: "Next Sunday at 9 o'clock, is it okay with you?",
        time: '3:07 pm'),
    Message(
        sender: 'owner',
        text: 'Yes, I will be there, thanks for your help.',
        time: '3:08 pm'),
  ];

  final TextEditingController _controller = TextEditingController();

  void _handleSendMessage() {
    if (_controller.text.trim() != '') {
      setState(() {
        _messages.add(
            Message(sender: 'owner', text: _controller.text, time: '3:09 pm'));
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListView.builder(
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment:
                              _messages[index].sender == 'veterinarian'
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: _messages[index].sender == 'veterinarian'
                                    ? Colors.grey.shade100
                                    : Colors.blue.shade100,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_messages[index].text),
                                  Text(_messages[index].time,
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.grey)),
                                ],
                              ),
                            ),
                            _messages[index].sender == 'veterinarian'
                                ? const Icon(Icons.timer, size: 20)
                                : const Icon(Icons.check, size: 20),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Type your message',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: _handleSendMessage,
                      child: const Text('Send'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
