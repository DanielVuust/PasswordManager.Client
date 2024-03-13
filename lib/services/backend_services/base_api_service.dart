import 'package:logger/logger.dart';
import 'package:password_manager_client/services/backend_services/api_endpoints/api_endpoints.dart';

import '../http_executor/http_executor.dart';

abstract class BaseApiService{
  final Logger logger = Logger();
  final ApiEndpoints apiEndpoints = ApiEndpoints();
  final HttpExecutor httpExecutor = HttpExecutor();
}