import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.yellow,
        backgroundColor: Colors.red,
        title: Text('Phạm Văn Hiếu'),
        leading: Builder(
            builder: (context) => IconButton(
                  icon: Icon(Icons.face),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )),
        actions: [
          Builder(
              builder: (context) => IconButton(
                    icon: Icon(Icons.face),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ))
        ],
      ),
      drawer: Drawer(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('OK'),
        ),
      ),
      endDrawer: Drawer(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('CANNEL'),
        ),
      ),
      body: Container(
        child: Center(child: Text('Hello')),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.share),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        // shape:const CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Center(child: Text('HAPPY')),
        ),
      ),
    );
  }
}
