class CatsModel {
  CatsModel({
    required this.weight,
    required this.name,
    required this.cfaUrl,
    required this.id,
    required this.vetstreetUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.image,
  });

  Weight weight;
  String id;
  String name;
  String cfaUrl;
  String vetstreetUrl;
  String vcahospitalsUrl;
  String temperament;
  String origin;
  String countryCodes;
  String countryCode;
  String description;
  String lifeSpan;
  int indoor;
  int lap;
  String altNames;
  int adaptability;
  int affectionLevel;
  int childFriendly;
  int dogFriendly;
  int energyLevel;
  int grooming;
  int healthIssues;
  int intelligence;
  int sheddingLevel;
  int socialNeeds;
  int strangerFriendly;
  int vocalisation;
  int experimental;
  int hairless;
  int natural;
  int rare;
  int rex;
  int suppressedTail;
  int shortLegs;
  String wikipediaUrl;
  int hypoallergenic;
  String referenceImageId;
  Image? image;

  factory CatsModel.fromJson(Map<String, dynamic> json) => CatsModel(
        weight: Weight.fromJson(json["weight"]),
        id: json["id"],
        name: json["name"],
        cfaUrl: json["cfa_url"] ?? "",
        vetstreetUrl: json["vetstreet_url"] ?? "",
        vcahospitalsUrl: json["vcahospitals_url"] ?? "",
        temperament: json["temperament"],
        origin: json["origin"],
        countryCodes: json["country_codes"],
        countryCode: json["country_code"],
        description: json["description"],
        lifeSpan: json["life_span"],
        indoor: json["indoor"],
        lap: json["lap"] ?? 0,
        altNames: json["alt_names"] ?? "",
        adaptability: json["adaptability"],
        affectionLevel: json["affection_level"],
        childFriendly: json["child_friendly"],
        dogFriendly: json["dog_friendly"],
        energyLevel: json["energy_level"],
        grooming: json["grooming"],
        healthIssues: json["health_issues"],
        intelligence: json["intelligence"],
        sheddingLevel: json["shedding_level"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        vocalisation: json["vocalisation"],
        experimental: json["experimental"],
        hairless: json["hairless"],
        natural: json["natural"],
        rare: json["rare"],
        rex: json["rex"],
        suppressedTail: json["suppressed_tail"],
        shortLegs: json["short_legs"],
        wikipediaUrl: json["wikipedia_url"] ?? "",
        hypoallergenic: json["hypoallergenic"],
        referenceImageId: json["reference_image_id"] ?? "",
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
      );

  factory CatsModel.empty() => CatsModel(
      weight: Weight.empty(),
      id: "",
      name: "",
      cfaUrl: "",
      vetstreetUrl: "",
      vcahospitalsUrl: "",
      temperament: "",
      origin: "",
      countryCodes: "",
      countryCode: "",
      description: "",
      lifeSpan: "",
      indoor: 0,
      lap: 0,
      altNames: "",
      adaptability: 0,
      affectionLevel: 0,
      childFriendly: 0,
      dogFriendly: 0,
      energyLevel: 0,
      grooming: 0,
      healthIssues: 0,
      intelligence: 0,
      sheddingLevel: 0,
      socialNeeds: 0,
      strangerFriendly: 0,
      vocalisation: 0,
      experimental: 0,
      hairless: 0,
      natural: 0,
      rare: 0,
      rex: 0,
      suppressedTail: 0,
      shortLegs: 0,
      wikipediaUrl: "",
      hypoallergenic: 0,
      referenceImageId: "",
      image: Image.empty());

  Map<String, dynamic> toJson() => {
        "weight": weight.toJson(),
        "id": id,
        "name": name,
        "cfa_url": cfaUrl,
        "vetstreet_url": vetstreetUrl,
        "vcahospitals_url": vcahospitalsUrl,
        "temperament": temperament,
        "origin": origin,
        "country_codes": countryCodes,
        "country_code": countryCode,
        "description": description,
        "life_span": lifeSpan,
        "indoor": indoor,
        "lap": lap,
        "alt_names": altNames,
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "child_friendly": childFriendly,
        "dog_friendly": dogFriendly,
        "energy_level": energyLevel,
        "grooming": grooming,
        "health_issues": healthIssues,
        "intelligence": intelligence,
        "shedding_level": sheddingLevel,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "vocalisation": vocalisation,
        "experimental": experimental,
        "hairless": hairless,
        "natural": natural,
        "rare": rare,
        "rex": rex,
        "suppressed_tail": suppressedTail,
        "short_legs": shortLegs,
        "wikipedia_url": wikipediaUrl,
        "hypoallergenic": hypoallergenic,
        "reference_image_id": referenceImageId,
        "image": image?.toJson(),
      };
}

class Image {
  Image({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
  });

  String id;
  int width;
  int height;
  String url;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"] ?? "",
        width: json["width"] ?? 0,
        height: json["height"] ?? 0,
        url: json["url"] ??
            "https://latarta.com.co/wp-content/uploads/2018/06/default-placeholder.png",
      );

  factory Image.empty() => Image(
        id: "",
        width: 0,
        height: 0,
        url:
            "https://latarta.com.co/wp-content/uploads/2018/06/default-placeholder.png",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
      };
}

class Weight {
  Weight({
    required this.imperial,
    required this.metric,
  });

  String imperial;
  String metric;

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
        imperial: json["imperial"],
        metric: json["metric"],
      );

  factory Weight.empty() => Weight(
        imperial: "",
        metric: "",
      );

  Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
      };
}
