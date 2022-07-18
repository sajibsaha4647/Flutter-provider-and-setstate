import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class NewData extends ChangeNotifier{

  int decre = 5 ;

  void _increments (){
    decre ++ ;
  }

}