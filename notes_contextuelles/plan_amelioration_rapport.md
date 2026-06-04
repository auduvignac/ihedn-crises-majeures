# Plan d'amélioration du rapport

Ce document sert de feuille de route pour les prochaines itérations sur le rapport. Il transforme la revue critique en chantiers éditoriaux directement actionnables, afin qu'un agent IA puisse intervenir section par section sans perdre la cohérence doctrinale du document.

## Mode d'emploi

Avant toute modification, relire dans cet ordre :

1. `AGENTS.md` ;
2. `notes_contextuelles/guide_redaction.md` ;
3. `notes_contextuelles/plan_rapport.md` ;
4. le présent fichier ;
5. la section LaTeX concernée.

Travailler par passes limitées. Une itération doit viser un chantier identifiable, préserver les commandes LaTeX existantes, conserver les citations, les labels, les glossaires et les environnements, puis vérifier la cohérence avec la thèse générale.

La ligne doctrinale ne doit pas changer : l'AR 16 et les associations IHEDN ne remplacent pas les autorités publiques, ne constituent pas une structure opérationnelle autonome et ne créent pas de chaîne de commandement parallèle. Leur contribution principale se situe en amont des crises, par la préparation, la sensibilisation et l'identification des compétences, puis en aval, par l'analyse, le retour d'expérience et la diffusion d'une culture stratégique.

## Priorités de reprise

| Priorité | Chantier | Fichiers cibles | Objectif |
|---|---|---|---|
| P1 | Corriger l'architecture de la temporalité | `main.tex`, `sections/positionnement_ar16.tex` | Rendre la temporalité visible comme étape majeure du raisonnement. |
| P2 | Étoffer la valeur ajoutée de l'AR 16 | `sections/positionnement_ar16.tex` | Montrer concrètement ce que les auditeurs peuvent apporter sans surpromettre. |
| P3 | Clarifier le périmètre "citoyens engagés" | `sections/introduction.tex`, `sections/conclusion.tex` | Assumer le recentrage du sujet sur les auditeurs et adhérents IHEDN. |
| P4 | Renforcer la méthodologie du questionnaire | `sections/proposition_structurante.tex`, `annexes/maquette_questionnaire.tex` | Faire du questionnaire un outil de connaissance stratégique et non une simple enquête. |
| P5 | Rendre les recommandations actionnables | `sections/plan_previsionnel.tex`, `sections/conclusion.tex` | Ajouter porteurs, livrables, échéances, conditions et limites. |
| P6 | Améliorer les transitions et bilans intermédiaires | Toutes sections | Faire progresser l'argumentation sans répétition mécanique. |
| P7 | Sécuriser les affirmations insuffisamment démontrées | Sections concernées | Sourcer, qualifier ou réduire les affirmations fragiles. |
| P8 | Passer l'ensemble en revue éditoriale finale | Toutes sections | Réduire les redondances, harmoniser le ton et corriger l'orthotypographie. |

## P1 - Architecture de la temporalité

Constat : `sections/positionnement_ar16.tex` contient une commande `\section{Temporalité de l'engagement des auditeurs}` alors que le fichier est appelé dans `main.tex` sous la partie consacrée au positionnement de l'AR 16. Cela crée une rupture hiérarchique.

Action recommandée :

- isoler la temporalité dans un fichier dédié, par exemple `sections/temporalite_engagement.tex` ;
- l'appeler explicitement depuis `main.tex` comme section autonome ;
- conserver la logique avant / pendant / après crise ;
- préserver les labels, commandes et références existantes ;
- ajouter une transition entre le positionnement AR 16 et la temporalité.

Critère de validation : le lecteur doit comprendre que la temporalité est un cadre analytique central, et non un simple développement secondaire du positionnement institutionnel.

## P2 - Valeur ajoutée de l'AR 16

Constat : la section sur la valeur ajoutée est signalée comme incomplète et reste trop abstraite. Elle devrait porter la démonstration entre le cadrage général et la proposition de questionnaire.

Action recommandée :

- supprimer le marqueur `% A ETOFFER` après enrichissement ;
- distinguer les apports possibles des auditeurs :
  - expertise professionnelle et sectorielle ;
  - culture stratégique acquise par les formations IHEDN ;
  - réseaux territoriaux, administratifs, économiques ou associatifs ;
  - capacité de sensibilisation et de pédagogie ;
  - analyse informationnelle et contribution au retour d'expérience ;
  - connaissance des réalités locales et des contraintes d'acteurs ;
- distinguer clairement l'apport individuel, l'apport collectif de l'association et l'apport institutionnellement recevable ;
- rappeler que ces apports restent conditionnés par la disponibilité, la compétence réellement identifiée et l'articulation avec les autorités.

Critère de validation : la section doit répondre à la question "qu'est-ce que l'AR 16 peut apporter de spécifique ?" sans basculer vers une promesse de mobilisation opérationnelle.

## P3 - Périmètre "citoyens engagés"

Constat : le titre et la problématique évoquent les citoyens engagés, mais le rapport se concentre principalement sur les auditeurs IHEDN et les adhérents associatifs.

Action recommandée :

- expliciter dès l'introduction que les citoyens engagés constituent le cadre général ;
- préciser que le rapport étudie un sous-ensemble particulier : les auditeurs et adhérents IHEDN organisés en association ;
- justifier ce recentrage par l'existence d'un réseau identifiable, d'une culture stratégique commune et d'une capacité de recensement ;
- éviter de laisser entendre que le rapport traite l'ensemble de l'engagement citoyen en situation de crise ;
- reprendre cette clarification dans la conclusion.

Critère de validation : le périmètre réel du rapport doit être assumé, sans contradiction entre ambition générale et objet effectivement traité.

## P4 - Questionnaire et gouvernance des données

Constat : le questionnaire est central, mais son fonctionnement analytique et institutionnel doit être davantage explicité.

Action recommandée :

- distinguer quatre dimensions :
  - diagnostic : connaître les profils et compétences ;
  - méthode : objectiver les données plutôt que présumer une capacité ;
  - exploitation : produire une connaissance utilisable par l'association et, le cas échéant, par ses interlocuteurs institutionnels ;
  - gouvernance : encadrer l'usage, l'accès et la mise à jour des données ;
- relier les rubriques de l'annexe à ces finalités ;
- qualifier l'analyse de l'annuaire 2022 comme source interne indicative, avec ses limites ;
- préciser les biais possibles : non-réponse, auto-déclaration, disponibilité réelle, obsolescence des données ;
- ajouter les conditions minimales d'une base de données :
  - responsable de traitement ;
  - finalités autorisées ;
  - accès restreints ;
  - durée de conservation ;
  - fréquence de mise à jour ;
  - conformité RGPD ;
  - distinction entre compétence déclarée et disponibilité effective.

Critère de validation : le questionnaire doit apparaître comme un instrument de connaissance stratégique, pas comme une formalité administrative ni comme une promesse de mobilisation.

## P5 - Recommandations actionnables

Constat : plusieurs recommandations sont pertinentes mais trop générales pour un décideur public ou associatif.

Action recommandée :

- reformuler chaque recommandation importante selon un format stable :
  - action ;
  - acteur responsable ;
  - partenaires éventuels ;
  - livrable attendu ;
  - échéance indicative ;
  - condition de réussite ;
  - limite d'emploi ;
- préciser la gouvernance du triptyque comité de pilotage / comité scientifique / équipe projet ;
- associer chaque risque identifié à une mesure de mitigation ;
- distinguer les recommandations internes à l'AR 16 des propositions nécessitant une validation ou un dialogue institutionnel externe ;
- éviter les formulations trop larges du type "développer une culture de résilience" sans action concrète.

Critère de validation : un lecteur doit pouvoir identifier qui fait quoi, dans quel délai, avec quel livrable et sous quelles limites.

## P6 - Transitions et bilans intermédiaires

Constat : certaines transitions sont abruptes et plusieurs idées reviennent sans progression nette.

Passages à reprendre en priorité :

- introduction vers cadrage général : resserrer le lien entre contexte stratégique, société résiliente, associations IHEDN et questionnaire ;
- hybridation des menaces vers cadre normatif : expliquer que la complexité des crises impose de clarifier les responsabilités institutionnelles ;
- temporalité vers questionnaire : montrer que la distinction avant / pendant / après crise conduit logiquement au besoin d'objectiver les compétences ;
- questionnaire vers plan prévisionnel : expliquer que le calendrier évite que la proposition reste déclarative.

Action recommandée :

- ajouter de courts bilans à la fin des grandes parties ;
- réduire les reprises du triptyque "non-substitution / amont-aval / objectivation" lorsqu'il a déjà été établi ;
- varier les formulations et éviter les transitions mécaniques.

Critère de validation : chaque section doit apporter une étape nouvelle au raisonnement.

## P7 - Affirmations à sécuriser

Constat : certaines affirmations sont plausibles mais insuffisamment démontrées ou trop ambitieuses.

Points à vérifier ou qualifier :

- composition socioprofessionnelle de l'AR 16 ;
- portée de l'analyse de l'annuaire 2022 ;
- propositions de sensibilisation auprès des conseils municipaux d'enfants, écoles de journalisme, CLEMI, VIGINUM ou parcours IHEDN ;
- articulation avec les DMD ;
- capacité de l'association à produire des analyses, formations, relais ou RETEX utiles aux autorités.

Action recommandée :

- ajouter une source lorsqu'elle existe ;
- qualifier l'affirmation comme hypothèse de travail si elle repose sur une donnée interne ;
- réduire la portée si l'élément n'est pas démontrable ;
- distinguer ce qui est déjà possible, ce qui suppose une validation externe et ce qui relève d'une perspective.

Critère de validation : aucune proposition ne doit paraître juridiquement, institutionnellement ou opérationnellement présomptueuse.

## P8 - Revue éditoriale finale

Objectif : donner au rapport une voix de comité sobre, précise et crédible.

Action recommandée :

- réduire les répétitions autour de "résilience", "mobilisation", "structuration", "contribution" et "compétences" ;
- remplacer les formules génériques par des formulations plus analytiques ;
- éviter le jargon institutionnel ou managérial ;
- renforcer la voix collective du comité lorsque c'est pertinent ;
- harmoniser les majuscules, accents, ponctuation, espaces insécables et termes institutionnels ;
- vérifier que la conclusion ne répète pas les sections, mais réaffirme la position doctrinale et la fonction structurante du questionnaire.

Critère de validation : le rapport doit lire comme une production collective institutionnelle, non comme une dissertation théorique ni comme un document promotionnel.

## Matrice par fichier

| Fichier | Rôle attendu | Points d'attention |
|---|---|---|
| `sections/resume.tex` | Synthèse du contexte, du constat, de la proposition et de la méthode. | Mentionner explicitement le questionnaire et la prudence institutionnelle. |
| `sections/introduction.tex` | Installer la problématique et le périmètre. | Clarifier le passage des citoyens engagés aux auditeurs IHEDN. |
| `sections/cadrage_et_enjeux.tex` | Définir le cadre des crises majeures et de la résilience. | Éviter l'inflation théorique ; renforcer les transitions. |
| `sections/positionnement_ar16.tex` | Définir la place et la valeur ajoutée de l'AR 16. | Étoffer les apports concrets ; éviter toute substitution aux autorités. |
| `sections/temporalite_engagement.tex` | Décrire avant / pendant / après crise. | À créer si la restructuration P1 est retenue. |
| `sections/proposition_structurante.tex` | Justifier le questionnaire et son exploitation. | Ajouter méthode, biais, gouvernance des données, RGPD. |
| `sections/plan_previsionnel.tex` | Transformer la proposition en démarche réalisable. | Ajouter acteurs, livrables, échéances, mitigations. |
| `sections/conclusion.tex` | Clore par une position doctrinale et stratégique. | Ne pas seulement résumer ; réaffirmer la fonction du questionnaire. |
| `annexes/maquette_questionnaire.tex` | Donner le contenu opérationnel du questionnaire. | Relier les rubriques aux finalités analytiques. |

## Ordre recommandé des prochaines itérations

1. Corriger la structure de la temporalité.
2. Étoffer la valeur ajoutée de l'AR 16.
3. Clarifier le périmètre "citoyens engagés" / auditeurs IHEDN.
4. Renforcer la section questionnaire et la gouvernance des données.
5. Rendre les recommandations et le plan prévisionnel plus actionnables.
6. Reprendre les transitions et bilans intermédiaires.
7. Sécuriser les affirmations fragiles.
8. Effectuer une passe éditoriale et orthotypographique globale.

## Checklist de validation après chaque itération

- La ligne doctrinale est-elle inchangée ?
- La contribution de l'AR 16 reste-t-elle complémentaire aux autorités ?
- Le questionnaire demeure-t-il la proposition centrale ?
- Les commandes LaTeX, citations, labels, glossaires et environnements sont-ils préservés ?
- Les affirmations nouvelles sont-elles sourcées, qualifiées ou limitées ?
- Les recommandations distinguent-elles action, acteur, livrable et limite ?
- Les transitions renforcent-elles la progression argumentative ?
- Le texte reste-t-il sobre, institutionnel et crédible ?
- Le rapport compile-t-il sans erreur ?
