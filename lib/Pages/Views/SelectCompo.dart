import 'package:botc/Component/Composition.dart';
import 'package:flutter/material.dart';
import '../../Component/SelectCompo/ViewCompo.dart';
import '../../Component/SelectCompo/SelectCompoVillage.dart';
import '../../Component/SelectCompo/SelectCompoEtranger.dart';
import '../../Component/SelectCompo/SelectCompoMalefique.dart';
import 'package:provider/provider.dart';

/*import '../../Component/SelectCompo/SelectCompoDemon.dart';*/
class CompositionProvider extends ChangeNotifier {
  List<CompositionModel> listProvider = List.empty(growable: true);
  List<int> tampon = List.empty(growable: true);
  void addToComposition(CompositionModel newValue) {
    listProvider.add(newValue);
    notifyListeners();
  }

  /*void tamponComposition(tamponValue) {
    tampon = tamponValue;
  }*/

  // ignore: non_constant_identifier_names
  void TamponComposition(tamponValue) {
    tampon = tamponValue;
  }

  void removeToComposition(idValue, indexValue, List tamponValue) {
    if (tampon.contains(idValue) != false) {
      listProvider.removeAt(indexValue);
      tampon.removeAt(tampon.indexOf(idValue));
      tamponValue = tampon;
    } else {
      print('double fuck');
    }
  }

  void equalValue(afficheCompo) {
    listProvider = afficheCompo;
  }
}

class SelectCompo extends StatefulWidget {
  const SelectCompo({super.key});

  @override
  State<SelectCompo> createState() => _SelectCompoState();
}

class _SelectCompoState extends State<SelectCompo>
    with TickerProviderStateMixin {
  // ignore: non_con
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TabController _tabController = TabController(length: 3, vsync: this);

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => CompositionProvider(),
          ),
        ],
        child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('assets/image/background/Fichier 1-80.png'),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
                child: Container(
              height: height / 1,
              width: width,
              padding: const EdgeInsets.only(top: 5, left: 35, right: 35),
              child: Column(
                children: [
                  const ViewCompo(),
                  TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(text: 'Villageois'),
                      Tab(text: 'Etranger'),
                      Tab(text: 'maléfique'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        SelectCompoVillage(),
                        SelectCompoEtranger(),
                        SelectCompoMalefique(),
                      ],
                    ),
                  )
                ],
              ),
            ))));
  }
}
