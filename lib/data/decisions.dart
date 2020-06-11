import 'package:toothidentapp/models/decisionstep.dart';

final List<DecisionStep> steps = [
  DecisionStep(
      id: '2.2',
      type: 'question',
      title: 'What is the general form of the tooth?',
      choices: [
        {
          'text':
              'Crown has a bladed edge, and/or Unworn occlusal surface is bumpy (has mamelons)',
          'nextStep': '2.3'
        },
        {'text': 'Not immediately clear', 'nextStep': '2.4'},
        {
          'text':
              'Crown has more than one cusp (not counting lingual relief), and/or Tooth has more than one root',
          'nextStep': '2.5'
        },
      ]),
  DecisionStep(
    id: '2.3',
    type: 'question',
    title: 'Incisor or canine/premolar?',
    choices: [
      {
        'text':
            'Crown has a shovel shape. If worn, there is greater dentin exposure at edges than in center, yielding a \'barbell\' appearance.',
        'nextStep': '2.6I'
      },
      {
        'text':
            'Crown has an apex or cusp. If worn, there is greater dentin exposure in a central area than elsewhere on occlusal margin.',
        'nextStep': '2.4'
      },
    ],
  ),
  DecisionStep(
    id: '2.4',
    type: 'question',
    title: 'Canine or premolar?',
    choices: [
      {
        'text': 'Has a single large cusp (lingual relief is OK)',
        'nextStep': '2.6'
      },
      {
        'text':
            'Bifurcated or bilobate root or Has two sub-equal cusps or Has a median groove or Has clear mesial & distal foveae or Has a curved, cupped IPCF',
        'nextStep': '2.9'
      },
    ],
  ),
  DecisionStep(
    id: '2.5',
    type: 'question',
    title: '',
    choices: [
      {'text': '', 'nextStep': ''},
      {'text': '', 'nextStep': ''},
    ],
  ),
  DecisionStep(
    id: '2.6I',
    type: 'question',
    title: 'Permament or deciduous?',
    choices: [
      {'text': 'Not immediately clear', 'nextStep': '2.7I'},
      {
        'text':
            'Co-occurence of partially resorbed roots and crown with evidence of wear (both must be present)',
        'nextStep': '2.7D'
      },
    ],
  ),
  DecisionStep(
    id: '2.7I',
    type: 'question',
    title: 'Upper or lower incisor?',
    choices: [
      {
        'text':
            'Root is nearly circular in cross-section (it rolls easily between your fingertips)',
        'nextStep': '2.11U'
      },
      {
        'text':
            'Root is round but flattened (it does not roll easily between your fingertips)',
        'nextStep': '2.11L'
      },
    ],
  ),
  DecisionStep(
    id: '2.8',
    type: 'question',
    title: '',
    choices: [
      {'text': '', 'nextStep': ''},
      {'text': '', 'nextStep': ''},
    ],
  ),
  DecisionStep(
    id: '2.9',
    type: 'question',
    title: '',
    choices: [
      {'text': '', 'nextStep': ''},
      {'text': '', 'nextStep': ''},
    ],
  ),
  DecisionStep(
    id: '2.10',
    type: 'question',
    title: '',
    choices: [
      {'text': '', 'nextStep': ''},
      {'text': '', 'nextStep': ''},
    ],
  ),
  DecisionStep(
    id: '2.11U',
    type: 'question',
    title: 'Central or lateral incisor (upper)?',
    choices: [
      {'text': 'Large, wide, spatulate crown', 'nextStep': '2.11U-1'},
      {'text': 'Not immediately clear', 'nextStep': '2.11U-2'},
    ],
  ),
  DecisionStep(
    id: '2.11U-1',
    type: 'question',
    title: 'Left or right side (incisor upper 1)?',
    choices: [
      {'text': 'Left', 'nextStep': '2.11U-1L'},
      {'text': 'Right', 'nextStep': '2.11U-1R'},
    ],
  ),
  DecisionStep(
    id: '2.11L',
    type: 'question',
    title: 'Central or lateral incisor (lower)?',
    choices: [
      {'text': 'Not immediately clear', 'nextStep': '2.11L-2'},
      {
        'text':
            'Major axis of occlusal edge is not perpendicular to major axis of root',
        'nextStep': '2.11L-2'
      },
    ],
  ),
  DecisionStep(
    id: '2.12',
    type: 'question',
    title: '',
    choices: [
      {'text': '', 'nextStep': ''},
      {'text': '', 'nextStep': ''},
    ],
  ),
  DecisionStep(
    id: '2.13',
    type: 'question',
    title: '',
    choices: [
      {'text': '', 'nextStep': ''},
      {'text': '', 'nextStep': ''},
    ],
  ),
  DecisionStep(
    id: '2.14',
    type: 'question',
    title: '',
    choices: [
      {'text': '', 'nextStep': ''},
      {'text': '', 'nextStep': ''},
    ],
  ),
  DecisionStep(
    id: '2.11U-1R',
    type: 'result',
    title: 'RI1 (upper)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Upper',
    toothPosition: '1',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: '2.11U-1L',
    type: 'result',
    title: 'LI1 (upper)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Upper',
    toothPosition: '1',
    toothSide: 'Left',
  ),
];
