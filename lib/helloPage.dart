import 'package:flutter/material.dart';
import 'package:tp/sql.dart';

class helloPage extends StatefulWidget {
  const helloPage({super.key});

  @override
  State<helloPage> createState() => _helloPageState();
}

class _helloPageState extends State<helloPage> {
  final TextEditingController _titleController = TextEditingController(); // Create a TextEditingController
  final TextEditingController _DescriptionController = TextEditingController(); // Create a TextEditingController

  @override
  void dispose() {
    _titleController.dispose();
    _DescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            TextField(
              controller: _titleController, // Assign the controller to the TextField
              decoration: const InputDecoration(
                hintText: 'Enter Title',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: _DescriptionController, // Assign the controller to the TextField
              decoration: const InputDecoration(
                hintText: 'Enter Description',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Add spacing between elements
            ElevatedButton(
              onPressed: () async {
                String title = _titleController.text;
                String Description = _DescriptionController.text;
                int id = await SQLHelper.createItem(title, Description);
                print('Item created with ID: $id $title $Description');
                // Optionally, clear the text field after saving
                _titleController.clear();
                _DescriptionController.clear();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
