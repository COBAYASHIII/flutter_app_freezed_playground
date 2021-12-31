import 'package:flutter_app_freezed_practice/freezed_classes.dart';

void main() {
  final result = performOperation(2, Add(2));
  print(result);
}

// Function pretending to do something useful
int performOperation(int operand, Operation operation) {
  return operation.map(
    add: (caseClass) => operand + caseClass.value,
    subtract: (caseClass) => operand - caseClass.value,
  );
}