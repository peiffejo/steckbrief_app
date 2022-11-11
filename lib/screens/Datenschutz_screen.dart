import 'package:flutter/material.dart';

class Datenschutz_screen extends StatelessWidget {
  const Datenschutz_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datenschutzeinstellungen",style: TextStyle(fontSize: 15),),
        backgroundColor: Color.fromARGB(255, 42, 77, 143),
      ),
      body: Center(
        child: Column(
          children: [
            titelZeile(text: "Wir benötigen Ihre Zustimmung"),
            textZeile1(
                text:
                    "Wir verwenden verschiedene Technologien für die korrekte Funktionsweise sowie um die Zugriffe auf unsere App zu analysieren, Inhalte und Anzeigen zu personalisieren sowie Funktionen für soziale Medien anbieten zu können."),
            textZeile2(
                text:
                    "Mit dem Klick auf Einverstanden willigen Sie in die Erhebung und Verarbeitung Ihrer nutzer-oder gerätebezogene Online-Kennung(z.B. IDs) und Nutzungsdaten für diese Zwecke ein, sofern es einer Einwilligung bedarf. Sie können die aktuellen Einstellungen unter 'Details anzeigen' einsehen und ändern. Weitere Informationen finden Sie in unserer Datenschutzinformation."),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 40,
                child: Text("DETAILS ANZEIGEN",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 42, 77, 143),
                      fontWeight: FontWeight.bold,
                    )),
                color: Color.fromARGB(255, 198, 215, 245),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 40,
                  child: Text("OK",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      )),
                  color: Color.fromARGB(255, 28, 52, 97),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 4, 0, 0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text("Datenschutzinformation",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 255),
                        decoration: TextDecoration.underline,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget titelZeile({text: String}) {
    return Container(
      width: 300,
      height: 50,
      child: Container(
          alignment: Alignment.centerLeft,
          child: Text(text,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 42, 77, 143),
                fontWeight: FontWeight.bold,
              ))),
    );
  }

  Widget textZeile1({text: String}) {
    return Container(
      width: 300,
      height: 120,
      child: Container(
          child: Text(text,
              style: TextStyle(
                fontSize: 14.5,
                color: Color.fromARGB(255, 42, 77, 143),
              ))),
    );
  }

  Widget textZeile2({text: String}) {
    return Container(
      width: 300,
      height: 170,
      child: Container(
          alignment: Alignment.topLeft,
          child: Text(text,
              style: TextStyle(
                fontSize: 14.5,
                color: Color.fromARGB(255, 42, 77, 143),
              ))),
    );
  }
}
