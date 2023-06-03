import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/features/home/presentation/view_models/details_cubit/details_state.dart';

class DetailsCubit extends Cubit<DetailsStates>{
  DetailsCubit():super(DetailsInitialState());
 static DetailsCubit get(context)=>BlocProvider.of(context);

bool isSelected=false;
void changeSelectColor(){
  isSelected=!isSelected;
  emit(DetailsSuccessState());
}
}