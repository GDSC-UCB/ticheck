class Porject {
  String? name;
  String? description;
  String? status;
  dynamic lien;
  dynamic youtube;
  dynamic photo;
  int? rateN;

  Porject({
    required this.name,
    required this.description,
    required this.status,
    required this.photo,
    required this.rateN,
    this.lien,
    this.youtube,
  });
}

List project = [
  Porject(
    name: 'SOS Dokta',
    description:
        "Une application permettant aux habitants de Bukavu, d'accéder facilement aux soins médicaux en cas d'urgence mais aussi d'apprendre comment bien gérer leur santé.",
    status: 'En production',
    photo: 'assets/images/sos.png',
    rateN: 0,
    lien: 'https://sosdokta.app/',
    youtube: 'https://www.youtube.com/watch?v=nQYI20I_Wyw',
  ),
  Porject(
    name: "Usaf'ty",
    description:
        "Une app qui pourra permettre à la population de pouvoir être en contact direct avec les agents chargés de la gestion des ordures (Connaître les horaires, connaître en temps réel l'emplacement des ceux-ci, etc.) pour éviter le trainage des déchets sans être récupérer par ceux-ci",
    status: 'En construction',
    photo: 'assets/images/logol.png',
    rateN: 0,
  ),
  Porject(
    name: "Jifunz'App",
    description:
        "Une app qui permettra aux étudiants d'avoir des bases dès leur entrée à l'Université, différents domaines avec des méthodologies pédagogiques sûres, pouvoir réviser, gérer ses horaires, ...",
    status: 'En construction',
    photo: 'assets/images/jifu.png',
    rateN: 0,
  ),
];
