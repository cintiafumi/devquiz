import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Cintia Fumi",
      photoUrl: "https://github.com/cintiafumi.png",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        image: "",
        questionAnswered: 1,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Estou amando"),
              AnswerModel(title: "Top"),
              AnswerModel(title: "Show de bola", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Estou amando"),
              AnswerModel(title: "Top"),
              AnswerModel(title: "Show de bola", isRight: true),
            ],
          ),
        ],
      )
    ];
    state = HomeState.success;
  }
}
