import 'package:flutter/material.dart';
import 'package:textvalidation/common/validator.dart';
import 'package:textvalidation/screens/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/img.png'),fit: BoxFit.cover)),
        //

        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
                  'login',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.cyan),
                )),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.cyan,
              endIndent: 10,
              indent: 10,
            ),
            SizedBox(
              height: 50,
            ),
            Form(key: formKey,
              child:
              Column(
                children: [
                  TextFormField(

                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'username',
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    validator: (value) {
                      return Validator.nameValidator(value!);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: 'password',
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    validator: (value) {
                      return Validator.nameValidator(value!);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('login success')
                          ));
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                      }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:Text('login not success')
                            ));
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                          }
                      },

                      child: Text('submit')),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
