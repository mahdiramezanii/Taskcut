import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskut_application/models/task_type.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class Task {
  Task({
    required this.title,
    required this.subtitle,
    required this.time,
    this.is_done = false,
    required this.type,
  });
  @HiveField(0)
  String title;
  @HiveField(1)
  String subtitle;
  @HiveField(2)
  bool is_done = false;
  @HiveField(3)
  DateTime time;

  @HiveField(4)
  TaskType type;
}
