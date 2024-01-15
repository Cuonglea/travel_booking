import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 50),
              decoration: const BoxDecoration(
                color: Color(0xFFF2F5FA),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'LOGIN', 
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              contentPadding: const EdgeInsets.all(16),
                              labelText: 'Username',
                              hintText: 'Type your username',
                              labelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                
                              )
                            ),
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              contentPadding: const EdgeInsets.all(16),
                              labelText: 'Password',
                              hintText: 'Type your password',
                              labelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {}, 
                                icon: const Icon(Icons.remove_red_eye),
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                                ),
                                onPressed: () {}, 
                                child: const Text('Register', style: TextStyle(color: Colors.black, fontSize: 16),),
                              ),

                              TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                                ),
                                onPressed: () {}, 
                                child: const Text('Forgot password?', style: TextStyle(color: Colors.black, fontSize: 16),),
                              ),
                            ],
                          ),
                        ),
                        
                        Center( 
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.fromLTRB(50, 14, 50, 14),
                              ),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              backgroundColor: MaterialStateProperty.all(const Color(0xFF18C0D1)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            child: const Text('Login', style: TextStyle(fontSize: 16),)
                        )
                      ),
                      ],
                    ),
                  )
                ],              
              ),
            ),         
          ),

          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 430,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                image: DecorationImage(
                  image: AssetImage('images/bali.jpg'),
                  fit: BoxFit.fill
                ),
              ),
            )
          
          ),
        ],
      ),
    );
  }
  
}