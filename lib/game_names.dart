enum GameNames {
  magnetic,
  game2048,
  ticTacToe,
  clickTheCircle,
  wideSmile,
  fractal,
  sandBox,
  squishy
}

extension GameNamesExtension on GameNames {
  String get value {
    switch (this) {
      case GameNames.magnetic:
        return "Magnetic";
      case GameNames.game2048:
        return "2048";
      case GameNames.ticTacToe:
        return "Tic Tac Toe";
      case GameNames.clickTheCircle:
        return "Click the Circle";
      case GameNames.wideSmile:
        return "Wide Smile";
      case GameNames.fractal:
        return "Fractal";
      case GameNames.sandBox:
        return "Sandbox";
      case GameNames.squishy:
        return "Squishy";
    }
  }
}