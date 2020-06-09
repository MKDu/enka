import 'package:flutter/material.dart';
import 'HomePage.dart';

class SignUp extends StatelessWidget {
  String _name;
  String _email;
  String _password;
  String _number;

  final _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
        decoration: InputDecoration(
            hintText: 'Name',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(20.0),
            ),enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
          counterText: ''
        ),
        maxLength: 10,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _name = value;
        });
  }

  Widget _buildEmail() {
    return TextFormField(
        decoration: InputDecoration(
            hintText: 'Email',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(20.0),
            ),enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(20.0),
        )
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Email is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _email = value;
        });
  }

  Widget _buildPassword() {
    return TextFormField(
        decoration: InputDecoration(
            hintText: 'Password',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(20.0),
            ),enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(20.0),
        )
        ),
        keyboardType: TextInputType.visiblePassword,
        validator: (value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
          return null;
        },
        onSaved: (String value) {
          _password = value;
        });
  }

  Widget _buildNumber() {
    return TextFormField(
        decoration: InputDecoration(
            hintText: 'Number',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(20.0),
            )
        ),
        keyboardType: TextInputType.phone,
        // ignore: missing_return
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _number = value;
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 40),
                    child: Form(
                        key: _formKey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                              Text('Welcome,',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFE9A034))),
                              SizedBox(height: 10),
                              Text(
                                  'Fill up the details to create your account.',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black)),
                              SizedBox(height: 10),
                              Align( alignment: Alignment.center, child:Container( width: MediaQuery.of(context).size.width *0.70, height: 50, child: _buildName())),
                              SizedBox(height: 10),
                              Align(alignment: Alignment.center, child: Container( width: MediaQuery.of(context).size.width *0.70, height: 50,child: _buildEmail())),
                              SizedBox(height: 10),
                              Align(alignment: Alignment.center, child: Container( width: MediaQuery.of(context).size.width *0.70, height: 50,child: _buildNumber())),
                              SizedBox(height: 10),
                              Align( alignment: Alignment.center, child:Container( width: MediaQuery.of(context).size.width *0.70, height: 50,child: _buildPassword())),
                              SizedBox(height: 50),
                              Align( alignment: Alignment.center, child:
                              Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.75,
                                  height: 50,
                                  child: RaisedButton(
                                      color: Color(0xFFFFB343),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Color(0xFFFFB343))),
                                      child: Text(
                                        'Create Account',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      onPressed: () {
                                        if (!_formKey.currentState.validate()) {
                                          return null;
                                        }
                                        _formKey.currentState.save();

                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                                      })))
                            ]))))));
  }
}

