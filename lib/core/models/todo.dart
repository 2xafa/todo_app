class Todo{
  final String title;
  final bool comleted;
  Todo({
    required this.title,
    required this.comleted
  });

  toMap(){
    return {
      "title": title,
      "completed": comleted
    };
  }
}