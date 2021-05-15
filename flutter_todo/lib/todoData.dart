/**
 * todo1件分のデータクラス
 */
class TodoData {
  String _title;
  String _detail;
  DateTime _dateTime;

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get detail => _detail;

  set detail(String value) {
    _detail = value;
  }

  DateTime get dateTime => _dateTime;

  set dateTime(DateTime value) {
    _dateTime = value;
  }
}