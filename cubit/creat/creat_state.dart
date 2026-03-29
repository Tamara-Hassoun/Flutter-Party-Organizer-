
sealed class createState {}

final class CreatInitial extends createState {}
final class CreateSucces extends createState {}
final class CreateLoading extends createState {}
final class CreateFalure extends createState {
  final String Message ;

  CreateFalure({required this.Message});
}