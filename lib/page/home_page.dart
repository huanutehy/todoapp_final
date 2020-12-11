import 'package:flutter/material.dart';
import 'package:todoapp_final/main.dart';
import 'package:todoapp_final/widget/add_todo_dialog.dart';
import 'package:todoapp_final/widget/completed_list_widget.dart';
import 'package:todoapp_final/widget/todo_list_widget.dart';
import 'package:todoapp_final/widget/user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
   final tabs=[
    TodoListWidget(),
     CompletedListWidget(),
     User(),

   ];
   return Scaffold(
     appBar: AppBar(
       title: Text(MyApp.title),
     ),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Theme.of(context).primaryColor,
       unselectedItemColor: Colors.white.withOpacity(0.7),
       selectedItemColor: Colors.white,
       currentIndex: selectedIndex,
       onTap: (index)=>setState((){
         selectedIndex= index;
       }),
       items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.how_to_reg_rounded),
          label: 'Home',
        ),
         BottomNavigationBarItem(
           icon: Icon(Icons.done_all),
           label: 'Check list',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.account_circle_outlined),
           label: 'Account',
         ),
       ],
     ),
     body: tabs[selectedIndex],
     floatingActionButton: FloatingActionButton(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(50),
       ),
       backgroundColor: Colors.blue,
       onPressed: ()=>showDialog(
         context: context,
    child: AddTodoDialogWidget(),
         barrierDismissible: false,
       ),
       child: Icon(Icons.add),
     ),
   );
  }
}
