import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class Task {
  Task({
    required this.title,
    required this.subtitle,
    required this.time,
    this.is_done = false,
  });
  @HiveField(0)
  String title;
  @HiveField(1)
  String subtitle;
  @HiveField(2)
  bool is_done = false;
  @HiveField(3)
  DateTime time;
}
