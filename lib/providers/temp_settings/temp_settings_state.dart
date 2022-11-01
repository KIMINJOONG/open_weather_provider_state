part of 'temp_settings_provider.dart';

enum TempUnit {
  celsius,
  fahrenheit,
}

class TempSettingsState extends Equatable {
  final TempUnit tempUnit;
  TempSettingsState({
    this.tempUnit = TempUnit.celsius,
  });

  factory TempSettingsState.initial() {
    return TempSettingsState();
  }

  List<Object> get props => [tempUnit];

  @override
  String toString() {
    return 'TempSettingsState{tempUnit: $tempUnit}';
  }

  TempSettingsState copyWith({
    TempUnit? tempUnit,
  }) {
    return TempSettingsState(tempUnit: tempUnit ?? this.tempUnit);
  }
}
