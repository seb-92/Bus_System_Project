prompt --application/shared_components/user_interface/lovs/email_username_format
begin
--   Manifest
--     EMAIL_USERNAME_FORMAT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>27994415979082868
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BAZYDANYCHPROJEKT'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(28919803278942688)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_api.id(28919803278942688)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(28920194278942688)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
wwv_flow_api.component_end;
end;
/
