import 'package:json_annotation/json_annotation.dart';

import 'my_menu_item.dart';

part 'my_menu.g.dart';

@JsonSerializable()
class Menu {
  Menu({
    this.applId,
    this.groupId,
    this.menuCaption,
    this.menuPath,
    this.subMenuId,
    this.submenus,
  });

  @JsonKey(name: 'appl_id')
  String? applId;
  @JsonKey(name: 'group_id')
  String? groupId;
  @JsonKey(name: 'menu_caption')
  String? menuCaption;
  @JsonKey(name: 'menu_path')
  String? menuPath;
  @JsonKey(name: 'sub_menu_id')
  String? subMenuId;
  @JsonKey(name: 'submenus')
  List<MyMenuItem>? submenus;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);
}
