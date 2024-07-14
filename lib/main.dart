import 'package:flutter/material.dart';
import 'package:actividadfinalflutter/simplistic_editor/lib/main.dart' as simplistic_editor;
import 'package:actividadfinalflutter/material_3_demo/lib/main.dart' as material_3_demo;
import 'package:actividadfinalflutter/platform_view_swift/lib/main.dart' as platform_view_swift;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Examples Menu',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Examples Menu')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: MenuScreen(),
          ),
        ),
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton.icon(
          icon: Icon(Icons.edit),
          label: Text('Simplistic Editor'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => simplistic_editor.MyApp()),
            );
          },
        ),
        SizedBox(height: 16), // Añadir espacio entre los botones
        ElevatedButton.icon(
          icon: Icon(Icons.extension),
          label: Text('Material 3 Demo'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => material_3_demo.App()),
            );
          },
        ),
        SizedBox(height: 16), // Añadir espacio entre los botones
        ElevatedButton.icon(
          icon: Icon(Icons.mobile_screen_share),
          label: Text('Platform View Swift'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => platform_view_swift.HomePage()),
            );
          },
        ),
      ],
    );
  }
}
