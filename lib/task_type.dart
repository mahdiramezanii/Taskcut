
import 'package:hive_flutter/hive_flutter.dart';

part 'task_type.g.dart';

@HiveType(typeId: 3)
class TaskType {
  TaskType({
    required this.title,
    required this.image,
    required this.task_type_enum,
  });
  
  @HiveField(0)
  String title;
  @HiveField(1)
  String image;
  @HiveField(2)
  Enum task_type_enum;
}
