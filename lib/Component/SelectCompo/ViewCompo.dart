import 'package:botc/Pages/Views/SelectCompo.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../Composition.dart';
import 'package:provider/provider.dart';

@override
class ViewCompo extends StatefulWidget {
  const ViewCompo({super.key});

  @override
  State<ViewCompo> createState() => _ViewCompo();
}

class _ViewCompo extends State<ViewCompo> {
  @override
  Widget build(BuildContext context) {
    List<CompositionModel> afficheCompo =
        Provider.of<CompositionProvider>(context).listProvider;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height / 3,
        width: width / 1.15,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.amber.shade50)),
        child: ListView.builder(
          itemCount: afficheCompo.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Provider.of<CompositionProvider>(context,
                                  listen: false)
                              .removeToComposition(afficheCompo[index].id,
                                  index, afficheCompo, storageValue);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
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
                                        image: AssetImage(
                                            afficheCompo[index].roleImage),
                                        fit: BoxFit.cover)),
                                /*child: Text(st.roleName),*/
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: Text(
                        afficheCompo[index].roleName,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontSize: 12, color: Colors.amber.shade50),
                      ),
                    )
                  ],
                )
              ],
            ); /*Text(afficheCompo[index].roleName,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontSize: 12, color: Colors.amber.shade50));*/
          },
        ));
  }
}
