import 'package:flutter/material.dart';

class Shoe {
  int id;
  String model;
  String image;

  Shoe(this.id, this.model, this.image);

  @override
  String toString() {
    return '{ ${this.id}, ${this.model}}';
  }
}

void main() {
  runApp(const MyApp());

  // const List shoes = [];
  // shoes.add(Shoe(1, 'adidas Adizero Adios Pro 3',
  //     '${shoeImagePath}/Adidas_Adizero_Adios_Pro_3.png'));
}

// const List<Map<String, String>> shoes = [
//   { id: 1, model: 'adidas Adizero Adios Pro 3', image: `${shoeImagePath}/Adidas_Adizero_Adios_Pro_3.png` },
//     { id: 2, model: 'ASICS Metaspeed Sky+', image: `${shoeImagePath}/Asics_Metaspeed_Sky+.png` },
//     { id: 3, model: 'Brooks Hyperion Elite 3', image: `${shoeImagePath}/Brooks_Hyperion_Elite_3.png` },
//     { id: 4, model: 'HOKA Rocket X 2', image: `${shoeImagePath}/Hoka_Rocket_X_2.png` },
//     { id: 5, model: 'Mizuno Wave Rebellion Pro', image: `${shoeImagePath}/Mizuno_Wave_Rebellion_Pro.png` },
//     { id: 6, model: 'new balance FuelCell SC Elite V3', image: `${shoeImagePath}/New_Balance_FuelCell_SC_Elite_V3.png` },
//     { id: 7, model: 'Nike ZoomX Vaporfly NEXT% 3', image: `${shoeImagePath}/Nike_ZoomX_Vaporfly_NEXT_3.png` },
//     { id: 8, model: 'on Cloudboom Echo 3', image: `${shoeImagePath}/on_Cloudboom_Echo_3.png` },
//     { id: 9, model: 'PUMA Deviate Nitro Elite 2', image: `${shoeImagePath}/PUMA_Deviate_Nitro_Elite_2.png` },
//     { id: 10, model: 'Saucony Endorphin Pro 3', image: `${shoeImagePath}/Saucony_Endorphin_Pro_3.png` }
//     ];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ShoeTracker(title: 'Welcome to Shoe Tracker!'),
    );
  }
}

// class ShoeTracker extends StatefulWidget {
//   const ShoeTracker(
//       {super.key,
//       required this.title,
//       required this.selectedShoe,
//       required this.currentShoe,
//       required this.currentShoeSlot,
//       required this.userShoeSlots});

//   final String title;
//   final String selectedShoe;
//   final Object currentShoe;
//   final int currentShoeSlot;
//   final int userShoeSlots;

//   @override
//   State<ShoeTracker> createState() => _ShoeTrackerState();
// }

class ShoeTracker extends StatefulWidget {
  const ShoeTracker({super.key, required this.title});

  final String title;

  @override
  State<ShoeTracker> createState() => _ShoeTrackerState();
}

class _ShoeTrackerState extends State<ShoeTracker> {
  final String _selectedShoe = '';
  final Object _currentShoe = {};
  final int _currentShoeSlot = 1;
  final int _userShoeSlots = 16;
  final List _userShoes = [];

  final shoeSlots = <Widget>[];

  void _handleAdjustSlot() {
    setState(() {});
  }

  void _handleSelectSlot() {}

  void _handleSelectShoe() {}

  void _handleAddShoe() {}

  void _handleRemoveShoe() {}

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < _userShoeSlots; i++) {
      shoeSlots.add(
        SizedBox(
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Slot ${i + 1}"),
            // child: Text("Slot $i + 1"),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 800,
          height: 600,
          decoration: BoxDecoration(
            border: Border.all(
                width: 4, style: BorderStyle.solid, color: Colors.purple),
          ),
          child: Container(
            color: Colors.blue,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.green,
                    child: SizedBox(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("ADD SLOT"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("REMOVE SLOT"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 450,
                    color: Colors.orange,
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 12,
                      children: shoeSlots,
                    ),
                  ),
                  // Row(
                  //   children: <Widget>[],
                  // ),
                  // // DROPDOWN
                  // DropdownButton(items: items, onChanged: onChanged),
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("ADD SHOE"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("REMOVE SHOE"),
                        ),
                      ],
                    ),
                  ),
                  // Row(
                  //   children: <Widget>[],
                  // ),
                  Text("$_currentShoe"),
                  Image.asset(
                      'lib/assets/images/shoes/adidas_Adizero_Adios_Pro_3.png'),
                  // Image.asset('lib/assets/images/shoes/$_currentShoe.image'),
                  // IMAGE
                ]
                // children: <Widget>[
                //   Text(
                //     "Selected Shoe: $_selectedShoe",
                //     style: Theme.of(context).textTheme.headlineMedium,
                //   ),
                //   Text(
                //     "User Shoe Slots: $_currentShoe",
                //     style: Theme.of(context).textTheme.headlineMedium,
                //   ),
                //   Text(
                //     "User Shoe Slots: $_currentShoeSlot",
                //     style: Theme.of(context).textTheme.headlineMedium,
                //   ),
                //   Text(
                //     "User Shoe Slots: $_userShoeSlots",
                //     style: Theme.of(context).textTheme.headlineMedium,
                //   ),
                // ],
                ),
          ),
        ),
      ),
    );
  }
}
