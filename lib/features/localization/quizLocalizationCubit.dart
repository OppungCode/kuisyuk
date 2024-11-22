import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterquiz/features/settings/settingsLocalDataSource.dart';
import 'package:flutterquiz/utils/constants/constants.dart';

class QuizLanguageState {
  QuizLanguageState(this.languageId);
  final String languageId;
}

class QuizLanguageCubit extends Cubit<QuizLanguageState> {
  QuizLanguageCubit(this._settingsLocalDataSource)
      : super(QuizLanguageState(defaultQuizLanguage)) {
    languageId = _settingsLocalDataSource.quizLanguageCode;
  }

  final SettingsLocalDataSource _settingsLocalDataSource;

  String get languageId => state.languageId;
  set languageId(String value) {
    _settingsLocalDataSource.quizLanguageCode = value;
    emit(QuizLanguageState(value));
  }
}
