import 'package:students_catlog/bloc/student_event.dart';
import 'package:students_catlog/bloc/student_state.dart';
import 'package:bloc/bloc.dart';
import 'package:students_catlog/data/model/api_result_model.dart';
import 'package:students_catlog/data/repository/students_reporsitory.dart';
import 'package:meta/meta.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {

  StudentsRepository repository;
  StudentBloc({@required this.repository});

  @override
  // TODO: implement initialState
  StudentState get initialState => StudentInitialState();

  @override
  Stream<StudentState> mapEventToState(StudentEvent event) async* {
    // TODO: implement mapEventToState
    if (event is FetchStudentEvent) {
      yield StudentLoadingState();
      try {
        List<Results> results = await repository.getStudents();
        yield StudentLoadedState(results: results);
      }
      catch (e) {
        yield StudentErrorState(message: e.toString());
      }
    }
  }
}