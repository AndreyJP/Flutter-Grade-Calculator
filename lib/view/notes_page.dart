import 'package:calculador_de_notas/components/app_bar.dart';
import 'package:calculador_de_notas/components/elevated_button.dart';
import 'package:calculador_de_notas/components/form_text_field.dart';
import 'package:calculador_de_notas/controller/notes_controller.dart';
import 'package:calculador_de_notas/model/note.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  TextEditingController note1Controller = TextEditingController();
  TextEditingController note2Controller = TextEditingController();
  TextEditingController note3Controller = TextEditingController();
  TextEditingController note4Controller = TextEditingController();

  double? media;
  String? mensagem;
  String? resultado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Insira o valor das notas',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              fontFamily: 'Helvetica',
            ),
          ),
          FormTextField(
            labelText: 'Nota 1',
            hintText: 'Insira o valor da Nota 1',
            textController: note1Controller,
            obscureText: null,
          ),
          FormTextField(
            labelText: 'Nota 2',
            hintText: 'Insira o valor da Nota 2',
            textController: note2Controller,
            obscureText: null,
          ),
          FormTextField(
            labelText: 'Nota 3',
            hintText: 'Insira o valor da Nota 3',
            textController: note3Controller,
            obscureText: false,
          ),
          FormTextField(
            labelText: 'Nota 4',
            hintText: 'Insira o valor da Nota 4',
            textController: note4Controller,
            obscureText: false,
          ),
          buttonSubmit(
            () {
              setState(() {
                if (note1Controller.text.isNotEmpty &&
                    note2Controller.text.isNotEmpty &&
                    note3Controller.text.isNotEmpty &&
                    note4Controller.text.isNotEmpty) {
                  if (double.parse(note1Controller.text) > 0.0 &&
                      double.parse(note1Controller.text) <= 100.0 &&
                      double.parse(note2Controller.text) > 0.0 &&
                      double.parse(note2Controller.text) <= 100.0 &&
                      double.parse(note3Controller.text) > 0.0 &&
                      double.parse(note3Controller.text) <= 100.0 &&
                      double.parse(note4Controller.text) > 0.0 &&
                      double.parse(note4Controller.text) <= 100.0) {
                    
                    Note.instance.setNoteOne(double.parse(note1Controller.text));
                    Note.instance.setNoteTwo(double.parse(note2Controller.text));
                    Note.instance.setNoteThree(double.parse(note3Controller.text));
                    Note.instance.setNoteFour(double.parse(note4Controller.text));

                    media = NotesController.instance.calculateMedia(Note.instance);

                    mensagem = null;
                    resultado = NotesController.instance
                        .verResultadoAluno(media ?? 0.0);
                  } else {
                    media = null;
                    resultado = null;
                    mensagem = 'O valor da nota deve estar entre 0 e 100 pontos';
                  }
                } else {
                  media = null;
                  resultado = null;
                  mensagem = 'Preencha todos os campos!';
                }
              });
            },
            'Calcular',
            Colors.cyan,
            15,
          ),
          const SizedBox(
            height: 20,
          ),
          mensagem != null
              ? Text(
                  mensagem ?? '',
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                  ),
                )
              : const Text(''),
          media != null
              ? Text(
                  'Média final do aluno: $media pontos',
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                )
              : const Text(''),
          resultado != null
              ? Text(
                  'Resultado: $resultado',
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                )
              : const Text(''),
        ],
      ),
    );
  }
}
