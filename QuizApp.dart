import 'dart:io';
import 'dart:math';

class quiz_app {
  Map Quizquest = {
    "What is the color of blood when it's inside your body?": "red",
    "Which is the fastest bird in the world?": "Peregrine Falcon",
    "What is the tallest waterfall in the world?": "Angel Falls",
    "What letter is not present anywhere on the periodic table of elements?":
        "J",
    "Which of these animals has the ability to laugh?": "rat",
    "Which of these foods will never spoil?  ": "honey",
    "About how many scents can a human nose remember?": "50,000",
    "People with what color hair are genetically mutants?": "red",
    "How many stripes are there on the US flag?": "13",
    "How many rings appear on the Olympic flag?": "5",
    "What is the atomic sign for Helium on the periodic table?": "He",
    "What is the general name for a group of wolves?": "Pack",
    "In which country is the Taj Mahal situated?": "India",
    "Which is the longest river in the world?": "Nile",
    "Who painted the Mona Lisa?": "Leonardo Da Vinci",
    "Which planet is the 3rd closest to the sun?": "Earth",
    "What is the orange part of an egg called?": "Yolk",
    "What is the Italian word for (pie)?": "Pizza",
    "What is the national flower of Wales?": "Daffodil",
    "Which Australian marsupial enjoys eating eucalyptus leaves?": "Koala",
    "Which reptile should you never smile at, according to the song?":
        "Crocodile",
    "Alfred, an ancient King of Wessex, is famous for burning what?": "Cakes",
    "In nautical terms, what is the opposite of port?": "Starboard",
    "How many bones are there on a Skull & Crossbones flag?": "Three",
    "What was Marilyn Monroe's natural hair colour?": "Ginger",
    "Name Fred Astaire's famous red-haired dancing partner": "Ginger Rogers",
    "How many legs does the Legs of Man have?": "Three",
    "How many tails does a Manx cat have?": "None",
    "How many teeth does an aardvark have?": "None",
    "Which sea creature has three hearts?": "Octopus",
    "Which instrument has forty-seven strings and seven pedals?": "Harp",
    "Whose face was said to have launched 1,000 ships?": "Helen of Troy",
    "In the traditional rhyme, how many mice were blind?": "Three",
    "How many bones does an adult human have?": "206",
    "How many pedals do most modern pianos have?": "3",
    "Water boils at 212 degrees on which temperature scale?": "Fahrenheit",
    "Which animal is known as the 'Ship of the Desert?": "Camel",
    "How many days are there in a week?": "7",
    "How many hours are there in a day?": "24",
    "How many letters are there in the English alphabet?": "26",
    "Rainbow consist of how many colours?": "7",
    "Name the biggest continent in the world?": "Asia",
    "How many continents are there in the world?": "7",
    "Which is the smallest month of the year?": "February",
    "Name the house made of ice?": "Igloo",
    "How many minutes are there in an hour?": "60",
    "Baby frog is known as?": "Tadpole",
    "How many consonants are there in the English alphabet?": "21",
    "Which animal is known as the king of the jungle?": "Lion",
    "Name the National bird of India?": "Peacock"
  };
  void Quizapp() {
    final List<int> random = Random_(20);
    int count = 0;

    for (int i in random) {
      final question = Quizquest.keys.elementAt(i);
      final correctAnswer = Quizquest.values.elementAt(i);

      // print("Enter Your answer:");
      // String userAnswer = stdin.readLineSync()!;

      print(question);
      final userAnswer = _getUserAnswer();
      if (userAnswer.toLowerCase() == correctAnswer.toLowerCase()) {
        count++;
        print('Correct!\n');
      } else {
        print('Incorrect. The correct answer is: $correctAnswer\n');
      }
    }

    final total = 20;
    final percentage = (count / total) * 100;

    print('Total Correct Answers: $count/$total');
    print('Percentage: $percentage%');

    if (percentage > 50) {
      print('Congratulations!');
    } else {
      print('Keep practicing. You can do better!');
    }
  }

  String _getUserAnswer() {
    String? input;
    do {
      print('Your answer: ');
      input = stdin.readLineSync();
    } while (input == null || input.isEmpty);

    return input;
  }

  List<int> Random_(int j) {
    final max = 50;
    final rand = Random();
    final randomList = <int>[];

    while (randomList.length < j) {
      final randIndex = rand.nextInt(max);
      if (!randomList.contains(randIndex)) {
        randomList.add(randIndex);
      }
    }

    return randomList;
  }
}

void main() {
  final quiz = quiz_app();

  print('Welcome to the Quiz App!\n');

  while (true) {
    quiz.Quizapp();

    print('Do you want to play again? (yes/no)');
    final playAgain = stdin.readLineSync()?.toLowerCase() ?? 'no';
    if (playAgain != 'yes') {
      print('Thanks for playing. Goodbye!');
      break;
    }
  }
}
