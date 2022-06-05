import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // const LoginPage({Key? key}) : super(key: key);
  late WebViewPlusController wvController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: WebViewPlus(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://mining-nfts.com/login',
            onWebViewCreated: (controller){
              this.wvController=controller;
            },
            onPageStarted: (url){

              // // if(url=='https://mining-nfts.com/account'){
              //
              //   wvController.evaluateJavascript("document.getElementsByClassName('meanmenu-reveal').style.display='none'");

              // }
              print('Web Url : $url');
            },
          ),
        ),
      ),
    );
  }
}
