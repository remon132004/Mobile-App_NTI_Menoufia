
class Task {
  String taskTitle;
  String taskDescription;
  String dateTime;
  String? image;

  Task({
    required this.taskTitle,
    required this.taskDescription,
    required this.dateTime,
    this.image,
  });
  @override
  String toString(){
    return '''
    Task Title:$taskTitle
    Task Description:$taskDescription
    Date Time:$dateTime
    Image:${image ?? "No Image"}
    
    ''';
  }
}

abstract class UseCase<T> {
  T todo();
}

class GetTasks extends UseCase<List<Task>> {
  @override
  List<Task> todo() {
    return [
      Task(
        taskTitle: 'Finish homework',
        taskDescription: 'Complete math assignment',
        dateTime: '12:00 PM',
      ),
      Task(
        taskTitle: 'Meeting',
        taskDescription: 'Discussion at zoom ',
        dateTime: '10:00 PM',
      ),
    ];
  }
}

class CreateTask extends UseCase<String>{
    List<Task> tasks;
    CreateTask(this.tasks);
  @override
  String todo() {
    Task newTask = Task(
      taskTitle: 'Go to Gym',
      taskDescription: 'Leg day workout',
      dateTime: '07:00 PM',
      image: 'gym.png',
    );
    tasks.add(newTask);
    print('New Task Created:');
    print(newTask);

    return 'Task added successfully';
  }
}
  class EditTask extends UseCase<int>{
      List<Task> tasks;
      String oldTitle;
      String newTitle;
      EditTask(this.tasks,this.oldTitle,this.newTitle);
      @override
      int todo(){
          for(var task in tasks){
              if(task.taskTitle==oldTitle){
                  task.taskTitle=newTitle;
                  return 1;
              }
          }
          return 0;
      }
  }

void main() {
  GetTasks getTask = GetTasks();
  List<Task> tasks = getTask.todo();
  for (var i in tasks) {
    print(i);
  }
  CreateTask createTask = CreateTask(tasks);
  String result = createTask.todo();
  print(result);
  
  EditTask editTask=EditTask(tasks,'Meeting','Play Football');
  int res=editTask.todo();
  print(res);
  
  for(var task in tasks){
      print(task);
  }
  }