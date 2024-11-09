import '/backend/api_requests/api_calls.dart';
import '/components/custom_drawer_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'individual_stock_details_widget.dart' show IndividualStockDetailsWidget;
import 'package:flutter/material.dart';

class IndividualStockDetailsModel
    extends FlutterFlowModel<IndividualStockDetailsWidget> {
  ///  Local state fields for this page.

  dynamic newsTableData;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (TestAPI)] action in IndividualStockDetails widget.
  ApiCallResponse? polygonNews;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<String>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<dynamic>();
  // Model for CustomDrawer component.
  late CustomDrawerModel customDrawerModel;

  @override
  void initState(BuildContext context) {
    customDrawerModel = createModel(context, () => CustomDrawerModel());
  }

  @override
  void dispose() {
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    customDrawerModel.dispose();
  }
}
