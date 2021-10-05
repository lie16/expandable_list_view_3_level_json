import 'package:json_annotation/json_annotation.dart';

part 'my_menu_item.g.dart';

@JsonSerializable()
class MyMenuItem {
  MyMenuItem({
    this.applId,
    this.menuId,
    this.seqId,
    this.menuCaption,
    this.menuPath,
    this.linkFlag,
    this.note1,
    this.note2,
    this.activeFlag,
    this.dtModified,
    this.userId,
    this.subMenuId,
    this.routePath,
  });

  @JsonKey(name: 'appl_id')
  String? applId;
  @JsonKey(name: 'menu_id')
  String? menuId;
  @JsonKey(name: 'seq_id')
  String? seqId;
  @JsonKey(name: 'menu_caption')
  String? menuCaption;
  @JsonKey(name: 'menu_path')
  String? menuPath;
  @JsonKey(name: 'link_flag')
  String? linkFlag;
  @JsonKey(name: 'note1')
  String? note1;
  @JsonKey(name: 'note2')
  String? note2;
  @JsonKey(name: 'active_flag')
  String? activeFlag;
  @JsonKey(name: 'dt_modified')
  DateTime? dtModified;
  @JsonKey(name: 'user_id')
  String? userId;
  @JsonKey(name: 'sub_menu_id')
  String? subMenuId;
  @JsonKey(name: 'route_path')
  String? routePath;

  factory MyMenuItem.fromJson(Map<String, dynamic> json) =>
      _$MyMenuItemFromJson(json);

  Map<String, dynamic> toJson() => _$MyMenuItemToJson(this);
}
