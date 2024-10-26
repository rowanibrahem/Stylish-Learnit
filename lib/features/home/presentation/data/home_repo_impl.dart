
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_learn_it/core/errors/failures.dart';
import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/core/services/api_services.dart';
import 'package:ecommerce_learn_it/features/home/presentation/data/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<Failure, List<ProductsModel>>> fetchCourses() async {
    try {
      final dynamic data = await apiService.get(
        endPoint: 'v1/course',
      );
      
      if (data is List) {
        final List<ProductsModel> courses = [];
        for ( final dynamic item in data) {
          if (item is Map<String, dynamic>) { 
            courses.add(ProductsModel.fromJson(item));
            // CourseCache.cachedCourseData.addAll(courses);
          }
        }
        return right(courses);
      } else {
        return left(ServerFailure('Unexpected data format for courses'));
      }
    } catch (e) {
      print('error: $e');
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
   @override
  Future<Either<Failure, List<ProductsModel>>> fetchCourseDetails() async {
    try {
      final data = await apiService.get(
          endPoint:
          'v1/course',
          );
      if (data is List) {
        final List<ProductsModel> coursesdetails = [];
        for (final dynamic item in data) {
          if (item is Map<String, dynamic>) { // Check if item is of expected type
            coursesdetails.add(ProductsModel.fromJson(item));
             
          }
        }
        return right(coursesdetails);
      }
      else {
        return left(ServerFailure('Unexpected data format for courses'));
      }
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
