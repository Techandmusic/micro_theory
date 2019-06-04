import 'dart:core';
import 'Chromatic.dart';

class Scale {

  Chromatic chromatic;
  List<String> scale;
  Map<String, String> noteMap;

  Scale(String key, int tonality)
  {
    chromatic = new Chromatic(key);
    noteMap = chromatic.chromatic;

  }

  List<String> makeScale(int tone)
  {
    switch(tone)
    {
      //Major Scale
      case 1: {
        scale.add(noteMap["root"]);
        scale.add(noteMap["majorSecond"]);
        scale.add(noteMap["majorThird"]);
        scale.add(noteMap["fourth"]);
        scale.add(noteMap["fifth"]);
        scale.add(noteMap["majorSixth"]);
        scale.add(noteMap["majorSeventh"]);
      }
      break;
      //Minor scale
      case 2: {
        scale.add(noteMap["root"]);
        scale.add(noteMap["majorSecond"]);
        scale.add(noteMap["minorThird"]);
        scale.add(noteMap["fourth"]);
        scale.add(noteMap["fifth"]);
        scale.add(noteMap["minorSixth"]);
        scale.add(noteMap["minorSeventh"]);
      }
      break;
      //Blues scale
      case 3: {
        scale.add(noteMap["root"]);
        scale.add(noteMap["minorThird"]);
        scale.add(noteMap["fourth"]);
        scale.add(noteMap["flatFifth"]);
        scale.add(noteMap["fifth"]);
        scale.add(noteMap["minorSeventh"]);
      }
      break;
      //Pentatonic scale
      case 4: {
        scale.add(noteMap["root"]);
        scale.add(noteMap["majorSecond"]);
        scale.add(noteMap["majorThird"]);
        scale.add(noteMap["fifth"]);
        scale.add(noteMap["majorSixth"]);
      }
      break;
      default: {
        return null;
      }
      break;
    }
    return scale;
  }



}