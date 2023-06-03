import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/features/home/presentation/view_models/home_cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() :super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int selectedIndex=0;
  List category=['All','Sofa','Park bench','armchair'];

  void changeSelectItem(int index){
    selectedIndex=index;
    emit(HomeSuccessState());
  }

}