import 'package:bloc/bloc.dart';
import 'package:commerce8/core/utils/shared_perfernces.dart';
import 'package:meta/meta.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingInitial());
  String theme2 = 'light';
  changetheme(String theme) {
    if (theme == 'dark') {
      emit(Settingthemedark());
      SharedPerfernces.setString("theme", 'dark');
      theme2 = 'dark';
    } else {
      emit(Settingthemelight());
      SharedPerfernces.setString("theme", 'light');
      theme2 = 'light';
    }
  }
}
