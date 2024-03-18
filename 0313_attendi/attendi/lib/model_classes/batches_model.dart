class Batches {
  final int? batchNo;
  final String batchName;
  final String location;
  final int noOfStud;
  final String leader;
  final int mobileNo;

  const Batches(
      {this.batchNo,
      required this.batchName,
      required this.location,
      required this.noOfStud,
      required this.leader,
      required this.mobileNo});

  Map<String, dynamic> updatebatchdmap() {
    return {
      "batchNo":batchNo,
      "batchName": batchName,
      "location": location,
      "noOfStud": noOfStud,
      "leader": leader,
      "mobileNo": mobileNo
    };
  }

  Map<String, dynamic> batchmap() {
    return {

      "batchName": batchName,
      "location": location,
      "noOfStud": noOfStud,
      "leader": leader,
      "mobileNo": mobileNo
    };
  }
}
