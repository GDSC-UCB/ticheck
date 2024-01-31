class Event {
  String? photo;
  String? date;
  String? title;
  String? description;
  String? lien;

  Event({
    required this.photo,
    required this.date,
    required this.title,
    required this.description,
    required this.lien,
  });
}

List events = [
  Event(
    photo:
        'https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_500,h_500,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/Photo_1702567895435_jw3KFJB.png',
    date: '23 déc. 2023',
    title: 'Study Group',
    description:
        "Learning Challenge est un BootCamp qui s'étend sur 90 jours, dans ce challenge on apprend d'un côté le web et de l'autre le mobile, enfin de consolider les bases apprises pendant la semaine. Et maintenant nous sommes à la fin de la deuxième semaine.",
    lien:
        'https://gdsc.community.dev/events/details/developer-student-clubs-universite-catholique-de-bukavu-presents-learning-challenge-week2/',
  ),
  Event(
    photo:
        'https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_500,h_500,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/Photo_1702567895435_jw3KFJB.png',
    date: '17 déc. 2023',
    title: 'LearningChallenge',
    description:
        "Premier event du BootCamp, pour la récapitulation et le mis au point des notions apprises pendant la semaine !",
    lien:
        'https://gdsc.community.dev/events/details/developer-student-clubs-universite-catholique-de-bukavu-presents-bootcamp-learning-challenge-1/',
  ),
  Event(
    photo:
        'https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_500,h_500,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/DF23-Bevy-EventThumb-Blue%402x_k8JKTWq.png',
    date: '16 déc. 2023',
    title: 'DevFest 2023',
    description:
        "Version 2, devfest 2023 ; c'est un grand événement où se réussissent des développeurs et partagent leurs connaissances et expériences. Vous voulez être boosté et vous mettre en contact avec des gens expérimentés vous êtes le bienvenue.",
    lien:
        'https://gdsc.community.dev/events/details/developer-student-clubs-universite-catholique-de-bukavu-presents-devfest-2023/',
  ),
  Event(
    photo:
        'https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_500,h_500,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/Jours%20d%27apprentissage_EvGrXVu.png',
    date: '09 déc. 2023',
    title: 'BootCamp',
    description:
        "Learning Challenge est un BootCamp qui s'étend sur 90 jours, dans ce challenge on apprend d'un côté le web et de l'autre le mobile, enfin de consolider les bases apprises pendant la semaine. Et maintenant nous sommes à la fin de la deuxième semaine.",
    lien:
        'https://gdsc.community.dev/events/details/developer-student-clubs-universite-catholique-de-bukavu-presents-bootcamp-learning-challenge/',
  ),
];
