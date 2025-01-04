import 'package:flutter/material.dart';
import 'package:vetcare_project/screens.dart/layout.dart/home_page.dart';

class Message {
  String sender;
  String text;
  String timestamp;

  Message({required this.sender, required this.text, required this.timestamp});
}

class LiveChat extends StatefulWidget {
  const LiveChat({super.key});

  @override
  State<LiveChat> createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  final List<Message> _messages = [];
  final TextEditingController _controller = TextEditingController();

  String _formatTimeOfDay(TimeOfDay time) {
    final hours = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final period = time.period == DayPeriod.am ? "AM" : "PM";
    final minutes = time.minute.toString().padLeft(2, '0');
    return "$hours:$minutes $period";
  }

  void _handleSendMessage() {
    if (_controller.text.trim() != '') {
      setState(() {
        final currentTime = TimeOfDay.now();
        final formattedTime = _formatTimeOfDay(currentTime);

        _messages.add(Message(
          sender: 'owner',
          text: _controller.text,
          timestamp: formattedTime,
        ));
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIVE CHAT'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
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
                            Flexible(
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color:
                                      _messages[index].sender == 'veterinarian'
                                          ? Colors.grey.shade100
                                          : Colors.blue.shade100,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_messages[index].text),
                                    Text(_messages[index].timestamp,
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ),
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
                        maxLines: 1,
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
