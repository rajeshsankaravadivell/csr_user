import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(


        children: [

          Expanded(

              flex: 3,
              child:Image.asset('assets/vedanta.png',fit: BoxFit.fitHeight,height: MediaQuery.of(context).size.height,)
          
          ),
          Expanded(

              flex: 2,
              child: Column(


                children: [
                  
                  Image.asset('assets/Masthead-Left-Logo.png'),



                  CustomTextFormfield(hintText: 'Enter Your Userid', labelText: 'User Id',



                  ),

                  Align(


                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: TextButton(onPressed: (){}, child: Text('Send OTP')),
                      )),


                  CustomTextFormfield(hintText: 'Enter Your 6 digit  OTP', labelText: 'OTP',



                  ),
                  
                  
                  
                  
                  ElevatedButton(onPressed: (){}, child: Text('Login'))







                ],

              )
          )


        ],




      ),




    );







  }
}

class CustomTextFormfield extends StatelessWidget {
  const CustomTextFormfield({
    Key? key,  required this.labelText, required this.hintText, this.controller,
  }) : super(key: key);


 final String labelText;
 final String hintText;
 final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 20),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.all(Radius.circular(18))
        ),
        child: TextFormField(

          controller: controller,

          obscureText: false,
          decoration: InputDecoration(

            labelText: labelText,
            labelStyle: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.blue,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Lexend Deca',
              color: Color(0xFF57636C),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 0.1,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 0,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
          ),
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Color(0xFF0F1113),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
