

import '../../model/creator.dart';

abstract class CreatorServiceDAO{
  Future<List<Creator>> getAllCreators({String? status});
  Future<List<Creator>> getSearchCreator({required String searchText});
  Future<Creator> gerCreatorById({required String creatorId});
Future<List<Creator>> getAllCreatorsByType({String? creatorType});
}