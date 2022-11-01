class CustomError {
  final String errMsg;

  CustomError({
    required this.errMsg,
  });

  List<Object> get props => [errMsg];

  @override
  String toString() {
    return 'CustomError{errMsg: $errMsg}';
  }
}
