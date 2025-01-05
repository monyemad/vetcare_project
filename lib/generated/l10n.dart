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

  /// `Animal Information form`
  String get animalInfo {
    return Intl.message(
      'Animal Information form',
      name: 'animalInfo',
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

  /// `Owner’s name:`
  String get owner {
    return Intl.message(
      'Owner’s name:',
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

  /// `Enter your farm Location`
  String get yourFarmLocation {
    return Intl.message(
      'Enter your farm Location',
      name: 'yourFarmLocation',
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

  /// `Select your animal type`
  String get selectAnimal {
    return Intl.message(
      'Select your animal type',
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

  /// `Animal Height:`
  String get height {
    return Intl.message(
      'Animal Height:',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal height`
  String get yourAnHeight {
    return Intl.message(
      'Enter your animal height',
      name: 'yourAnHeight',
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

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
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

  /// `Live Chat`
  String get live {
    return Intl.message(
      'Live Chat',
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

  /// `Parrot`
  String get parrot {
    return Intl.message(
      'Parrot',
      name: 'parrot',
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

  /// `Golden Retriever`
  String get golden {
    return Intl.message(
      'Golden Retriever',
      name: 'golden',
      desc: '',
      args: [],
    );
  }

  /// `Labrador Retriever`
  String get labrador {
    return Intl.message(
      'Labrador Retriever',
      name: 'labrador',
      desc: '',
      args: [],
    );
  }

  /// `Poodle`
  String get poodle {
    return Intl.message(
      'Poodle',
      name: 'poodle',
      desc: '',
      args: [],
    );
  }

  /// `Persian`
  String get persian {
    return Intl.message(
      'Persian',
      name: 'persian',
      desc: '',
      args: [],
    );
  }

  /// `Siamese`
  String get siamese {
    return Intl.message(
      'Siamese',
      name: 'siamese',
      desc: '',
      args: [],
    );
  }

  /// `Macaw`
  String get macaw {
    return Intl.message(
      'Macaw',
      name: 'macaw',
      desc: '',
      args: [],
    );
  }

  /// `Cockatiel`
  String get cockatiel {
    return Intl.message(
      'Cockatiel',
      name: 'cockatiel',
      desc: '',
      args: [],
    );
  }

  /// `Arabian`
  String get arabian {
    return Intl.message(
      'Arabian',
      name: 'arabian',
      desc: '',
      args: [],
    );
  }

  /// `Merino`
  String get merino {
    return Intl.message(
      'Merino',
      name: 'merino',
      desc: '',
      args: [],
    );
  }

  /// `Dorper`
  String get dorper {
    return Intl.message(
      'Dorper',
      name: 'dorper',
      desc: '',
      args: [],
    );
  }

  /// `Throughbred`
  String get throughbred {
    return Intl.message(
      'Throughbred',
      name: 'throughbred',
      desc: '',
      args: [],
    );
  }

  /// `Chichen`
  String get chicken {
    return Intl.message(
      'Chichen',
      name: 'chicken',
      desc: '',
      args: [],
    );
  }

  /// `Pigeon`
  String get pigeon {
    return Intl.message(
      'Pigeon',
      name: 'pigeon',
      desc: '',
      args: [],
    );
  }

  /// `Duck`
  String get duck {
    return Intl.message(
      'Duck',
      name: 'duck',
      desc: '',
      args: [],
    );
  }

  /// `Geese`
  String get geese {
    return Intl.message(
      'Geese',
      name: 'geese',
      desc: '',
      args: [],
    );
  }

  /// `Turkey`
  String get turkey {
    return Intl.message(
      'Turkey',
      name: 'turkey',
      desc: '',
      args: [],
    );
  }

  /// `Lovebird`
  String get lovebird {
    return Intl.message(
      'Lovebird',
      name: 'lovebird',
      desc: '',
      args: [],
    );
  }

  /// `Roborovski Hamster`
  String get roborovski {
    return Intl.message(
      'Roborovski Hamster',
      name: 'roborovski',
      desc: '',
      args: [],
    );
  }

  /// `Winter White Russian Hamster`
  String get winterWhite {
    return Intl.message(
      'Winter White Russian Hamster',
      name: 'winterWhite',
      desc: '',
      args: [],
    );
  }

  /// `Dwarf Campbell Russian Hamster`
  String get dwarfCampbell {
    return Intl.message(
      'Dwarf Campbell Russian Hamster',
      name: 'dwarfCampbell',
      desc: '',
      args: [],
    );
  }

  /// `Syrian Hamster`
  String get syrian {
    return Intl.message(
      'Syrian Hamster',
      name: 'syrian',
      desc: '',
      args: [],
    );
  }

  /// `Husky`
  String get husky {
    return Intl.message(
      'Husky',
      name: 'husky',
      desc: '',
      args: [],
    );
  }

  /// `Angus`
  String get angus {
    return Intl.message(
      'Angus',
      name: 'angus',
      desc: '',
      args: [],
    );
  }

  /// `Clydesdale`
  String get clydesdale {
    return Intl.message(
      'Clydesdale',
      name: 'clydesdale',
      desc: '',
      args: [],
    );
  }

  /// `Friesian`
  String get friesian {
    return Intl.message(
      'Friesian',
      name: 'friesian',
      desc: '',
      args: [],
    );
  }

  /// `Appaloosa`
  String get appaloosa {
    return Intl.message(
      'Appaloosa',
      name: 'appaloosa',
      desc: '',
      args: [],
    );
  }

  /// `Quarter Horse`
  String get quarter {
    return Intl.message(
      'Quarter Horse',
      name: 'quarter',
      desc: '',
      args: [],
    );
  }

  /// `Rambouillet Sheep`
  String get rambouillet {
    return Intl.message(
      'Rambouillet Sheep',
      name: 'rambouillet',
      desc: '',
      args: [],
    );
  }

  /// `Texel Sheep`
  String get texel {
    return Intl.message(
      'Texel Sheep',
      name: 'texel',
      desc: '',
      args: [],
    );
  }

  /// `Hampshire Sheep`
  String get hampshire {
    return Intl.message(
      'Hampshire Sheep',
      name: 'hampshire',
      desc: '',
      args: [],
    );
  }

  /// `Dorset Sheep`
  String get dorset {
    return Intl.message(
      'Dorset Sheep',
      name: 'dorset',
      desc: '',
      args: [],
    );
  }

  /// `Suffolk Sheep`
  String get suffolk {
    return Intl.message(
      'Suffolk Sheep',
      name: 'suffolk',
      desc: '',
      args: [],
    );
  }

  /// `Boxer`
  String get boxer {
    return Intl.message(
      'Boxer',
      name: 'boxer',
      desc: '',
      args: [],
    );
  }

  /// `German Shepherd`
  String get germanShepherd {
    return Intl.message(
      'German Shepherd',
      name: 'germanShepherd',
      desc: '',
      args: [],
    );
  }

  /// `Beagle`
  String get beagle {
    return Intl.message(
      'Beagle',
      name: 'beagle',
      desc: '',
      args: [],
    );
  }

  /// `Dachshund`
  String get dachshund {
    return Intl.message(
      'Dachshund',
      name: 'dachshund',
      desc: '',
      args: [],
    );
  }

  /// `Panda Hamster`
  String get panda {
    return Intl.message(
      'Panda Hamster',
      name: 'panda',
      desc: '',
      args: [],
    );
  }

  /// `Golden Hamster`
  String get goldenHamster {
    return Intl.message(
      'Golden Hamster',
      name: 'goldenHamster',
      desc: '',
      args: [],
    );
  }

  /// `Teddy Bear Hamster`
  String get teddyBear {
    return Intl.message(
      'Teddy Bear Hamster',
      name: 'teddyBear',
      desc: '',
      args: [],
    );
  }

  /// `Chinese Hamster`
  String get chinese {
    return Intl.message(
      'Chinese Hamster',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `Domestic Canary`
  String get canary {
    return Intl.message(
      'Domestic Canary',
      name: 'canary',
      desc: '',
      args: [],
    );
  }

  /// `Charolais`
  String get charolais {
    return Intl.message(
      'Charolais',
      name: 'charolais',
      desc: '',
      args: [],
    );
  }

  /// `Hereford`
  String get hereford {
    return Intl.message(
      'Hereford',
      name: 'hereford',
      desc: '',
      args: [],
    );
  }

  /// `Brown Swiss`
  String get brownSwiss {
    return Intl.message(
      'Brown Swiss',
      name: 'brownSwiss',
      desc: '',
      args: [],
    );
  }

  /// `Ayrshire`
  String get ayrshire {
    return Intl.message(
      'Ayrshire',
      name: 'ayrshire',
      desc: '',
      args: [],
    );
  }

  /// `Guernsey`
  String get guernsey {
    return Intl.message(
      'Guernsey',
      name: 'guernsey',
      desc: '',
      args: [],
    );
  }

  /// `Jersey`
  String get jersey {
    return Intl.message(
      'Jersey',
      name: 'jersey',
      desc: '',
      args: [],
    );
  }

  /// `Netherland Dwarf`
  String get netherlandDwarf {
    return Intl.message(
      'Netherland Dwarf',
      name: 'netherlandDwarf',
      desc: '',
      args: [],
    );
  }

  /// `British Shorthair`
  String get britishShorthair {
    return Intl.message(
      'British Shorthair',
      name: 'britishShorthair',
      desc: '',
      args: [],
    );
  }

  /// `Sphynx`
  String get sphynx {
    return Intl.message(
      'Sphynx',
      name: 'sphynx',
      desc: '',
      args: [],
    );
  }

  /// `Scottish Fold`
  String get scottishFold {
    return Intl.message(
      'Scottish Fold',
      name: 'scottishFold',
      desc: '',
      args: [],
    );
  }

  /// `Ragdoll`
  String get ragdoll {
    return Intl.message(
      'Ragdoll',
      name: 'ragdoll',
      desc: '',
      args: [],
    );
  }

  /// `Bengal`
  String get bengal {
    return Intl.message(
      'Bengal',
      name: 'bengal',
      desc: '',
      args: [],
    );
  }

  /// `Maine Coon`
  String get maineCoon {
    return Intl.message(
      'Maine Coon',
      name: 'maineCoon',
      desc: '',
      args: [],
    );
  }

  /// `Flemish Giant`
  String get flemishGiant {
    return Intl.message(
      'Flemish Giant',
      name: 'flemishGiant',
      desc: '',
      args: [],
    );
  }

  /// `Lionhead`
  String get lionhead {
    return Intl.message(
      'Lionhead',
      name: 'lionhead',
      desc: '',
      args: [],
    );
  }

  /// `Holland Lop`
  String get hollandLop {
    return Intl.message(
      'Holland Lop',
      name: 'hollandLop',
      desc: '',
      args: [],
    );
  }

  /// `Mini Rex`
  String get miniRex {
    return Intl.message(
      'Mini Rex',
      name: 'miniRex',
      desc: '',
      args: [],
    );
  }

  /// `Angora Rabbit`
  String get angora {
    return Intl.message(
      'Angora Rabbit',
      name: 'angora',
      desc: '',
      args: [],
    );
  }

  /// `American Fuzzy Lop`
  String get americanFuzzyLop {
    return Intl.message(
      'American Fuzzy Lop',
      name: 'americanFuzzyLop',
      desc: '',
      args: [],
    );
  }

  /// `Andalusian`
  String get andalusian {
    return Intl.message(
      'Andalusian',
      name: 'andalusian',
      desc: '',
      args: [],
    );
  }

  /// `Mustang`
  String get mustang {
    return Intl.message(
      'Mustang',
      name: 'mustang',
      desc: '',
      args: [],
    );
  }

  /// `Holstein Friesian`
  String get holsteinFriesian {
    return Intl.message(
      'Holstein Friesian',
      name: 'holsteinFriesian',
      desc: '',
      args: [],
    );
  }

  /// `Budgie`
  String get budgie {
    return Intl.message(
      'Budgie',
      name: 'budgie',
      desc: '',
      args: [],
    );
  }

  /// `Eclectus Parrot`
  String get eclectus {
    return Intl.message(
      'Eclectus Parrot',
      name: 'eclectus',
      desc: '',
      args: [],
    );
  }

  /// `African Grey`
  String get africanGrey {
    return Intl.message(
      'African Grey',
      name: 'africanGrey',
      desc: '',
      args: [],
    );
  }

  /// `Amazon Parrot`
  String get amazonParrot {
    return Intl.message(
      'Amazon Parrot',
      name: 'amazonParrot',
      desc: '',
      args: [],
    );
  }

  /// `Quaker Parrot`
  String get quakerParrot {
    return Intl.message(
      'Quaker Parrot',
      name: 'quakerParrot',
      desc: '',
      args: [],
    );
  }

  /// `Bulldog`
  String get bulldog {
    return Intl.message(
      'Bulldog',
      name: 'bulldog',
      desc: '',
      args: [],
    );
  }

  /// `Animals Form`
  String get animalForm {
    return Intl.message(
      'Animals Form',
      name: 'animalForm',
      desc: '',
      args: [],
    );
  }

  /// `Animal name:`
  String get animalName {
    return Intl.message(
      'Animal name:',
      name: 'animalName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal name`
  String get yourAnName {
    return Intl.message(
      'Enter your animal name',
      name: 'yourAnName',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth:`
  String get dateOfBirth {
    return Intl.message(
      'Date of Birth:',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Animal gender`
  String get animalGender {
    return Intl.message(
      'Animal gender',
      name: 'animalGender',
      desc: '',
      args: [],
    );
  }

  /// `Gender:`
  String get gender {
    return Intl.message(
      'Gender:',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Bunny`
  String get bunny {
    return Intl.message(
      'Bunny',
      name: 'bunny',
      desc: '',
      args: [],
    );
  }

  /// `Rabbit`
  String get rabbit {
    return Intl.message(
      'Rabbit',
      name: 'rabbit',
      desc: '',
      args: [],
    );
  }

  /// `Species:`
  String get species {
    return Intl.message(
      'Species:',
      name: 'species',
      desc: '',
      args: [],
    );
  }

  /// `Select your animal species`
  String get selectSpecies {
    return Intl.message(
      'Select your animal species',
      name: 'selectSpecies',
      desc: '',
      args: [],
    );
  }

  /// `Service:`
  String get service {
    return Intl.message(
      'Service:',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Select your animal service`
  String get selectService {
    return Intl.message(
      'Select your animal service',
      name: 'selectService',
      desc: '',
      args: [],
    );
  }

  /// `Boarding for animal`
  String get boarding {
    return Intl.message(
      'Boarding for animal',
      name: 'boarding',
      desc: '',
      args: [],
    );
  }

  /// `Animal vaccination`
  String get animalVaccination {
    return Intl.message(
      'Animal vaccination',
      name: 'animalVaccination',
      desc: '',
      args: [],
    );
  }

  /// `Surgery`
  String get surgery {
    return Intl.message(
      'Surgery',
      name: 'surgery',
      desc: '',
      args: [],
    );
  }

  /// `Animal detection`
  String get detection {
    return Intl.message(
      'Animal detection',
      name: 'detection',
      desc: '',
      args: [],
    );
  }

  /// `Type of Farm:`
  String get typeFarm {
    return Intl.message(
      'Type of Farm:',
      name: 'typeFarm',
      desc: '',
      args: [],
    );
  }

  /// `Open system`
  String get open {
    return Intl.message(
      'Open system',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Closed system`
  String get closed {
    return Intl.message(
      'Closed system',
      name: 'closed',
      desc: '',
      args: [],
    );
  }

  /// `Farm Rearing System:`
  String get farmRSystem {
    return Intl.message(
      'Farm Rearing System:',
      name: 'farmRSystem',
      desc: '',
      args: [],
    );
  }

  /// `Select your farm rearing system`
  String get selectFRS {
    return Intl.message(
      'Select your farm rearing system',
      name: 'selectFRS',
      desc: '',
      args: [],
    );
  }

  /// `Broiler`
  String get broiler {
    return Intl.message(
      'Broiler',
      name: 'broiler',
      desc: '',
      args: [],
    );
  }

  /// `Tayer`
  String get tayer {
    return Intl.message(
      'Tayer',
      name: 'tayer',
      desc: '',
      args: [],
    );
  }

  /// `Breeder`
  String get breeder {
    return Intl.message(
      'Breeder',
      name: 'breeder',
      desc: '',
      args: [],
    );
  }

  /// `Cages`
  String get cages {
    return Intl.message(
      'Cages',
      name: 'cages',
      desc: '',
      args: [],
    );
  }

  /// `Deep litter system`
  String get deepLS {
    return Intl.message(
      'Deep litter system',
      name: 'deepLS',
      desc: '',
      args: [],
    );
  }

  /// `Farm capacity:`
  String get capacity {
    return Intl.message(
      'Farm capacity:',
      name: 'capacity',
      desc: '',
      args: [],
    );
  }

  /// `Enter your farm capacity`
  String get yourCapacity {
    return Intl.message(
      'Enter your farm capacity',
      name: 'yourCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Clinical signs:`
  String get clinical {
    return Intl.message(
      'Clinical signs:',
      name: 'clinical',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal symptoms`
  String get yourAnClinical {
    return Intl.message(
      'Enter your animal symptoms',
      name: 'yourAnClinical',
      desc: '',
      args: [],
    );
  }

  /// `Mortality rate:`
  String get mortality {
    return Intl.message(
      'Mortality rate:',
      name: 'mortality',
      desc: '',
      args: [],
    );
  }

  /// `Mobidity rate:`
  String get mobidity {
    return Intl.message(
      'Mobidity rate:',
      name: 'mobidity',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal mortality rate`
  String get yourAnMortality {
    return Intl.message(
      'Enter your animal mortality rate',
      name: 'yourAnMortality',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal mobidity rate`
  String get yourAnMobidity {
    return Intl.message(
      'Enter your animal mobidity rate',
      name: 'yourAnMobidity',
      desc: '',
      args: [],
    );
  }

  /// `Feed coonsumption:`
  String get feed {
    return Intl.message(
      'Feed coonsumption:',
      name: 'feed',
      desc: '',
      args: [],
    );
  }

  /// `Water consumption:`
  String get water {
    return Intl.message(
      'Water consumption:',
      name: 'water',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal feed consumption`
  String get yourAnFeed {
    return Intl.message(
      'Enter your animal feed consumption',
      name: 'yourAnFeed',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal water consumption`
  String get yourAnWater {
    return Intl.message(
      'Enter your animal water consumption',
      name: 'yourAnWater',
      desc: '',
      args: [],
    );
  }

  /// `Previous Medication:`
  String get medication {
    return Intl.message(
      'Previous Medication:',
      name: 'medication',
      desc: '',
      args: [],
    );
  }

  /// `Previous Vaccination:`
  String get vaccination {
    return Intl.message(
      'Previous Vaccination:',
      name: 'vaccination',
      desc: '',
      args: [],
    );
  }

  /// `Enter your previous medication`
  String get yourMediction {
    return Intl.message(
      'Enter your previous medication',
      name: 'yourMediction',
      desc: '',
      args: [],
    );
  }

  /// `Type of ration:`
  String get ration {
    return Intl.message(
      'Type of ration:',
      name: 'ration',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal ration`
  String get yourAnRation {
    return Intl.message(
      'Enter your animal ration',
      name: 'yourAnRation',
      desc: '',
      args: [],
    );
  }

  /// `Picture:`
  String get picture {
    return Intl.message(
      'Picture:',
      name: 'picture',
      desc: '',
      args: [],
    );
  }

  /// `Postmortem lesiom`
  String get post {
    return Intl.message(
      'Postmortem lesiom',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `Temperature/humidity`
  String get temp {
    return Intl.message(
      'Temperature/humidity',
      name: 'temp',
      desc: '',
      args: [],
    );
  }

  /// `Enter your animal temperature`
  String get yourTemp {
    return Intl.message(
      'Enter your animal temperature',
      name: 'yourTemp',
      desc: '',
      args: [],
    );
  }

  /// `Lightening system`
  String get light {
    return Intl.message(
      'Lightening system',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `enter your farm lightening system`
  String get yourLight {
    return Intl.message(
      'enter your farm lightening system',
      name: 'yourLight',
      desc: '',
      args: [],
    );
  }

  /// `Air flow:`
  String get airFlow {
    return Intl.message(
      'Air flow:',
      name: 'airFlow',
      desc: '',
      args: [],
    );
  }

  /// `Enter your farm air flow`
  String get yourAir {
    return Intl.message(
      'Enter your farm air flow',
      name: 'yourAir',
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

  /// `Confirm New Password must not be empty`
  String get pleaseConfirmPssword {
    return Intl.message(
      'Confirm New Password must not be empty',
      name: 'pleaseConfirmPssword',
      desc: '',
      args: [],
    );
  }

  /// `New Password must not be empty`
  String get pleaseNewPssword {
    return Intl.message(
      'New Password must not be empty',
      name: 'pleaseNewPssword',
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

  /// `Owner’s name must not be empty`
  String get pleaseOwner {
    return Intl.message(
      'Owner’s name must not be empty',
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

  /// `Animal height must not be empty`
  String get pleaseAnHeight {
    return Intl.message(
      'Animal height must not be empty',
      name: 'pleaseAnHeight',
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

  /// `Age must not be empty`
  String get pleaseAge {
    return Intl.message(
      'Age must not be empty',
      name: 'pleaseAge',
      desc: '',
      args: [],
    );
  }

  /// `Farm Location must not be empty`
  String get pleaseFarmLocation {
    return Intl.message(
      'Farm Location must not be empty',
      name: 'pleaseFarmLocation',
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

  /// `Mobidity must not be empty`
  String get pleaseMobidity {
    return Intl.message(
      'Mobidity must not be empty',
      name: 'pleaseMobidity',
      desc: '',
      args: [],
    );
  }

  /// `Mortality must not be empty`
  String get pleaseMorality {
    return Intl.message(
      'Mortality must not be empty',
      name: 'pleaseMorality',
      desc: '',
      args: [],
    );
  }

  /// `Air flow must not be empty`
  String get pleaseAir {
    return Intl.message(
      'Air flow must not be empty',
      name: 'pleaseAir',
      desc: '',
      args: [],
    );
  }

  /// `Lightening system must not be empty`
  String get pleaseLight {
    return Intl.message(
      'Lightening system must not be empty',
      name: 'pleaseLight',
      desc: '',
      args: [],
    );
  }

  /// `Temperature must not be empty`
  String get pleaseTemp {
    return Intl.message(
      'Temperature must not be empty',
      name: 'pleaseTemp',
      desc: '',
      args: [],
    );
  }

  /// `Animal name must not be empty`
  String get pleaseAnName {
    return Intl.message(
      'Animal name must not be empty',
      name: 'pleaseAnName',
      desc: '',
      args: [],
    );
  }

  /// `Animal ration must not be empty`
  String get pleaseAnRation {
    return Intl.message(
      'Animal ration must not be empty',
      name: 'pleaseAnRation',
      desc: '',
      args: [],
    );
  }

  /// `Feed consumption must not be empty`
  String get pleaseFeed {
    return Intl.message(
      'Feed consumption must not be empty',
      name: 'pleaseFeed',
      desc: '',
      args: [],
    );
  }

  /// `Water consumption must not be empty`
  String get pleaseWater {
    return Intl.message(
      'Water consumption must not be empty',
      name: 'pleaseWater',
      desc: '',
      args: [],
    );
  }

  /// `Previous Medication must not be empty`
  String get pleaseMedication {
    return Intl.message(
      'Previous Medication must not be empty',
      name: 'pleaseMedication',
      desc: '',
      args: [],
    );
  }

  /// `Farm capacity must not be empty`
  String get pleaseFarmCapacity {
    return Intl.message(
      'Farm capacity must not be empty',
      name: 'pleaseFarmCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Animal symptoms must not be empty`
  String get pleaseAnSymptoms {
    return Intl.message(
      'Animal symptoms must not be empty',
      name: 'pleaseAnSymptoms',
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
