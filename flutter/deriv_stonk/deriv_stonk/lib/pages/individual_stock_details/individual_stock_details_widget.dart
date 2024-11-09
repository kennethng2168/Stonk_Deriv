import '/backend/api_requests/api_calls.dart';
import '/components/custom_drawer_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'individual_stock_details_model.dart';
export 'individual_stock_details_model.dart';
import 'dart:ui_web' as ui;
import 'dart:html' as html;
import 'package:flutter/services.dart';

class TSLADataSource {
/*************  ✨ Codeium Command ⭐  *************/
  /// Returns a string representing a Trading View data source for a given cryptocurrency in euros on Binance.
  ///
  /// The returned string is in the format 'BINANCE:<cryptoName>EUR' where <cryptoName> is the given
  /// [cryptoName].
  ///
  /// Example: 'BINANCE:BTCUSDT'
/******  f878990c-af78-4a92-8b77-5a3c38d78257  *******/ static String
      binanceSourceEuro(String cryptoName) {
    return 'BINANCE:${cryptoName}EUR';
  }

  static String cryptoNameAndSource(String name) {
    return '''
<!DOCTYPE html>
<html lang="en">
<head>
<title>Load file or HTML string example</title>
</head>
<body>
<div class="tradingview-widget-container">
<div id="tradingview_4418d">
</div>
<div class="tradingview-widget-copyright">
<a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank">
<span class="blue-text">Track all markets on TradingView
</span>
</a>
</div>
<script type="text/javascript" src="https://s3.tradingview.com/tv.js">
</script>
<script type="text/javascript">
new TradingView.widget({
  "width": "100%",
  "height": 500,
  "symbol": "NASDAQ:TSLA",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "dark",
  "style": "1",
  "locale": "en",
  "toolbar_bg": "#121536",
  "backgroundColor": "rgba(18, 21, 54, 1)",
  "enable_publishing": false,
  "save_image": false,
  "container_id": "tradingview_4418d"
  });
</script>
</div>
</body>
</html>''';
  }
}

class EmbeddedHtmlWidget extends StatelessWidget {
  final String htmlContent;

  EmbeddedHtmlWidget({required this.htmlContent}) {
    // Register a view type for the HTML content
    ui.platformViewRegistry.registerViewFactory(
      'html-view',
      (int viewId) => html.IFrameElement()
        ..width = '100%'
        ..height = '500'
        ..srcdoc = htmlContent
        ..style.border = 'none',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      child: HtmlElementView(viewType: 'html-view'),
    );
  }
}

class IndividualStockDetailsWidget extends StatefulWidget {
  const IndividualStockDetailsWidget({super.key});

  @override
  State<IndividualStockDetailsWidget> createState() =>
      _IndividualStockDetailsWidgetState();
}

class _IndividualStockDetailsWidgetState
    extends State<IndividualStockDetailsWidget> {
  late IndividualStockDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndividualStockDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.polygonNews = await TestAPICall.call();

      if ((_model.polygonNews?.succeeded ?? true)) {
        _model.newsTableData = getJsonField(
          (_model.polygonNews?.jsonBody ?? ''),
          r'''$["results"]''',
        );
        safeSetState(() {});
      } else {
        return;
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList5 = [
      const Color(0xFFE94649),
      const Color(0xFF6F28CB)
    ];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.customDrawerModel,
            updateCallback: () => safeSetState(() {}),
            child: const CustomDrawerWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1A1F24),
          automaticallyImplyLeading: false,
          title: Text(
            'Tesla',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      24.0, 30.0, 24.0, 30.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'TSLA',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        '10,000',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 28.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Long / Short Volume Analysis',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          EmbeddedHtmlWidget(
                              htmlContent: TSLADataSource.cryptoNameAndSource(
                                  "NASDAQ:TSLA")),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Market Insights',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 300.0,
                              constraints: const BoxConstraints(
                                minHeight: 300.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 800.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        FFAppConstants.borderRadius.toDouble(),
                                        0.0,
                                      )),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.all(valueOrDefault<double>(
                                        FFAppConstants.stockCardPadding
                                            .toDouble(),
                                        0.0,
                                      )),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Risk Factors',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 30.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final testData =
                                                      List.generate(
                                                              random_data
                                                                  .randomInteger(
                                                                      5, 5),
                                                              (index) =>
                                                                  random_data
                                                                      .randomName(
                                                                          true,
                                                                          true))
                                                          .toList()
                                                          .take(1)
                                                          .toList();

                                                  return FlutterFlowDataTable<
                                                      String>(
                                                    controller: _model
                                                        .paginatedDataTableController1,
                                                    data: testData,
                                                    columnsBuilder:
                                                        (onSortChanged) => [
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Text(
                                                            'Title',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Text(
                                                            'Risk Weightage',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                    dataRowBuilder: (testDataItem,
                                                            testDataIndex,
                                                            selected,
                                                            onSelectChanged) =>
                                                        DataRow(
                                                      color: WidgetStateProperty
                                                          .all(
                                                        testDataIndex % 2 == 0
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                      ),
                                                      cells: [
                                                        Text(
                                                          'Position Limit',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Text(
                                                          'BBC News',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ]
                                                          .map((c) =>
                                                              DataCell(c))
                                                          .toList(),
                                                    ),
                                                    paginated: true,
                                                    selectable: false,
                                                    hidePaginator: false,
                                                    showFirstLastButtons: false,
                                                    headingRowHeight: 56.0,
                                                    dataRowHeight: 48.0,
                                                    columnSpacing: 100.0,
                                                    headingRowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    addHorizontalDivider: true,
                                                    addTopAndBottomDivider:
                                                        false,
                                                    hideDefaultHorizontalDivider:
                                                        true,
                                                    horizontalDividerColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    horizontalDividerThickness:
                                                        1.0,
                                                    addVerticalDivider: false,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 280.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        FFAppConstants.borderRadius.toDouble(),
                                        0.0,
                                      )),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15.0, 15.0, 15.0, 15.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Risk Level',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: SizedBox(
                                                width: 370.0,
                                                height: 230.0,
                                                child: FlutterFlowPieChart(
                                                  data: FFPieChartData(
                                                    values: [
                                                      FFAppConstants
                                                          .pieChartConstant
                                                    ],
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    radius: [30.0],
                                                  ),
                                                  donutHoleRadius: 60.0,
                                                  donutHoleColor:
                                                      Colors.transparent,
                                                  sectionLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 280.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        FFAppConstants.borderRadius.toDouble(),
                                        0.0,
                                      )),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15.0, 15.0, 15.0, 15.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Volatity Index',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.0, 0.0),
                                              child: Text(
                                                '- 0.16 %',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 50.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 300.0,
                              constraints: const BoxConstraints(
                                minHeight: 300.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 980.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(
                                            valueOrDefault<double>(
                                          FFAppConstants.borderRadius
                                              .toDouble(),
                                          0.0,
                                        )),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            valueOrDefault<double>(
                                          FFAppConstants.stockCardPadding
                                              .toDouble(),
                                          0.0,
                                        )),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Recommendations',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0.0, 30.0, 0.0, 0.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final newData = (_model
                                                                .newsTableData
                                                                ?.toList() ??
                                                            [])
                                                        .take(3)
                                                        .toList();

                                                    return FlutterFlowDataTable<
                                                        dynamic>(
                                                      controller: _model
                                                          .paginatedDataTableController2,
                                                      data: newData,
                                                      columnsBuilder:
                                                          (onSortChanged) => [
                                                        DataColumn2(
                                                          label:
                                                              DefaultTextStyle
                                                                  .merge(
                                                            softWrap: true,
                                                            child: Text(
                                                              'Title',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        DataColumn2(
                                                          label:
                                                              DefaultTextStyle
                                                                  .merge(
                                                            softWrap: true,
                                                            child: Text(
                                                              'Source',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                      dataRowBuilder: (newDataItem,
                                                              newDataIndex,
                                                              selected,
                                                              onSelectChanged) =>
                                                          DataRow(
                                                        color:
                                                            WidgetStateProperty
                                                                .all(
                                                          newDataIndex % 2 == 0
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .secondaryBackground
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                        ),
                                                        cells: [
                                                          Text(
                                                            'How will the US Presendentatial Election Affects the market',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Text(
                                                            'BBC News',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ]
                                                            .map((c) =>
                                                                DataCell(c))
                                                            .toList(),
                                                      ),
                                                      paginated: true,
                                                      selectable: false,
                                                      hidePaginator: false,
                                                      showFirstLastButtons:
                                                          false,
                                                      headingRowHeight: 56.0,
                                                      dataRowHeight: 48.0,
                                                      columnSpacing: 20.0,
                                                      headingRowColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      addHorizontalDivider:
                                                          true,
                                                      addTopAndBottomDivider:
                                                          false,
                                                      hideDefaultHorizontalDivider:
                                                          true,
                                                      horizontalDividerColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      horizontalDividerThickness:
                                                          1.0,
                                                      addVerticalDivider: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 400.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        FFAppConstants.borderRadius.toDouble(),
                                        0.0,
                                      )),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15.0, 15.0, 15.0, 15.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Market Sentiment',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: SizedBox(
                                                width: 370.0,
                                                height: 230.0,
                                                child: FlutterFlowPieChart(
                                                  data: FFPieChartData(
                                                    values: [
                                                      FFAppConstants
                                                          .pieChartConstant
                                                    ],
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    radius: [30.0],
                                                  ),
                                                  donutHoleRadius: 50.0,
                                                  donutHoleColor:
                                                      Colors.transparent,
                                                  sectionLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 300.0,
                              constraints: const BoxConstraints(
                                minHeight: 300.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 320.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        FFAppConstants.borderRadius.toDouble(),
                                        0.0,
                                      )),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15.0, 15.0, 15.0, 15.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Technical Sentiment',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: SizedBox(
                                                width: 370.0,
                                                height: 230.0,
                                                child: FlutterFlowPieChart(
                                                  data: FFPieChartData(
                                                    values: [
                                                      FFAppConstants
                                                          .pieChartConstant
                                                    ],
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    radius: [30.0],
                                                  ),
                                                  donutHoleRadius: 50.0,
                                                  donutHoleColor:
                                                      Colors.transparent,
                                                  sectionLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 320.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        FFAppConstants.borderRadius.toDouble(),
                                        0.0,
                                      )),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15.0, 15.0, 15.0, 15.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Exposure',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: SizedBox(
                                                width: 370.0,
                                                height: 230.0,
                                                child: FlutterFlowPieChart(
                                                  data: FFPieChartData(
                                                    values: [
                                                      FFAppConstants
                                                          .pieChartConstant
                                                    ],
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    radius: [30.0],
                                                  ),
                                                  donutHoleRadius: 50.0,
                                                  donutHoleColor:
                                                      Colors.transparent,
                                                  sectionLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 320.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        FFAppConstants.borderRadius.toDouble(),
                                        0.0,
                                      )),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15.0, 15.0, 15.0, 15.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Long / Short Volume',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: SizedBox(
                                                width: 370.0,
                                                height: 171.0,
                                                child: FlutterFlowPieChart(
                                                  data: FFPieChartData(
                                                    values: FFAppConstants
                                                        .bullBearList,
                                                    colors:
                                                        chartPieChartColorsList5,
                                                    radius: [30.0],
                                                  ),
                                                  donutHoleRadius: 50.0,
                                                  donutHoleColor:
                                                      Colors.transparent,
                                                  sectionLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0.0, 30.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(0.0,
                                                              0.0, 12.0, 0.0),
                                                      child: Container(
                                                        width: 15.0,
                                                        height: 15.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0xFF6F28CB),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Bullish',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(0.0,
                                                              0.0, 12.0, 0.0),
                                                      child: Container(
                                                        width: 15.0,
                                                        height: 15.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0xFFE94649),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Bearish',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 320.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        FFAppConstants.borderRadius.toDouble(),
                                        0.0,
                                      )),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15.0, 15.0, 15.0, 15.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Projected P / L',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.0, 0.0),
                                              child: Text(
                                                '- 0.16 %',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 50.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 480.0,
                              constraints: const BoxConstraints(
                                minHeight: 300.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                2.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius: BorderRadius.circular(
                                              valueOrDefault<double>(
                                            FFAppConstants.borderRadius
                                                .toDouble(),
                                            0.0,
                                          )),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              valueOrDefault<double>(
                                            FFAppConstants.stockCardPadding
                                                .toDouble(),
                                            0.0,
                                          )),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'News',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final newTableData = (_model
                                                                  .newsTableData
                                                                  ?.toList() ??
                                                              [])
                                                          .take(3)
                                                          .toList();

                                                      return FlutterFlowDataTable<
                                                          dynamic>(
                                                        controller: _model
                                                            .paginatedDataTableController3,
                                                        data: newTableData,
                                                        columnsBuilder:
                                                            (onSortChanged) => [
                                                          DataColumn2(
                                                            label:
                                                                DefaultTextStyle
                                                                    .merge(
                                                              softWrap: true,
                                                              child: Text(
                                                                'Title',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          DataColumn2(
                                                            label:
                                                                DefaultTextStyle
                                                                    .merge(
                                                              softWrap: true,
                                                              child: Text(
                                                                'Source',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          DataColumn2(
                                                            label:
                                                                DefaultTextStyle
                                                                    .merge(
                                                              softWrap: true,
                                                              child: Text(
                                                                'Sentiment Resoning',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          DataColumn2(
                                                            label:
                                                                DefaultTextStyle
                                                                    .merge(
                                                              softWrap: true,
                                                              child: Text(
                                                                'Sentiment',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                        dataRowBuilder:
                                                            (newTableDataItem,
                                                                    newTableDataIndex,
                                                                    selected,
                                                                    onSelectChanged) =>
                                                                DataRow(
                                                          color:
                                                              WidgetStateProperty
                                                                  .all(
                                                            newTableDataIndex %
                                                                        2 ==
                                                                    0
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                          ),
                                                          cells: [
                                                            Text(
                                                              getJsonField(
                                                                newTableDataItem,
                                                                r'''$["title"]''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              getJsonField(
                                                                newTableDataItem,
                                                                r'''$.publisher.name''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      10.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  newTableDataItem,
                                                                  r'''$.insights[0].sentiment_reasoning''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              getJsonField(
                                                                newTableDataItem,
                                                                r'''$.insights[0].sentiment''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ]
                                                              .map((c) =>
                                                                  DataCell(c))
                                                              .toList(),
                                                        ),
                                                        paginated: true,
                                                        selectable: false,
                                                        hidePaginator: false,
                                                        showFirstLastButtons:
                                                            false,
                                                        headingRowHeight: 56.0,
                                                        dataRowHeight: 150.0,
                                                        columnSpacing: 30.0,
                                                        headingRowColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        addHorizontalDivider:
                                                            true,
                                                        addTopAndBottomDivider:
                                                            false,
                                                        hideDefaultHorizontalDivider:
                                                            true,
                                                        horizontalDividerColor:
                                                            Colors.white,
                                                        horizontalDividerThickness:
                                                            1.0,
                                                        addVerticalDivider:
                                                            false,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
