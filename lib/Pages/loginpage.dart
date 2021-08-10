import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _showSubmit() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(children: [
        ElevatedButton(
          onPressed: () {},
          child: Text("Submit"),
        ),
        TextButton(
            style: TextButton.styleFrom(primary: Colors.yellow),
            child: Text('Create New User'),
            onPressed: () => 
            Navigator.pushReplacementNamed(context, '/registerpage')
        ),
      ],
    ));
  }

  Widget _showPassword() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          hintText: 'Enter Your Password',
          icon: Icon(Icons.lock, color: Colors.redAccent[300]),
        ),
      ),
    );
  }

  Widget _showUsername() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Username',
          hintText: 'Enter Your Username',
          icon: Icon(Icons.face, color: Colors.yellow),
        ),
      ),
    );
  }

  Widget _showTitle() {
    return Text(
      'Login',
      style: Theme.of(context).textTheme.headline1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login From'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('This is a snackbar'),
                    backgroundColor: Colors.lightGreenAccent,
                )
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.next_plan_outlined),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: Center(
                      child: Image(image: AssetImage('images/Logo.jpg'),
                      ),
                    ),
                  );
                },
              ));
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
                child: Column(
              children: [
                _showTitle(),
                _showUsername(),
                _showPassword(),
                _showSubmit(),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
