class Task {
  final String name;
  bool isdone;
  // Widget deletebtn;
  Task({
    this.isdone = false,
    required this.name,
  });

  void toggleDone() {
    isdone = !isdone;
  }
}
