import 'package:flutter/material.dart';
import 'package:country_list/country_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country List Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Country List Demo"),
        ),
        body: Center(
            child: Container(
          constraints: BoxConstraints(maxWidth: 480),
          child: ListView.builder(
            itemCount: Countries.list.length,
            itemBuilder: (_, position) {
              Country country = Countries.list[position];
              return ListTile(
                leading: Text(country.dialCode),
                title: Text(country.name),
                subtitle: Text(country.isoCode),
              );
            },
          ),
        )));
  }
}
