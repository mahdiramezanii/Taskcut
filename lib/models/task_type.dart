import 'package:hive_flutter/hive_flutter.dart';

part 'task_type.g.dart';

@HiveType(typeId: 2)
class TaskType {
  TaskType({
    required this.title,
    required this.image,
    required this.type,
  });

  @HiveField(0)
  String title;
  @HiveField(1)
  String image;
  @HiveField(2)
  Enum type;
}
