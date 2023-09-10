class EducationModel {
  final String schoolName;
  final String period;
  final String? course;
  final String? companyLogo;

  const EducationModel({
    required this.schoolName,
    required this.period,
    this.companyLogo,
    this.course,
  });
}
