import 'package:botc/Pages/Views/SelectCompo.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../Composition.dart';
import 'package:google_fonts/google_fonts.dart';
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
        height: height / 3.5,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/image/background/Rectangle-deco-selection-perso.png',
                ),
                fit: BoxFit.fitWidth)),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 50, maxHeight: height / 4.8),
            child: Container(
                margin: EdgeInsets.only(
                    top: height * 0.014,
                    bottom: height * 0.014,
                    left: width / 40,
                    right: width / 40),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.122),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      child: Wrap(
                        spacing: width / 50,
                        children: <Widget>[
                          Text('Role selectionner: ',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  fontSize: height / 65,
                                  color: Colors.amber.shade50)),
                          Icon(
                            Icons.error_outline,
                            size: height / 50,
                            color: Colors.amber.shade50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 8.5,
                      width: double.infinity,
                      child: ListView.builder(
                        shrinkWrap: true,
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
                                        Provider.of<CompositionProvider>(
                                                context,
                                                listen: false)
                                            .removeToComposition(
                                                afficheCompo[index].id,
                                                index,
                                                storageValue);
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 7),
                                      height: height / 13,
                                      width: width / 13,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              255, 243, 240, 230)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height / 25,
                                              width: width / 25,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          afficheCompo[index]
                                                              .roleImage),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 7),
                                    child: Text(
                                      afficheCompo[index].roleName,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          fontSize: height / 90,
                                          color: Colors.amber.shade50),
                                    ),
                                  )
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: height / 25,
                        width: width / 3.5,
                        margin: const EdgeInsets.only(right: 7),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Valider"),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ));
  }
}
