import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_catlog/data/model/api_result_model.dart';

class StudentDetailsPage extends StatelessWidget {

  Results results;
  StudentDetailsPage({this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Details"),
      ),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          //ClipOval(
          Hero(
            tag: results.picture.large,
            child: Image.network(
              results.picture.large,
              fit: BoxFit.fill,
            ),
          ),
          // ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5.0),
            child: Text(
              results.name.title +
                  " " +
                  results.name.first +
                  " " +
                  results.name.last,
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(5.0),
            child: RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: "Email: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                    text: results.email,
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(5.0),
            child: RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: "Phone: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                    text: results.phone,
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(5.0),
            child: RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: "Gender: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                    text: results.gender,
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(5.0),
            child: RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: "Address: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                    text: results.location.street.number.toString() +
                        ", " +
                        results.location.street.name +
                        ", " +
                        results.location.city +
                        ", " +
                        results.location.state +
                        ", " +
                        results.location.country +
                        ", " +
                        results.location.postcode.toString(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
