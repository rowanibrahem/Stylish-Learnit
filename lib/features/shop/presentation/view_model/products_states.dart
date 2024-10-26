part of 'products_cubit.dart';

abstract class ProductsDetailsState extends Equatable {
  const ProductsDetailsState();
  @override
  List<Object> get props => [];
}

class ProductsDetailsInitial extends ProductsDetailsState {}

class ProductsDetailsLoading extends ProductsDetailsState {}

class ProductsDetailsFailure extends ProductsDetailsState {
  const ProductsDetailsFailure(this.errMessage);
  final String errMessage;
}

class ProductsDetailsSuccess extends ProductsDetailsState {
  const ProductsDetailsSuccess(this.books);
  final List<ProductsModel> books;
}
