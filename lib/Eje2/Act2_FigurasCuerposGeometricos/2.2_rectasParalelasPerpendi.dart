import 'package:elgood_de_mate/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:elgood_de_mate/helpers/margenes.dart';
import '2.2.1_paralelas.dart';
import '2.2.2_perpen.dart';

class rectasParalelasPerpen extends StatefulWidget {
  @override
  State<rectasParalelasPerpen> createState() => _rectasParalelasPerpenState();
}

class _rectasParalelasPerpenState extends State<rectasParalelasPerpen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var aAct2_E2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              margenSup_Actividades(context, aAct2_E2),
              SizedBox(height: 5),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "2. Forma, espacio y división > ",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Figuras",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 30, 59, 92),
                        fontSize: 12),
                  ),
                ],
              ),
              Text(
                "> Rectas paralelas y perpendiculares",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 30, 59, 92),
                    fontSize: 12),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  //border: Border.all(color: Colors.amber),
                  color: Color.fromRGBO(54, 93, 137, 0.1),
                ),
                width: 2000,
                //Inicio del cuadro de actividades
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Repaso",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                children: [
                                  TextSpan(
                                    text: "Principales características:\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '     Rectas paralelas o paralelos \n',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: "     •   Aquellas líneas que ",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                  TextSpan(
                                    text: "nunca ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  TextSpan(
                                    text: "se cruzan",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Image(
                              image: AssetImage("assets/img/lineaPara.png"),
                              width: 400,
                            ),
                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                children: [
                                  TextSpan(
                                    text: '     Rectas perpendiculares \n',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: "     •   Aquellas líneas que ",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                  TextSpan(
                                    text: "en algún punto ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  TextSpan(
                                    text: "se cruzan",
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Image(
                              image: AssetImage("assets/img/lineaPerpen.png"),
                              width: 400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Ejemplos",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                      "Las líneas paralelas existen en todos los lados, sin importar a donde mires"),
                                  SizedBox(height: 5),
                                  InteractiveViewer(child: carruselParalelas()),
                                  SizedBox(height: 10),
                                  Text(
                                      "Las líneas perpendiculares existen en todos los lados, sin importar a donde mires"),
                                  SizedBox(height: 5),
                                  InteractiveViewer(child: carruselPerpen()),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Actividades",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          //Inicio Actividad 1
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => AlertDialog(
                                    title: Text(
                                      "Actividad 1",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '1. Ingrese la pregunta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromARGB(255, 30, 59, 92),
                                          ),
                                        ),
                                        Text(
                                          'Modifica esta parte para colocar la zona de respuesta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 230, 177, 71),
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop('validar');
                                        },
                                        child: Text(
                                          "Validar respuesta",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(227, 75, 161, 65),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop("cancelar");
                                        },
                                        child: Text("Cancelar"),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(211, 42, 24, 0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).then((result) {
                                  print(result);
                                });
                              },
                              child: Text(
                                'Abrir actividad 1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(54, 93, 137, 1),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          //Inicio Actividad 2
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => AlertDialog(
                                    title: Text(
                                      "Actividad 2",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '1. Ingrese la pregunta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromARGB(255, 30, 59, 92),
                                          ),
                                        ),
                                        Text(
                                          'Modifica esta parte para colocar la zona de respuesta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 230, 177, 71),
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop('validar');
                                        },
                                        child: Text(
                                          "Validar respuesta",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(227, 75, 161, 65),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop("cancelar");
                                        },
                                        child: Text("Cancelar"),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(211, 42, 24, 0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).then((result) {
                                  print(result);
                                });
                              },
                              child: Text(
                                'Abrir actividad 2',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(54, 93, 137, 1),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          //Inicio Actividad 3
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => AlertDialog(
                                    title: Text(
                                      "Actividad 3",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '1. Ingrese la pregunta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromARGB(255, 30, 59, 92),
                                          ),
                                        ),
                                        Text(
                                          'Modifica esta parte para colocar la zona de respuesta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 230, 177, 71),
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop('validar');
                                        },
                                        child: Text(
                                          "Validar respuesta",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(227, 75, 161, 65),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop("cancelar");
                                        },
                                        child: Text("Cancelar"),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(211, 42, 24, 0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).then((result) {
                                  print(result);
                                });
                              },
                              child: Text(
                                'Abrir actividad 3',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(54, 93, 137, 1),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          //Inicio Actividad 4
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => AlertDialog(
                                    title: Text(
                                      "Actividad 4",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '1. Ingrese la pregunta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromARGB(255, 30, 59, 92),
                                          ),
                                        ),
                                        Text(
                                          'Modifica esta parte para colocar la zona de respuesta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 230, 177, 71),
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop('validar');
                                        },
                                        child: Text(
                                          "Validar respuesta",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(227, 75, 161, 65),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop("cancelar");
                                        },
                                        child: Text("Cancelar"),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(211, 42, 24, 0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).then((result) {
                                  print(result);
                                });
                              },
                              child: Text(
                                'Abrir actividad 4',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(54, 93, 137, 1),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          //Inicio Actividad 5
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => AlertDialog(
                                    title: Text(
                                      "Actividad 5",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '1. Ingrese la pregunta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromARGB(255, 30, 59, 92),
                                          ),
                                        ),
                                        Text(
                                          'Modifica esta parte para colocar la zona de respuesta',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 230, 177, 71),
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop('validar');
                                        },
                                        child: Text(
                                          "Validar respuesta",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(227, 75, 161, 65),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop("cancelar");
                                        },
                                        child: Text("Cancelar"),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(211, 42, 24, 0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).then((result) {
                                  print(result);
                                });
                              },
                              child: Text(
                                'Abrir actividad 5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(54, 93, 137, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Margen Inferior
              SizedBox(height: 10),
              margenInf_Actividades(context),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mainMenu(),
                        ),
                      );
                    },
                    child: Text(
                      'Finalizar tema',
                      style: TextStyle(fontSize: 12),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(227, 75, 161, 65),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
