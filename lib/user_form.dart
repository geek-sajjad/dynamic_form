import 'package:dynamic_form_2/user.dart';
import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final User user;
  final Function onRemoved;
  UserForm({this.user, this.onRemoved, });  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(15),
              child: Column(
          children: <Widget>[
            TextField(
              onChanged: (value){
                this.user.email = value;
              },
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              onChanged: (value){
                this.user.name = value;
              },
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            RaisedButton(onPressed: (){              
              this.onRemoved(this.user);
            }, child: Text("Remove"),),
          ],
        ),
      ),
    );
  }
  
}