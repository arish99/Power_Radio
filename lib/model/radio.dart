import 'dart:convert';

import 'package:flutter/foundation.dart';

class MyRadioList {
  final List<MyRadio> radios;
  MyRadioList({
    this.radios,
  });

  MyRadioList copyWith({
    List<MyRadio> radios,
  }) {
    return MyRadioList(
      radios: radios ?? this.radios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'radios': radios?.map((x) => x.toMap())?.toList(),
    };
  }

  factory MyRadioList.fromMap(Map<String, dynamic> map) {
    return MyRadioList(
      radios: List<MyRadio>.from(map['radios']?.map((x) => MyRadio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadioList.fromJson(String source) =>
      MyRadioList.fromMap(json.decode(source));

  @override
  String toString() => 'MyRadioList(radios: $radios)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyRadioList && listEquals(other.radios, radios);
  }

  @override
  int get hashCode => radios.hashCode;
}

class MyRadio {
  final int id;
  final int order;
  final String name;
  final String tagline;
  final String color;
  final String desc;
  final String url;
  final String icon;
  final String image;
  final String lang;
  final String category;
  MyRadio({
    this.id,
    this.order,
    this.name,
    this.tagline,
    this.color,
    this.desc,
    this.url,
    this.icon,
    this.image,
    this.lang,
    this.category,
  });

  MyRadio copyWith({
    int id,
    int order,
    String name,
    String tagline,
    String color,
    String desc,
    String url,
    String icon,
    String image,
    String lang,
    String category,
  }) {
    return MyRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      tagline: tagline ?? this.tagline,
      color: color ?? this.color,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      icon: icon ?? this.icon,
      image: image ?? this.image,
      lang: lang ?? this.lang,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'order': order,
      'name': name,
      'tagline': tagline,
      'color': color,
      'desc': desc,
      'url': url,
      'icon': icon,
      'image': image,
      'lang': lang,
      'category': category,
    };
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return MyRadio(
      id: map['id'],
      order: map['order'],
      name: map['name'],
      tagline: map['tagline'],
      color: map['color'],
      desc: map['desc'],
      url: map['url'],
      icon: map['icon'],
      image: map['image'],
      lang: map['lang'],
      category: map['category'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadio.fromJson(String source) =>
      MyRadio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyRadio(id: $id, order: $order, name: $name, tagline: $tagline, color: $color, desc: $desc, url: $url, icon: $icon, image: $image, lang: $lang, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyRadio &&
        other.id == id &&
        other.order == order &&
        other.name == name &&
        other.tagline == tagline &&
        other.color == color &&
        other.desc == desc &&
        other.url == url &&
        other.icon == icon &&
        other.image == image &&
        other.lang == lang &&
        other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        order.hashCode ^
        name.hashCode ^
        tagline.hashCode ^
        color.hashCode ^
        desc.hashCode ^
        url.hashCode ^
        icon.hashCode ^
        image.hashCode ^
        lang.hashCode ^
        category.hashCode;
  }
}
