import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_sharp,
          ),
        ),
      ),
      backgroundColor: Colors.teal[50],
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  bottom: 80,
                ),
                child: Text(
                  'OTP code \n Verification',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  'Code has been send to +91 90901*****',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      keyboardType: TextInputType.number,
                      enablePinAutofill: true,
                      backgroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 30,
                      ),
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12),
                        fieldWidth: 80,
                        selectedFillColor: Colors.white,
                        selectedColor: Colors.white,
                        activeFillColor: Colors.white,
                        inactiveColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        activeColor: Colors.white,
                        borderWidth: 1,
                        selectedBorderWidth: 2,
                        // fieldOuterPadding: EdgeInsets.all(7),
                      ),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: RichText(
                    text: TextSpan(
                        text: ('Resend code in'),
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        children: [
                      TextSpan(
                        text: (' 45'),
                        style: TextStyle(
                          color: const Color.fromARGB(255, 1, 137, 124),
                        ),
                      ),
                      TextSpan(
                        text: (' s'),
                      ),
                    ])),
              ),
              SizedBox(
                height: 170,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.shade100,
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: const Color.fromARGB(255, 59, 168, 157),
                      borderRadius: BorderRadius.circular(
                        8,
                      )),
                  child: Center(
                    child: Text(
                      'Verify',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              )
              // InkWell(
              //   onTap: () {},
              //   child: Container(
              //     width: 400,
              //     height: 50,
              //     decoration: BoxDecoration(
              //         color: Color.fromARGB(255, 53, 219, 142),
              //         borderRadius: BorderRadius.circular(8)),
              //     child: const Center(
              //       child: Text(
              //         'Verify',
              //         style: TextStyle(
              //           fontSize: 20,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
