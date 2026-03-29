part of 'home_page_cubit.dart';

sealed class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object> get props => [];
}

final class HomePageInitial extends HomePageState {
  

}
final class HomePageLoading extends HomePageState {}
final class HomePageSuccess extends HomePageState {
  final List<RecentData> recentData;
  final List<lastEvent> lastEventList;

  HomePageSuccess({required this.recentData, required this.lastEventList});
  @override
List<Object>get props =>[recentData,lastEventList];
}
final class HomePageFailure extends HomePageState {}
final class lastDetailsLoading extends HomePageState {}
final class lastDetailsSuccess extends HomePageState {
  final lastEventDetails lastdetails ;

  lastDetailsSuccess({required this.lastdetails});
}
final class lastDetailsFailure extends HomePageState {}
final class lastLoading extends HomePageState {}
final class lastSuccess extends HomePageState {}
final class lastFailure extends HomePageState {}
final class ticketFailure extends HomePageState {
    final String message ;

  ticketFailure({required this.message});

}
final class ticketSuccess extends HomePageState {
  final String message ;

  ticketSuccess({required this.message});
}
final class ticketLoading extends HomePageState {}





final class CommentsFailure extends HomePageState {
    final String message ;

  CommentsFailure({required this.message});

}
final class CommentsSuccess extends HomePageState {
  final List<Post>list ;

CommentsSuccess({required this.list});
}
final class CommentsLoading extends HomePageState {}


final class addCommentsLoading extends HomePageState {}
final class addCommentsSucces extends HomePageState {
  final String message ;

  addCommentsSucces({required this.message});
}
final class addCommentsFaiulure extends HomePageState {
    final String message ;

  addCommentsFaiulure({required this.message});

}


final class UpdateCommentsLoading extends HomePageState {}
final class UpdateCommentsSucces extends HomePageState {
  final String message ;

 UpdateCommentsSucces({required this.message});
}
final class UpdateCommentsFaiulure extends HomePageState {
    final String message ;

  UpdateCommentsFaiulure({required this.message});

}


final class DeleteCommentsLoading extends HomePageState {}
final class DeleteCommentsSucces extends HomePageState {
  final String message ;

  DeleteCommentsSucces({required this.message});
}
final class DeleteCommentsFaiulure extends HomePageState {
    final String message ;

  DeleteCommentsFaiulure({required this.message});

}




final class CommentsRecentFailure extends HomePageState {
    final String message ;

  CommentsRecentFailure({required this.message});

}
final class CommentsRecentSuccess extends HomePageState {
  final List<Post>list ;

CommentsRecentSuccess({required this.list});
}
final class CommentsRecentLoading extends HomePageState {}


final class addCommentsRecentLoading extends HomePageState {}
final class addCommentsRecentSucces extends HomePageState {
  final String message ;

  addCommentsRecentSucces({required this.message});
}
final class addCommentsRecentFaiulure extends HomePageState {
    final String message ;

  addCommentsRecentFaiulure({required this.message});

}


final class UpdateCommentsRecentLoading extends HomePageState {}
final class UpdateCommentsRecentSucces extends HomePageState {
  final String message ;

 UpdateCommentsRecentSucces({required this.message});
}
final class UpdateCommentsRecentFaiulure extends HomePageState {
    final String message ;

  UpdateCommentsRecentFaiulure({required this.message});

}


final class DeleteCommentsRecentLoading extends HomePageState {}
final class DeleteCommentsRecentSucces extends HomePageState {
  final String message ;

  DeleteCommentsRecentSucces({required this.message});
}
final class DeleteCommentsRecentFaiulure extends HomePageState {
    final String message ;

  DeleteCommentsRecentFaiulure({required this.message});

}