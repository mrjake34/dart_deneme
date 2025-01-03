part of trial_time;

final class CheckFreeTrialEnd with Parse {
  final String? endTime;

  CheckFreeTrialEnd._(this.endTime);

  factory CheckFreeTrialEnd(String endTime) {
    if (EndTimePattern(endTime).check) {
      return CheckFreeTrialEnd._(endTime);
    } else {
      return CheckFreeTrialEnd._(null);
    }
  }

  bool get _getTimeFreeTrialStatus {
    final time = endTime;
    if (time == null) return false;

    final splitTime = _splitTimeAndDays(time);
    final hours = _parseTime(splitTime.last);
    final daysInt = _parseDays(splitTime.first);

    return daysInt < 1 && hours == '0:00:00';
  }

  bool get isFreeTrial {
    return _getTimeFreeTrialStatus;
  }
}
