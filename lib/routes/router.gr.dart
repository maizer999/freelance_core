// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:free_lancer_app/widgets/common_dialog_view.dart' as _i1;

/// generated route for
/// [_i1.CommonResponseDialogView]
class CommonResponseDialogRoute
    extends _i2.PageRouteInfo<CommonResponseDialogRouteArgs> {
  CommonResponseDialogRoute({
    _i3.Key? key,
    String? responseMessage,
    String? statusCode,
    String? buttonText,
    _i3.VoidCallback? onTap,
    double? width,
    double? height,
    String? routePage,
    String? loadingMessage,
    bool isLoading = false,
    List<_i2.PageRouteInfo>? children,
  }) : super(
          CommonResponseDialogRoute.name,
          args: CommonResponseDialogRouteArgs(
            key: key,
            responseMessage: responseMessage,
            statusCode: statusCode,
            buttonText: buttonText,
            onTap: onTap,
            width: width,
            height: height,
            routePage: routePage,
            loadingMessage: loadingMessage,
            isLoading: isLoading,
          ),
          initialChildren: children,
        );

  static const String name = 'CommonResponseDialogRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CommonResponseDialogRouteArgs>(
        orElse: () => const CommonResponseDialogRouteArgs(),
      );
      return _i1.CommonResponseDialogView(
        key: args.key,
        responseMessage: args.responseMessage,
        statusCode: args.statusCode,
        buttonText: args.buttonText,
        onTap: args.onTap,
        width: args.width,
        height: args.height,
        routePage: args.routePage,
        loadingMessage: args.loadingMessage,
        isLoading: args.isLoading,
      );
    },
  );
}

class CommonResponseDialogRouteArgs {
  const CommonResponseDialogRouteArgs({
    this.key,
    this.responseMessage,
    this.statusCode,
    this.buttonText,
    this.onTap,
    this.width,
    this.height,
    this.routePage,
    this.loadingMessage,
    this.isLoading = false,
  });

  final _i3.Key? key;

  final String? responseMessage;

  final String? statusCode;

  final String? buttonText;

  final _i3.VoidCallback? onTap;

  final double? width;

  final double? height;

  final String? routePage;

  final String? loadingMessage;

  final bool isLoading;

  @override
  String toString() {
    return 'CommonResponseDialogRouteArgs{key: $key, responseMessage: $responseMessage, statusCode: $statusCode, buttonText: $buttonText, onTap: $onTap, width: $width, height: $height, routePage: $routePage, loadingMessage: $loadingMessage, isLoading: $isLoading}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CommonResponseDialogRouteArgs) return false;
    return key == other.key &&
        responseMessage == other.responseMessage &&
        statusCode == other.statusCode &&
        buttonText == other.buttonText &&
        onTap == other.onTap &&
        width == other.width &&
        height == other.height &&
        routePage == other.routePage &&
        loadingMessage == other.loadingMessage &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      responseMessage.hashCode ^
      statusCode.hashCode ^
      buttonText.hashCode ^
      onTap.hashCode ^
      width.hashCode ^
      height.hashCode ^
      routePage.hashCode ^
      loadingMessage.hashCode ^
      isLoading.hashCode;
}
