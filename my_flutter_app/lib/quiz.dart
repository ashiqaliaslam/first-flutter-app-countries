class Quiz {
  int _currentScore = 0;
  int _totalAttempted = 0;

  int get totalAttempted => _totalAttempted;
  int get score => _currentScore;

  markAnswerCorrect() {
    _currentScore++;
    _totalAttempted++;
  }

  markAnswerWrong() {
    _totalAttempted++;
  }

  resetQuiz() {
    _currentScore = 0;
    _totalAttempted = 0;
  }
}
