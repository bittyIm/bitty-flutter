class I18n {
  static Map<String, String> data;

  static Map<String, String> msg;

  I18n() {
    data.putIfAbsent("中文(zh)", () => "zh");
    data.putIfAbsent("英文(en)", () => "en");
    data.putIfAbsent("日文(ja)", () => "ja");
    data.putIfAbsent("德语(de)", () => "de");
    data.putIfAbsent("阿拉伯语(ar)", () => "ar");
  }
  /**
   * 获取i18n列表
   */
  List<String> getI18nList() {}

  /**
   * 获取参数值
   */
  String Text(String source, {defaultString: ""}) {
    var format =
        msg.keys.firstWhere((k) => k == source, orElse: () => defaultString);
    //TODO 返回格式化后的数据
    return format;
  }

  /**
   * 切换参数
   */
  SwitchLang(String languageCode) {}
}
