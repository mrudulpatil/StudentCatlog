import 'package:flutter/material.dart';
import 'package:students_catlog/common_widgets/button_widget.dart';
import 'package:students_catlog/common_widgets/text_form_widget.dart';
import 'package:students_catlog/utils/Common.dart';
import 'package:students_catlog/utils/colors.dart';
import 'package:students_catlog/utils/shared_pref.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final FocusNode _nameControllerFocus = FocusNode();
  final FocusNode _passwordControllerFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FlutterLogo(
                        size: 120,
                      ),
                      SizedBox(height: 10),
                      _buildUsername(),
                      SizedBox(
                        height: 10,
                      ),
                      _buildPassword(),
                      SizedBox(
                        height: 10,
                      ),
                      _buildNextButton()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildUsername() {
    return TextFormFieldWidget(
      hintText: "Username",
      textInputType: TextInputType.text,
      actionKeyboard: TextInputAction.next,
      functionValidate: commonValidation,
      controller: _nameController,
      focusNode: _nameControllerFocus,
      onSubmitField: () {
        // Use this method to change cursor focus
        // First param - Current Controller
        // Second param - The Controller you want to focus on the next button press
        changeFocus(context, _nameControllerFocus, _passwordControllerFocus);
      },
      parametersValidate: "Please enter Username.",
      prefixIcon: Icon(
          Icons.insert_emoticon), // Don't pass image in case of no prefix Icon
    );
  }

  Widget _buildPassword() {
    return TextFormFieldWidget(
      hintText: "Password",
      obscureText: true,
      textInputType: TextInputType.visiblePassword,
      actionKeyboard: TextInputAction.done,
      functionValidate: commonValidation,
      controller: _passwordController,
      focusNode: _passwordControllerFocus,
      onSubmitField: () {},
      parametersValidate: "Please enter password.",
      prefixIcon: Icon(Icons.keyboard_hide),
    );
  }

  Widget _buildNextButton() {
    return raisedButton(
        textColor: Colors.white,
        minWidth: 300,
        text: "Login",
        leadingIcon: Icon(Icons.send),
        height: 50.0,
        borderRadius: 5,
        color: primaryColor,
        borderSideColor: Colors.white,
        splashColor: Colors.blue[200],
        style: TextStyle(
          color: primaryColor,
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        onClick: () {
          var validate = _formKey.currentState.validate();
          if (validate) {
            if (_nameController.text == "Mrudul" &&
                _passwordController.text == "123456") {
              MySharedPreferences.instance.setBooleanValue("loggedin", true);
              MySharedPreferences.instance
                  .setStringValue("username", _nameController.text);
              hideKeyboard();
              _formKey.currentState.save();
              Navigator.of(context).pushReplacementNamed('/dashboard');
            } else {
              Common.showPopup(context, "Invalid Username or password.");
            }
          }
        });
  }

  hideKeyboard() {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
