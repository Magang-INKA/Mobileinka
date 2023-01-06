import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class FormLocation extends StatefulWidget {
  const FormLocation({super.key});

  @override
  State<FormLocation> createState() => _FormLocationState();
}

class _FormLocationState extends State<FormLocation> {
  String _scanBarcode ='Unknown';

  @override
  void initState() {
    super.initState();
  }

    Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  bool _isLoading = false;
  // ApiService _apiService = ApiService();
  // bool _isFieldNameValid;
  // bool _isFieldEmailValid;
  // bool _isFieldAgeValid;
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerAge = TextEditingController();

    final List<String> data = [
    "Tanjung Priok",
    "Bali",
    "Jakarta",
    "Pelabuhan-1",
    "Pelabuhan-2",
    "Pelabuhan-3",
    "Pelabuhan-4",
    "Pelabuhan-5",
    "Pelabuhan-6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            decoration: const BoxDecoration(color: Color(0xFF0D214F)),
            child:
            // Greetings row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Add Drop Point',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                          height: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/QR_code_for_QRpedia.png',
                                )
                              ),
                            ), //BoxDecoration
                          ),
                        ),
                      ),
                    ), //Center
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                      ),
                      padding: const EdgeInsets.all(12),
                      child: ElevatedButton(
                              onPressed: () => scanQR(),
                              child: const Text('Start QR scan')),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Container(
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             TextFormField(
                               decoration: const InputDecoration(
                                 border: UnderlineInputBorder(),
                                 labelText: 'ID Barang',
                               ),
                             ),

                              DropdownSearch<String>(
                                popupProps: const PopupProps.menu(
                                  showSearchBox: true,
                                    showSelectedItems: true,
                                    //disabledItemFn: (String s) => s.startsWith('I'),
                                ),
                                items: data,
                                dropdownDecoratorProps: const DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                      fillColor: Colors.white,
                                        labelText: "Select Drop Point",
                                        hintText: "Select Drop Point",
                                    ),
                                ),
                                onChanged: print,
                                //selectedItem: "Brazil",
                            ),
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(
                      height: 20,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         ElevatedButton(
                          onPressed: () => scanQR(),
                          child: const Text('Save')),
                       ],
                     ),

                    // card info

                  ]
                  ),
              )
              )
            ),
    );
  }
}