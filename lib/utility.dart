import 'package:taskut_application/enum_task_type.dart';
import 'package:taskut_application/task_type.dart';

List<TaskType> task_type_list() {
  var result = [
    TaskType(
      title: "مدیتیشن",
      image: "assets/images/meditate.png",
      task_type_enum: task_type_enum.meditation,
    ),
    TaskType(
      title: "جلسه دوستانه",
      image: "assets/images/social_frends.png",
      task_type_enum: task_type_enum.frends,
    ),
    TaskType(
      title: "جلسه کاری",
      image: "assets/images/work_meeting.png",
      task_type_enum: task_type_enum.work_meeting,
    ),
    TaskType(
      title: "کار کردن",
      image: "assets/images/workout.png",
      task_type_enum: task_type_enum.workout,
    ),
  ];

  return result;
}
