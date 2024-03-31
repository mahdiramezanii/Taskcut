import 'package:hive_flutter/hive_flutter.dart';

part 'enum_task_type.g.dart';

@HiveType(typeId: 1)
enum TaskTypeEnum {
  @HiveField(0)
  working,
  @HiveField(1)
  meeting,
  @HiveField(2)
  workingout,
  @HiveField(3)
  meditation,
  @HiveField(4)
  freinds,
}
