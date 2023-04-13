prompt --application/create_application
begin
--   Manifest
--     FLOW: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>27994415979082868
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BAZYDANYCHPROJEKT'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_BAZYDANYCHPROJEKT')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Bus System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'BUS-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'D70F91B9D9FBAFB07F063C6FE92DA0A95B813B4B8CF3E1A0D158CA302BED5B29'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'pl'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2022.12.22.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(28737928415942582)
,p_application_tab_set=>1
,p_logo_type=>'I'
,p_logo=>'#APP_IMAGES#Bus.png'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(28888634610942662)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Bus System'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230126143223'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>9
,p_ui_type_name => null
,p_print_server_type=>'NATIVE'
);
wwv_flow_api.component_end;
end;
/
