import 'package:dynamic_form_2/user.dart';
import 'package:dynamic_form_2/user_form.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<UserForm> _userForms = <UserForm>[];

  void removeUserForm(User user){
    var find =_userForms.firstWhere((userForm) => userForm.user == user);
    if(find!=null){
      _userForms.removeAt(_userForms.indexOf(find));
    }
    setState(() {
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _userForms.add(UserForm(              
              onRemoved: removeUserForm,
              user: User(),
            ));
          });
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(15),
          itemBuilder: (ctx, int index) {
            return _userForms[index];
          },
          itemCount: _userForms.length,
        ),
      ),
    );
  }
}
