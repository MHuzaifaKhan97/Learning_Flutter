import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'localization_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedLang = LocalizationService.langs.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('welcome'.tr),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('hello'.tr,style: TextStyle(fontSize: 32),),
            SizedBox(height: 20),
            DropdownButton(
              icon: Icon(Icons.arrow_drop_down),
              value: _selectedLang,
              items: LocalizationService.langs.map((String lang) {
                return DropdownMenuItem(value: lang, child: Text(lang));
              }).toList(),
              onChanged: (String value) {
                // updates dropdown selected value
                setState(() => _selectedLang = value);
                // gets language and changes the locale
                LocalizationService().changeLocale(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}