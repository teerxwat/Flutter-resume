import 'package:flutter/material.dart';

class Item {
  int id;
  String name;
  double temperature;
  String time;
  Item(this.id, this.name, this.temperature, this.time);
}

final List<Item> items = [
  Item(1, "A", 34.5, "10:00"),
  Item(2, "B", 35.5, "11:00"),
  Item(3, "C", 36.5, "12:00"),
  Item(4, "D", 37.5, "01:00"),
  Item(5, "E", 38.5, "02:00"),
  Item(6, "F", 34.5, "10:00"),
  Item(7, "G", 35.5, "11:00"),
  Item(8, "H", 36.5, "12:00"),
  Item(9, "I", 37.5, "01:00"),
  Item(10, "J", 38.5, "02:00"),
  Item(11, "K", 34.5, "10:00"),
  Item(12, "L", 35.5, "11:00"),
  Item(13, "M", 36.5, "12:00"),
  Item(14, "N", 37.5, "01:00"),
  Item(15, "O", 38.5, "02:00"),
];

class RouteScreen extends StatefulWidget {
  RouteScreen({Key? key}) : super(key: key);

  @override
  _RouteScreenState createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: 'Page 2', icon: Icon(Icons.create)),
          BottomNavigationBarItem(
              label: 'Page 3', icon: Icon(Icons.edit_square)),
          BottomNavigationBarItem(label: 'My Page', icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}

// Page list
final List<Widget> pageList = [
  mainScreen(),
  InsertScreen(),
  UpdateScreen(),
  DeleteScreen(),
];

// Main Screen
class mainScreen extends StatelessWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(52, 255, 255, 255),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 50,
                      alignment: Alignment.center,
                      child: Text("ID."),
                    ),
                  ),
                  Container(
                    width: 100,
                    alignment: Alignment.center,
                    child: Text("Name"),
                  ),
                  Container(
                    width: 100,
                    alignment: Alignment.center,
                    child: Text("Temperature"),
                  ),
                  Container(
                    width: 80,
                    alignment: Alignment.center,
                    child: Text("Time"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: Text("${items[index].id}"),
                      ),
                      Container(
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${items[index].name}"),
                      ),
                      Container(
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${items[index].temperature}" + " °C"),
                      ),
                      Container(
                        width: 100,
                        alignment: Alignment.center,
                        child: Text("${items[index].time}" + " น."),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// InsertScreen
class InsertScreen extends StatefulWidget {
  const InsertScreen({Key? key}) : super(key: key);

  @override
  _InsertScreenState createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late double _temperature;
  late String _time;

  void _submit() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      final newItem = Item(
        items.length + 1,
        _name,
        _temperature,
        _time,
      );
      setState(() {
        items.add(newItem);
      });
      Navigator.of(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    _name = value;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Temperature',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a temperature';
                  }
                  final temperature = double.tryParse(value);
                  if (temperature == null) {
                    return 'Please enter a valid temperature';
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    _temperature = double.parse(value);
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Time',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a time';
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value != null) {
                    _time = value;
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: _submit,
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// UpdateScreen
class UpdateScreen extends StatefulWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  @override
  _UpdateScreenState createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final _formKey = GlobalKey<FormState>();
  int? _id;
  String? _name;
  double? _temperature;
  String? _time;

  void _editItem(int? id) {
    final itemIndex = items.indexWhere((item) => item.id == id);
    if (itemIndex == -1) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Item not found'),
            actions: <Widget>[
              ElevatedButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      return;
    }
    final item = items[itemIndex];

    final nameController = TextEditingController(text: item.name);
    final temperatureController =
        TextEditingController(text: item.temperature.toString());
    final timeController = TextEditingController(text: item.time);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'New name',
                ),
              ),
              TextField(
                controller: temperatureController,
                decoration: InputDecoration(
                  hintText: 'New temperature',
                ),
              ),
              TextField(
                controller: timeController,
                decoration: InputDecoration(
                  hintText: 'New time',
                ),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                final newItemName = nameController.text;
                final newItemTemperature =
                    double.tryParse(temperatureController.text);
                final newItemTime = timeController.text;
                if (newItemTemperature == null) {
                  // If the new temperature is not a valid number, show an error message
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Invalid temperature'),
                        actions: <Widget>[
                          ElevatedButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                  return;
                }
                setState(() {
                  item.name = newItemName;
                  item.temperature = newItemTemperature;
                  item.time = newItemTime;
                });

                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'ID',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an ID';
                  }
                  return null;
                },
                onSaved: (value) {
                  _id = int.parse(value!);
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      _editItem(_id);
                    }
                  },
                  child: Text('Update'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// DeleteScreen
class DeleteScreen extends StatefulWidget {
  const DeleteScreen({Key? key}) : super(key: key);

  @override
  _DeleteScreenState createState() => _DeleteScreenState();
}

class _DeleteScreenState extends State<DeleteScreen> {
  final _formKey = GlobalKey<FormState>();
  late int _id;

  void _deleteItem(int id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(197, 151, 113, 113),
          elevation: 100,
          title: Text('Delete Item'),
          content: Text('Are you sure you want to delete this item?'),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Confirm Delete'),
                      content: Text(
                          '        C o n f i r m    D e l e t i o n . . ?          '),
                      actions: <Widget>[
                        ElevatedButton(
                          child: Text('No'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          child: Text('Yes'),
                          onPressed: () {
                            setState(() {
                              int index =
                                  items.indexWhere((item) => item.id == id);
                              items.removeAt(index);
                            });
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'ID',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the ID of the item to be deleted.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _id = int.parse(value!);
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _deleteItem(_id);
                  }
                },
                child: Text('Delete'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
