import 'dart:core';

class Chromatic {

  List<String> octave = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "Bb", "B"];
  final List<String> scalePositions = ["root", "minorSecond", "majorSecond", "minorThird", "majorThird", "fourth", "flatFifth", "fifth",
  "minorSixth", "majorSixth", "minorSeventh", "majorSeventh"];
  Map<String, String> chromatic;

  Chromatic(String key)
  {
    buildOctave(key);
    buildChromatic(octave, scalePositions);
  }

  void toEnd()
  {
    String temp = octave.elementAt(0);
    octave.removeAt(0);
    octave.add(temp);
  }

  List<String> buildOctave(String key)
  {
    while (octave.elementAt(0) != key)
    {
      toEnd();
    }
    return octave;
  }

  Map<String, String> buildChromatic(List<String> notes, List<String> positions)
  {
    for (int i = 0; i < octave.length; ++i)
    {
      chromatic.putIfAbsent(scalePositions[i], ()=> octave[i]);
    }
    return chromatic;
  }







}