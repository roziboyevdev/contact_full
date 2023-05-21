import 'package:contact/db/date.dart';
import 'dart:io';
import 'intro_page.dart';

class AllContacts {
  AllContacts() {
    showContacts();
  }
  void showContacts() {
    allContacts.forEach((key, value) {
      print("\x1B[32mName: $key  Phone: $value\x1B[0m");
    });
    exitPage();
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
          showContacts();
        }
      default:
        {
          print("\x1B[31mThis option is not found!!!\x1B[0m");
          exitPage();
        }
    }
  }
}
