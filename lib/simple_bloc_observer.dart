import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SimpleBlocObserver implements BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
   debugPrint('change = $Change');
  }

  @override
  void onClose(BlocBase bloc) {
   
  }

  @override
  void onCreate(BlocBase bloc) {
    
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // 
  }

}

