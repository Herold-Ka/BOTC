import 'dart:io';
import 'package:flutter/material.dart';
import '../../Component/SelectCompo/SelectRole.dart';
import '../../Component/SelectCompo/ViewCompo.dart';

//List arrayRole = [roleVillage, roleEtranger, roleMalefique, roleDemon];
//List choosenRole = [];

class SelectCompo extends StatefulWidget {
  const SelectCompo({super.key});

  @override
  State<SelectCompo> createState() => _SelectCompoState();
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

class _SelectCompoState extends State<SelectCompo> {
  // ignore: non_con
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/background/background2.png'),
                fit: BoxFit.cover)),
        child: const SingleChildScrollView(
            child: Column(
          children: [
            ViewCompo(),
            SelectRole(),
          ],
        )));
  }
}

/*class InheriteDataArray extends InheritedWidget {
  final List dataArray;

  const InheriteDataArray(
      {super.key, required this.dataArray, required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(InheriteDataArray oldWidget) =>
      oldWidget.dataArray != dataArray;

  static InheriteDataArray? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheriteDataArray>();
  }
}*/
