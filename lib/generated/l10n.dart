// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to VetCare`
  String get welcome {
    return Intl.message(
      'Welcome to VetCare',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Email:`
  String get email {
    return Intl.message(
      'Email:',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password:`
  String get password {
    return Intl.message(
      'Password:',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get yourEmail {
    return Intl.message(
      'Enter your email address',
      name: 'yourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get yourPassword {
    return Intl.message(
      'Enter your password',
      name: 'yourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get forget {
    return Intl.message(
      'Forget password?',
      name: 'forget',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get login {
    return Intl.message(
      'LOGIN',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get account {
    return Intl.message(
      'Don’t have an account?',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Regester now`
  String get regester {
    return Intl.message(
      'Regester now',
      name: 'regester',
      desc: '',
      args: [],
    );
  }

  /// `Animal`
  String get animal {
    return Intl.message(
      'Animal',
      name: 'animal',
      desc: '',
      args: [],
    );
  }

  /// `Food Safety`
  String get food {
    return Intl.message(
      'Food Safety',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Case`
  String get emergencyCase {
    return Intl.message(
      'Emergency Case',
      name: 'emergencyCase',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get userName {
    return Intl.message(
      'User name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Check list`
  String get checkList {
    return Intl.message(
      'Check list',
      name: 'checkList',
      desc: '',
      args: [],
    );
  }

  /// `Pets animal`
  String get pet {
    return Intl.message(
      'Pets animal',
      name: 'pet',
      desc: '',
      args: [],
    );
  }

  /// `Farm animal`
  String get farm {
    return Intl.message(
      'Farm animal',
      name: 'farm',
      desc: '',
      args: [],
    );
  }

  /// `Poultry`
  String get poultry {
    return Intl.message(
      'Poultry',
      name: 'poultry',
      desc: '',
      args: [],
    );
  }

  /// `Fish`
  String get fish {
    return Intl.message(
      'Fish',
      name: 'fish',
      desc: '',
      args: [],
    );
  }

  /// `Pets Animals`
  String get pets {
    return Intl.message(
      'Pets Animals',
      name: 'pets',
      desc: '',
      args: [],
    );
  }

  /// `Farm Animals`
  String get farms {
    return Intl.message(
      'Farm Animals',
      name: 'farms',
      desc: '',
      args: [],
    );
  }

  /// `Poultry Animals`
  String get poultries {
    return Intl.message(
      'Poultry Animals',
      name: 'poultries',
      desc: '',
      args: [],
    );
  }

  /// `Owner:`
  String get owner {
    return Intl.message(
      'Owner:',
      name: 'owner',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get yourName {
    return Intl.message(
      'Enter your name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `Address:`
  String get address {
    return Intl.message(
      'Address:',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Enter your address`
  String get yourAddress {
    return Intl.message(
      'Enter your address',
      name: 'yourAddress',
      desc: '',
      args: [],
    );
  }

  /// `Phone:`
  String get phone {
    return Intl.message(
      'Phone:',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone`
  String get yourPhone {
    return Intl.message(
      'Enter your phone',
      name: 'yourPhone',
      desc: '',
      args: [],
    );
  }

  /// `Location:`
  String get location {
    return Intl.message(
      'Location:',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Location`
  String get yourLocation {
    return Intl.message(
      'Enter your Location',
      name: 'yourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Animal Type:`
  String get AnType {
    return Intl.message(
      'Animal Type:',
      name: 'AnType',
      desc: '',
      args: [],
    );
  }

  /// `Select animal type`
  String get selectAnimal {
    return Intl.message(
      'Select animal type',
      name: 'selectAnimal',
      desc: '',
      args: [],
    );
  }

  /// `Animal Age:`
  String get age {
    return Intl.message(
      'Animal Age:',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal age`
  String get yourAnAge {
    return Intl.message(
      'Enter your animal age',
      name: 'yourAnAge',
      desc: '',
      args: [],
    );
  }

  /// `Animal Weight:`
  String get weight {
    return Intl.message(
      'Animal Weight:',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal weight`
  String get yourAnWeight {
    return Intl.message(
      'Enter your animal weight',
      name: 'yourAnWeight',
      desc: '',
      args: [],
    );
  }

  /// `Food Inspection Data`
  String get data {
    return Intl.message(
      'Food Inspection Data',
      name: 'data',
      desc: '',
      args: [],
    );
  }

  /// `Food Safety FAQ`
  String get faq {
    return Intl.message(
      'Food Safety FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Daily checklist`
  String get daily {
    return Intl.message(
      'Daily checklist',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Dashboard`
  String get dashboard {
    return Intl.message(
      'Inspection Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming Inspections`
  String get upcome {
    return Intl.message(
      'Upcoming Inspections',
      name: 'upcome',
      desc: '',
      args: [],
    );
  }

  /// `New Inspections`
  String get newInspections {
    return Intl.message(
      'New Inspections',
      name: 'newInspections',
      desc: '',
      args: [],
    );
  }

  /// `Past Inspections`
  String get past {
    return Intl.message(
      'Past Inspections',
      name: 'past',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `By date`
  String get date {
    return Intl.message(
      'By date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Basic info:`
  String get basic {
    return Intl.message(
      'Basic info:',
      name: 'basic',
      desc: '',
      args: [],
    );
  }

  /// `Name:`
  String get name {
    return Intl.message(
      'Name:',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Establishment's name`
  String get your {
    return Intl.message(
      'Establishment\'s name',
      name: 'your',
      desc: '',
      args: [],
    );
  }

  /// `Type of Establishment:`
  String get type {
    return Intl.message(
      'Type of Establishment:',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Select Type`
  String get select {
    return Intl.message(
      'Select Type',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Criteria:`
  String get criteria {
    return Intl.message(
      'Inspection Criteria:',
      name: 'criteria',
      desc: '',
      args: [],
    );
  }

  /// `Health and Safety`
  String get healthandSafety {
    return Intl.message(
      'Health and Safety',
      name: 'healthandSafety',
      desc: '',
      args: [],
    );
  }

  /// `Operational Standards`
  String get operationalStandards {
    return Intl.message(
      'Operational Standards',
      name: 'operationalStandards',
      desc: '',
      args: [],
    );
  }

  /// `Documentation`
  String get documentation {
    return Intl.message(
      'Documentation',
      name: 'documentation',
      desc: '',
      args: [],
    );
  }

  /// `Risk Assessment`
  String get riskAssessment {
    return Intl.message(
      'Risk Assessment',
      name: 'riskAssessment',
      desc: '',
      args: [],
    );
  }

  /// `Notes:`
  String get notes {
    return Intl.message(
      'Notes:',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Form`
  String get form {
    return Intl.message(
      'Form',
      name: 'form',
      desc: '',
      args: [],
    );
  }

  /// `Live chat`
  String get live {
    return Intl.message(
      'Live chat',
      name: 'live',
      desc: '',
      args: [],
    );
  }

  /// `Type your message`
  String get yourMessage {
    return Intl.message(
      'Type your message',
      name: 'yourMessage',
      desc: '',
      args: [],
    );
  }

  /// `Visit in Clinic`
  String get clinic {
    return Intl.message(
      'Visit in Clinic',
      name: 'clinic',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get sun {
    return Intl.message(
      'Sunday',
      name: 'sun',
      desc: '',
      args: [],
    );
  }

  /// `Monday`
  String get mon {
    return Intl.message(
      'Monday',
      name: 'mon',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get tue {
    return Intl.message(
      'Tuesday',
      name: 'tue',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get wed {
    return Intl.message(
      'Wednesday',
      name: 'wed',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get thu {
    return Intl.message(
      'Thursday',
      name: 'thu',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Call`
  String get call {
    return Intl.message(
      'Emergency Call',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Recommendation`
  String get reco {
    return Intl.message(
      'Recommendation',
      name: 'reco',
      desc: '',
      args: [],
    );
  }

  /// `Complaint`
  String get complaint {
    return Intl.message(
      'Complaint',
      name: 'complaint',
      desc: '',
      args: [],
    );
  }

  /// `For helping you faster\n please choose from these button`
  String get help {
    return Intl.message(
      'For helping you faster\n please choose from these button',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
