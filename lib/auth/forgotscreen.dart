import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  final Widget child;
  ForgotPassword({Key key, this.child}) : super(key: key);
  _ForgotPasswordstate createState() => _ForgotPasswordstate();
}

class _ForgotPasswordstate extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  GlobalKey orWidget = GlobalKey();
  final marginContent = 48.0;
  final marginContentOr = 96.0;

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
                      child: resetContent(),
                    ))),
          );
        },
      ),
    );
  }

  void reset() {
    print("Reset Password di tekan");
  }

  Widget resetContent() {
    return Container(
        margin: EdgeInsets.all(32),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 72, bottom: 32),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 32),
              alignment: Alignment.center,
              child: Text("Lupa Password", style: TextStyle(color: Colors.black87, fontSize: 23),),
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
                    hintText: 'Masukkan Email',
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
                        Text('Reset Password'.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    color: Colors.blue,
                    onPressed: () {
                      reset();
                    },
                  ),
                )),
          ],
        ),
      );
  }
}
