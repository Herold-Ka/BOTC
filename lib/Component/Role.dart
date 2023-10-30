// ignore: file_names
class RoleModel {
  int id;
  String roleName;
  int roleAlignement;
  String roleImage;
  String roleDescription;

  RoleModel(
      {required this.id,
      required this.roleName,
      required this.roleAlignement,
      required this.roleImage,
      required this.roleDescription});
}

List<RoleModel> roleVillage = [
  RoleModel(
      id: 1,
      roleName: "Lavandière",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_lavandiere.png",
      roleDescription:
          "La première nuit, le conteur désigne 2 joueurs. Il vous donne ensuite le rôle de villageois de l'un des deux"),
  RoleModel(
      id: 2,
      roleName: "Archiviste",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_archiviste.png",
      roleDescription:
          "La première nuit, le conteur désigne 2 joueurs. Il vous donne le rôle d'étranger de l'un des deux"),
  RoleModel(
      id: 3,
      roleName: "Enquêteur",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_enqueteur.png",
      roleDescription:
          "La première nuit, le conteur désigne 2 joueurs. Il vous donne le rôle de sbire de l'un des deux"),
  RoleModel(
      id: 4,
      roleName: "Cuistot",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_cuisto.png",
      roleDescription:
          "La première nuit le conteur vous indique combien il y a de paire de maléfiques assis l'un à côté de l'autre"),
  RoleModel(
      id: 5,
      roleName: "Empatique",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_empathique.png",
      roleDescription:
          "Chaque nuit vous apprenez combien de vos voisins survivants sont maléfique (0;1;2)"),
  RoleModel(
      id: 6,
      roleName: "Croque-mort",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_croque_mort.png",
      roleDescription:
          "Chaque nuit*, vous apprenez quel est le role du joueur qui a été exécuté pendant la journée"),
  RoleModel(
      id: 7,
      roleName: "Moine",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_moine.png",
      roleDescription:
          "Chaque nuit*, choisissez un autre joueur. Il est protégé des attaques du Démon cette nuit"),
  RoleModel(
      id: 8,
      roleName: "Gardien",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_gardien.png",
      roleDescription:
          "Si vous mourez pendant la nuit, choisissez un joueur et le conteur vous révèlera son role"),
  RoleModel(
      id: 9,
      roleName: "Pucelle",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_pucelle.png",
      roleDescription:
          "La première fois que vous êtes nominé, si le joueur vous nominant est un villageois, il est exécuté immédiatement"),
  RoleModel(
      id: 10,
      roleName: "Mercenaire",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_mercenaire.png",
      roleDescription:
          "Une fois par partie, pendant la journée, annoncez publiquement que vous êtes mercenaire et que vous tirez sur un joueur. Si c'est le Démon il meurt."),
  RoleModel(
      id: 11,
      roleName: "Soldat",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_soldat.png",
      roleDescription:
          "Vous ne mourrez pas des attaques du Démon pendant la nuit."),
  RoleModel(
      id: 12,
      roleName: "Maire",
      roleAlignement: 0,
      roleImage: "assets/image/role/Icon_maire.png",
      roleDescription:
          "1)Lorqu'il ne reste plus que 3 joueurs vivant (dont vous), si personne n'est exécuté, le village gagne." +
              "2) Si vous deviez mourir de nuit, un autre joueur peut mourir à votre"),
];

List<RoleModel> roleEtranger = [
  RoleModel(
      id: 13,
      roleName: "Reclus",
      roleAlignement: 1,
      roleImage: "assets/image/role/Icon_reclus.png",
      roleDescription:
          "Vous pouvez être considéré comme un maléfique (sbire ou démon) même lorsque vous êtes mort"),
  RoleModel(
      id: 14,
      roleName: "majordome",
      roleAlignement: 1,
      roleImage: "assets/image/role/Icon_majordome.png",
      roleDescription:
          "Chaque nuit, choisissez un autre joueur, il devient votre maître. Demain, vous ne pourrez voter (oui) que lorsque votre maître votera (oui)"),
  RoleModel(
      id: 15,
      roleName: "Vertueux",
      roleAlignement: 1,
      roleImage: "assets/image/role/Icon_vertueux.png",
      roleDescription:
          "Si vous mourrez exécuté (nomination), vous et le village perdez"),
  RoleModel(
      id: 16,
      roleName: "Soulard",
      roleAlignement: 1,
      roleImage: "assets/image/role/Icon_soulard.png",
      roleDescription:
          "Vous ne savez pas que vous êtes ivre. Vous pensez être un villageois, mais votre capacité peut ne pas fonctionner correctement."),
];

// ignore: non_constant_identifier_names
List<RoleModel> roleMalefique = [
  RoleModel(
      id: 17,
      roleName: "Empoisonneur",
      roleAlignement: 2,
      roleImage: "assets/image/role/Icon_poisoner.png",
      roleDescription:
          "Chaque nuit, choisissez un joueur, sa capacité ne fonctionne pas correctement cette nuit ainsi que le jour suivant"),
  RoleModel(
      id: 18,
      roleName: "Baron",
      roleAlignement: 2,
      roleImage: "assets/image/role/Icon_baron.png",
      roleDescription:
          "La composition du village est modifiée : +2 étrangers/ -2Villageois"),
  RoleModel(
      id: 19,
      roleName: "Croqueuse d'homme",
      roleAlignement: 2,
      roleImage: "assets/image/role/Icon_scarlet_woman.png",
      roleDescription:
          "S'il y a 5 joueurs vivants ou plus (hors voyageurs) et que le Démon meurt, vous devenez le Démon"),
  RoleModel(
      id: 20,
      roleName: "Espion",
      roleAlignement: 2,
      roleImage: "assets/image/role/Icon_spy.png",
      roleDescription:
          "1) Chaque nuit, vous avez accès au grimoiren (rôle et interractions )" +
              "2) Vous pouvez être considéré comme gentil (villageois ou étranger) même si vous êtes mort."),
  RoleModel(
      id: 21,
      roleName: "Démon",
      roleAlignement: 3,
      roleImage: "assets/image/role/Icon_imp.png",
      roleDescription:
          "Chaque nuit* choisissez un joueur, il meurt. Si vous vous choisissez (suicide), vous mourez et un sbire devient le Démon")
];

List<RoleModel> roleDemon = [
  RoleModel(
      id: 21,
      roleName: "Démon",
      roleAlignement: 3,
      roleImage: "assets/image/role/Icon_imp.png",
      roleDescription:
          "Chaque nuit* choisissez un joueur, il meurt. Si vous vous choisissez (suicide), vous mourez et un sbire devient le Démon")
];
