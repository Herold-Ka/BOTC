import 'package:flutter/material.dart';
import '../../Pages/Views/SelectCompo.dart';
import '../Role.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Composition.dart';

//final List Role = [roleVillage, roleEtranger, roleMalefique, roleDemon];
// ignore: non_constant_identifier_names
//List Compo = [];
//List RoleArray = [];
// ignore: non_constant_identifier_names
List<Composition> CompositionParti = [];

class SelectRole extends StatefulWidget {
  const SelectRole({Key? key}) : super(key: key);

  @override
  State<SelectRole> createState() => _SelectRole();
}

class _SelectRole extends State<SelectRole> {
  createGameArrayVillageois(BuildContext context, id, array) {
    return id;
  }

  createGameArrayEtranger(BuildContext context, id) {
    return id;
  }

  createGameArrayMalefique(BuildContext context, id) {
    return id;
  }

  createGameArrayDemon(BuildContext context, id) {
    return id;
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
            height: height / 8,
            width: width / 8,
            child: ListView.builder(
              itemCount: CompositionParti.length,
              itemBuilder: (BuildContext context, index) {
                return Text(CompositionParti[index].roleName,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 12, color: Colors.amber.shade50));
              },
            )),
        Container(
            height: height,
            width: width,
            padding: const EdgeInsets.only(top: 5, left: 35, right: 35),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Text(
                            'Villageois',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 25, color: Colors.amber.shade50),
                          ),
                          Wrap(
                            spacing: 15,
                            runSpacing: 4,
                            children: roleVillage.map((st) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      final CompositionRole = Composition(
                                          id: st.id,
                                          roleName: st.roleName,
                                          roleAlignement: st.roleAlignement,
                                          roleImage: st.roleImage,
                                          roleDescription: st.roleDescription);
                                      CompositionParti.add(CompositionRole);
                                      print(CompositionParti[0].id);

                                      /*arrayComposition
                                      .add(viewVillage as Composition);*/

                                      createGameArrayVillageois(
                                          context, st.id, arrayComposition);
                                    },
                                    child: Container(
                                      height: height / 8.5,
                                      width: width / 8.5,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              255, 243, 240, 230)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height / 20,
                                              width: width / 20,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          st.roleImage),
                                                      fit: BoxFit.cover)),
                                              /*child: Text(st.roleName),*/
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    height: 25,
                                    child: Text(
                                      st.roleName,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          color: Colors.amber.shade50),
                                    ),
                                  )
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      )),
                  Container(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Text(
                            'Etranger',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 25, color: Colors.amber.shade50),
                          ),
                          Wrap(
                            spacing: 15,
                            runSpacing: 4,
                            children: roleEtranger.map((st) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      createGameArrayEtranger(context, st.id);
                                    },
                                    child: Container(
                                      height: height / 8.5,
                                      width: width / 8.5,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              255, 243, 240, 230)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height / 20,
                                              width: width / 20,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          st.roleImage),
                                                      fit: BoxFit.cover)),
                                              /*child: Text(st.roleName),*/
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    height: 25,
                                    child: Text(
                                      st.roleName,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          color: Colors.amber.shade50),
                                    ),
                                  )
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      )),
                  Container(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Text(
                            'Maléfique',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 25, color: Colors.amber.shade50),
                          ),
                          Wrap(
                            spacing: 15,
                            runSpacing: 4,
                            children: roleMalefique.map((st) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      createGameArrayMalefique(context, st.id);
                                    },
                                    child: Container(
                                      height: height / 8.5,
                                      width: width / 8.5,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              255, 243, 240, 230)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height / 20,
                                              width: width / 20,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          st.roleImage),
                                                      fit: BoxFit.cover)),
                                              /*child: Text(st.roleName),*/
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    height: 25,
                                    child: Text(
                                      st.roleName,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          color: Colors.amber.shade50),
                                    ),
                                  )
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      )),
                  Container(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Text(
                            'Démon',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 25, color: Colors.amber.shade50),
                          ),
                          Wrap(
                            spacing: 15,
                            runSpacing: 4,
                            children: roleDemon.map((st) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      createGameArrayDemon(context, st.id);
                                    },
                                    child: Container(
                                      height: height / 8.5,
                                      width: width / 8.5,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              255, 243, 240, 230)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height / 20,
                                              width: width / 20,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          st.roleImage),
                                                      fit: BoxFit.cover)),
                                              /*child: Text(st.roleName),*/
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    height: 25,
                                    child: Text(
                                      st.roleName,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          color: Colors.amber.shade50),
                                    ),
                                  )
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      )),
                ],
              ),
            ))
      ],
    );
  }
}
