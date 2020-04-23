import 'package:redux/redux.dart';
import 'package:local_champions/redux/actions/error_actions.dart';

final errorReducers = combineReducers<dynamic>([
  TypedReducer<dynamic, ErrorAction>(_handleError)
]);

dynamic _handleError(dynamic state, ErrorAction action) { 
  return state.copyWith(errorText: action.err);
}