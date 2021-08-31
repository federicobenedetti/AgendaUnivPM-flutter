class Student {
  final String matricola;
  final String uid;
  final int telefono;
  final int annoCorso;
  final List<String> corsi;
  final bool situazioneTasse;

  Student(this.matricola,
      this.uid,
      this.telefono,
      this.annoCorso,
      this.corsi,
      this.situazioneTasse);
}