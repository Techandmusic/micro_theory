import 'dart:core';
import 'Chromatic.dart';

class Chord {

  List<String> chord;
  Chromatic chromo;
  Map<String, String> notes;

  Chord(String rootNote, int tone)
  {
    chromo = new Chromatic(rootNote);
    notes = chromo.chromatic;
    switch (tone)
    {
      //Major triad
      case 1: {
        chord.add(notes["root"]);
        chord.add(notes["majorThird"]);
        chord.add(notes["fifth"]);
      }
      break;
      //Minor triad
      case 2: {
        chord.add(notes["root"]);
        chord.add(notes["minorThird"]);
        chord.add(notes["fifth"]);
      }
      break;
      //Major 7th
      case 3: {
        chord.add(notes["root"]);
        chord.add(notes["majorThird"]);
        chord.add(notes["fifth"]);
        chord.add(notes["minorSeventh"]);
      }
      break;
      //Minor 7th
      case 4: {
        chord.add(notes["root"]);
        chord.add(notes["minorThird"]);
        chord.add(notes["fifth"]);
        chord.add(notes["minorSeventh"]);
      }
      break;
      default: {
        String d = "default";
      }
    }
  }
}