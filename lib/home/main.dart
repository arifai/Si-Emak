import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF339CC9),
      ),
      home: MyHomePage(title: 'Catatan Belanja Emak'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  // daftar barang dari tab todo yang attributnya diambil dari class DataTodo
  List<DataTodo> listTodo = [
    DataTodo(
        title: "Ayam 5 Kg",
        subtitle: "Rabu, 12 Maret 2019",
        circleIcon: circle(Colors.deepPurple)),
    DataTodo(
        title: "Daging Sapi 5 Kg",
        subtitle: "Rabu, 12 Maret 2019",
        circleIcon: circle(Colors.green)),
    DataTodo(
        title: "Cabai 5 Kg",
        subtitle: "Rabu, 12 Maret 2019",
        circleIcon: circle(Colors.lime)),
    DataTodo(
        title: "Gula Pasir 10 Kg",
        subtitle: "Rabu, 12 Maret 2k19",
        circleIcon: circle(Colors.teal)),
    DataTodo(
        title: "Minyak Goreng 10 L",
        subtitle: "Rabu, 12 Maret 2019",
        circleIcon: circle(Colors.redAccent)),
  ];

  // daftar barang dari tab history yang attributnya diambil dari class DataHistory
  List<DataHistory> listHistory = [
    DataHistory(
        title: "Sandal Jepit",
        subtitle: "Rabu, 12 Maret 2019",
        circleIcon: circle(Colors.green)),
    DataHistory(
        title: "Baju Lebaran",
        subtitle: "Rabu, 12 Maret 2019",
        circleIcon: circle(Colors.purple)),
    DataHistory(
        title: "Kue Lebaran",
        subtitle: "Rabu, 12 Maret 2019",
        circleIcon: circle(Colors.blue)),
  ];

  // membuat dekorasi berupa bulatan berwarna di samping title dari DataTodo dan DataHistory
  static Widget circle(warna) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: warna),
    );
  }

  @override
  // menentukan length dari TabController
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
  }

  @override
  // membuat widget tabs
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Belanja Emak"),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              text: "To do",
              icon: Icon(Icons.add),
            ),
            Tab(
              text: "History",
              icon: Icon(Icons.history),
            )
          ],
        ),
      ),

      // membuat TabBarView dan ListView dari listTodo dan listHistory
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Container(
            child: ListView.builder(
              itemCount: listTodo.length,
              itemBuilder: (context, posisi) {
                return ListTile(
                  leading: listTodo.elementAt(posisi).circleIcon,
                  title: Text(listTodo.elementAt(posisi).title), 
                  subtitle: Text(listTodo.elementAt(posisi).subtitle), 
                );
              },
            ),
          ),
          Container(
            child: ListView.builder(
            itemCount: listHistory.length,
            itemBuilder: (context, posisi) {
              return ListTile(
                leading: listHistory.elementAt(posisi).circleIcon,
                title: Text(listHistory.elementAt(posisi).title), 
                subtitle: Text(listHistory.elementAt(posisi).subtitle),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Tombol tambah berhasil terklik");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// class DataTodo
class DataTodo {
  String title;
  String subtitle;
  Widget circleIcon;
  DataTodo({this.title, this.subtitle, this.circleIcon});
}

// class DataHistory
class DataHistory {
  String title;
  String subtitle;
  Widget circleIcon;
  DataHistory({this.title, this.subtitle, this.circleIcon});
}
