import 'package:flutter/material.dart';

class TodoDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends State<TodoDetailsPage> {
  String title = "";
  String detail = "";
  TextEditingController _titleController;
  TextEditingController _detailController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("詳細")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _titleController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: "題名",
              ),
              onChanged: (value) {
                setState(() {
                  title = value;
                });
              },
            ),
            TextFormField(
              controller: _detailController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: "本文",
              ),
              onChanged: (value) {
                setState(() {
                  detail = value;
                });
              },
            ),
            ElevatedButton(
              child: const Text('作成'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                onPrimary: Colors.black,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                // TODO 保存処理
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleController?.dispose();
    _detailController?.dispose();

    super.dispose();
  }
}
