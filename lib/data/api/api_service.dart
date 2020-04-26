import 'package:chopper/chopper.dart';
import 'package:flutterchopperbloc/data/api/built_value_converter.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class ApiService extends ChopperService {
  @Get()
  Future<Response> getUser();

  @Get(path: '/{id}')
  Future<Response> getSingleUser(@Path('id') int id);

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [_$ApiService()],
      converter: BuiltValueConverter(),
      errorConverter: BuiltValueConverter(),
    );
    return _$ApiService(client);
  }
}
