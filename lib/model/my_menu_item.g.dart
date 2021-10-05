// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyMenuItem _$MyMenuItemFromJson(Map<String, dynamic> json) => MyMenuItem(
      applId: json['appl_id'] as String?,
      menuId: json['menu_id'] as String?,
      seqId: json['seq_id'] as String?,
      menuCaption: json['menu_caption'] as String?,
      menuPath: json['menu_path'] as String?,
      linkFlag: json['link_flag'] as String?,
      note1: json['note1'] as String?,
      note2: json['note2'] as String?,
      activeFlag: json['active_flag'] as String?,
      dtModified: json['dt_modified'] == null
          ? null
          : DateTime.parse(json['dt_modified'] as String),
      userId: json['user_id'] as String?,
      subMenuId: json['sub_menu_id'] as String?,
      routePath: json['route_path'] as String?,
    );

Map<String, dynamic> _$MyMenuItemToJson(MyMenuItem instance) =>
    <String, dynamic>{
      'appl_id': instance.applId,
      'menu_id': instance.menuId,
      'seq_id': instance.seqId,
      'menu_caption': instance.menuCaption,
      'menu_path': instance.menuPath,
      'link_flag': instance.linkFlag,
      'note1': instance.note1,
      'note2': instance.note2,
      'active_flag': instance.activeFlag,
      'dt_modified': instance.dtModified?.toIso8601String(),
      'user_id': instance.userId,
      'sub_menu_id': instance.subMenuId,
      'route_path': instance.routePath,
    };
