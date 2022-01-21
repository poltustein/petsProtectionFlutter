import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pwd_app/models/SubscriptionPlans.dart';
import 'package:pwd_app/models/login/login.dart';
import 'package:pwd_app/models/otp_response.dart';
import 'package:pwd_app/models/signup_response.dart';

class WebService {
  Future<Login> loginUser(String email, String password) async {
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      'Authorization': 'Bearer J0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9sdkjdskjh'
    };

    Map<String, String> body = {"emailId": email, "password": password};

    String url =
        "http://ec2-13-40-57-235.eu-west-2.compute.amazonaws.com:8080/petsProtection/prelogin/login/";
    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: requestHeaders);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return Login.fromJson(json);
    } else {
      throw Exception("Error logging in user!");
    }
  }

  Future<SignupResponse> signupUser(
      String name, String email, String phone, String password) async {
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      'Authorization': 'Bearer J0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9sdkjdskjh'
    };

    String url =
        "http://ec2-13-40-57-235.eu-west-2.compute.amazonaws.com:8080/petsProtection/prelogin/signup/";

    Map<String, String> body = {
      "emailId": email,
      "password": password,
      "fullName": name,
      "contactNumber": phone,
    };

    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: requestHeaders);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return SignupResponse.fromJson(json);
    } else {
      throw Exception("Error signing in user!");
    }
  }

  Future<SignupResponse> updateUser(
      String name, String email, String phone, String token) async {
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      'Authorization': 'Bearer '+token,
      'emailid': email
    };

    String url =
        "http://ec2-13-40-57-235.eu-west-2.compute.amazonaws.com:8080/petsProtection/postlogin/user/update";

    Map<String, String> body = {
      "emailId": email,
      "fullName": name,
      "contactNumber": phone,
    };

    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: requestHeaders);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return SignupResponse.fromJson(json);
    } else {
      throw Exception("Error signing in user!");
    }
  }

  Future<OtpResponse?> verifyOTP(String email, String otp) async {
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      'Authorization': 'Bearer J0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9sdkjdskjh'
    };

    Map<String, String> body = {"emailId": email, "otp": otp};

    String url =
        "http://ec2-13-40-57-235.eu-west-2.compute.amazonaws.com:8080/petsProtection/prelogin/verifyOtp/";
    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: requestHeaders);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return OtpResponse.fromJson(json);
    } else {
      return null;
    }
  }

  Future<SubscriptionPlans> subscriptionPlans(String email, String token) async {
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      'Authorization': 'Bearer ' + token,
      'emailid': email
    };

    String url =
        "http://ec2-13-40-57-235.eu-west-2.compute.amazonaws.com:8080/petsProtection/postlogin/plans";
    final response = await http.get(Uri.parse(url),
         headers: requestHeaders);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return SubscriptionPlans.fromJson(json);
    } else {
      throw Exception("Error logging in user!");
    }
  }
}
