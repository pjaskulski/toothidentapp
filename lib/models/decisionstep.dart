class DecisionStep {
  DecisionStep(
      {this.id,
      this.type,
      this.title,
      this.choices,
      this.toothForm = '',
      this.toothType = '',
      this.toothDentition = '',
      this.toothArcade = '',
      this.toothPosition = '',
      this.toothSide = ''});

  final String id;
  final String title;
  final String type; // question or result
  // for question
  final List<Map<String, String>> choices;
  // for result
  final String toothForm;
  final String toothType;
  final String toothDentition;
  final String toothArcade;
  final String toothPosition;
  final String toothSide;
}
