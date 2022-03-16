import 'dart:convert';

class Employment {
  String title;
  String keySkill;
  
  Employment({
    required this.title,
    required this.keySkill,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'key_skill': keySkill,
    };
  }

  factory Employment.fromMap(Map<String, dynamic> map) {
    return Employment(
      title: map['title'] ?? '',
      keySkill: map['key_skill'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Employment.fromJson(String source) => Employment.fromMap(json.decode(source));

  @override
  String toString() => 'Employment(title: $title, keySkill: $keySkill)';
}
