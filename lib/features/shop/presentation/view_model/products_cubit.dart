import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/features/home/presentation/data/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'products_states.dart';

class ProductsDetailsCubit extends Cubit<ProductsDetailsState> {
  ProductsDetailsCubit(this.homeRepo) : super(ProductsDetailsInitial());

  final HomeRepo homeRepo;
  // ignore: type_annotate_public_apis
  Future<void> fetchCourseDetails(String courseId) async {
    emit(ProductsDetailsLoading());
    // const String specificCourseId = '123';
    final result = await homeRepo.fetchCourseDetails();
    result.fold((failure) {
      emit(ProductsDetailsFailure(failure.errMessage));
    }, (courseDetail) {
      emit(ProductsDetailsSuccess(courseDetail));
    });
  }
}
