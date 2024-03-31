import 'package:taskut_application/models/enum_task_type.dart';
import 'package:taskut_application/models/task_type.dart';

List<TaskType> taskTypeList() {
  var result = [
    TaskType(
      title: "کار شخصی",
      image: "assets/images/workout.png",
      type: TaskTypeEnum.working,
    ),
    TaskType(
      title: "جلسه کاری",
      image: "assets/images/work_meeting.png",
      type: TaskTypeEnum.workingout,
    ),
    TaskType(
      title: "دوستانه",
      image: "assets/images/social_frends.png",
      type: TaskTypeEnum.freinds,
    ),
    TaskType(
      title: "مدیتیشن",
      image: "assets/images/meditate.png",
      type: TaskTypeEnum.meditation,
    ),
  ];

  return result;
}
