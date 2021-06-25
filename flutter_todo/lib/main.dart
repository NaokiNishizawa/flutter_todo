import 'package:flutter/material.dart';
import 'package:flutter_todo/todoDetailsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData.dark(),
        home: MyHomePage(title: 'flutter_todo'),
        routes: <String, WidgetBuilder>{
          MyHomePage.id : (BuildContext context) => new MyHomePage(title: 'flutter_todo'),
          TodoDetailsPage.id :(BuildContext context) => new TodoDetailsPage()
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const id = "home";
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _goTodoDetailsPage() {
    Navigator.pushNamed(context, TodoDetailsPage.id);
  }

  @override
  Widget build(BuildContext context) {
    var list = [];

    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return _messageItem(list[index]);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _goTodoDetailsPage,
        tooltip: 'goDetailsPage',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  /**
   * 1行のレイアウトを作成する
   */
  Widget _messageItem(String title) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        onTap: () {
          print("onTap called.");
        }, // タップ
      ),
    );
  }
}
