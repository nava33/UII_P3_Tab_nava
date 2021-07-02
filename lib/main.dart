import 'package:flutter/material.dart';

void main() => runApp(KevinApp());

class KevinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MiPaginaInicio(),
    ); // Fin MaterialApp
  } // Fin De Widget
} // Fin Clase KevinApp Herencia StatelessWidget

class MiPaginaInicio extends StatefulWidget {
  @override
  _MiPaginaInicioState createState() => _MiPaginaInicioState();
} // Fin Clase MiPaginaInicio Herencia StatefulWidget

class _MiPaginaInicioState extends State<MiPaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(tabs: [
                    Tab(icon: Icon(Icons.battery_full_sharp)),
                    Tab(icon: Icon(Icons.directions_boat)),
                    Tab(icon: Icon(Icons.apartment)),
                  ] // Fin Tabs
                      ), // Fin De TabBar
                  title: Text("Nava Rodriguez Pestañas"),
                ), // Fin De AppBar
                body: TabBarView(children: [
                  Icon(Icons.taxi_alert),
                  Icon(Icons.transfer_within_a_station),
                  Icon(Icons.airline_seat_individual_suite),
                ])) // Fin Niño
            ) // Fin DefaultTapController
        ); //MaterialApp
  } // Fin De Widget
} // Fin CLase _MiPaginaInicioState Herencia State
