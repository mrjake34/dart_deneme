part of trial_time;

mixin class Parse {
  List<String> _splitTimeAndDays(String value) {
    return value.split(', ');
  }

  int _parseDays(String value) {
    final days = value.split(' ');
    return int.parse(days.first);
  }

  String _parseTime(String value) {
    final hours = value.split(' ');
    return hours.last.split('.').first;
  }
}


