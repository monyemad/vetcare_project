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

  /// `Pet Information Form`
  String get petInfo {
    return Intl.message(
      'Pet Information Form',
      name: 'petInfo',
      desc: '',
      args: [],
    );
  }

  /// `Farm Information Form`
  String get farmsInfo {
    return Intl.message(
      'Farm Information Form',
      name: 'farmsInfo',
      desc: '',
      args: [],
    );
  }

  /// `Poultry Information Form`
  String get poultryInfo {
    return Intl.message(
      'Poultry Information Form',
      name: 'poultryInfo',
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

  /// `Complaint Type:`
  String get complainType {
    return Intl.message(
      'Complaint Type:',
      name: 'complainType',
      desc: '',
      args: [],
    );
  }

  /// `Select your animal complaint type`
  String get selectComplain {
    return Intl.message(
      'Select your animal complaint type',
      name: 'selectComplain',
      desc: '',
      args: [],
    );
  }

  /// `Health Status:`
  String get healthStatus {
    return Intl.message(
      'Health Status:',
      name: 'healthStatus',
      desc: '',
      args: [],
    );
  }

  /// `Select your animal health status`
  String get selectHealth {
    return Intl.message(
      'Select your animal health status',
      name: 'selectHealth',
      desc: '',
      args: [],
    );
  }

  /// `Write your note here`
  String get noteText {
    return Intl.message(
      'Write your note here',
      name: 'noteText',
      desc: '',
      args: [],
    );
  }

  /// `Q: What are the best practices for storing animal feed? \n\n A: Store feed in a cool, dry place, away from direct sunlight and moisture. Use sealed containers to prevent contamination from pests or mold. \n\n Q: How can I tell if the feed has gone bad? \n\n A: Check for unusual smells, discoloration, or mold growth. If you notice any of these signs, discard the feed immediately to avoid health risks. \n\n Q: How often should I clean the feeding equipment for farm animals? \n\n A: Clean feeding equipment daily to prevent the buildup of bacteria and mold. Regular cleaning helps maintain the health of your farm animals. \n\n Q: Is it safe to give leftover food scraps to farm animals? \n\n A: It’s generally not recommended to feed farm animals leftover food scraps, as they may contain harmful substances or lead to imbalanced nutrition. Stick to feed designed for each specific type of farm animal. \n\n Q: How do I ensure that poultry feed remains uncontaminated? \n\n A: Store poultry feed in sealed containers and keep it dry. Regularly clean feeders and ensure that water is fresh and uncontaminated. \n\n Q: What precautions should I take when feeding poultry? \n\n A: Avoid feeding moldy or spoiled feed, and clean feeding areas regularly to prevent diseases. Monitor your poultry’s health and adjust their diet as needed. \n\n Q: How should I store fish feed to maintain its quality? \n\n A: Store fish feed in a cool, dry place, ideally in an airtight container. This helps preserve the nutritional value and prevents spoilage. \n\n Q: What are the signs of overfeeding fish? \n\n A: Signs include cloudy water, uneaten food settling at the bottom, and increased algae growth. Overfeeding can lead to water contamination and harm the fish’s health. \n\n Q: What should I do if I suspect my animals have eaten contaminated food? \n\n A: Immediately stop feeding them the suspected food, clean all feeding equipment, and monitor the animals closely. Contact a veterinarian if any signs of illness appear. \n\n Q: How can I prevent cross-contamination when handling different types of feed? \n\n A: Use separate containers and utensils for different types of feed. Always wash your hands and equipment thoroughly after handling each type to avoid cross-contamination.`
  String get QandA {
    return Intl.message(
      'Q: What are the best practices for storing animal feed? \n\n A: Store feed in a cool, dry place, away from direct sunlight and moisture. Use sealed containers to prevent contamination from pests or mold. \n\n Q: How can I tell if the feed has gone bad? \n\n A: Check for unusual smells, discoloration, or mold growth. If you notice any of these signs, discard the feed immediately to avoid health risks. \n\n Q: How often should I clean the feeding equipment for farm animals? \n\n A: Clean feeding equipment daily to prevent the buildup of bacteria and mold. Regular cleaning helps maintain the health of your farm animals. \n\n Q: Is it safe to give leftover food scraps to farm animals? \n\n A: It’s generally not recommended to feed farm animals leftover food scraps, as they may contain harmful substances or lead to imbalanced nutrition. Stick to feed designed for each specific type of farm animal. \n\n Q: How do I ensure that poultry feed remains uncontaminated? \n\n A: Store poultry feed in sealed containers and keep it dry. Regularly clean feeders and ensure that water is fresh and uncontaminated. \n\n Q: What precautions should I take when feeding poultry? \n\n A: Avoid feeding moldy or spoiled feed, and clean feeding areas regularly to prevent diseases. Monitor your poultry’s health and adjust their diet as needed. \n\n Q: How should I store fish feed to maintain its quality? \n\n A: Store fish feed in a cool, dry place, ideally in an airtight container. This helps preserve the nutritional value and prevents spoilage. \n\n Q: What are the signs of overfeeding fish? \n\n A: Signs include cloudy water, uneaten food settling at the bottom, and increased algae growth. Overfeeding can lead to water contamination and harm the fish’s health. \n\n Q: What should I do if I suspect my animals have eaten contaminated food? \n\n A: Immediately stop feeding them the suspected food, clean all feeding equipment, and monitor the animals closely. Contact a veterinarian if any signs of illness appear. \n\n Q: How can I prevent cross-contamination when handling different types of feed? \n\n A: Use separate containers and utensils for different types of feed. Always wash your hands and equipment thoroughly after handling each type to avoid cross-contamination.',
      name: 'QandA',
      desc: '',
      args: [],
    );
  }

  /// `Clinic 1`
  String get clinic1 {
    return Intl.message(
      'Clinic 1',
      name: 'clinic1',
      desc: '',
      args: [],
    );
  }

  /// `Clinic 2`
  String get clinic2 {
    return Intl.message(
      'Clinic 2',
      name: 'clinic2',
      desc: '',
      args: [],
    );
  }

  /// `Cat`
  String get cat {
    return Intl.message(
      'Cat',
      name: 'cat',
      desc: '',
      args: [],
    );
  }

  /// `Dog`
  String get dog {
    return Intl.message(
      'Dog',
      name: 'dog',
      desc: '',
      args: [],
    );
  }

  /// `Bird`
  String get bird {
    return Intl.message(
      'Bird',
      name: 'bird',
      desc: '',
      args: [],
    );
  }

  /// `Cow`
  String get cow {
    return Intl.message(
      'Cow',
      name: 'cow',
      desc: '',
      args: [],
    );
  }

  /// `Sheep`
  String get sheep {
    return Intl.message(
      'Sheep',
      name: 'sheep',
      desc: '',
      args: [],
    );
  }

  /// `Horse`
  String get horse {
    return Intl.message(
      'Horse',
      name: 'horse',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get pleaseEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'pleaseEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must not be empty`
  String get pleasePssword {
    return Intl.message(
      'Password must not be empty',
      name: 'pleasePssword',
      desc: '',
      args: [],
    );
  }

  /// `Name must not be empty`
  String get pleaseName {
    return Intl.message(
      'Name must not be empty',
      name: 'pleaseName',
      desc: '',
      args: [],
    );
  }

  /// `Owner must not be empty`
  String get pleaseOwner {
    return Intl.message(
      'Owner must not be empty',
      name: 'pleaseOwner',
      desc: '',
      args: [],
    );
  }

  /// `Address must not be empty`
  String get pleaseAddress {
    return Intl.message(
      'Address must not be empty',
      name: 'pleaseAddress',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must not be empty`
  String get pleasePhone {
    return Intl.message(
      'Phone number must not be empty',
      name: 'pleasePhone',
      desc: '',
      args: [],
    );
  }

  /// `Animal weight must not be empty`
  String get pleaseAnWeight {
    return Intl.message(
      'Animal weight must not be empty',
      name: 'pleaseAnWeight',
      desc: '',
      args: [],
    );
  }

  /// `Animal age must not be empty`
  String get pleaseAnAge {
    return Intl.message(
      'Animal age must not be empty',
      name: 'pleaseAnAge',
      desc: '',
      args: [],
    );
  }

  /// `Location must not be empty`
  String get pleaseLocation {
    return Intl.message(
      'Location must not be empty',
      name: 'pleaseLocation',
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
