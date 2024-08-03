import 'package:flutter/material.dart';
import 'package:todo_app/flavors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(F.title),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => ListTile(
              title: Text("todo $index"),

              trailing: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.delete),
              ),
              leading: Checkbox(onChanged: (v){}, value: true,),
            ),
          ),
        ));
  }


}
