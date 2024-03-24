
import 'package:hive_flutter/hive_flutter.dart';

part 'enum_task_type.g.dart';

@HiveType(typeId: 4)
enum task_type_enum {

  @HiveField(0)
  meditation,

  @HiveField(1)
  frends,

  @HiveField(2)
  workout,

  @HiveField(3)
  work_meeting,
  
}
