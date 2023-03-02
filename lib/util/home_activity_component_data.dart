import 'package:bankly/enums/operation_type.dart';

class HomeActivityUtil {
  final String accountHolderName;
  final String date;
  final double amount;
  final OperationType operationType;

  HomeActivityUtil(
      this.accountHolderName, this.date, this.amount, this.operationType);
}