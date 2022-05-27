import 'package:currency_flutter/screens/agencelistpage.dart';
import 'package:currency_flutter/screens/reclmation.dart';
import 'package:flutter/material.dart';

import '../constants/textstyle.dart';
import '../screens/gestiondeprofile.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ));
  }

  Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Image.asset("assets/images/fidelys.png"));

  Widget buildMenuItems(BuildContext context) => Wrap(
        children: [
          Container(
            height: 65,
            child: Row(
              children: [
                SizedBox(
                    height: 65,
                    child: Row(
                      children: [
                        Stack(alignment: Alignment.topLeft, children: [
                          Image.asset("assets/images/banner.png"),
                          Positioned(
                            top: 11,
                            left: 4,
                            child: Text("GOLD",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                          )
                        ]),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("Louay Sejine",
                                style: ApptextStyle.LISTTILE_TITLE),
                            Text("ID : 12345678",
                                style: ApptextStyle.LISTTILE_SUB_TITLE),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
          const Divider(
            color: Colors.black54,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Mon profile Fidelys'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GestionProfile(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.file_copy),
            title: const Text('Mes réclamations'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => recc(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.airplane_ticket),
            title: const Text('Réserver/Acheter une billet Prime'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_rounded),
            title: const Text('Acheter des Miles'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.loop_outlined),
            title: const Text('Converssion des Miles'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Se déconnecter'),
            onTap: () {},
          ),
          const Divider(color: Colors.black54),
          ListTile(
            leading: const Icon(Icons.home_work_rounded),
            title: const Text('Nos agences'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgenceListPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_phone),
            title: const Text('Nous contacter'),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black54,
            height: 0,
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Info & Services'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Paramétres'),
            onTap: () {},
          ),
        ],
      );
}
