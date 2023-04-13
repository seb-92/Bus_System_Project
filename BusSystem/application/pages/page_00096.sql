prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>27994415979082868
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BAZYDANYCHPROJEKT'
);
wwv_flow_api.create_page(
 p_id=>96
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Edycja Autobusu'
,p_alias=>'EDYCJA-AUTOBUSU'
,p_step_title=>'Edycja Autobusu'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230124222021'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51813718966031872)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28793988802942613)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'AUTOBUS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(51814156996031872)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP:P97_NUMER_REJESTRACYJNY:\#NUMER_REJESTRACYJNY#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>51814156996031872
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51814208871031872)
,p_db_column_name=>'NUMER_REJESTRACYJNY'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Numer Rejestracyjny'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51814613837031873)
,p_db_column_name=>'ROK_PRODUKCJI'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Rok Produkcji'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51815097483031873)
,p_db_column_name=>'PRZEBIEG'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Przebieg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51815445907031873)
,p_db_column_name=>'MODEL_AUTOBUSU_PRODUCENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Model Autobusu Producent'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51815883358031873)
,p_db_column_name=>'MODEL_AUTOBUSU_MODEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Model Autobusu Model'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51816294311031873)
,p_db_column_name=>'ZAJEZDNIA_ADRES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Zajezdnia Adres'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51847193627277959)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'518472'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUMER_REJESTRACYJNY:ROK_PRODUKCJI:PRZEBIEG:MODEL_AUTOBUSU_PRODUCENT:MODEL_AUTOBUSU_MODEL:ZAJEZDNIA_ADRES'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51816794979031874)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51813718966031872)
,p_button_name=>'Edycja'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Wy\0142\0105cz edycje danych')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:97::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
