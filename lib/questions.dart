class Questions {
  String Question = '';
  List<String> Options = [];
  int Answer = 0;
  Questions({this.Question = '', this.Options = const [], this.Answer = 0}) {}
}

class QuestionsList {
  List<Questions> questions = [
    Questions(
        Question:
            'Grand Central Terminal, Park Avenue, New York is the world\'s',
        Options: [
          'largest railway station',
          'highest railway station',
          'longest railway station',
          'None of the above'
        ],
        Answer: 0),
    Questions(
        Question: 'Entomology is the science that studies',
        Options: [
          'Behavior of human beings',
          'Insects',
          'The origin and history of technical and scientific terms',
          'The formation of rocks'
        ],
        Answer: 1),
    Questions(
        Question:
            'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of',
        Options: ['Asia', 'Africa', 'Europe', 'Australia'],
        Answer: 1),
    Questions(
        Question: 'Garampani sanctuary is located at',
        Options: [
          'Junagarh, Gujarat',
          'Diphu, Assam',
          'Kohima, Nagaland',
          'Gangtok, Sikkim'
        ],
        Answer: 1),
    Questions(
        Question:
            'For which of the following disciplines is Nobel Prize awarded?',
        Options: [
          'Physics and Chemistry',
          'Physiology or Medicine',
          'Literature, Peace and Economics',
          'All of the above'
        ],
        Answer: 3),
    Questions(
        Question: 'Hitler party which came into power in 1933 is known as',
        Options: [
          'Labour Party',
          'Nazi Party',
          'Ku-Klux-Klan',
          'Democratic Party'
        ],
        Answer: 1),
    Questions(
        Question: 'FFC stands for',
        Options: [
          'Foreign Finance Corporation',
          'Film Finance Corporation',
          'Federation of Football Council',
          'None of the above'
        ],
        Answer: 1),
    Questions(
        Question: 'Fastest shorthand writer was',
        Options: [
          'Dr. G. D. Bist',
          'J.R.D. Tata',
          'J.M. Tagore',
          'Khudada Khan'
        ],
        Answer: 0),
    Questions(
        Question: 'Epsom (England) is the place associated with',
        Options: ['Horse racing', 'Polo', 'Shooting', 'Snooker'],
        Answer: 0),
    Questions(
        Question:
            'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
        Options: ['1967', '1968', '1958', '1922'],
        Answer: 0),
  ];
}
