import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:students_catlog/bloc/student_bloc.dart';
import 'package:students_catlog/bloc/student_event.dart';
import 'package:students_catlog/bloc/student_state.dart';
import 'package:students_catlog/data/model/api_result_model.dart';
import 'package:students_catlog/screens/studentdetails.dart';

class StudentListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentListScreenState();
  }
}

class _StudentListScreenState extends State<StudentListScreen> {
  StudentBloc studentBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    studentBloc = BlocProvider.of<StudentBloc>(context);
    studentBloc.add(FetchStudentEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Students List"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              studentBloc.add(FetchStudentEvent());
            },
          ),
        ],
      ),
      body: Container(
        child: BlocListener<StudentBloc, StudentState>(
          listener: (context, state) {
            if (state is StudentErrorState) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          child: BlocBuilder<StudentBloc, StudentState>(
            builder: (context, state) {
              if (state is StudentInitialState) {
                return buildLoading();
              } else if (state is StudentLoadingState) {
                return buildLoading();
              } else if (state is StudentLoadedState) {
                return buildArticleList(state.results);
              } else if (state is StudentErrorState) {
                return buildErrorUi(state.message);
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildErrorUi(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  Widget buildListTile(List<Results> articles, int pos) {
    //bool isFavorite = true;
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 10.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: ClipOval(
          child: Hero(
            tag: articles[pos].picture.thumbnail,
            child: Image.network(
              articles[pos].picture.thumbnail,
              fit: BoxFit.fill,
              height: 40.0,
              width: 40.0,
            ),
          ),
        ),
      ),
      title: Text(
        articles[pos].name.first + " " + articles[pos].name.last,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Expanded(
          child:
              Text(articles[pos].email, style: TextStyle(color: Colors.white))),
      trailing: InkWell(
        onTap: () {
          setState(() {
            articles[pos].fav = !articles[pos].fav;
          });
        },
        child: articles[pos].fav
            ? Icon(
                Icons.thumb_up,
                color: Colors.white,
              )
            : Icon(Icons.thumb_up),
      ),
    );
  }

  Widget buildCard(List<Results> articles, int pos) {
    return Card(
      elevation: 2.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.lightBlue),
        //Color.fromRGBO(64, 75, 96, .9)),//Color.fromRGBO(64, 75, 96, .9)
        child: buildListTile(articles, pos),
      ),
    );
  }

  Widget buildArticleList(List<Results> articles) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (ctx, pos) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: buildCard(articles, pos),
            onTap: () {
              navigateToArticleDetailPage(context, articles[pos]);
            },
          ),
        );
      },
    );
  }

  void navigateToArticleDetailPage(BuildContext context, Results theResult) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => StudentDetailsPage(results: theResult)));
  }
}
