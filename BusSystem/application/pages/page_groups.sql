prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>27994415979082868
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BAZYDANYCHPROJEKT'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(28890185086942663)
,p_group_name=>'Administration'
);
wwv_flow_api.component_end;
end;
/
