part of trial_time;

extension type EndTimePattern(String value) {
  bool get check {
    final pattern = RegExp(r'^\d{1,2} days, \d{1,2}:\d{1,2}:\d{1,2}.\d{1,3}$');
    return pattern.hasMatch(value);
  }
}
