class ProjectModel {
  final String? image;
  final String projectName;
  final String projectDescription;
  final String urlAuthority;
  final String urlPath;

  ProjectModel({
    required this.projectName,
    required this.projectDescription,
    required this.urlAuthority,
    required this.urlPath,
    this.image,
  });
}
