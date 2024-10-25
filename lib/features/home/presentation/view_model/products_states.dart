part of 'products_cubit.dart';


abstract class ProductsState extends Equatable{
  const ProductsState();
  @override
  List <Object> get props =>[];
}
class ProductsInitial extends ProductsState{}
class ProductsLoading extends ProductsState{}
class ProductsFailure extends ProductsState{

  const ProductsFailure(this.errMessage);
  final String errMessage;

}
class ProductsSuccess extends ProductsState{

  const ProductsSuccess(this.products);
  final List<ProductsModel> products;

}