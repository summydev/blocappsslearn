import 'package:bloc_app2/models/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Todo>> {


  TodoCubit() : super([]);
  void addTodo(String title) {
    if(title.isEmpty){
      addError('Title cannot be empty');
      return ;
    }
    final todo = Todo(content: title, createdAt: DateTime.now());
    emit([...state, todo]);
  }
  @override
  void onError(Object error, StackTrace stackTrace) {

    super.onError(error, stackTrace);
    print(error);
  }
}
