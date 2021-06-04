class Desease {
  int id;
  String nom;
  String nomScientifique;
  List<ImageClass> images;
  String cycleImage;
  String symptoms;
  String conditions;
  String management;
  String control;
  String langue;

  Desease(
      {this.id,
      this.nom,
      this.nomScientifique,
      this.symptoms,
      this.cycleImage,
      this.conditions,
      this.management,
      this.control,
      this.images,
      this.langue});

  Desease.fromJson(Map<String, dynamic> json){
    id = json["id"];
    nom = json["nom"];
    nomScientifique = json["nomScientifique"];
    symptoms = json["symptoms"];
    cycleImage = json["cycleImage"];
    conditions = json["conditions"];
    management = json["management"];
    control = json["control"];
    List<ImageClass> im = new List<ImageClass>();
    for(Map<String, dynamic> image in json["images"]){
      im.add(ImageClass.fromJson(image));
    }
    images = im;
    langue = json["langue"];
  }
}

class ImageClass {
  int id;
  String path;

  ImageClass.fromJson(Map<String, dynamic> json){
    id = json["id"];
    path = json["path"];
  }
}