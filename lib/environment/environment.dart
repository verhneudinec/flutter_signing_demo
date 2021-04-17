import 'package:flutter_sign_demo/environment/build_config.dart';
import 'package:flutter_sign_demo/environment/build_type.dart';

class Environment {
  final BuildConfig buildConfig;
  final BuildType buildType;

  static Environment _environment;

  Environment._({
    this.buildConfig,
    this.buildType,
  });

  static void init(
      BuildConfig buildConfig,
      BuildType buildType,
      ){
    _environment = Environment._(buildConfig: buildConfig,buildType: buildType);
  }

  static Environment instance() => _environment;
}