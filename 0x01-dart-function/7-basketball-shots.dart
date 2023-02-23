int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointsTeam(Map<String, int> team) {
    int points = team['Free throws']! * 1 +
        team['2 pointer']! * 2 +
        team['3 pointer']! * 3;

    return points;
  }

  int pointTeamA = pointsTeam(teamA);
  int pointTeamB = pointsTeam(teamB);

  if (pointTeamA > pointTeamB)
    return 1;
  else if (pointTeamA < pointTeamB)
    return 2;
  else
    return 0;
}
