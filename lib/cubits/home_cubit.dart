import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final BehaviorSubject<String> _text = BehaviorSubject();

  get textStream => _text.stream;

  void setText(newText) {
    _text.add(newText);
  }

  @override
  Future<void> close() {
    _text.close();
    return super.close();
  }
}
