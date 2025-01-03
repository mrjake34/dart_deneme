import 'trial_time/trial_time.dart';

void main() {
  final endTime = '0 days, 0:00:00.000';
  final isFreeTrial = CheckFreeTrialEnd(endTime).isFreeTrial;
  print(isFreeTrial);
}
