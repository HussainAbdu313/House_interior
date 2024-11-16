import 'package:flutter/material.dart';
import 'package:hussain_new_project/Screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/repairing-service.png',
                  height: 200,
                  width: 150,
                ),
                const Text(
                  'Home Designs Products & Technical Services',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      // borderSide: BorderSide(
                      //   color: Colors.white,
                      // ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                  ),
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
                  obscuringCharacter: '*',
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      // borderSide: BorderSide(
                      //   color: Colors.white,
                      // ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                  ),
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // const CustomButton(
                //   text: 'Log In',
                //   textColor: Colors.white,
                //   buttonColor: Colors.green,
                // ),
                SizedBox(
                  height: 45,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Login In',
                      style: const TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.green[900]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Dont have an account?',
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[600],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // body: Container(
      //   width: double.infinity,
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [Colors.blue, Colors.purple],
      //     ),
      //   ),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Image.asset(
      //         'assets/images/Avatar.jpg',
      //         height: 200,
      //         width: 200,
      //         fit: BoxFit.cover,
      //         alignment: Alignment.topRight,
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       const Text(
      //         'Home Designs Products & Technical Services',
      //         style: TextStyle(
      //           color: Colors.yellow,
      //           fontSize: 30,
      //           fontWeight: FontWeight.bold,
      //         ),
      //         textAlign: TextAlign.center,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(
      //           horizontal: 20.10,
      //         ),
      //         child: TextFormField(
      //           decoration: InputDecoration(
      //             enabledBorder: const OutlineInputBorder(
      //               borderSide: BorderSide(
      //                 color: Colors.white,
      //               ),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(
      //                 color: Colors.grey.shade400,
      //               ),
      //             ),
      //             fillColor: Colors.grey.shade200,
      //             filled: true,
      //           ),
      //         ),
      //       ),
      //       TextFormField(),
      //       const Text(
      //         'Forgot Password ?',
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontWeight: FontWeight.w600,
      //           fontSize: 15,
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       SizedBox(
      //         height: 45,
      //         width: 350,
      //         child: ElevatedButton(
      //           onPressed: () {},
      //           child: Text(
      //             'Login In',
      //             style: const TextStyle(fontSize: 16),
      //           ),
      //           style: ElevatedButton.styleFrom(
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //               primary: Colors.green[900]),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       const Text(
      //         'Sign Up',
      //         style: TextStyle(fontWeight: FontWeight.w400),
      //       )
      //     ],
      //   ),

      // margin: const EdgeInsets.only(left: 25, right: 25),
      // alignment: Alignment.center,
      // child: SingleChildScrollView(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Image.asset(
      //         "assets/images/Avatar.jpg",
      //         width: 150,
      //         height: 150,
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       const Text(
      //         "Home Designs,Products & Professionals",
      //         style: TextStyle(
      //           fontSize: 28,
      //           fontStyle: FontStyle.normal,
      //           fontWeight: FontWeight.w500,
      //         ),
      //         textAlign: TextAlign.center,
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       Container(
      //         height: 55,
      //         decoration: BoxDecoration(
      //           border: Border.all(width: 1, color: Colors.black),
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //         child: Row(
      //           children: [
      //             const SizedBox(
      //               width: 5,
      //             ),
      //             const SizedBox(
      //               width: 30,
      //               child: TextField(
      //                 // controller: countrycode,
      //                 decoration: InputDecoration(border: InputBorder.none),
      //               ),
      //             ),
      //             const SizedBox(
      //               width: 10,
      //             ),
      //             const Text(
      //               '|',
      //               style: TextStyle(fontSize: 35, color: Colors.grey),
      //             ),
      //             const SizedBox(
      //               width: 10,
      //             ),
      //             Expanded(
      //               child: TextField(
      //                 controller: phoneController,
      //                 decoration: const InputDecoration(
      //                   border: InputBorder.none,
      //                   hintText: "Mobile Number",
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 15,
      //       ),
      //       SizedBox(
      //         height: 55,
      //         width: double.infinity,
      //         child: ElevatedButton(
      //           onPressed: () {
      //             Navigator.of(context).pushReplacement(
      //               MaterialPageRoute(
      //                 builder: (context) {
      //                   return const OtpScreen();
      //                 },
      //               ),
      //             );
      //           },
      //           child: Text(
      //             'Continue',
      //           ),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(10),
      //             ),
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       Container(
      //         child: const Text(
      //           "Terms & Conditions,Privacy Policy & allow us to contact Phone,SMS,etc.",
      //           textAlign: TextAlign.center,
      //           style: TextStyle(fontSize: 15),
      //         ),
      //         alignment: Alignment.center,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
