import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'SelectRole.dart';
import '../Composition.dart';

class ViewCompo extends StatefulWidget {
  const ViewCompo({super.key});

  @override
  State<ViewCompo> createState() => _ViewCompo();
}

/*class Composition {
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
}*/

class _ViewCompo extends State<ViewCompo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container();
  }
}
