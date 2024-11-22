class SystemLanguage {
  const SystemLanguage({
    required this.name,
    required this.isRTL,
    required this.version,
    required this.isDefault,
  });

  SystemLanguage.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        isRTL = (json['app_rtl_support'] as String) == '1',
        version = json['app_version'] as String,
        isDefault = (json['app_default'] as String) == '1';

  final String name;
  final bool isRTL;
  final String version;
  final bool isDefault;
}
