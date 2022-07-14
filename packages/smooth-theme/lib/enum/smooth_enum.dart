enum SmoothType {
  defaut,
  idCard,
  rib,
  vitaleCard,
  cv,
  avis,
}

enum SmoothStatus {
  pro,
  particulier,
  entreprise,
}

SmoothType SmoothTypefromJson(json) {
  switch (json['name']) {
    case SmoothType.idCard:
      return SmoothType.idCard;
    case SmoothType.rib:
      return SmoothType.rib;
    case SmoothType.vitaleCard:
      return SmoothType.vitaleCard;
    case SmoothType.cv:
      return SmoothType.cv;
    case SmoothType.avis:
      return SmoothType.avis;
    default:
      return SmoothType.defaut;

  }
}

SmoothStatus SmoothStatusfromJson(json) {
  switch (json['name']) {
    case SmoothStatus.pro:
      return SmoothStatus.pro;
    case SmoothStatus.particulier:
      return SmoothStatus.particulier;
    case SmoothStatus.entreprise:
      return SmoothStatus.entreprise;
    default:
      return SmoothStatus.particulier;

  }
}
