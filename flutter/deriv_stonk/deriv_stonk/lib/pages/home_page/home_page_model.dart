import '/components/custom_drawer_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();
  // Model for CustomDrawer component.
  late CustomDrawerModel customDrawerModel;

  @override
  void initState(BuildContext context) {
    customDrawerModel = createModel(context, () => CustomDrawerModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    customDrawerModel.dispose();
  }
}
