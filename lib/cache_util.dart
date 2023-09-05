import 'package:flutter_cache_manager/flutter_cache_manager.dart';

clearCache() async {
  await DefaultCacheManager().emptyCache();
}
