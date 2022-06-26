import 'package:calculador_de_notas/model/note.dart';

class NotesController{

  static final NotesController instance = NotesController();

  double calculateMedia(Note notas){
    double media = 0.0;

    media = (notas.getNoteOne() + notas.getNoteOTwo() + notas.getNoteThree() + notas.getNoteFour()) / 4;

    return media;
  }

  String verResultadoAluno(double media){
    String resultado;

    if(media >= 70){
      resultado = 'Aprovado';
    }else if(media >= 30 && media <= 69){
      resultado = 'Em recuperação final';
    }else{
      resultado = 'Reprovado por notas';
    }

    return resultado;
  }

}