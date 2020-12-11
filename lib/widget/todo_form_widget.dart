import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedTodo;
  const TodoFormWidget({
    Key key,
    this.title = '',
    this.description = '',
    this.onChangedTitle,
    this.onChangedDescription,
    this.onSavedTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)=> SingleChildScrollView(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildTitle(),
        SizedBox(height: 8),
        buildDescription(),
        SizedBox(height: 16),
        buildButton(),
      ],
    ),
  );

  Widget buildTitle() => TextFormField(
    maxLines: 1,
    initialValue: title,
    onChanged: onChangedTitle,
    validator: (title) {
      if (title.isEmpty) {
        return 'The title cannot be empty';
      }
      return null;
    },
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Job Title',
    ),
  );

  Widget buildDescription() => TextFormField(
    maxLines: 1,
    initialValue: description,
    onChanged: onChangedDescription,
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Date',
    ),
  );
///huânnnan
  Widget buildButton() => SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
      ),
      onPressed: onSavedTodo,
      child: Text('Save'),
    ),
  );
}