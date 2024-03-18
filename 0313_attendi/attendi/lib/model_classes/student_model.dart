class StudentModelClass {
  final String batchName;
  final String name;
  final int rollNo;
  final int phoneNo;
  final bool gender;
  final String email;

  const StudentModelClass({
    required this.batchName,
    required this.name,
    required this.rollNo,
    required this.phoneNo,
    required this.gender,
    required this.email,
  });

  Map<String, dynamic> updatestudmap() {
    return {
      "rollNo": rollNo,
      "batchName": batchName,
      "name": name,
      "gender": (gender == true) ? 1 : 0,
      "phoneNo": phoneNo,
      "email": email
    };
  }

  Map<String, dynamic> studmap() {
    return {
      "rollNo": rollNo,
      "batchName": batchName,
      "gender": (gender == true) ? 1 : 0,
      "name": name,
      "phoneNo": phoneNo,
      "email": email
    };
  }
}
