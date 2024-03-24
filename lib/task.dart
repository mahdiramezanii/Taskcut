import 'package:hive_flutter/hive_flutter.dart';

part 'task.g.dart';

@HiveType(typeId: 2)
class Task extends HiveObject {
  Task({
    required this.title,
    required this.subTitle,
    this.is_done = false,
    required  this.time,
  });
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  bool is_done;

  @HiveField(3)
  DateTime time;
}
