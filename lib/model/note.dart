class Note{

  static final Note instance = Note._();

  Note._();
  
  late double _noteOne;
  late double _noteTwo;
  late double _noteThree;
  late double _noteFour;

  double getNoteOne(){
    return _noteOne;
  }

  void setNoteOne(double noteOne){
    _noteOne = noteOne;
  }

  double getNoteOTwo(){
    return _noteTwo;
  }

  void setNoteTwo(double noteTwo){
    _noteTwo = noteTwo;
  }

  double getNoteThree(){
    return _noteThree;
  }

  void setNoteThree(double noteThree){
    _noteThree = noteThree;
  }

  double getNoteFour(){
    return _noteFour;
  }

  void setNoteFour(double noteFour){
    _noteFour = noteFour;
  }

}