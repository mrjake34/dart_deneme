void main(List<String> args) {
  final reponse = FormFieldValidators.compose([
    FormFieldValidators.countryCode(
        errorMessage: 'Empty', successMessage: 'Not Empty'),
  ]);
  print(reponse(''));

  RestorableProperty<String> restorableProperty = RestorableProperty();

  print(restorableProperty);
}

typedef FormFieldValidator<T> = String? Function(T? value);

final class FormFieldValidators {
  static FormFieldValidator<T> compose<T>(
      List<FormFieldValidator<T>> validators) {
    return (valueCandidate) {
      for (var validator in validators) {
        final validatorResult = validator.call(valueCandidate);
        if (validatorResult != null) {
          return validatorResult;
        }
      }
      return null;
    };
  }

  static FormFieldValidator<String> countryCode(
          {String? errorMessage, String? successMessage}) =>
      (value) => true == value?.isEmpty ? errorMessage : successMessage;
}

class ChangeNotifier {
  static void maybeDispatchObjectCreation(Object object) {
    print('$object created');
  }
}

class RestorableProperty<T> extends ChangeNotifier {
  RestorableProperty() {
    if (T == String) {
      ChangeNotifier.maybeDispatchObjectCreation(this);
    }
  }
}
