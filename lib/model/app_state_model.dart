import 'package:flutter/material.dart';

class AppStateModel extends ChangeNotifier {
  List<String> history = ['Credit Note(Sales Return)'];
  int navigationindex = 0;
  bool tabshow = false;
  String sectionname = 'Credit Note(Sales Return)';
  int tabname = 0;
  int subsection = 0;
  bool fullscreen = false;
  bool loginvisible = false;
  bool notificationvisible = false;

  final List<List<String>> subsections = [
    [
      'Sales Invoice',
      'Delivery Chellan',
      'Credit Note(Sales Return)',
      'Purchase Invoice',
      'Debit Note(Purchase Return)'
    ],
    ['Pro-forma', 'Estimates', 'Purchase Order'],
    ['Income'],
    ['Payment', 'Receipt', 'Journal(Expense)', 'Contra'],
    ['Cash', 'Bank'],
    ['Employee', 'Attendance', 'Salary', 'PF', 'ESI']
  ];


  void updateFrontButton() {
      sectionname = history[navigationindex];
      print('history of index: ${history[navigationindex]}');
      print('section name: $sectionname');
      notifyListeners();
  }

  // Method to handle back button
  void updateBackButton() {
      sectionname = history[navigationindex];
      print('history of index: ${history[navigationindex]}');
      print('section name: $sectionname');
      notifyListeners();
  }

  // Method to handle sign in button
  void updateSignInButton() {
    loginvisible = !loginvisible;
    print('Sign in button pressed');
    notifyListeners();
  }

  // Method to handle notification button
  void updateNotificationButton() {
    notificationvisible = !notificationvisible;
    print('Notification button pressed');
    notifyListeners();
  }

}

