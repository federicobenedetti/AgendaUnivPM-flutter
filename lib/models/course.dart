class Course {
  final String id;
  final String title;
  final String shortDescription;
  final String description;
  final String session;
  final String teacherId;
  final String bookedHour;
  final List<String> lessonIds;

  Course(this.id,
      this.title,
      this.shortDescription,
      this.description,
      this.session,
      this.teacherId,
      this.bookedHour,
      this.lessonIds);
}