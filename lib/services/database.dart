// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

import '../model/Cars.dart';
import '../model/MyUser.dart';
import '../model/UserTemplate.dart';

class DatabaseService {
  //Collection Reference

  final String? uid;
  DatabaseService({this.uid});

  final CollectionReference carCollection =
      FirebaseFirestore.instance.collection('cars');

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('user');

  final CollectionReference bookedCarsCollection =
      FirebaseFirestore.instance.collection('carBooking');

//to Store the registered user information so later it can be modified
  Future updateUserData(
      String userFullName, String userEmail, String userPassword) async {
    return await usersCollection.doc(uid).set({
      'userFullName': userFullName,
      'userEmail': userEmail,
      'userPassword': userPassword,
    });
  }

  Future carDetailsCollection(
    String hostId,
    String manufacturer,
    String model,
    int makeYear,
    int mileage,
    int gasConsumption,
    int rentPrice,
    String licenseNumber,
    String location,
    String city,
    String wheelDrive,
    String transmission,
    int seats,
    int hoursRented,
    int timesRented,
    String imageUrl,
  ) async {
    return await carCollection.doc().set({
      'carHostId': hostId,
      'carManufacturer': manufacturer,
      'carModel': model,
      'carMakeYear': makeYear,
      'carMileage': mileage,
      'carGasConsumption': gasConsumption,
      'carRentPrice': rentPrice,
      'carLicenseNumber': licenseNumber,
      'carLocation': location,
      'carCity': city,
      'carWheelDrive': wheelDrive,
      'carTransmission': transmission,
      'carSeats': seats,
      'carHoursRented': hoursRented,
      'carTimesRented': timesRented,
      'carImageUrl': imageUrl,
    });
  }

  Future updateBookedCarsCollection(
      String carId,
      String userId,
      String hostId,
      String bookingStartDate,
      String bookingEndDate,
      String bookingStatus) async {
    return await usersCollection.doc(uid).set({
      'carId': carId,
      'userId': userId,
      'hostId': hostId,
      'bookingStartDate': bookingStartDate,
      'bookingEndDate': bookingEndDate,
      'bookingStatus': bookingStatus,
    });
  }

  // car list
  List<Cars> _carListFromSnapshot(QuerySnapshot snapshot) {
    try {
      return snapshot.docs.map((d) {
        return Cars(
          carId: d.data().toString().contains('carId') ? d.get('carId') : '' "",
          carHostId: d.data().toString().contains('carHostId')
              ? d.get('carHostId')
              : '' "",
          carManufacturer: d.data().toString().contains('carManufacturer')
              ? d.get('carManufacturer')
              : '' "",
          carModel: d.data().toString().contains('carModel')
              ? d.get('carModel')
              : '' "",
          carMakeYear: d.data().toString().contains('carMakeYear')
              ? d.get('carMakeYear')
              : 0,
          carMileage: d.data().toString().contains('carMileage')
              ? d.get('carMileage')
              : 0,
          carGasConsumption: d.data().toString().contains('carGasConsumption')
              ? d.get('carGasConsumption')
              : 0,
          carRentPrice: d.data().toString().contains('carRentPrice')
              ? d.get('carRentPrice')
              : 0,
          carLicenseNumber: d.data().toString().contains('carLicenseNumber')
              ? d.get('carLicenseNumber')
              : '' "",
          carLocation: d.data().toString().contains('carLocation')
              ? d.get('carLocation')
              : '' "",
          carCity: d.data().toString().contains('carCity')
              ? d.get('carCity')
              : '' "",
          carWheelDrive: d.data().toString().contains('carWheelDrive')
              ? d.get('carWheelDrive')
              : '' "",
          carTransmission: d.data().toString().contains('carTransmission')
              ? d.get('carTransmission')
              : '' "",
          carSeats:
              d.data().toString().contains('carSeats') ? d.get('carSeats') : 0,
          carHoursRented: d.data().toString().contains('carHoursRented')
              ? d.get('carHoursRented')
              : 0,
          carTimesRented: d.data().toString().contains('carTimesRented')
              ? d.get('carTimesRented')
              : 0,
          carImageUrl: d.data().toString().contains('carImageUrl')
              ? d.get('carImageUrl')
              : '' "",
        );
      }).toList();
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return [];
    }
  }

  Stream<List<Cars>> get cars {
    return carCollection.snapshots().map(_carListFromSnapshot);
  }

  // Stream<List<UserTemplate>> get users {
  //   return usersCollection.snapshots().map(_usersListFromSnapshot);
  // }

  getCurrentUser(String hostId) {
    String userFullName;
    usersCollection.doc(hostId).get().then(
      (value) {
        userFullName = value.get('userFullName');
      },
    );
    print(userFullName);
  }

  //   var snapshot = usersCollection.snapshots();
  //   try {
  //     return snapshot.docs.map((d) {
  //       if ((d.data().toString().contains('userId')
  //               ? d.get('userId')
  //               : '' "") ==
  //           hostId)
  //             return UserTemplate(
  //             userId: d.data().toString().contains('userId') ? d.get('userId') : '' "",
  //             userFullName: d.data().toString().contains('userFullName'),
  //             );

  //   }) catch (e) {
  //     print(e.toString());
  //     return UserTemplate(userId: 'null', userFullName: 'null');
  //   }
  // }

  // String getUsersss(String hostId, String userFullName) {
  //   UserTemplate userTemplate =
  //       UserTemplate(userId: hostId, userFullName: userFullName);
  //   FirebaseFirestore.instance
  //       .collectionGroup("user")
  //       .where("userId", isEqualTo: hostId);
  //   // .get(userFullName);
  //   return userFullName;
  // }
}
