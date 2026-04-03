import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Form(          
          child: Column(          
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png", width: 150),
              Text(
                "Bem vindo de volta!",
                style: TextStyle(color: Colors.deepPurple, fontSize: 24),
              ),
              SizedBox(height: 16), //Espaçamento entre elementos
              // Campo para o Email
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefix: Icon(Icons.person),
                ),
              ),

              SizedBox(height: 16),

              //Campo para senha
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefix: Icon(Icons.lock),
                ),
                obscureText: true, //ocultar texto digitado
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 50,
                width: double.infinity, //ocupar 100% do espaço disponível
                child: ElevatedButton(
                  onPressed: () {}, //Aqui deverá ser chamada a função _login
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.deepPurple,
                      width: 2
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16)
                    ),
                    backgroundColor: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                  ),
                  child: Text("ENTRAR", style: TextStyle(color: Colors.white)),
                ),
              ),
              TextButton(
                onPressed: () {}, //ação ao clicar no botão
                child: Text("Esqueci a senha"),
              ),
              Divider(), //linha horizontal
              OutlinedButton.icon(
                onPressed: () {
                  print("Clicou em entrar com google!");
                }, //Ação quando clicado
                label: Text("Entrar com Google"),
                icon: Icon(Icons.g_mobiledata),
              ),
              Row(
                //Agrupa os elementos na horizontal
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Novo por aqui?"),
                  TextButton(onPressed: () {}, child: Text("Crie uma conta")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
