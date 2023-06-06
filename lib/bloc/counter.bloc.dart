
//Events
import 'package:app1/ui/pages/counter.page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent{}


class IncrementCounterEvent extends CounterEvent{
}

class DecrementCounterEvent extends CounterEvent{

}

//States

abstract class CounterState{
  final int counter;

  CounterState({
    required this.counter
  });
}

class CounterSuccessState extends CounterState{

  CounterSuccessState({required int counter}) : super(counter: counter);

}

class CounterErrorState extends CounterState{
  final String errorMsg;
  CounterErrorState(
      {required this.errorMsg,required int counter}) : super(counter: counter);

}

class CounterInitialState extends CounterState{
  CounterInitialState() : super(counter: 0);

}

//creation du bloc
class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc() : super(CounterInitialState()){
    on((IncrementCounterEvent event, emit) {
      if (state.counter < 10) {
        int counterValue = state.counter + 1;
        emit(CounterSuccessState(counter: counterValue));
      }else{
        emit(CounterErrorState(
            counter: state.counter,
            errorMsg: "Counter Value can not excedd 10"
        ));
      }
    });
    on((DecrementCounterEvent event, emit) {
      if(state.counter >0){
        int countValue= state.counter-1;
        emit(CounterSuccessState(counter: countValue));
      }else{
        emit(CounterErrorState(
            errorMsg: "errror Value can not be less than 0",
            counter: state.counter)
        );
      }
    });
  }

}


