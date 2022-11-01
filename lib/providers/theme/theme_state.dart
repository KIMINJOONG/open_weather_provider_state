part of 'theme_provider.dart';

enum AppTheme {
  light,
  dark
}

class ThemeState {
  final AppTheme appTheme;

  ThemeState({
    this.appTheme = AppTheme.light,
});

  factory ThemeState.initial() {
    return ThemeState();
  }

  List<Object> get props => [appTheme];

  @override
  String toString() {
    return 'ThemeState{appTheme: $appTheme}';
  }

  ThemeState copyWith({
  AppTheme? appTheme,
}) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }


}
