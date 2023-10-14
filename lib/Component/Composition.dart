import 'package:flutter/material.dart';

class Composition {
  int id;
  String roleName;
  int roleAlignement;
  String roleImage;
  String roleDescription;

  Composition(
      {required this.id,
      required this.roleName,
      required this.roleAlignement,
      required this.roleImage,
      required this.roleDescription});

  static map(Text Function(dynamic element) param0) {}
}

// ignore: non_constant_identifier_names
//List<dynamic> CompositionParti = [];
List<Composition> arrayComposition = [];

//const arrayComposition = <Composition>[];
