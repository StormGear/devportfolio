class WorkModel {
  final String companyName;
  final String period;
  final String? role;
  final String? description;
  final String? companyLogo;
  final String? urlAuthority;
  final String? urlPath;

  const WorkModel({
    required this.companyName,
    required this.period,
    this.companyLogo,
    this.description,
    this.role,
    this.urlAuthority,
    this.urlPath,
  });
}
