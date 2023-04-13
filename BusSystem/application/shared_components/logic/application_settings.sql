prompt --application/shared_components/logic/application_settings
begin
--   Manifest
--     APPLICATION SETTINGS: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>27994415979082868
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BAZYDANYCHPROJEKT'
);
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(28889855147942663)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(28886843948942661)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
);
wwv_flow_api.component_end;
end;
/
