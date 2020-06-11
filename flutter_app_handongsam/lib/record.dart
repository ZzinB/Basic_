
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

File image;
File profile;
String userUID;
FirebaseUser user;
String userEmail;
String name;
int total_day;


class Record {

//final String currentTime;
  final bool withwater; //유산균
  int stress; //스트레스
  bool bowelMovement; //배변활동
  int sleephours;
  bool drink; //음주
  int bowelType; // 배변상태(1-7)
  int feeling; //배변감
  int day; //일차 1일차, 2일차.. 등등
  String breakfast; //아침
  String lunch; //점심
  String dinner; //저녁
  final String currentTime;
  final String name;
  final String gender;
  final int height;
  final int weight;
  final int total_day;

  String documentID;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, String docID, {this.reference})
      : assert(map['withwater'] != null),
        withwater = map['withwater'],
        stress = map['stress'],
        day = map['day'],
        breakfast = map['breakfast'],
        lunch = map['lunch'],
        dinner = map['dinner'],
        sleephours = map['sleephours'],
        bowelMovement = map['bowelMovement'],
        drink = map['drink'],
        bowelType = map['bowelType'],
        feeling = map['feeling'],
        currentTime = map['currentTime'],
        documentID = docID,
        name = map['name'],
        gender = map['gender'],
        weight = map['weight'],
        total_day = map['total_day'],
        height = map['height'];


  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, snapshot.documentID,reference: snapshot.reference);

  @override
  String toString() => "Record<$withwater:$stress:$bowelMovement:$drink:$bowelType:$day:$dinner:$lunch:$breakfast:$feeling:$currentTime:$name:$height:$gender:$weight:$total_day>";
}




