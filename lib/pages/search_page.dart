import 'dart:io';

import '../db/date.dart';
import 'intro_page.dart';

class SearchPage {
  SearchPage() {
    searchPage();
  }

  void searchPage() {
    stdout.write('Enter contact: ');
    String option = stdin.readLineSync() ?? "";
    print(option);

    bool contactFound = false;
    allContacts.forEach((key, value) {
      if (key == option || value == option) {
        print('Name: $key\nNumber: $value');
        contactFound = true;
        exitPage();
      }
    });

    if (!contactFound) {
      print('This contact is not found!!!');
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
          searchPage();
        }
      default:
        {
          print("\x1B[31mThis option is not found!!!\x1B[0m");
          exitPage();
        }
    }
  }
}
