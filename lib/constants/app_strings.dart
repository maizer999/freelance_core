import 'app_local.dart';

class AppStrings {
  static const String appName = "PMIS";
  static const String fontFamily = "MixArabRegular";
  static const String mawaniFontFamily = "MixArabRegular";
  static const String appVersion = "2.0.0";

//keycloak
  static const String grantType = "password";
  static const String grantTypeRefreshToken = "refresh_token";
  static const String clientId = "PMIS_mobile";
  static const String clientSecret = "";

//login view
  static const String username = 'Username';
  static const String password = 'Password';
  static const String enterUsername = 'Please enter your username';
  static const String enterPassword = 'Please enter your password';
  static const String requiredField = 'This field is required';
  static const String signIn = 'Sign In';
  static const String signInWithBiometric = 'Sign In with your Biometric ID';

//error handling
  static const String notFound = '400 \tNot Found\t';
  static const String undefined = 'Undefined Error\t';
  static const String unauthorized = 'Unauthorized \t';
  static const String internalServerError = 'Internal Server Error\t';
  static const String invalidRequest =
      'Invalid request, please check method, url, & parameters';
  static const String noInternetConnectionTitle = 'No Internet Connection';
  static const String serverUnderMaintenance = 'Server Under Maintenance';
  static const String userNotAuthorizedException = 'User Not Authorized';
  static const String invalidUserCredentials = 'Invalid user credentials';
  static const String userNotSupportedMessage =
      'Your account type is not supported. Please contact support for assistance.';
  static const String noInternetConnectionMessage =
      'Please check your internet connection';
  static const noDataFound = 'No matching records found';
  static const String serverCurrentlyUnavailable =
      'The server is currently unavailable. Please Contact Support Team.';
  static const String communicationError = "Error During Communication: ";

//status
  static const String statusApproved = "Approved";
  static const String statusSubmitted = "Submitted";
  static const String statusApprovedByPortContractor =
      "Approved By Port Contractor";
  static const String statusConditionalApproval = 'Conditional Approval';
  static const String statusRejected = 'Rejected';
  static const String statusCancelled = 'Cancelled';
  static const String approveHeading = "Approve";
  static const String rejectHeading = "Reject";
  static const String conditionalApproveHeading = "Conditional Approve";
  static const String statusPending = "Pending";
  static const String statusReceived = "Received";
  static const String statusWaiting = "Waiting";

//splash Screen
  static const String splashTitle = "Welcome to the Port\n Community System ";

  static const String imoNo = "IMO No.";
  static const String vesselType = "Vessel Type";
  static const String vcn = "vcn";
  static const String remarkTitle = "Remarks";
  static const String berthAllocatedValue = 'A02';
  static const String anchorageApprovalValue = 'A01';

  // static const String desc = 'DESC';
  // static const String asc = 'ASC';
  //new
  static const String desc = '2';
  static const String asc = '1';
  static const String stakeHolderTypeId = 'PC';

  // Vessel Dimension
  static const String approvalStatus = "3";
  static const String status = "A";
  static const String selectValue = "Please select a tug from the dropdown.";

//Berth Approval
  static const String commonReferenceNumber   = "Common Reference No";
  static const String berthRequestDetailsView = "Berth Request Details View";
  static const String hrsFromValue = "9999-12-31T23:59:59";
  static const String hrsToValue = "9999-12-31T23:59:59";
  static const String statusId1 = "1";
  static const String statusId2 = "2";
  static const String statusId3 = "3";
  static const String number15 = "15";
  static const String statusId4 = "4";
  static const String statusApprovalId = "4";
  static const String statusId5 = "5";
  static const String statusId6 = "6";
  static const String statusId12 = "12";
  static const String length = "10";
  static const String statusAll = "All";
  static const String updatedDate = "updatedDate";
  static const String crnNo = "crn";
  static const String capitalR = "R";
  static const String vcnRejected = 'Vcn is Rejected';

  static const updatedStatusList = [
    {"statusId": "", "status": "All"},
    {"statusId": "1", "status": "Submitted"},
    {"statusId": "3", "status": "Allocated"},
    {"statusId": "5", "status": "Cancelled"},
    {"statusId": "6", "status": "Inactive"},
    {"statusId": "7", "status": "Conditional Approval"},
    {"statusId": "4", "status": "Rejected"},
    {"statusId": "12", "status": "Pmis Drafted"},
  ];

  //PortClearance

  static const String portClearanceApproved = "PORT_CLEARANCE_APPROVE";
  static const String portClearanceReject = "PORT_CLEARANCE_REJECT";

  static const String itemHasAlreadyAdded = 'This item has already been added.';
  static const String forCRNNo = 'Common Ref. No. is';
  static const String vcnNo = 'and VCN is ';
  static const String download = "Download";

  static const String unitQuantity = "UNIT_QUANTITY";

  static const String berth = "berth";
  static const String pilotMemo = "pilot_memo";

  static const statusList = [
    {"statusId": "", "status": "All"},
    {"statusId": "1", "status": "Submitted"},
    {"statusId": "3", "status": "Approved"},
    {"statusId": "4", "status": "Rejected"},
    {"statusId": "5", "status": "Cancelled"},
    {"statusId": "6", "status": "Inactive"},
    {"statusId": "7", "status": "Conditional Approval"},
    {"statusId": "12", "status": "Pmis Drafted"},
  ];

  static List<Map<String, dynamic>> modeOfTransportList = [
    {'id': "1", 'codeDescriptionEnglish': AppLocal.maritimeTransport},
    {'id': "2", 'codeDescriptionEnglish': AppLocal.coastal},
  ];

  ///error Message

  ///Temporary_values (edit_vessel_movement_timestamp_controller)
  static const String createdDate = "createdDate";
  static const String crn = "crn";
  static const String berthUpdatedDate = "updated_date";
  static const String userType = "Port";

  static const String fileUploadedSuccessFully = "File Uploaded successfully";
  static const String fileMovedSuccessFully = "File moved successfully";

  static const String dateCannotSelect = "Cannot select a date & time after ";
  static const String shouldBeSmallerThen = "should be smaller than";
  static const String shouldBeGreaterThan = "should be greater than";

  ///Common_Widgets
  static const String refNo = "ref no";
  static const String close = "CLOSE";
  static const String port = "port";
  static const String gregorian = "Gregorian";
  static const String hijri = "Hijri";
  static const String fontFamilyName = "Poppins";
  static const String unKnownError = "An unknown error occurred";
  static const String ok = "OK";
  static const String statusText = "Status";
  static const String date = "Date";
  static const String vesselTypeText = "VesselType";
  static const String closeText = "Close";

  static const String actualArrivalDateTimeInPortCannotBeEmpty =
      "Actual Arrival Date & Time in port can not be Empty";

//Id Constant
  static const String idZero = "0";
  static const String idOne = "1";
  static const String idTwo = "2";
  static const String idThree = "3";
  static const String idFour = "4";
  static const String idFive = "5";
  static const String idSix = "6";
  static const String idSeven = "7";
  static const String idEight = "8";
  static const String idNine = "9";
  static const String idTen = "10";
  static const String idEleven = "11";
  static const String idTwoHundred = "200";
  static const String idFourHundred = "400";
  static const String idFourOhFour = "404";
  static const String idFourTwentyTwo = "422";
  static const String idTwelve = "12";
  static const String idThirteen = "13";
  static const String idFourteen = "14";
  static const String idFifteen = "15";
  static const String idSixteen = "16";
  static const String idSeventeen = "17";
  static const String idEighteen = "18";
  static const String idNineteen = "19";
  static const String idFourOhFive = "405";
  static const String idTwoOhOne = "201";
  static const String idTwentySix = "26";
  //
  static const String all = 'All';

  static const String approved = 'Approved';
  static const String allocated = 'Allocated';
  static const String submitted = 'Submitted';
  static const String pmisDrafted = 'Pmis Drafted';
  static const String conditionalApproval = 'Conditional Approval';
  static const String conditionalApprove = 'Conditional Approve';
  static const String rejected = 'Rejected';
  static const String approvedByPortContractor = 'Approved By Port Contractor';
  static const String inactive = 'Inactive';
  static const String cancelled = 'Cancelled';
  static const String shareWithPort = AppLocal.shareWithPort;
  static const String eCLCancelled = 'ECL Cancelled';
  static const String pmisDraft = 'Pmis Draft';
  static const String eclDraft = 'ECL Draft';
  static const String eclApproved = 'ECL Approved';
  static const String eclRejected = 'ECL Rejected';
  //yes or No
  static const String y = 'Y';
  static const String n = 'N';
  static const String pilotNemo = 'pilot_memo';
  static const String berthType = 'berth';

  //true false
  static const String trueValue = "true";
  static const String falseValue = "false";
  static const String localAll = 'all';

  static const String title = 'title';
  static const String subTitle = 'subTitle';

  //MV/MT
  static const String codeMV = 'MV';
  static const String codeMT = 'MT';
  static const String codeA01 = 'A01';
  static const String codeA02 = 'A02';
  static const String codeAnchorage = 'ANCHORAGE';
  static const String codeBER001 = 'BER001';
  static const String codeV1150 = '1150';
  static const String fixed = 'Fixed';
  static const String variablePitchPropeller = 'Variable Pitch Propeller';
  static const int portClearanceExpiryDate = 20;


}
