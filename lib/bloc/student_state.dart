import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:students_catlog/data/model/api_result_model.dart';
import 'package:meta/meta.dart';

abstract class StudentState extends Equatable {}

class StudentInitialState extends StudentState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class StudentLoadingState extends StudentState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class StudentLoadedState extends StudentState {
  List<Results> results;

  StudentLoadedState({@required this.results});

  @override
  // TODO: implement props
  List<Object> get props => [results];
}

class StudentErrorState extends StudentState {
  String message;

  StudentErrorState({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}