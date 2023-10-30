import 'package:flutter/material.dart';
import '../Role.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Composition.dart';

class SelectCompoDemon extends StatefulWidget {
  const SelectCompoDemon({Key? key}) : super(key: key);

  @override
  State<SelectCompoDemon> createState() => _SelectCompoDemon();
}

class _SelectCompoDemon extends State<SelectCompoDemon> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/image/background/SelectCompoVillage.png'),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Text(
              'Démon',
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.roboto(fontSize: 25, color: Colors.amber.shade50),
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
                        setState(() {
                          if (composition.isEmpty) {
                            composition.add(CompositionModel(
                                id: st.id,
                                roleName: st.roleName,
                                roleAlignement: st.roleAlignement,
                                roleImage: st.roleImage,
                                roleDescription: st.roleDescription,
                                player: 'player'));
                            storageValue.add(st.id);
                          } else if (composition.isNotEmpty &&
                              storageValue.contains(st.id) != true) {
                            composition.add(CompositionModel(
                                id: st.id,
                                roleName: st.roleName,
                                roleAlignement: st.roleAlignement,
                                roleImage: st.roleImage,
                                roleDescription: st.roleDescription,
                                player: 'player'));
                            storageValue.add(st.id);
                          } else {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      backgroundColor:
                                          Color.fromRGBO(46, 35, 40, 0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          side: BorderSide(
                                              color: Colors.amber.shade50)),
                                      content: SizedBox(
                                        height: 200,
                                        width: 400,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Vous avez déjà selectionner ce rôle',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.roboto(
                                                fontSize: 17,
                                                color: Colors.amber.shade50),
                                          ),
                                        ),
                                      ),
                                    ));
                          }
                        });
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
          ],
        ));
  }
}
