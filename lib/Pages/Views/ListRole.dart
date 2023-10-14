import 'package:flutter/material.dart';
import '../../Component/Role.dart';
import 'package:google_fonts/google_fonts.dart';

/*const etranger = RoleEtranger;
const sbire = RoleMalefique;
const demon = RoleDemon;*/
//List arrayRole = [roleVillage, roleEtranger, roleMalefique, roleDemon];

class ListRole extends StatelessWidget {
  const ListRole({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  createAlertRole(BuildContext context, Titre, Contenu) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: const Color.fromRGBO(46, 35, 40, 0),
              content: SizedBox(
                height: 250,
                width: 475,
                child: Wrap(
                  children: [
                    SizedBox(
                      height: 75,
                      child: Center(
                        child: Text(
                          Titre,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 17, color: Colors.amber.shade50),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                          Contenu,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 17, color: Colors.amber.shade50),
                        ),
                      ),
                    )
                  ],
                ),
              ));
        });
  }

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
        padding: const EdgeInsets.only(top: 5, left: 35, right: 35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Wrap(
                  spacing: 15,
                  runSpacing: 4,
                  children: roleVillage.map((st) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            createAlertRole(
                                context, st.roleName, st.roleDescription);
                          },
                          child: Container(
                            height: height / 8.5,
                            width: width / 8.5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 243, 240, 230)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height / 20,
                                    width: width / 20,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(st.roleImage),
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
                                fontSize: 12, color: Colors.amber.shade50),
                          ),
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 4,
                  children: roleEtranger.map((st) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            createAlertRole(
                                context, st.roleName, st.roleDescription);
                          },
                          child: Container(
                            height: height / 8.5,
                            width: width / 8.5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 243, 240, 230)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height / 17,
                                    width: width / 17,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(st.roleImage),
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
                                fontSize: 12, color: Colors.amber.shade50),
                          ),
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 4,
                  children: roleMalefique.map((st) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            createAlertRole(
                                context, st.roleName, st.roleDescription);
                          },
                          child: Container(
                            height: height / 8.5,
                            width: width / 8.5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 243, 240, 230)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height / 20,
                                    width: width / 20,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(st.roleImage),
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
                                fontSize: 12, color: Colors.amber.shade50),
                          ),
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 0,
                  children: roleDemon.map((st) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            createAlertRole(
                                context, st.roleName, st.roleDescription);
                          },
                          child: Container(
                            height: height / 8.5,
                            width: width / 8.5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 243, 240, 230)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height / 22,
                                    width: width / 22,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(st.roleImage),
                                            fit: BoxFit.cover)),
                                    /*child: Text(st.roleName),*/
                                  ),
                                ]),
                          ),
                        ),
                        Container(
                          height: 20,
                          child: Text(
                            st.roleName,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 10, color: Colors.amber.shade50),
                          ),
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ));
  }
}
