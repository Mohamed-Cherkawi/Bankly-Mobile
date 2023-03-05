class Transaction{
  final String uuid;
  final String type;
  final String createdAt;
  final String amount;
  final String operatorReference;


  Transaction({required this.uuid,
       required this.type,
       required this.createdAt,
       required this.amount,
       required this.operatorReference
      });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      uuid: json['uuid'],
      type: json['type'],
      createdAt: json['createdAt'],
      amount: json['amount'],
      operatorReference: json['operatorReference']
    );
  }
}