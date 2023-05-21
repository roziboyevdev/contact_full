import 'dart:io';
import 'package:contact/db/date.dart';
import 'package:contact/pages/intro_page.dart';

class CreatePage {
  CreatePage() {
    createPage();
  }

  void createPage() {
    stdout.write('Enter contact name: ');
    String name = stdin.readLineSync() ?? "";
    stdout.write('Enter contact number: ');
    String number = stdin.readLineSync() ?? "";
    RegExp uzbekNumber = RegExp(r'^\+998\d{9}$');
    if (uzbekNumber.hasMatch(number)) {
      allContacts.addEntries([MapEntry(name, number)]);
      print('***** Sucsessfuly created!!! *****');
      exitPage();
    } else {
      print("Erorr!!! Try again");
      createPage();
    }
  }

  void exitPage() {
    print("Do you want to exit?\n[Yes]y / [No]n");
    String option = stdin.readLineSync() ?? "";
    switch (option) {
      case 'y':
        {
          IntroPage();
        }
      case 'n':
        {
          createPage();
        }
      default:
        {
          print("\x1B[31mThis option is not found!!!\x1B[0m");
          exitPage();
        }
    }
  }
}
