import 'package:freezed_annotation/freezed_annotation.dart';

import 'material_file_model.dart';

part 'materials_file.freezed.dart';

part 'materials_file.g.dart';

@freezed
abstract class MaterialsFile implements _$MaterialsFile {
  @late
  List<MaterialFileModel> get materials => talents + weapon + weaponPrimary + common + currency + elemental + jewels + locals;

  factory MaterialsFile({
    @required List<MaterialFileModel> talents,
    @required List<MaterialFileModel> weapon,
    @required List<MaterialFileModel> weaponPrimary,
    @required List<MaterialFileModel> common,
    @required List<MaterialFileModel> currency,
    @required List<MaterialFileModel> elemental,
    @required List<MaterialFileModel> jewels,
    @required List<MaterialFileModel> locals,
  }) = _MaterialsFile;

  MaterialsFile._();

  factory MaterialsFile.fromJson(Map<String, dynamic> json) => _$MaterialsFileFromJson(json);
}