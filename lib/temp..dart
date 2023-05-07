// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomTextField extends StatelessWidget {
//   double width;
//   String FieldName;
//   bool isObscure;
//   TextInputType keyboardType;
//   TextInputAction textInputAction;
//   Function(String)? onChanged;
//   String? hintText;
//   TextEditingController controller;
//   CustomTextField(
//       {Key? key,
//       required this.width,
//       required this.FieldName,
//       required this.isObscure,
//       required this.keyboardType,
//       required this.controller,
//       required this.textInputAction,
//       this.onChanged,
//       this.hintText})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//       width: width,
//       height: 109,
//       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//         Text(
//           FieldName,
//           style: GoogleFonts.getFont("Ramabhadra",
//               fontSize: 15, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(
//           height: 40,
//           child: TextFormField(
//               controller: controller,
//               obscureText: isObscure,
//               textInputAction: textInputAction,
//               keyboardType: keyboardType,
//               cursorColor: Colors.black,
//               onChanged: onChanged,
//               cursorWidth: 1,
//               decoration: InputDecoration(
//                   contentPadding: const EdgeInsets.only(bottom: 7, left: 10),
//                   filled: true,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xfff1f1f1),
//                       width: 2.0,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(
//                       color: Color(0xff0033ff),
//                       width: 2.0,
//                     ),
//                   ),
//                   fillColor: Color(0xfff1f1f1),
//                   hintText: hintText,
//                   hintStyle: TextStyle(
//                       fontSize: 14,
//                       color: Color.fromARGB(255, 195, 195, 195)))),
//         )
//       ]),
//     );
//   }
// }

// class SignUpPage extends StatefulWidget {
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   // declare variables to store the user data
//   late TextEditingController _nameController;
//   late TextEditingController _emailController;
//   late TextEditingController _genderController;
//   late TextEditingController _ageController;
//   late TextEditingController _phoneController;
//   late TextEditingController _addressController;
//   late TextEditingController _heightController;
//   late TextEditingController _bloodgrpController;
//   String gender = "Male";
//   @override
//   void initState() {
//     super.initState();
//     _nameController = TextEditingController();
//     _emailController = TextEditingController();
//     _genderController = TextEditingController();
//     _ageController = TextEditingController();
//     _phoneController = TextEditingController();
//     _addressController = TextEditingController();
//     _heightController = TextEditingController();
//     _bloodgrpController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _genderController.dispose();
//     _ageController.dispose();
//     _phoneController.dispose();
//     _addressController.dispose();
//     _heightController.dispose();
//     _bloodgrpController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xff62b7ef),
//         title: Text(
//           "Sign Up to Your Medical Bot",
//           style: GoogleFonts.getFont("Ramabhadra",
//               fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: ListView(
//         children: [
//           // create form fields for each attribute
//           CustomTextField(
//               width: 390,
//               FieldName: "Name",
//               isObscure: false,
//               keyboardType: TextInputType.name,
//               controller: _nameController,
//               textInputAction: TextInputAction.next),
//           CustomTextField(
//               width: 390,
//               FieldName: "Email",
//               isObscure: false,
//               keyboardType: TextInputType.emailAddress,
//               controller: _emailController,
//               textInputAction: TextInputAction.next),
//           CustomTextField(
//               width: 390,
//               FieldName: "Email",
//               isObscure: false,
//               keyboardType: TextInputType.emailAddress,
//               controller: _emailController,
//               textInputAction: TextInputAction.next),
//           DropdownButtonFormField<String>(
//             value: gender,
//             decoration: InputDecoration(
//                 contentPadding: EdgeInsets.only(left: 20),
//                 labelText: 'Gender',
//                 labelStyle: GoogleFonts.getFont("Ramabhadra",
//                     fontSize: 15, fontWeight: FontWeight.bold),
//                 focusColor: Colors.blue),
//             onChanged: (value) {
//               setState(() {
//                 gender = value!;
//               });
//             },
//             items: [
//               DropdownMenuItem(
//                 value: 'Male',
//                 child: Text('Male'),
//               ),
//               DropdownMenuItem(
//                 value: 'Female',
//                 child: Text('Female'),
//               ),
//               DropdownMenuItem(
//                 value: 'Other',
//                 child: Text('Other'),
//               ),
//             ],
//           ),
//           CustomTextField(
//               width: 390,
//               FieldName: "Age",
//               isObscure: false,
//               keyboardType: TextInputType.number,
//               controller: _ageController,
//               textInputAction: TextInputAction.next),
//           CustomTextField(
//               width: 390,
//               FieldName: "Mobile Number",
//               isObscure: false,
//               keyboardType: TextInputType.number,
//               controller: _phoneController,
//               textInputAction: TextInputAction.next),
//           CustomTextField(
//               width: 390,
//               FieldName: "Address",
//               isObscure: false,
//               keyboardType: TextInputType.name,
//               controller: _addressController,
//               textInputAction: TextInputAction.next),
//           CustomTextField(
//               width: 390,
//               FieldName: "Height in foot",
//               isObscure: false,
//               keyboardType: TextInputType.number,
//               controller: _heightController,
//               textInputAction: TextInputAction.next),
//           CustomTextField(
//               width: 390,
//               FieldName: "Name",
//               isObscure: false,
//               keyboardType: TextInputType.name,
//               controller: _nameController,
//               textInputAction: TextInputAction.next),
//           const SizedBox(height: 16),
//           InkWell(
//               onTap: () {},
//               child: Container(
//                 height: 40,
//                 width: 80,
//                 child: Container(
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Color(0xff002aff), width: 1)),
//                     child: Text("Sign Up")),
//               )),
//           const SizedBox(
//             height: 50,
//           )
//         ],
//       ),
//     );
//   }
// }
