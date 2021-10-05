// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) => Menu(
      applId: json['appl_id'] as String?,
      groupId: json['group_id'] as String?,
      menuCaption: json['menu_caption'] as String?,
      menuPath: json['menu_path'] as String?,
      subMenuId: json['sub_menu_id'] as String?,
      submenus: (json['submenus'] as List<dynamic>?)
          ?.map((e) => MyMenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'appl_id': instance.applId,
      'group_id': instance.groupId,
      'menu_caption': instance.menuCaption,
      'menu_path': instance.menuPath,
      'sub_menu_id': instance.subMenuId,
      'submenus': instance.submenus,
    };
