// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Nexus Fertility';

  @override
  String get welcomeTitle => 'Welcome to Nexus Fertility';

  @override
  String get welcomeSubtitle => 'Your personal fertility companion';

  @override
  String get selectLanguage => 'Select Language';

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
  String get back => 'Back';

  @override
  String get skip => 'Skip';

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
  String get dateOfBirth => 'Date of Birth';

  @override
  String get selectDate => 'Select Date';

  @override
  String get profilePicture => 'Profile Picture';

  @override
  String get uploadPhoto => 'Upload Photo';

  @override
  String get takePhoto => 'Take Photo';

  @override
  String get chooseFromGallery => 'Choose from Gallery';

  @override
  String get verifyEmail => 'Verify Email';

  @override
  String get verifyPhone => 'Verify Phone';

  @override
  String get enterOTP => 'Enter OTP';

  @override
  String otpSentTo(String email) {
    return 'OTP sent to $email';
  }

  @override
  String get resendCode => 'Resend Code';

  @override
  String codeExpires(String minutes, String seconds) {
    return 'Code expires in $minutes:$seconds';
  }

  @override
  String get invalidEmail => 'Please enter a valid email address';

  @override
  String get invalidPhone => 'Please enter a valid phone number';

  @override
  String get passwordMismatch => 'Passwords do not match';

  @override
  String get passwordTooShort => 'Password must be at least 8 characters';

  @override
  String get accountCreatedSuccessfully => 'Account created successfully!';

  @override
  String get profileSetupComplete => 'Your profile setup is complete';

  @override
  String get termsAndConditions => 'I agree to the Terms and Conditions';

  @override
  String get privacyPolicy => 'I agree to the Privacy Policy';

  @override
  String get acceptTerms => 'Please accept the terms and conditions';

  @override
  String get emailAlreadyExists => 'Email already registered';

  @override
  String get phoneAlreadyExists => 'Phone number already registered';

  @override
  String get verificationFailed => 'Verification failed. Please try again';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get loading => 'Loading...';

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
  String get selectGender => 'Select Gender';

  @override
  String get welcomeToJourney => 'Welcome to your journey';
}
