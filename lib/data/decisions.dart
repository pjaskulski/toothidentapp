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
        'nextStep': '2.6C'
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
        'nextStep': '2.9',
      },
      {
        'text': 'Tooth has three or more roots',
        'subtext':
            'Crown is larger than those of premolars. Usually has 3–5 cusps. Occlusal outline is rectilinear. Usually has 2 or more roots.',
        'nextStep': '2.6M',
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
    id: '2.6C',
    type: 'question',
    title: 'Permament or deciduous?',
    choices: [
      {
        'text':
            'Co-occurence of partially resorbed roots and crown with evidence of wear (both must be present)',
        'subtext':
            ' Enamel is thinner, softer, and darker. Crown is more bulbous; enamel bulges past CEJ. Roots are thinner and shorter. Multiple roots are more divergent',
        'nextStep': '2.8P'
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Enamel is thicker, harder, and whiter. Crown is more vertical; bulges less. Roots are longer and stouter. Multiple roots diverge less',
        'nextStep': '2.8D',
      },
    ],
  ),
  DecisionStep(
    id: '2.8P',
    type: 'question',
    title: 'Upper or lower canine?',
    choices: [
      {
        'text': 'Crown bulges beyond both mesial and distal root margins',
        'subtext':
            'Crown is broad relative to its height. Often has much lingual relief. Apical wear facet is inclined lingually',
        'nextStep': '2.11CPU'
      },
      {
        'text':
            'Crown bulges beyond only distal root margin; does not bulge past mesial root margin',
        'subtext':
            'Crown is narrow relative to its height. Has little or no lingual relief. Apical wear facet is inclined labially',
        'nextStep': '2.11CPL'
      },
    ],
  ),
  DecisionStep(
    id: '2.8D',
    type: 'question',
    title: 'Upper or lower canine?',
    choices: [
      {
        'text': 'Crown bulges beyond both mesial and distal root margins',
        'subtext':
            'Crown is broad relative to its height. Often has much lingual relief. Apical wear facet is inclined lingually',
        'nextStep': '2.11CDU'
      },
      {
        'text':
            'Crown bulges beyond only distal root margin; does not bulge past mesial root margin',
        'subtext':
            'Crown is narrow relative to its height. Has little or no lingual relief. Apical wear facet is inclined labially',
        'nextStep': '2.11CDL'
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
        'nextStep': '2.12U',
      },
      {
        'text':
            'Crown is more circular than rectangular, and the two main cusps are very dissimilar in terms of cusp area and cusp height.',
        'subtext':
            'Weak median groove (often seen as two fovea interrupted by a median occlusal ridge. The main (buccal) cusp is much larger than the smaller (lingual) cusp. Usually single rooted or grooved on only one side of root.',
        'nextStep': '2.12L',
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
      {'text': 'Left side', 'nextStep': 'LI1-U'},
      {'text': 'Right side', 'nextStep': 'RI1-U'},
    ],
  ),
  DecisionStep(
    id: '2.11U-2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LI2-U'},
      {'text': 'Right side', 'nextStep': 'RI2-U'},
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
      {'text': 'Left side', 'nextStep': 'LI1-L'},
      {'text': 'Right side', 'nextStep': 'RI1-L'},
    ],
  ),
  DecisionStep(
    id: '2.11L-2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LI2-L'},
      {'text': 'Right side', 'nextStep': 'RI2-L'},
    ],
  ),
  DecisionStep(
    id: '2.11DU',
    type: 'question',
    title: 'Central or lateral incisor?',
    choices: [
      {
        'text': 'Large, wide, spatulate crown',
        'subtext':
            'Crown is wide relative to its height (labially). Crown is more symmetrical (labially). Root is shorter and stouter. Has a large, rectangular IPCF',
        'nextStep': '2.11DU-1',
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            ' Crown is tall relative to its width (labially). Crown is more asymmetrical (labially). Root is longer and more slender. Has a square, concave IPCF',
        'nextStep': '2.11DU-2',
      },
    ],
  ),
  DecisionStep(
    id: '2.11DU-1',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDI1-U'},
      {'text': 'Right side', 'nextStep': 'RDI1-U'},
    ],
  ),
  DecisionStep(
    id: '2.11DU-2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDI2-U'},
      {'text': 'Right side', 'nextStep': 'RDI2-U'},
    ],
  ),
  DecisionStep(
    id: '2.11DL',
    type: 'question',
    title: 'Central or lateral incisor?',
    choices: [
      {
        'text': 'Not immediately clear',
        'subtext':
            'Crown is slightly smaller than lateral. Crown is tall relative to width (labially). Crown is more symmetrical (labially). Crown edges are equally angular. Root is shorter than lateral',
        'nextStep': '2.11DL-1',
      },
      {
        'text':
            'Major axis of occlusal edge is not perpendicular to major axis of root',
        'subtext':
            'Crown is slightly larger than central. Crown is wide relative to height (labially). Crown is more asymmetrical (labially). Distal crown edges flare distally. Root is longer than central',
        'nextStep': '2.11DL-2'
      },
    ],
  ),
  DecisionStep(
    id: '2.11DL-1',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDI1-L'},
      {'text': 'Right side', 'nextStep': 'RDI1-L'},
    ],
  ),
  DecisionStep(
    id: '2.11DL-2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDI2-L'},
      {'text': 'Right side', 'nextStep': 'RDI2-L'},
    ],
  ),
  DecisionStep(
    id: '2.11CPU',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LC1-U'},
      {'text': 'Right side', 'nextStep': 'RC1-U'},
    ],
  ),
  DecisionStep(
    id: '2.11CPL',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LC1-L'},
      {'text': 'Right side', 'nextStep': 'RC1-L'},
    ],
  ),
  DecisionStep(
    id: '2.11CDU',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDC1-U'},
      {'text': 'Right side', 'nextStep': 'RDC1-U'},
    ],
  ),
  DecisionStep(
    id: '2.11CDL',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDC1-L'},
      {'text': 'Right side', 'nextStep': 'RDC1-L'},
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
        'nextStep': '2.11UP3',
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Lingual & buccal cusps are similar in size (occlusally). More symmetrical, rounder/more oval (occlusally). Mesial edge of crown straight, not indented. Crown more vertical mesiobuccally at CEJ. No developmental groove. Mesial IPCF is broad and more symmetrical',
        'nextStep': '2.11UP4',
      },
    ],
  ),
  DecisionStep(
    id: '2.11UP3',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LP3-U'},
      {'text': 'Right side', 'nextStep': 'RP3-U'},
    ],
  ),
  DecisionStep(
    id: '2.11UP4',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LP4-U'},
      {'text': 'Right side', 'nextStep': 'RP4-U'},
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
        'nextStep': '2.11LP3',
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Lingual & buccal cusps are closer to same size. Buccal cusp is less pointed. Mesial fovea is placed more distally. Crown more symmetrical, rounder (occlusally). No mesiolingual groove. Mesial IPCF is broad and more symmetrical',
        'nextStep': '2.11LP4',
      },
    ],
  ),
  DecisionStep(
    id: '2.11LP3',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LP3-L'},
      {'text': 'Right side', 'nextStep': 'RP3-L'},
    ],
  ),
  DecisionStep(
    id: '2.11LP4',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LP4-L'},
      {'text': 'Right side', 'nextStep': 'RP4-L'},
    ],
  ),
  DecisionStep(
    id: '2.6M',
    type: 'question',
    title: 'Permament or deciduous?',
    choices: [
      {
        'text':
            'Co-occurence of partially resorbed roots and crown with evidence of wear (both must be present)',
        'subtext':
            ' Enamel is thinner, softer, and darker. Crown is more bulbous; enamel bulges past CEJ. Roots are thinner and shorter. Multiple roots are more divergent',
        'nextStep': '2.10D'
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Enamel is thicker, harder, and whiter. Crown is more vertical; bulges less. Roots are longer and stouter. Multiple roots diverge less',
        'nextStep': '2.10P',
      },
    ],
  ),
  DecisionStep(
    id: '2.10P',
    type: 'question',
    title: 'Upper or lower molar?',
    choices: [
      {
        'text': 'Tooth has three roots (two parallel and one at 90º to them)',
        'subtext':
            'Crown outline is rhomboidal. Usually 3 or 4 cusps. Cusps are asymmetrical (buccal vs. lingual). Usually 3 roots, although sometimes one or more of these roots will split into 2 half-roots. One root is set at 90 º relative to others',
        'nextStep': '2.13PU'
      },
      {
        'text': 'Tooth has two parallel roots and at least three cusps',
        'subtext':
            'Crown outline is square, rectangular, or oblong. Usually 4 or 5 cusps. Cusps are symmetrical (buccal vs. lingual). Usually 2 parallel roots, but sometimes one of these roots splits into 2 half-roots.',
        'nextStep': '2.13PL'
      },
    ],
  ),
  DecisionStep(
    id: '2.13PU',
    type: 'question',
    title: 'First, second, or third molar?',
    choices: [
      {
        'text': 'Carabelli’s trait is present',
        'subtext':
            'Four clearly differentiated cusps. Crown is large and rhomboid/square. Roots are widely divergent. IPCFs: one rectangular, one square.',
        'nextStep': '2.13PU1',
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Cusps intermediate in form. Roots intermediate in form. IPCFs: two rectangular.',
        'nextStep': '2.13PU2',
      },
      {
        'text': 'Three roots fused into single functional root',
        'subtext':
            'Three cusps, not well differentiated. Crown is mesiodistally compressed, round. Roots either partially fused or closely approximated. IPCFs: only one; rectangular.',
        'nextStep': '2.13PU3',
      },
    ],
  ),
  DecisionStep(
    id: '2.13PU1',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LM1-U'},
      {'text': 'Right side', 'nextStep': 'RM1-U'},
    ],
  ),
  DecisionStep(
    id: '2.13PU2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LM2-U'},
      {'text': 'Right side', 'nextStep': 'RM2-U'},
    ],
  ),
  DecisionStep(
    id: '2.13PU3',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LM3-U'},
      {'text': 'Right side', 'nextStep': 'RM3-U'},
    ],
  ),
  DecisionStep(
    id: '2.13PL',
    type: 'question',
    title: 'First, second, or third molar?',
    choices: [
      {
        'text': 'Protostylid effects are present',
        'subtext':
            'Five clearly differentiated cusps. Crown is large and rectangular. Roots are widely divergent. IPCFs: one rectangular, one square.',
        'nextStep': '2.13PL1',
      },
      {
        'text': 'Not immediately clear',
        'subtext':
            'Usually four clearly differentiated cusps. Crown is rectangular or square. Roots intermediate in form. IPCFs: two rectangular.',
        'nextStep': '2.13PL2',
      },
      {
        'text': 'Roots fused into single functional root',
        'subtext':
            'Cusps vary from three to five. Crown is rounded triangle to square, irregular. Roots either partially fused or closely approximated. IPCFs: only one; rectangular.',
        'nextStep': '2.13PL3',
      },
    ],
  ),
  DecisionStep(
    id: '2.13PL1',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LM1-L'},
      {'text': 'Right side', 'nextStep': 'RM1-L'},
    ],
  ),
  DecisionStep(
    id: '2.13PL2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LM2-L'},
      {'text': 'Right side', 'nextStep': 'RM2-L'},
    ],
  ),
  DecisionStep(
    id: '2.13PL3',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LM3-L'},
      {'text': 'Right side', 'nextStep': 'RM3-L'},
    ],
  ),
  DecisionStep(
    id: '2.10D',
    type: 'question',
    title: 'Upper or lower molar?',
    choices: [
      {
        'text': 'Tooth has three roots (two parallel and one at 90º to them)',
        'subtext':
            'Crown outline is rhomboidal. Usually 3 or 4 cusps. Cusps are asymmetrical (buccal vs. lingual). Usually 3 roots, although sometimes one or more of these roots will split into 2 half-roots. One root is set at 90 º relative to others',
        'nextStep': '2.14DU'
      },
      {
        'text': 'Tooth has two parallel roots and at least three cusps',
        'subtext':
            'Crown outline is square, rectangular, or oblong. Usually 4 or 5 cusps. Cusps are symmetrical (buccal vs. lingual). Usually 2 parallel roots, but sometimes one of these roots splits into 2 half-roots.',
        'nextStep': '2.14DL'
      },
    ],
  ),
  DecisionStep(
    id: '2.14DU',
    type: 'question',
    title: 'First or second deciduous molar?',
    choices: [
      {
        'text': 'Crown resembles a premolar',
        'subtext':
            'Crown is oval (B/L elongated, M/D short). Central fissure separates cusps into buccal and lingual ridges. May have 2, 3, or 4 cusps (not including buccal "shoulders").',
        'nextStep': '2.14DU1',
      },
      {
        'text': 'Crown resembles a molar',
        'subtext':
            'Crown is rhomboidal with subequal M/D and B/L diameters. Oblique ridge creates a distinct distal fossa. May have 4 or 5 cusps.',
        'nextStep': '2.14DU2',
      },
    ],
  ),
  DecisionStep(
    id: '2.14DU1',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDM1-U'},
      {'text': 'Right side', 'nextStep': 'RDM1-U'},
    ],
  ),
  DecisionStep(
    id: '2.14DU2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDM2-U'},
      {'text': 'Right side', 'nextStep': 'RDM2-U'},
    ],
  ),
  DecisionStep(
    id: '2.14DL',
    type: 'question',
    title: 'First or second deciduous molar?',
    choices: [
      {
        'text': 'Crown resembles a premolar or looks like no permanent tooth',
        'subtext':
            'Crown is asymmetrical with dominant buccal cusp. Crown has a trapezoidal outline. Central ridge creates smaller mesial and larger distal fossae.',
        'nextStep': '2.14DL1',
      },
      {
        'text': 'Crown resembles a molar',
        'subtext':
            'Crown is symmetrical. Crown has a square or rectangular outline. Has 4 or 5 distinct cusps',
        'nextStep': '2.14DL2',
      },
    ],
  ),
  DecisionStep(
    id: '2.14DL1',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDM1-L'},
      {'text': 'Right side', 'nextStep': 'RDM1-L'},
    ],
  ),
  DecisionStep(
    id: '2.14DL2',
    type: 'question',
    title: 'Left or right side?',
    choices: [
      {'text': 'Left side', 'nextStep': 'LDM2-L'},
      {'text': 'Right side', 'nextStep': 'RDM2-L'},
    ],
  ),

  // RESULTS
  // Incisors permament upper
  DecisionStep(
    id: 'RI1-U',
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
    id: 'LI1-U',
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
    id: 'RI2-U',
    type: 'result',
    title: 'RI2 (upper)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Upper',
    toothPosition: '2',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LI2-U',
    type: 'result',
    title: 'LI2 (upper)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Upper',
    toothPosition: '2',
    toothSide: 'Left',
  ),
  // inicors permament lower
  DecisionStep(
    id: 'RI1-L',
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
    id: 'LI1-L',
    type: 'result',
    title: 'LI1 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RI2-L',
    type: 'result',
    title: 'RI2 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Lower',
    toothPosition: '2',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LI2-L',
    type: 'result',
    title: 'LI2 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Permament',
    toothArcade: 'Lower',
    toothPosition: '2',
    toothSide: 'Left',
  ),
  // Incisors deciduous upper
  DecisionStep(
    id: 'RDI1-U',
    type: 'result',
    title: 'rdi1 (upper)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '1',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDI1-U',
    type: 'result',
    title: 'ldi1 (upper)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '1',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RDI2-U',
    type: 'result',
    title: 'rdi2 (upper)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '2',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDI2-U',
    type: 'result',
    title: 'ldi2 (upper)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '2',
    toothSide: 'Left',
  ),
  // inicors deciduous lower
  DecisionStep(
    id: 'RDI1-L',
    type: 'result',
    title: 'rdi1 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDI1-L',
    type: 'result',
    title: 'ldi1 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RDI2-L',
    type: 'result',
    title: 'rdi2 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '2',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDI2-L',
    type: 'result',
    title: 'ldi2 (lower)',
    choices: [],
    toothType: 'Incisors',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '2',
    toothSide: 'Left',
  ),
  // Canines permament
  DecisionStep(
    id: 'RC1-U',
    type: 'result',
    title: 'RC1 (upper)',
    choices: [],
    toothType: 'Canines',
    toothDentition: 'Permanent',
    toothArcade: 'Upper',
    toothPosition: '',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LC1-U',
    type: 'result',
    title: 'LC1 (upper)',
    choices: [],
    toothType: 'Canines',
    toothDentition: 'Permanent',
    toothArcade: 'Upper',
    toothPosition: '',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RC1-L',
    type: 'result',
    title: 'RC1 (lower)',
    choices: [],
    toothType: 'Canines',
    toothDentition: 'Permanent',
    toothArcade: 'Lower',
    toothPosition: '',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LC1-L',
    type: 'result',
    title: 'LC1 (lower)',
    choices: [],
    toothType: 'Canines',
    toothDentition: 'Permanent',
    toothArcade: 'Lower',
    toothPosition: '',
    toothSide: 'Left',
  ),
  // Canines deciduous upper
  DecisionStep(
    id: 'RDC1-U',
    type: 'result',
    title: 'RDC1 (upper)',
    choices: [],
    toothType: 'Canines',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDC1-U',
    type: 'result',
    title: 'LDC1 (upper)',
    choices: [],
    toothType: 'Canines',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RDC1-L',
    type: 'result',
    title: 'RDC1 (lower)',
    choices: [],
    toothType: 'Canines',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDC1-L',
    type: 'result',
    title: 'LDC1 (lower)',
    choices: [],
    toothType: 'Canines',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '',
    toothSide: 'Left',
  ),
  // Premolars upper
  DecisionStep(
    id: 'RP3-U',
    type: 'result',
    title: 'RP3 (upper)',
    choices: [],
    toothType: 'Premolars',
    toothDentition: '',
    toothArcade: 'Upper',
    toothPosition: '3',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LP3-U',
    type: 'result',
    title: 'LP3 (upper)',
    choices: [],
    toothType: 'Premolars',
    toothDentition: '',
    toothArcade: 'Upper',
    toothPosition: '3',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RP4-U',
    type: 'result',
    title: 'RP4 (upper)',
    choices: [],
    toothType: 'Premolars',
    toothDentition: '',
    toothArcade: 'Upper',
    toothPosition: '4',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LP4-U',
    type: 'result',
    title: 'RP4 (upper)',
    choices: [],
    toothType: 'Premolars',
    toothDentition: '',
    toothArcade: 'Upper',
    toothPosition: '4',
    toothSide: 'Left',
  ),
  // Premolars lower
  DecisionStep(
    id: 'RP3-L',
    type: 'result',
    title: 'RP3 (lower)',
    choices: [],
    toothType: 'Premolars',
    toothDentition: '',
    toothArcade: 'Lower',
    toothPosition: '3',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LP3-L',
    type: 'result',
    title: 'LP3 (lower)',
    choices: [],
    toothType: 'Premolars',
    toothDentition: '',
    toothArcade: 'Lower',
    toothPosition: '3',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RP4-L',
    type: 'result',
    title: 'RP4 (lower)',
    choices: [],
    toothType: 'Premolars',
    toothDentition: '',
    toothArcade: 'Lower',
    toothPosition: '4',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LP4-L',
    type: 'result',
    title: 'LP4 (lower)',
    choices: [],
    toothType: 'Premolars',
    toothDentition: '',
    toothArcade: 'Lower',
    toothPosition: '4',
    toothSide: 'Left',
  ),
  // Molars permanent upper
  DecisionStep(
    id: 'RM1-U',
    type: 'result',
    title: 'RM1 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Upper',
    toothPosition: '1',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LM1-U',
    type: 'result',
    title: 'LM1 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Upper',
    toothPosition: '1',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RM2-U',
    type: 'result',
    title: 'RM2 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Upper',
    toothPosition: '2',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LM2-U',
    type: 'result',
    title: 'LM2 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Upper',
    toothPosition: '2',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RM3-U',
    type: 'result',
    title: 'RM3 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Upper',
    toothPosition: '3',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LM3-U',
    type: 'result',
    title: 'LM3 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Upper',
    toothPosition: '3',
    toothSide: 'Left',
  ),
  // Molars permanent lower
  DecisionStep(
    id: 'RM1-L',
    type: 'result',
    title: 'RM1 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LM1-L',
    type: 'result',
    title: 'LM1 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RM2-L',
    type: 'result',
    title: 'RM2 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Lower',
    toothPosition: '2',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LM2-L',
    type: 'result',
    title: 'LM2 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Lower',
    toothPosition: '2',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RM3-L',
    type: 'result',
    title: 'RM3 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Lower',
    toothPosition: '3',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LM3-L',
    type: 'result',
    title: 'LM3 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Permanent',
    toothArcade: 'Lower',
    toothPosition: '3',
    toothSide: 'Left',
  ),
  // Molars deciduous upper
  DecisionStep(
    id: 'RDM1-U',
    type: 'result',
    title: 'rdm1 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '1',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDM1-U',
    type: 'result',
    title: 'ldm1 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '1',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RDM2-U',
    type: 'result',
    title: 'rdm2 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '2',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDM2-U',
    type: 'result',
    title: 'ldm2 (upper)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Deciduous',
    toothArcade: 'Upper',
    toothPosition: '2',
    toothSide: 'Left',
  ),
  // Molars deciduous lower
  DecisionStep(
    id: 'RDM1-L',
    type: 'result',
    title: 'rdm1 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDM1-L',
    type: 'result',
    title: 'ldm1 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '1',
    toothSide: 'Left',
  ),
  DecisionStep(
    id: 'RDM2-L',
    type: 'result',
    title: 'rdm2 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '2',
    toothSide: 'Right',
  ),
  DecisionStep(
    id: 'LDM2-L',
    type: 'result',
    title: 'ldm2 (lower)',
    choices: [],
    toothType: 'Molars',
    toothDentition: 'Deciduous',
    toothArcade: 'Lower',
    toothPosition: '2',
    toothSide: 'Left',
  ),
];