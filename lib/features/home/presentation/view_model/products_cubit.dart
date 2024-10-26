
import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/features/home/presentation/data/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'products_states.dart';


class ProductsCubit extends Cubit<ProductsState>{
  ProductsCubit(this.homeRepo): super(ProductsInitial());

  final HomeRepo homeRepo;
  Future<void> fetchCourses() async {
    emit(ProductsLoading());
    final result = await homeRepo.fetchCourses();
    result.fold((failure) {
      emit(ProductsFailure(failure.errMessage));
    }, (books) {
      emit(ProductsSuccess(books));
    });
  }
}

