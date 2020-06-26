import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
            'O pneu do seu carro estourou numa estrada esquisita, no meio do nada, sem sinal de celular. Você decide que vai pegar uma carona. Um homem numa picape enferrujada, com um chapéu de caubói e um olhar frio para perto de você, abre a porta do lado do passageiro e pergunta: "Precisando de uma carona, jovem?".',
        choice1: 'Vou entrar. Valeu pela ajuda!',
        choice2: 'Melhor perguntar primeiro a ele se é um assassino...'),
    Story(
        storyTitle:
            'Ele balança a cabeça lentamente que sim, sem sequer se abalar pela pergunta.',
        choice1: 'Pelo menos ele é honesto. Vou aceitar a carona.',
        choice2: 'Eu... acho que sei trocar um pneu...'),
    Story(
        storyTitle:
            'O carro começa a andar, e o estranho começa a falar sobre seu relacionamento com a mãe. Ele fica com mais e mais raiva a cada minuto. Ele pede pra você abrir o porta-luvas. Dentro do porta-lucas você encontra uma faca ensanguentada, dois dedos cortados, e uma fita cassete do Elton John. Ele estende a mão em direção ao porta-luvas.',
        choice1: 'Eu amo Elton John! Pego a fita cassette e entrego a ele.',
        choice2: 'É ele ou eu! Pego a faca e dou uma facada nele.'),
    Story(
        storyTitle:
            'O quê?! Quanta irresponsabilidade! Você sabia que acidentes de trânsito são a segunda maior causa de morte acidental para a maioria das pessoas em idade adulta?',
        choice1: 'Reiniciar',
        choice2: ''),
    Story(
        storyTitle:
            'Enquanto o carro sai da estrada e capota em direção às rochas lá embaixo, você reflete sobre a decisão estapafúrdia de esfaquear uma pessoa enquanto ela dirige o carro com você dentro.',
        choice1: 'Reiniciar',
        choice2: ''),
    Story(
        storyTitle:
            'Você fica amigo do assassino enquanto cantarola "Can you feel the love tonight". Ele te deixa na cidade mais próxima. Antes de você ir ele pergunta se você conhece algum lugar bom pra se livrar de corpos. Você responde: "Já tentou o píer?".',
        choice1: 'Reiniciar',
        choice2: '')
  ];

  void _restart() => _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0) {
      if (choiceNumber == 1) {
        _storyNumber = 2;
      } else {
        _storyNumber = 1;
      }
    } else if (_storyNumber == 1) {
      if (choiceNumber == 1) {
        _storyNumber = 2;
      } else {
        _storyNumber = 3;
      }
    } else if (_storyNumber == 2) {
      if (choiceNumber == 1) {
        _storyNumber = 5;
      } else {
        _storyNumber = 4;
      }
    } else {
      if (choiceNumber == 1) {
        _restart();
      }
    }
  }

  String getStory() => _storyData[_storyNumber].storyTitle;

  String getChoice1() => _storyData[_storyNumber].choice1;

  String getChoice2() => _storyData[_storyNumber].choice2;

  bool buttonShouldBeVisible() {
    if (_storyNumber < 3) {
      return true;
    }
    return false;
  }
}
