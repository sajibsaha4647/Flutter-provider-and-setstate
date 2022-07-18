import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class Data extends ChangeNotifier{

  int incre = 0 ;

  void _increment (){
    incre ++ ;
  }

}