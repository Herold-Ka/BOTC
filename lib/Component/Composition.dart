import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:get/get.dart';

class CompositionModel {
  int id;
  String roleName;
  int roleAlignement;
  String roleImage;
  String roleDescription;
  String player;

  CompositionModel(
      {required this.id,
      required this.roleName,
      required this.roleAlignement,
      required this.roleImage,
      required this.roleDescription,
      required this.player});

  //static map(Text Function(dynamic element) param0) {}
}

List<CompositionModel> composition = List.empty(growable: true);
List<int> storageValue = List.empty(growable: true);
