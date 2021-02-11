import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyText(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyText extends StatefulWidget {
  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  String textoCaja = "";

  //Limpiar el textField usando un objeto controller
  final TextEditingController controller = TextEditingController();

  void escribe(String value) {
    print(value);
    setState(() {
      textoCaja = textoCaja + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Text"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Ingrese Texto Aqui"),
                  onSubmitted: (String value) {
                    escribe(value);
                  },
                  controller: controller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(textoCaja),
              )
            ],
          ),
        ),
      ),
    );
  }
}
