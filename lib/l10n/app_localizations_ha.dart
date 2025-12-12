// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appTitle => 'Nexus Fertility';

  @override
  String get welcomeTitle => 'Barka da zuwa Nexus Fertility';

  @override
  String get welcomeSubtitle => 'Mataimaki na haihuwa na sirri';

  @override
  String get selectLanguage => 'Zaɓi Harshe';

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
  String get next => 'Na gaba';

  @override
  String get back => 'Koma baya';

  @override
  String get skip => 'Tsallake';

  @override
  String get done => 'An gama';

  @override
  String get createAccount => 'Ƙirƙiri Asusun';

  @override
  String get signIn => 'Shiga';

  @override
  String get email => 'Imel';

  @override
  String get phoneNumber => 'Lambar Waya';

  @override
  String get password => 'Kalmar Sirri';

  @override
  String get confirmPassword => 'Tabbatar da Kalmar Sirri';

  @override
  String get firstName => 'Sunan Farko';

  @override
  String get lastName => 'Sunan Iyali';

  @override
  String get dateOfBirth => 'Ranar Haihuwa';

  @override
  String get selectDate => 'Zaɓi Ranar';

  @override
  String get profilePicture => 'Hoton Bayanan Martaba';

  @override
  String get uploadPhoto => 'Loda Hoto';

  @override
  String get takePhoto => 'Ɗauki Hoto';

  @override
  String get chooseFromGallery => 'Zaɓa Daga Gallery';

  @override
  String get verifyEmail => 'Tabbatar da Imel';

  @override
  String get verifyPhone => 'Tabbatar da Waya';

  @override
  String get enterOTP => 'Shigar da OTP';

  @override
  String otpSentTo(String email) {
    return 'An aika OTP zuwa $email';
  }

  @override
  String get resendCode => 'Sake Aika Lambar';

  @override
  String codeExpires(String minutes, String seconds) {
    return 'Lambar za ta ƙare a $minutes:$seconds';
  }

  @override
  String get invalidEmail => 'Don Allah shigar da ingantaccen adireshin imel';

  @override
  String get invalidPhone => 'Don Allah shigar da ingantaccen lambar waya';

  @override
  String get passwordMismatch => 'Kalmomin sirri ba su dace ba';

  @override
  String get passwordTooShort =>
      'Kalmar sirri dole ta kasance aƙalla haruffa 8';

  @override
  String get accountCreatedSuccessfully => 'An ƙirƙiri asusun nasara!';

  @override
  String get profileSetupComplete => 'An gama saitin bayanan ku';

  @override
  String get termsAndConditions => 'Na yarda da Sharuɗɗa da Yanayi';

  @override
  String get privacyPolicy => 'Na yarda da Manufar Sirri';

  @override
  String get acceptTerms => 'Don Allah karɓi sharuɗɗa da yanayi';

  @override
  String get emailAlreadyExists => 'An riga an yi rajistar imel';

  @override
  String get phoneAlreadyExists => 'An riga an yi rajistar lambar waya';

  @override
  String get verificationFailed => 'Tabbatarwa ta gaza. Don Allah sake gwadawa';

  @override
  String get tryAgain => 'Sake Gwadawa';

  @override
  String get loading => 'Ana Ɗorawa...';

  @override
  String get error => 'Kuskure';

  @override
  String get success => 'Nasara';

  @override
  String get cancel => 'Soke';

  @override
  String get save => 'Ajiye';

  @override
  String get logout => 'Fita';

  @override
  String get genderMale => 'Namiji';

  @override
  String get genderFemale => 'Mace';

  @override
  String get genderOther => 'Wani';

  @override
  String get selectGender => 'Zaɓi Jinsi';

  @override
  String get welcomeToJourney => 'Barka da zuwa tafiyarku';
}
