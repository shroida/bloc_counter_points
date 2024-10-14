import 'package:blo/cubit/counter_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterPointsState>{
  CounterCubit(): super(CounterAPointsIncreasedState());
  int teamAPoints= 0;
  int teamBPoints= 0;

  void teamAPointsIncrement (int buttonNumber){
    teamAPoints+=buttonNumber; 
    emit(CounterAPointsIncreasedState());
  }
  void teamBPointsIncrement (int buttonNumber){
    teamBPoints+=buttonNumber;
    emit(CounterBPointsIncreasedState());
  }
}