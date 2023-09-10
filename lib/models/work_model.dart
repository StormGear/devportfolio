class WorkModel {
  final String companyName;
  final String period;
  final String? role;
  final String? description;
  final String companyLogo;

  const WorkModel({
    required this.companyName,
    required this.period,
    required this.companyLogo,
    this.description,
    this.role,
  });
}
