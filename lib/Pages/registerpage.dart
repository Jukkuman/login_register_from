import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            child: Text("Login Now"),
            onPressed: () => 
            Navigator.pushReplacementNamed(context, '/loginpage')),
      ]),
    );
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

  Widget _showEmail() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
          hintText: 'Enter Your Email',
          icon: Icon(Icons.email, color: Colors.blue),
        ),
      ),
    );
  }

  Widget _showLogo() {
    return Image(image: AssetImage('images/Logo.jpg'));
  }

  Widget _showTitle() {
    return Text(
      'Register',
      style: Theme.of(context).textTheme.headline1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register From'),
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
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 36),
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
                _showLogo(),
                _showTitle(),
                _showUsername(),
                _showEmail(),
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
