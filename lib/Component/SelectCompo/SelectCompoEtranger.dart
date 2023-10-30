import 'package:botc/Pages/Views/SelectCompo.dart';
import 'package:flutter/material.dart';
import '../Role.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Composition.dart';
import 'package:provider/provider.dart';

class SelectCompoEtranger extends StatefulWidget {
  const SelectCompoEtranger({Key? key}) : super(key: key);

  @override
  State<SelectCompoEtranger> createState() => _SelectCompoEtranger();
}

class _SelectCompoEtranger extends State<SelectCompoEtranger> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 85),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/image/background/Fond-vert.png',
              ),
              fit: BoxFit.fitWidth)),
      padding: const EdgeInsets.only(top: 25),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 15,
        runSpacing: 2,
        children: roleEtranger.map((st) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (storageValue.isEmpty) {
                      storageValue.add(st.id);
                      Provider.of<CompositionProvider>(context, listen: false)
                          .TamponComposition(storageValue);
                      Provider.of<CompositionProvider>(context, listen: false)
                          .addToComposition(CompositionModel(
                              id: st.id,
                              roleName: st.roleName,
                              roleAlignement: st.roleAlignement,
                              roleImage: st.roleImage,
                              roleDescription: st.roleDescription,
                              player: 'player'));
                    } else if (storageValue.isNotEmpty &&
                        storageValue.contains(st.id) != true) {
                      storageValue.add(st.id);
                      Provider.of<CompositionProvider>(context, listen: false)
                          .TamponComposition(storageValue);

                      Provider.of<CompositionProvider>(context, listen: false)
                          .addToComposition(CompositionModel(
                              id: st.id,
                              roleName: st.roleName,
                              roleAlignement: st.roleAlignement,
                              roleImage: st.roleImage,
                              roleDescription: st.roleDescription,
                              player: 'player'));
                    } else {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor:
                                    const Color.fromRGBO(46, 35, 40, 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: const BorderRadius.all(
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
                        ),
                      ]),
                ),
              ),
              SizedBox(
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
    );
  }
}
