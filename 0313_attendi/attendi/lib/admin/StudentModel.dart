class StudentModel {
  final int rollNo;
  final String studName;
  bool status;

  StudentModel({
    required this.rollNo,
    required this.studName,
    required this.status,
  });
}

List<StudentModel> studentList = [
  StudentModel(rollNo: 1, studName: "Aniket", status: true),
  StudentModel(rollNo: 2, studName: "Allhad", status: true),
  StudentModel(rollNo: 3, studName: "Gaurav", status: true),
  StudentModel(rollNo: 4, studName: "Prasad", status: true),
  StudentModel(rollNo: 5, studName: "Sachin", status: true),
  StudentModel(rollNo: 6, studName: "Pavan", status: true),
  StudentModel(rollNo: 7, studName: "Vaibhav", status: true),
  StudentModel(rollNo: 8, studName: "Dhanraj", status: true),
  StudentModel(rollNo: 9, studName: "Atharva", status: true),
  StudentModel(rollNo: 10, studName: "Abhinav", status: true),
];
