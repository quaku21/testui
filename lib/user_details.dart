import 'package:flutter/material.dart';

class AllData extends ChangeNotifier {
  late String _firstName;
  late String _otherNames;
  late String _fullName;
  late String _email;
  late String _id; //ID determines whether you are a lecture or a student
  late bool _isStudent; //true if student, false if lecturer
  var _databaseMap;

  //setters
  set setFirstName(String firstName) {
    _firstName = firstName;
  }

  set setOtherNames(otherNames) {
    _otherNames = otherNames;
  }

  void setFullName() {
    _fullName = _firstName + " " + _otherNames;
  }

  set setEmail(String email) {
    _email = email;
  }

  set setID(String id) {
    _id = id;
  }

  set setISStudent(bool isStudent) {
    _isStudent = isStudent;
  }

  //getters
  get getFirstName {
    return _firstName;
  }

  get getOtherNames {
    return _otherNames;
  }

  get getEmail {
    return _email;
  }

  get getID {
    return _id;
  }

  get getFullName {
    return _fullName;
  }

  get getIsStudent {
    return _isStudent;
  }

  dynamic configureDatabaseMapAndReturn() {
    _databaseMap = {
      'firstname': _firstName,
      'othernames': _otherNames,
      'email': _email,
      'fullname': _fullName,
      'id': _id,
      'is_student': _isStudent
    };
    return _databaseMap;
  }
}
