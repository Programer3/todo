class Task {
  final String name;
  bool isdone;
  Task({this.isdone = false, required this.name});

  void toggleDone() {
    isdone = !isdone;
  }
}
