import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _name = 'Teerawat Pinchai';
  double _amount = 0.0;
  double _vatPercent = 7.0;
  double _vatAmount = 0.0;
  double _totalAmount = 0.0;

  final _amountController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  void _calculateVAT() {
    setState(() {
      _amount = double.parse(_amountController.text);
      _vatAmount = _amount * (_vatPercent / 100);
      _totalAmount = _amount + _vatAmount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VAT Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('VAT Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Amount',
                  hintText: 'Enter amount',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('VAT $_vatPercent %'),
                  ElevatedButton(
                    child: Text('Calculate'),
                    onPressed: _calculateVAT,
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text('VAT Amount: $_vatAmount'),
              SizedBox(height: 8.0),
              Text('Total Amount: $_totalAmount'),
            ],
          ),
        ),
        bottomNavigationBar: Text("cadit by : " + _name),
        floatingActionButton: SizedBox(
          width: 45.0,
          height: 25,
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_backspace_sharp),
            label: Text(''),
            backgroundColor: Color.fromRGBO(5, 112, 161, 0.37),
            foregroundColor: Colors.black,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
