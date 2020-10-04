import 'package:http/http.dart' as http;
import 'package:students_catlog/data/model/api_result_model.dart';
import 'package:students_catlog/utils/constants.dart';
import 'dart:convert';

abstract class StudentsRepository {
  Future<List<Results>> getStudents();
}

class StudentsRepositoryImpl
    implements StudentsRepository {
  @override
  Future<List<Results>> getStudents() async{
    // TODO: implement getStudents
    /*Map valueMap = jsonDecode(responseJson);
    List<Results> resultsList= ApiResultModel.fromJson(valueMap).results;
    return resultsList;*/
    var response=await http.get(studentsListUrl);
    if(response.statusCode==200)
    {
      var data=jsonDecode(response.body);
      List<Results> resultsList= ApiResultModel.fromJson(data).results;
      return resultsList;
    }
    else {
        throw Exception();
    }

  }
}
