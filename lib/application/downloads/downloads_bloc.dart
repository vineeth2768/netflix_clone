import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downlaods.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.intial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        downloadsFailureOrSuccessOption: none(),
      ));
      final Either<MainFailures, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownlaodsImage();

      log(downloadsOption.toString());
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccessOption: Some(
                left(failure),
              )),
          (success) => state.copyWith(
                isLoading: false,
                downloads: success,
                downloadsFailureOrSuccessOption: Some(
                  right(success),
                ),
              )));
    });
  }
}
