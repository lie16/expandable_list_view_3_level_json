import 'package:json_annotation/json_annotation.dart';

import 'my_menu.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  Profile({
    this.username,
    this.name1,
    this.name2,
    this.name3,
    this.menus,
  });

  String? username;
  String? name1;
  String? name2;
  String? name3;
  List<Menu>? menus;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
