import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:students_catlog/bloc/student_bloc.dart';
import 'package:students_catlog/data/repository/students_reporsitory.dart';
import 'package:students_catlog/screens/studentlist.dart';

class StudentListProvider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: BlocProvider(
        builder: (context) => StudentBloc(repository: StudentsRepositoryImpl()),
        child: StudentListScreen(),
      ),
    );
  }
  
}