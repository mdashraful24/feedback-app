import 'package:flutter/material.dart';

void main() {
  runApp(const FeedbackApp());
}

class FeedbackApp extends StatelessWidget {
  const FeedbackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIU Feedback App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FeedbackHome(),
    );
  }
}

class FeedbackHome extends StatefulWidget {
  const FeedbackHome({super.key});

  @override
  State<FeedbackHome> createState() => _FeedbackHomeState();
}

class _FeedbackHomeState extends State<FeedbackHome> {
  String? _selectedType;
  final TextEditingController _feedbackController = TextEditingController();
  bool _isAnonymous = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIU Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Submit Your Feedback',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Select Feedback Type:'),
            RadioListTile<String>(
              title: const Text('Courses'),
              value: 'Courses',
              groupValue: _selectedType,
              onChanged: (value) {
                setState(() {
                  _selectedType = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Teachers'),
              value: 'Teachers',
              groupValue: _selectedType,
              onChanged: (value) {
                setState(() {
                  _selectedType = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Campus Facilities'),
              value: 'Campus Facilities',
              groupValue: _selectedType,
              onChanged: (value) {
                setState(() {
                  _selectedType = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Your Feedback:'),
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your feedback here...',
              ),
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text('Submit Anonymously'),
              value: _isAnonymous,
              onChanged: (value) {
                setState(() {
                  _isAnonymous = value ?? false;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitFeedback,
              child: const Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitFeedback() {
    if (_selectedType == null || _feedbackController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a type and enter feedback.')),
      );
      return;
    }
    // Simulate submission
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Feedback Submitted'),
        content: Text(
          'Thank you for your feedback on $_selectedType. '
          '${_isAnonymous ? 'Submitted anonymously.' : 'Submitted.'}',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _resetForm();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _resetForm() {
    setState(() {
      _selectedType = null;
      _feedbackController.clear();
      _isAnonymous = false;
    });
  }
}
