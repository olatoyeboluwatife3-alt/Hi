import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';

abstract class AuthService {
  Future<User?> signUpWithEmail({
    required String email,
    required String password,
  });

  Future<User?> signUpWithPhone({
    required String phoneNumber,
  });

  Future<bool> verifyEmailOTP({
    required String email,
    required String otp,
  });

  Future<bool> verifyPhoneOTP({
    required String phoneNumber,
    required String otp,
  });

  Future<bool> resendEmailOTP({required String email});

  Future<bool> resendPhoneOTP({required String phoneNumber});

  Future<User?> updateUserProfile({
    required String userId,
    String? firstName,
    String? lastName,
    DateTime? dateOfBirth,
    String? gender,
    String? profileImagePath,
  });

  Future<User?> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<User?> getCurrentUser();

  Stream<User?> authStateChanges();
}

class AuthServiceImpl extends ChangeNotifier implements AuthService {
  late SharedPreferences _prefs;
  User? _currentUser;
  final StreamController<User?> _authStateController =
      StreamController<User?>.broadcast();

  User? get currentUser => _currentUser;

  AuthServiceImpl() {
    _initialize();
  }

  Future<void> _initialize() async {
    _prefs = await SharedPreferences.getInstance();
    _loadUserFromPrefs();
  }

  void _loadUserFromPrefs() {
    final userJson = _prefs.getString('user');
    if (userJson != null) {
      try {
        _currentUser = User.fromJson(Map<String, dynamic>.from(
          (userJson as dynamic) as Map,
        ));
      } catch (e) {
        debugPrint('Error loading user: $e');
      }
    }
  }

  Future<void> _saveUserToPrefs(User user) async {
    await _prefs.setString('user', _jsonEncode(user.toJson()));
    _currentUser = user;
    _authStateController.add(user);
    notifyListeners();
  }

  String _jsonEncode(Map<String, dynamic> data) {
    // Simple JSON encoding - in production use json package
    return data.toString();
  }

  @override
  Future<User?> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      // Validate email format
      if (!_isValidEmail(email)) {
        throw Exception('Invalid email format');
      }

      // Validate password strength
      if (password.length < 8) {
        throw Exception('Password must be at least 8 characters');
      }

      // Check if user already exists
      final existingUser = _prefs.getString('user_$email');
      if (existingUser != null) {
        throw Exception('Email already registered');
      }

      // Create user object
      final user = User(
        email: email,
        emailVerified: false,
        createdAt: DateTime.now(),
      );

      // Store temporary user for verification
      await _prefs.setString('temp_user_$email', _jsonEncode(user.toJson()));
      await _prefs.setString('user_password_$email', password);

      // In production, send OTP via email
      debugPrint('Sending OTP to $email');

      return user;
    } catch (e) {
      debugPrint('Sign up error: $e');
      rethrow;
    }
  }

  @override
  Future<User?> signUpWithPhone({
    required String phoneNumber,
  }) async {
    try {
      // Validate phone format
      if (!_isValidPhoneNumber(phoneNumber)) {
        throw Exception('Invalid phone number format');
      }

      // Check if phone already registered
      final existingUser = _prefs.getString('user_$phoneNumber');
      if (existingUser != null) {
        throw Exception('Phone number already registered');
      }

      // Create user object
      final user = User(
        email: '', // Will be set later
        phoneNumber: phoneNumber,
        phoneVerified: false,
        createdAt: DateTime.now(),
      );

      // Store temporary user
      await _prefs.setString('temp_user_$phoneNumber', _jsonEncode(user.toJson()));

      // In production, send OTP via SMS
      debugPrint('Sending OTP to $phoneNumber');

      return user;
    } catch (e) {
      debugPrint('Sign up error: $e');
      rethrow;
    }
  }

  @override
  Future<bool> verifyEmailOTP({
    required String email,
    required String otp,
  }) async {
    try {
      // In production, verify OTP with backend
      if (otp.length != 6) {
        throw Exception('Invalid OTP format');
      }

      // Simulate OTP verification (in production, call backend)
      debugPrint('Verifying OTP: $otp for email: $email');

      // Get temporary user
      final tempUserJson = _prefs.getString('temp_user_$email');
      if (tempUserJson == null) {
        throw Exception('User not found');
      }

      // Update user with verified email
      final user = User(
        email: email,
        emailVerified: true,
        createdAt: DateTime.now(),
      );

      // Save verified user
      await _saveUserToPrefs(user);
      await _prefs.remove('temp_user_$email');

      return true;
    } catch (e) {
      debugPrint('OTP verification error: $e');
      rethrow;
    }
  }

  @override
  Future<bool> verifyPhoneOTP({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      if (otp.length != 6) {
        throw Exception('Invalid OTP format');
      }

      debugPrint('Verifying OTP: $otp for phone: $phoneNumber');

      // Get temporary user
      final tempUserJson = _prefs.getString('temp_user_$phoneNumber');
      if (tempUserJson == null) {
        throw Exception('User not found');
      }

      // Update user with verified phone
      final user = User(
        email: '',
        phoneNumber: phoneNumber,
        phoneVerified: true,
        createdAt: DateTime.now(),
      );

      await _saveUserToPrefs(user);
      await _prefs.remove('temp_user_$phoneNumber');

      return true;
    } catch (e) {
      debugPrint('OTP verification error: $e');
      rethrow;
    }
  }

  @override
  Future<bool> resendEmailOTP({required String email}) async {
    try {
      if (!_isValidEmail(email)) {
        throw Exception('Invalid email');
      }

      debugPrint('Resending OTP to email: $email');
      // In production, send OTP via email service
      return true;
    } catch (e) {
      debugPrint('Resend OTP error: $e');
      rethrow;
    }
  }

  @override
  Future<bool> resendPhoneOTP({required String phoneNumber}) async {
    try {
      if (!_isValidPhoneNumber(phoneNumber)) {
        throw Exception('Invalid phone number');
      }

      debugPrint('Resending OTP to phone: $phoneNumber');
      // In production, send OTP via SMS service
      return true;
    } catch (e) {
      debugPrint('Resend OTP error: $e');
      rethrow;
    }
  }

  @override
  Future<User?> updateUserProfile({
    required String userId,
    String? firstName,
    String? lastName,
    DateTime? dateOfBirth,
    String? gender,
    String? profileImagePath,
  }) async {
    try {
      if (_currentUser == null) {
        throw Exception('No user logged in');
      }

      final updatedUser = _currentUser!.copyWith(
        firstName: firstName,
        lastName: lastName,
        dateOfBirth: dateOfBirth,
        gender: gender,
        profileImageUrl: profileImagePath,
        updatedAt: DateTime.now(),
      );

      await _saveUserToPrefs(updatedUser);

      return updatedUser;
    } catch (e) {
      debugPrint('Update profile error: $e');
      rethrow;
    }
  }

  @override
  Future<User?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      // In production, call backend authentication
      final userJson = _prefs.getString('user_$email');
      if (userJson == null) {
        throw Exception('User not found');
      }

      // Load and return user
      _loadUserFromPrefs();
      return _currentUser;
    } catch (e) {
      debugPrint('Sign in error: $e');
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      _currentUser = null;
      await _prefs.remove('user');
      _authStateController.add(null);
      notifyListeners();
    } catch (e) {
      debugPrint('Sign out error: $e');
      rethrow;
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    return _currentUser;
  }

  @override
  Stream<User?> authStateChanges() {
    return _authStateController.stream;
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  bool _isValidPhoneNumber(String phone) {
    final phoneRegex = RegExp(r'^[+]?[(]?[0-9]{3}[)]?[-\s.]?[0-9]{3}[-\s.]?[0-9]{4,6}$');
    return phoneRegex.hasMatch(phone.replaceAll(' ', ''));
  }

  @override
  void dispose() {
    _authStateController.close();
    super.dispose();
  }
}
