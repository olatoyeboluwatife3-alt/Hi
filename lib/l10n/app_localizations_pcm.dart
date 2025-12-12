// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nigerian Pidgin (`pcm`).
class AppLocalizationsPcm extends AppLocalizations {
  AppLocalizationsPcm([String locale = 'pcm']) : super(locale);

  @override
  String get appTitle => 'Nexus Fertility';

  @override
  String get welcomeTitle => 'Welcome to Nexus Fertility';

  @override
  String get welcomeSubtitle => 'Your personal fertility helper';

  @override
  String get selectLanguage => 'Choose Language';

  @override
  String get english => 'English';

  @override
  String get yoruba => 'Yoruba';

  @override
  String get igbo => 'Igbo';

  @override
  String get hausa => 'Hausa';

  @override
  String get pidgin => 'Pidgin';

  @override
  String get german => 'Deutsch';

  @override
  String get next => 'Next';

  @override
  String get back => 'Go Back';

  @override
  String get skip => 'Skip Am';

  @override
  String get done => 'Done';

  @override
  String get createAccount => 'Create Account';

  @override
  String get signIn => 'Sign In';

  @override
  String get email => 'Email';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get dateOfBirth => 'Date Wey You Born';

  @override
  String get selectDate => 'Choose Date';

  @override
  String get profilePicture => 'Profile Picture';

  @override
  String get uploadPhoto => 'Upload Photo';

  @override
  String get takePhoto => 'Snap Photo';

  @override
  String get chooseFromGallery => 'Choose From Gallery';

  @override
  String get verifyEmail => 'Verify Email';

  @override
  String get verifyPhone => 'Verify Phone';

  @override
  String get enterOTP => 'Enter OTP';

  @override
  String otpSentTo(String email) {
    return 'We don send OTP to $email';
  }

  @override
  String get resendCode => 'Send Code Again';

  @override
  String codeExpires(String minutes, String seconds) {
    return 'Code go expire for $minutes:$seconds';
  }

  @override
  String get invalidEmail => 'Abeg enter correct email address';

  @override
  String get invalidPhone => 'Abeg enter correct phone number';

  @override
  String get passwordMismatch => 'Passwords no match';

  @override
  String get passwordTooShort => 'Password must be at least 8 characters';

  @override
  String get accountCreatedSuccessfully => 'We don create your account!';

  @override
  String get profileSetupComplete => 'Your profile setup don complete';

  @override
  String get termsAndConditions => 'I agree to the Terms and Conditions';

  @override
  String get privacyPolicy => 'I agree to the Privacy Policy';

  @override
  String get acceptTerms => 'Abeg accept the terms and conditions';

  @override
  String get emailAlreadyExists => 'Dem don register this email before';

  @override
  String get phoneAlreadyExists => 'Dem don register this phone number before';

  @override
  String get verificationFailed => 'Verification fail. Abeg try again';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get loading => 'Dey Load...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get logout => 'Logout';

  @override
  String get genderMale => 'Male';

  @override
  String get genderFemale => 'Female';

  @override
  String get genderOther => 'Other';

  @override
  String get selectGender => 'Choose Gender';

  @override
  String get welcomeToJourney => 'Welcome to your journey';
}
