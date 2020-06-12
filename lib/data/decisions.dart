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
          'subtext':
              'Blade- or shovel-like crown. Dentin exposure is linear or barbell-shaped. Single, simple root. ',
          'nextStep': '2.3'
        },
        {
          'text': 'Not immediately clear',
          'subtext':
              'Pointed crown. Dentin exposure is diamond-shaped or widest in middle. Single, simple root. Root is long and large',
          'nextStep': '2.4',
        },
        {
          'text':
              'Crown has more than one cusp (not counting lingual relief), and/or Tooth has more than one root',
          'subtext':
              'Complex, multi-cusped crown. Usually multiple roots (fused or separate) or nearly separated radicals.',
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
        'subtext':
            'Tooth is spatulate. Blade-like (or bumpy) unworn occlusal margin. Buttressing is heaviest at edges of crown. Dentin exposure greater at edge(s). Both crown and root are shorter than in canines',
        'nextStep': '2.6I'
      },
      {
        'text':
            'Crown has an apex or cusp. If worn, there is greater dentin exposure in a central area than elsewhere on occlusal margin.',
        'subtext':
            'Tooth is peg-like. Pointed unworn occlusal margin. Buttressing is heaviest near M/D center of crown. Dentin exposure greater at center. Both crown and root are longer than in incisors.',
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
        'subtext':
            ' Crown is round in cross section. Crown is relatively tall. Has only one cusp.',
        'nextStep': '2.6'
      },
      {
        'text':
            'Bifurcated or bilobate root or Has two sub-equal cusps or Has a median groove or Has clear mesial & distal foveae or Has a curved, cupped IPCF',
        'subtext':
            'Crown may be round, pinched, or triangular. Crown is relatively short. Has at least two cusps. Has a median groove or mesial & distal foveae.',
        'nextStep': '2.9'
      },
    ],
  ),
  DecisionStep(
    id: '2.5',
    type: 'question',
    title: '',
    choices: [
      {
        'text': 'Tooth has a single, unfused root',
        'subtext':
            ' Crown is smaller than those of molars. Usually has 2 cusps. Occlusal outline is round or oval. Can have bifurcated roots',
        'nextStep': '',
      },
      {
        'text': 'Tooth has three or more roots',
        'subtext':
            'Crown is larger than those of premolars. Usually has 3–5 cusps. Occlusal outline is rectilinear. Usually has 2 or more roots.',
        'nextStep': '',
      },
    ],
  ),
  DecisionStep(
    id: '2.6I',
    type: 'question',
    title: 'Permament or deciduous?',
    choices: [
      {
        'text':
            'Co-occurence of partially resorbed roots and crown with evidence of wear (both must be present)',
        'subtext':
            ' Enamel is thinner, softer, and darker. Crown is more bulbous; enamel bulges past CEJ. Roots are thinner and shorter. Multiple roots are more divergent',
        'nextStep': '2.7D'
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Enamel is thicker, harder, and whiter. Crown is more vertical; bulges less. Roots are longer and stouter. Multiple roots diverge less',
        'nextStep': '2.7P',
      },
    ],
  ),
  DecisionStep(
    id: '2.7P',
    type: 'question',
    title: 'Upper or lower incisor?',
    choices: [
      {
        'text':
            'Root is nearly circular in cross-section (it rolls easily between your fingertips)',
        'subtext':
            'Crown is broad relative to its height. Often has much lingual relief. Apical wear facet is inclined lingually',
        'nextStep': '2.11U'
      },
      {
        'text':
            'Root is round but flattened (it does not roll easily between your fingertips)',
        'subtext':
            'Crown is narrow relative to its height. Has little or no lingual relief. Apical wear facet is inclined labially',
        'nextStep': '2.11L'
      },
    ],
  ),
  DecisionStep(
    id: '2.7D',
    type: 'question',
    title: 'Upper or lower incisor?',
    choices: [
      {
        'text':
            'Root is nearly circular in cross-section (it rolls easily between your fingertips)',
        'subtext':
            'Crown is broad relative to its height. Often has much lingual relief. Apical wear facet is inclined lingually',
        'nextStep': '2.11DU'
      },
      {
        'text':
            'Root is round but flattened (it does not roll easily between your fingertips)',
        'subtext':
            'Crown is narrow relative to its height. Has little or no lingual relief. Apical wear facet is inclined labially',
        'nextStep': '2.11DL'
      },
    ],
  ),
  DecisionStep(
    id: '2.8',
    type: 'question',
    title: 'Upper or lower canine?',
    choices: [
      {
        'text': 'Crown bulges beyond both mesial and distal root margins',
        'subtext':
            'Crown is broad relative to its height. Often has much lingual relief. Apical wear facet is inclined lingually',
        'nextStep': ''
      },
      {
        'text':
            'Crown bulges beyond only distal root margin; does not bulge past mesial root margin',
        'subtext':
            'Crown is narrow relative to its height. Has little or no lingual relief. Apical wear facet is inclined labially',
        'nextStep': ''
      },
    ],
  ),
  DecisionStep(
    id: '2.9',
    type: 'question',
    title: 'Upper or lower premolar?',
    choices: [
      {
        'text':
            'Crown is more rectangular than circular, and the two main cusps are similar in terms of height and area.',
        'subtext':
            'Pronounced, linear median occlusal groove. Cusps are nearly equal in occlusal area. Radicals frequently split into two roots or grooved on both sides of root',
        'nextStep': '',
      },
      {
        'text':
            'Crown is more circular than rectangular, and the two main cusps are very dissimilar in terms of cusp area and cusp height.',
        'subtext':
            'Weak median groove (often seen as two fovea interrupted by a median occlusal ridge. The main (buccal) cusp is much larger than the smaller (lingual) cusp. Usually single rooted or grooved on only one side of root.',
        'nextStep': '',
      },
    ],
  ),
  DecisionStep(
    id: '2.10',
    type: 'question',
    title: 'Upper or lower molar?',
    choices: [
      {
        'text': 'Tooth has three roots (two parallel and one at 90º to them)',
        'subtext':
            'Crown outline is rhomboidal. Usually 3 or 4 cusps. Cusps are asymmetrical (buccal vs. lingual). Usually 3 roots, although sometimes one or more of these roots will split into 2 half-roots. One root is set at 90 º relative to others',
        'nextStep': ''
      },
      {
        'text': 'Tooth has two parallel roots and at least three cusps',
        'subtext':
            'Crown outline is square, rectangular, or oblong. Usually 4 or 5 cusps. Cusps are symmetrical (buccal vs. lingual). Usually 2 parallel roots, but sometimes one of these roots splits into 2 half-roots.',
        'nextStep': ''
      },
    ],
  ),
  DecisionStep(
    id: '2.11U',
    type: 'question',
    title: 'Central or lateral incisor?',
    choices: [
      {
        'text': 'Large, wide, spatulate crown',
        'subtext':
            'Crown is wide relative to its height (labially). Crown is more symmetrical (labially). Root is shorter and stouter. Has a large, rectangular IPCF',
        'nextStep': '2.11U-1',
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            ' Crown is tall relative to its width (labially). Crown is more asymmetrical (labially). Root is longer and more slender. Has a square, concave IPCF',
        'nextStep': '2.11U-2',
      },
    ],
  ),
  DecisionStep(
    id: '2.11U-1',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': '2.11U-1L'},
      {'text': 'Right side', 'nextStep': '2.11U-1R'},
    ],
  ),
  DecisionStep(
    id: '2.11U-2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': '2.11U-2L'},
      {'text': 'Right side', 'nextStep': '2.11U-2R'},
    ],
  ),
  DecisionStep(
    id: '2.11L',
    type: 'question',
    title: 'Central or lateral incisor?',
    choices: [
      {
        'text': 'Not immediately clear',
        'subtext':
            'Crown is slightly smaller than lateral. Crown is tall relative to width (labially). Crown is more symmetrical (labially). Crown edges are equally angular. Root is shorter than lateral',
        'nextStep': '2.11L-1',
      },
      {
        'text':
            'Major axis of occlusal edge is not perpendicular to major axis of root',
        'subtext':
            'Crown is slightly larger than central. Crown is wide relative to height (labially). Crown is more asymmetrical (labially). Distal crown edges flare distally. Root is longer than central',
        'nextStep': '2.11L-2'
      },
    ],
  ),
  DecisionStep(
    id: '2.11L-1',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': '2.11L-1L'},
      {'text': 'Right side', 'nextStep': '2.11L-1R'},
    ],
  ),
  DecisionStep(
    id: '2.11L-2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': '2.11L-2L'},
      {'text': 'Right side', 'nextStep': '2.11L-2R'},
    ],
  ),
  DecisionStep(
    id: '2.12U',
    type: 'question',
    title: 'Third or fourth premolar?',
    choices: [
      {
        'text': 'Root is bifurcated or bilobate or Has a curved, cupped IPCF',
        'subtext':
            ' Lingual cusp is small (relative to buccal cusp). Less symmetrical, more triangular (occlusally). Mesial edge of crown indented, concave. Crown bulges more mesiobuccally at CEJ. Developmental groove through mesial marginal ridge. Mesial IPCF is tall, curvilinear, and convex.',
        'nextStep': '',
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Lingual & buccal cusps are similar in size (occlusally). More symmetrical, rounder/more oval (occlusally). Mesial edge of crown straight, not indented. Crown more vertical mesiobuccally at CEJ. No developmental groove. Mesial IPCF is broad and more symmetrical',
        'nextStep': '',
      },
    ],
  ),
  DecisionStep(
    id: '2.12L',
    type: 'question',
    title: 'Third or fourth premolar?',
    choices: [
      {
        'text': 'Not immediately clear',
        'subtext':
            'Lingual cusp is small (relative to buccal cusp). Buccal cusp is more pointed. Mesial fovea is placed very near mesial edge. Crown less symmetrical, more triangular (occlusally). Mesiolingual groove through mesial marginal ridge. Mesial IPCF is tall, curvilinear, and convex',
        'nextStep': '',
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Lingual & buccal cusps are closer to same size. Buccal cusp is less pointed. Mesial fovea is placed more distally. Crown more symmetrical, rounder (occlusally). No mesiolingual groove. Mesial IPCF is broad and more symmetrical',
        'nextStep': '',
      },
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
  // RESULTS
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
  DecisionStep(
    id: '2.11L-1R',
    type: 'result',
    title: 'RI1 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: '2.11L-1L',
    type: 'result',
    title: 'LI1 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Left',
  ),
];
