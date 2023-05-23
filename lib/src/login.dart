import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 81, 0),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.indigoAccent,
                    backgroundImage: NetworkImage(
                        'https://www.mundodeportivo.com/alfabeta/hero/2023/05/goku-sorprendido.webp?width=1200'),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    enableInteractiveSelection: false,
                    autofocus: true,
                    textCapitalization: TextCapitalization
                        .characters, //Cualquier tipo de caracteres
                    controller: _usernameController,
                    decoration: InputDecoration(
                        hintText: 'username',
                        labelText: 'Username',
                        suffixIcon: Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                  SizedBox(height: 24.0),
                  TextField(
                    textCapitalization: TextCapitalization.characters,
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  TextField(
                    textCapitalization: TextCapitalization.characters,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 24.0),
                  // ElevatedButton(
                  //   child: Text('Registrarse'),
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(builder:(context) => OtherPage()))
                  //   },
                  // ),
                  ElevatedButton(
                    child: Text('Log In'),
                    onPressed: () {
                      String username = _usernameController.text;
                      String password = _passwordController.text;
                      String email = _emailController.text;

                      // Aquí puedes agregar la lógica de validación de inicio de sesión

                      print('Username: $username');
                      print('email: $email');
                      print('Password: $password');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
