import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  final Widget child;

  SignupScreen({Key key, this.child}) : super(key: key);
  _SignupScreen createState() => _SignupScreen();
}

class _SignupScreen  extends State<SignupScreen>{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  GlobalKey orWidget = GlobalKey();
  final marginContent = 48.0;
  final marginConteOr = 96.0;

  @override
  void initState() { 
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: LayoutBuilder(
        builder: (context, viewPort) {
          return SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: viewPort.maxHeight),
                child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: SingleChildScrollView(
                      child: signupContent(),
                    ))),
          );
        },
      ),
    );
  }

  void daftar(){
    print("Daftar ditekan");
  }

  Widget signupContent(){
    return Container(
      margin: EdgeInsets.all(32),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 72, bottom: 32),
            // alignment: Alignment.center,
            // child: SizedBox(
              
            // ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 32),
            alignment: Alignment.center,
            child: Text("Ayam Login", style: TextStyle(fontSize: 23)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: TextFormField(
              controller: nameController,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black45),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  ))),
              onSaved: (String value) {
                print("Simpan Inputan Text : $value");
              },
              onFieldSubmitted: (value) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: TextFormField(
              controller: emailController,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black45),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  ))),
              onSaved: (String value) {
                print("Simpan Inputan Text : $value");
              },
              onFieldSubmitted: (value) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: TextFormField(
              obscureText: true,
              controller: passController,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black45),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  ))),
              onSaved: (String value) {
                print("Simpan Inputan Text : $value");
              },
              onFieldSubmitted: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: SizedBox(
                height: 49,
                child: RaisedButton(
                  child:
                      Text('Daftar'.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  color: Colors.blue,
                  onPressed: () {
                    daftar();
                  },
                ),
              )),
        ],
      ),
    );
  }
}
