class Aspirant {
  final String name, user;
  final String imagePath;
  final String submissionTime;
  final int rank;
  final double height, rightPosition;

  Aspirant({
    required this.name,
    required this.imagePath,
    required this.submissionTime,
    required this.rank,
    required this.height,
    this.rightPosition = 0.027,
    this.user = '',
  });
}
