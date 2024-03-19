import 'package:hive_flutter/hive_flutter.dart';

part 'information.g.dart';

@HiveType(typeId: 1)
class Information{

  Information({

    this.name,
    this.age,
    this.addres,
  });

    @HiveField(0)
    String? name;
    @HiveField(1)
    int? age;
    @HiveField(2)
    String? addres;

}