import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit
class ScrollCubit extends Cubit<ScrollState> {
  final ScrollController scrollController;
  final BuildContext context;

  ScrollCubit(this.scrollController, this.context)
      : super(ScrollState.initial()) {
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final offset = scrollController.offset;
    final maxOffset = scrollController.position.maxScrollExtent;
    final screenHeight = MediaQuery.of(context).size.height;
    final toolbarHeight = kToolbarHeight;
    final collapsedHeight = 120.0;
    final expandedHeight = 340.0;

    // Calculate percentage
    final percentage =
        (offset / (maxOffset - screenHeight + toolbarHeight)).clamp(0.0, 1.0);

    emit(state.copyWith(
      scrollOffset: offset,
      percentage: percentage,
    ));
  }

  @override
  Future<void> close() {
    scrollController.removeListener(_onScroll);
    return super.close();
  }
}

// State
class ScrollState {
  final double scrollOffset;
  final double percentage;

  ScrollState({
    required this.scrollOffset,
    required this.percentage,
  });

  factory ScrollState.initial() {
    return ScrollState(scrollOffset: 0.0, percentage: 0.75);
  }

  ScrollState copyWith({
    double? scrollOffset,
    double? percentage,
  }) {
    return ScrollState(
      scrollOffset: scrollOffset ?? this.scrollOffset,
      percentage: percentage ?? this.percentage,
    );
  }
}
