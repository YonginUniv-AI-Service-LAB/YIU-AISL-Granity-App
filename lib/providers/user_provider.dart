import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:granity/services/common_service.dart';

final commonService = Provider<CommonService>((ref) => CommonService());
final authCodeProvider =
    FutureProvider<int>((ref) => 
    ref.read(commonService).sendAuthCodeToEmail()
    );
