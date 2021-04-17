import 'package:flutter/material.dart';
import 'package:flutter_sign_demo/app.dart';
import 'package:flutter_sign_demo/environment/build_config.dart';
import 'package:flutter_sign_demo/environment/build_type.dart';
import 'package:flutter_sign_demo/environment/environment.dart';

void main() {
  _defineEnvironment(buildConfig: _setUpConfig(),);
  runApp(MyApp());
}
void _defineEnvironment({
  BuildConfig buildConfig}){
  Environment.init(buildConfig, BuildType.prod);
}

BuildConfig _setUpConfig(){
  return BuildConfig(envString: "Prod", envColor: Colors.red,);
}

