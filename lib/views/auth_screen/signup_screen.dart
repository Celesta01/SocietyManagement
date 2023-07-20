import 'package:societymanage/consts/consts.dart';
import 'package:societymanage/consts/lists.dart';
import 'package:societymanage/widgets_common/applogo_widget.dart';
import 'package:societymanage/widgets_common/bg_widget.dart';
import 'package:societymanage/widgets_common/custom_textfield.dart';
import 'package:societymanage/widgets_common/our_button.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            15.heightBox,
            "Sign Up to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint, title: name),
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                customTextField(hint: passwordHint, title: retypePassword),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),

                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: golden,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    5.widthBox,
                    Expanded(
                        child: RichText(
                            text: TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: termAndCond,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                      TextSpan(
                          text: " & ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                      TextSpan(
                          text: privacypolicy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ))
                    ]))),
                  ],
                ),
                5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),
                ourButton(
                        color: isCheck == true ? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyHaveAccount.text.color(fontGrey).make(),
                    login.text.color(redColor).make().onTap(() {
                      Get.back();
                    })
                  ],
                )
                // RichText(
                //   text: const TextSpan(
                //     children: [
                //       TextSpan(
                //         text: alreadyHaveAccount,
                //         style: TextStyle(fontFamily: bold, color: fontGrey),
                //       ),
                //       TextSpan(
                //         text: login,
                //         style: TextStyle(fontFamily: bold, color: redColor),
                //       ),
                //     ],
                //   ),
                // ).onTap(() {
                //   Get.back();
                // })
              ],
            )
                .box
                .white
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .rounded
                .make()
          ],
        ),
      ),
    ));
  }
}
