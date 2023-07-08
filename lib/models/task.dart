// THis is the implementation of every single task. Has default value of isDone as false.

class Task {
  final String name;
  bool isDone;
  Task({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
