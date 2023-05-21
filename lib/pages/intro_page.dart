import 'dart:io';
import 'package:contact/pages/create_page.dart';
import 'package:contact/pages/search_page.dart';
import 'package:contact/pages/show_page.dart';

class IntroPage {
  IntroPage() {
    intorPage();
  }

  void intorPage() {
    print('\n***** Welcome to Contact project *****');
    print('''
=========================
|   \x1B[32m1. Create contact\x1B[0m   |
=========================
|   \x1B[32m2. Show contacts\x1B[0m    |
=========================
|   \x1B[32m3. Search contacts\x1B[0m  |
=========================
|   \x1B[32m5. Exit\x1B[0m             |
=========================
''');
    stdout.write('Please enter option: ');
    String option = stdin.readLineSync() ?? "";

    switch (option) {
      case '1':
        {
          CreatePage();
          break;
        }
      case '2':
        {
          AllContacts();
          break;
        }
      case '3':
        {
          SearchPage();
          break;
        }
      case '4':
        {
          break;
        }
      default:
        {
          print("\x1B[31mThis option is not found!!!\x1B[0m");
          intorPage();
        }
    }
  }
}
