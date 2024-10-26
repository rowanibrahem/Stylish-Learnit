
import 'package:dartz/dartz.dart';
import 'package:ecommerce_learn_it/core/errors/failures.dart';
import 'package:ecommerce_learn_it/core/models/products.dart';


abstract class HomeRepo{
  Future<Either<Failure,List<ProductsModel>>> fetchCourses();
  // ignore: type_annotate_public_apis
  Future<Either<Failure,List <ProductsModel>>> fetchCourseDetails();
}