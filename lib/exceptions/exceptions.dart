// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as providerContainer;
import '../../main.dart';
import '../constants/app_local.dart';
import '../constants/app_strings.dart';
import '../user managment/error_model.dart';

enum IssueType {
  noInternetConnection,
  serverMaintenance,
  userNotSupported,
  userNotAuthorized,
}

class ConnectionIssueException implements AppException {
  ConnectionIssueException({this.response});

  @override
  String? get message => 'No Internet connection';

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.noInternetConnection;
}

class AuthenticationFailedException implements AppException {
  AuthenticationFailedException({this.response});

  @override
  String? get message =>
      response?["error_description"] ?? 'Authentication failed';

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.userNotAuthorized;
}

class InvalidRequestException implements AppException {
  InvalidRequestException({this.response});

  @override
  String? get message =>
      'Invalid request, please check method, url, & parameters';

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class MalformedOutputException implements AppException {
  MalformedOutputException({this.response});

  @override
  String? message;

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class ServerErrorException implements AppException {
  ServerErrorException({this.response});

  @override
  String? get message {
    if (response != null) {
      final error = ErrorModel.fromResponse(response);
      return "${AppLocal.issueTypeEnumServerMaintenance.tr()} \n ${error.responseMessage}";
    }
    return null;
  }

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class ServiceUnavailableException implements AppException {
  ServiceUnavailableException({this.response});

  @override
  String? get message {
    if (response != null) {
      final error = ErrorModel.fromResponse(response);
      return error.responseMessage;
    }
    return 'Service Unavailable';
  }

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class NoDataFoundException implements AppException {
  NoDataFoundException({this.response});

  @override
  String? get message => AppLocal.noDataFound;

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class NotFoundException implements AppException {
  NotFoundException({
    this.response,
  });

  @override
  String? get message => AppLocal.notFound;

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class UnknownErrorException implements AppException {
  UnknownErrorException({this.response});

  @override
  String? get message {
    if (response != null) {
      final error = ErrorModel.fromResponse(response);
      return error.responseMessage;
    }
    return 'Undefined Error';
  }

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class FillAllFieldsException implements AppException {
  @override
  String? get message => 'Fill All Fields Exception';

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class ErrorModelException implements AppException {
  ErrorModelException({required this.errorModel, this.response});

  @override
  String? get message => errorModel.responseMessage;

  final Map? response;
  final ErrorModel errorModel;

  List<Object?> get props => [message, response, errorModel];

  @override
  IssueType? issueType = IssueType.serverMaintenance;
}

class UserNotSupportedException implements AppException {
  UserNotSupportedException({this.response});

  @override
  String? get message => 'User Not supported';

  Map? response;

  List<Object?> get props => [message, response];

  @override
  IssueType? issueType = IssueType.userNotSupported;
}

class AppException implements Exception {
  final String? message;

  IssueType? issueType;

  AppException({
    required this.message,
  });

  @override
  String toString() {
    return '$message';
  }
}

class CommonExceptionHandler {
  static String getErrorMessage(Exception error) {
    if (error is ErrorModelException) {
      return error.errorModel.responseMessage.isNotEmpty == true
          ? error.errorModel.responseMessage
          : AppStrings.internalServerError;
    }
    if (error is NoDataFoundException) {
      return AppLocal.noDataFound;
    }

    if (error is UserNotSupportedException) {
      return AppStrings.userNotSupportedMessage;
    } else if (error is ServerErrorException) {
      return AppStrings.internalServerError;
    } else if (error is ConnectionIssueException) {
      return AppStrings.noInternetConnectionMessage;
    } else if (error is NotFoundException) {
      return AppStrings.notFound;
    } else {
      return AppLocal.undefined;
    }
  }
}
//
// void showErrorDialog(AppException error) {
//   final router = providerContainer.read(autoRouterProvider);
//   if (error is ServerErrorException || error is ConnectionIssueException) {
//     router.navigate(
//       CommonResponseDialogRoute(
//         responseMessage: error.message ?? "An error occurred",
//       ),
//     );
//   } else if (error is AuthenticationFailedException) {
//     router.navigate(UserLoginRoute());
//   } else {
//     router.navigate(
//       // Handle other exceptions or show a generic error dialog
//       CommonResponseDialogRoute(
//         responseMessage: error.message ?? AppLocal.undefined,
//       ),
//     );
//   }
// }
