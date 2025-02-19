part of 'setting_cubit.dart';

@immutable
sealed class SettingState {}

final class SettingInitial extends SettingState {
  
}
final class Settingthemedark extends SettingState {}
final class Settingthemelight extends SettingState {}

final class Settinglanguage extends SettingState {}
