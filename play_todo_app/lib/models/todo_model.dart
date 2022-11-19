class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    this.id,
    this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Excerise1', isDone: true),
      ToDo(
        id: '02',
        todoText: 'Morning Excerise2',
      ),
      ToDo(id: '03', todoText: 'Morning Excerise3', isDone: true),
      ToDo(
        id: '04',
        todoText: 'Morning Excerise4',
      ),
      ToDo(id: '05', todoText: 'Morning Excerise5', isDone: true),
      ToDo(
        id: '06',
        todoText: 'Morning Excerise6',
      ),
      ToDo(id: '07', todoText: 'Morning Excerise7', isDone: true),
    ];
  }
}
