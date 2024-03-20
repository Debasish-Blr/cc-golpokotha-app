

import 'services/imp/category_service.dart';
import 'services/imp/content_service.dart';
import 'services/imp/creator_service.dart';
import 'services/imp/tag_service.dart';

class GalpokathaService{
  static final CategoryService catservfunc = CategoryService();
  static final ContentService cntservfunc = ContentService();
  static final CreatorService ctrsevrfunc = CreatorService();
  static final TagService tagsevrfunc = TagService();
}