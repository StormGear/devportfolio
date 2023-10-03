class EducationModel {
  final String schoolName;
  final String period;
  final String? course;
  final String? companyLogo;
  final String? urlAuthority;
  final String? urlPath;
  final bool? secure;
  final bool? awards;
  final String? awardDescription;

  const EducationModel({
    required this.schoolName,
    required this.period,
    this.companyLogo,
    this.course,
    this.urlAuthority,
    this.urlPath,
    this.secure,
    this.awards,
    this.awardDescription,
  });
}
