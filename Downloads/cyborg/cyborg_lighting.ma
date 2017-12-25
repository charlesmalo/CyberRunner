//Maya ASCII 2014 scene
//Name: cyborg_lighting.ma
//Last modified: Wed, Aug 10, 2016 11:32:18 PM
//Codeset: 1258
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftProxyMesh" -nodeType "RedshiftVisibility"
		 -nodeType "RedshiftMeshParameters" -nodeType "RedshiftAOV" -nodeType "RedshiftAmbientOcclusion"
		 -nodeType "RedshiftArchitectural" -nodeType "RedshiftCarPaint" -nodeType "RedshiftIncandescent"
		 -nodeType "RedshiftSubSurfaceScatter" -nodeType "RedshiftMaterialBlender" -nodeType "RedshiftPhotographicExposure"
		 -nodeType "RedshiftBokeh" -nodeType "RedshiftPhysicalSky" -nodeType "RedshiftPhysicalSun"
		 -nodeType "RedshiftPhysicalLight" -nodeType "RedshiftIESLight" -nodeType "RedshiftPortalLight"
		 -nodeType "RedshiftDomeLight" -nodeType "RedshiftEnvironment" -nodeType "RedshiftBumpMap"
		 -nodeType "RedshiftNormalMap" -nodeType "RedshiftBumpBlender" -nodeType "RedshiftRaySwitch"
		 -nodeType "RedshiftCameraMap" -nodeType "RedshiftMatteShadowCatcher" -nodeType "RedshiftSprite"
		 -nodeType "RedshiftDisplacement" -nodeType "RedshiftDisplacementBlender" -nodeType "RedshiftLightGobo"
		 "redshift4maya" "0.3.25 Beta";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 210.27687570891484 155.93162803209506 260.88603639864795 ;
	setAttr ".r" -type "double3" -6.9383527296163185 37.79999999999999 -5.031535951250912e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	addAttr -ci true -sn "rsCameraType" -ln "rsCameraType" -min 0 -max 4 -en "Standard:Fisheye=2:Spherical:Cylindrical" 
		-at "enum";
	addAttr -ci true -sn "rsFisheyeScaleX" -ln "rsFisheyeScaleX" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsFisheyeScaleY" -ln "rsFisheyeScaleY" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsCylindricalIsOrtho" -ln "rsCylindricalIsOrtho" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsCylindricalFovH" -ln "rsCylindricalFovH" -dv 360 -min 0 
		-max 360 -at "double";
	addAttr -ci true -sn "rsCylindricalFovV" -ln "rsCylindricalFovV" -dv 180 -min 0 
		-max 180 -at "double";
	addAttr -ci true -sn "rsCylindricalOrthoHeight" -ln "rsCylindricalOrthoHeight" -dv 
		100 -min 0 -max 3.4028234663852886e+038 -smn 1 -smx 500 -at "double";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsLensShader" -ln "rsLensShader" -at "message";
	addAttr -ci true -m -sn "rsLensShaderList" -ln "rsLensShaderList" -at "message";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 342.69950962962537;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 92.019360899925232 -2.6299848556518555 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	addAttr -ci true -sn "rsCameraType" -ln "rsCameraType" -min 0 -max 4 -en "Standard:Fisheye=2:Spherical:Cylindrical" 
		-at "enum";
	addAttr -ci true -sn "rsFisheyeScaleX" -ln "rsFisheyeScaleX" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsFisheyeScaleY" -ln "rsFisheyeScaleY" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsCylindricalIsOrtho" -ln "rsCylindricalIsOrtho" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsCylindricalFovH" -ln "rsCylindricalFovH" -dv 360 -min 0 
		-max 360 -at "double";
	addAttr -ci true -sn "rsCylindricalFovV" -ln "rsCylindricalFovV" -dv 180 -min 0 
		-max 180 -at "double";
	addAttr -ci true -sn "rsCylindricalOrthoHeight" -ln "rsCylindricalOrthoHeight" -dv 
		100 -min 0 -max 3.4028234663852886e+038 -smn 1 -smx 500 -at "double";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsLensShader" -ln "rsLensShader" -at "message";
	addAttr -ci true -m -sn "rsLensShaderList" -ln "rsLensShaderList" -at "message";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.756665470387546 125.24713295890058 1000.7154114139406 ;
createNode camera -s -n "frontShape" -p "front";
	addAttr -ci true -sn "rsCameraType" -ln "rsCameraType" -min 0 -max 4 -en "Standard:Fisheye=2:Spherical:Cylindrical" 
		-at "enum";
	addAttr -ci true -sn "rsFisheyeScaleX" -ln "rsFisheyeScaleX" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsFisheyeScaleY" -ln "rsFisheyeScaleY" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsCylindricalIsOrtho" -ln "rsCylindricalIsOrtho" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsCylindricalFovH" -ln "rsCylindricalFovH" -dv 360 -min 0 
		-max 360 -at "double";
	addAttr -ci true -sn "rsCylindricalFovV" -ln "rsCylindricalFovV" -dv 180 -min 0 
		-max 180 -at "double";
	addAttr -ci true -sn "rsCylindricalOrthoHeight" -ln "rsCylindricalOrthoHeight" -dv 
		100 -min 0 -max 3.4028234663852886e+038 -smn 1 -smx 500 -at "double";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsLensShader" -ln "rsLensShader" -at "message";
	addAttr -ci true -m -sn "rsLensShaderList" -ln "rsLensShaderList" -at "message";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 504.43341226373553;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	addAttr -ci true -sn "rsCameraType" -ln "rsCameraType" -min 0 -max 4 -en "Standard:Fisheye=2:Spherical:Cylindrical" 
		-at "enum";
	addAttr -ci true -sn "rsFisheyeScaleX" -ln "rsFisheyeScaleX" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsFisheyeScaleY" -ln "rsFisheyeScaleY" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsCylindricalIsOrtho" -ln "rsCylindricalIsOrtho" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsCylindricalFovH" -ln "rsCylindricalFovH" -dv 360 -min 0 
		-max 360 -at "double";
	addAttr -ci true -sn "rsCylindricalFovV" -ln "rsCylindricalFovV" -dv 180 -min 0 
		-max 180 -at "double";
	addAttr -ci true -sn "rsCylindricalOrthoHeight" -ln "rsCylindricalOrthoHeight" -dv 
		100 -min 0 -max 3.4028234663852886e+038 -smn 1 -smx 500 -at "double";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsLensShader" -ln "rsLensShader" -at "message";
	addAttr -ci true -m -sn "rsLensShaderList" -ln "rsLensShaderList" -at "message";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "lighting_setup";
createNode transform -n "lights_grp" -p "lighting_setup";
createNode transform -n "light_1" -p "lighting_setup";
	setAttr ".t" -type "double3" 720.65739768266531 1316.8239492039056 1167.6050577799397 ;
	setAttr ".r" -type "double3" -46.200000000001097 26.000000000000551 0 ;
	setAttr ".s" -type "double3" 765.43982404930239 765.43982404930239 765.43982404930239 ;
	setAttr ".rp" -type "double3" 4.2490445831228207e-014 -1.0622611457807052e-014 3.3992356664982565e-013 ;
	setAttr ".rpt" -type "double3" 1.0219880791609488e-013 2.4861355444979995e-013 -1.4019465054381144e-013 ;
	setAttr ".sp" -type "double3" 5.5511151231257827e-017 -1.3877787807814457e-017 4.4408920985006262e-016 ;
	setAttr ".spt" -type "double3" 4.2434934679996949e-014 -1.0608733669999236e-014 
		3.3947947743997559e-013 ;
createNode areaLight -n "light_Shape1" -p "light_1";
	addAttr -ci true -sn "rsEmitCausticPhotons" -ln "rsEmitCausticPhotons" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsEmitGIPhotons" -ln "rsEmitGIPhotons" -min 0 -max 1 -at "bool";
	addAttr -ci true -uac -sn "rsPhotonColor" -ln "rsPhotonColor" -at "float3" -nc 3;
	addAttr -ci true -sn "rsPhotonColorR" -ln "rsPhotonColorR" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorG" -ln "rsPhotonColorG" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorB" -ln "rsPhotonColorB" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonIntensity" -ln "rsPhotonIntensity" -dv 1 -min 0 -max 
		1.7976931348623157e+308 -at "double";
	addAttr -ci true -sn "rsCausticPhotons" -ln "rsCausticPhotons" -dv 10000 -min 0 
		-max 2147483647 -at "long";
	addAttr -ci true -sn "rsGIPhotons" -ln "rsGIPhotons" -dv 10000 -min 0 -max 2147483647 
		-at "long";
	addAttr -ci true -sn "rsLightShader" -ln "rsLightShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsAreaShape" -ln "rsAreaShape" -min 0 -max 3 -en "Rectangle:Disc:Sphere:Cylinder" 
		-at "enum";
	addAttr -ci true -sn "rsAreaVisible" -ln "rsAreaVisible" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rsAreaSamples" -ln "rsAreaSamples" -dv 16 -min 1 -max 2147483647 
		-smx 256 -at "long";
	setAttr -k off ".v";
	setAttr ".rdl" 1;
	setAttr ".col" 748.44759309582173;
	setAttr ".phi" 8000;
	setAttr ".algt" yes;
	setAttr ".atyp" 1;
	setAttr ".ahs" 16;
	setAttr ".als" 2;
createNode discLightLocator -n "_areaLight1_mrLoc" -p "light_1";
	setAttr -k off ".v";
createNode transform -n "light_2" -p "lighting_setup";
	setAttr ".t" -type "double3" 128.71015185831251 1465.2728310176467 -756.73847537580093 ;
	setAttr ".r" -type "double3" 106.20000000000174 10.00000000000203 180 ;
	setAttr ".s" -type "double3" 746.03178671883165 746.03178671883165 746.03178671883131 ;
	setAttr ".rp" -type "double3" -7.7649531254764802e-015 -4.1413083335874561e-014 
		0 ;
	setAttr ".rpt" -type "double3" 2.2317705343656695e-014 2.985920141150294e-014 -3.781617621837075e-014 ;
	setAttr ".sp" -type "double3" -1.0408340855860847e-017 -5.5511151231257839e-017 
		0 ;
	setAttr ".spt" -type "double3" -7.7545447846206193e-015 -4.1357572184643303e-014 
		0 ;
createNode areaLight -n "light_Shape2" -p "light_2";
	addAttr -ci true -sn "rsEmitCausticPhotons" -ln "rsEmitCausticPhotons" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsEmitGIPhotons" -ln "rsEmitGIPhotons" -min 0 -max 1 -at "bool";
	addAttr -ci true -uac -sn "rsPhotonColor" -ln "rsPhotonColor" -at "float3" -nc 3;
	addAttr -ci true -sn "rsPhotonColorR" -ln "rsPhotonColorR" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorG" -ln "rsPhotonColorG" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorB" -ln "rsPhotonColorB" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonIntensity" -ln "rsPhotonIntensity" -dv 1 -min 0 -max 
		1.7976931348623157e+308 -at "double";
	addAttr -ci true -sn "rsCausticPhotons" -ln "rsCausticPhotons" -dv 10000 -min 0 
		-max 2147483647 -at "long";
	addAttr -ci true -sn "rsGIPhotons" -ln "rsGIPhotons" -dv 10000 -min 0 -max 2147483647 
		-at "long";
	addAttr -ci true -sn "rsLightShader" -ln "rsLightShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsAreaShape" -ln "rsAreaShape" -min 0 -max 3 -en "Rectangle:Disc:Sphere:Cylinder" 
		-at "enum";
	addAttr -ci true -sn "rsAreaVisible" -ln "rsAreaVisible" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rsAreaSamples" -ln "rsAreaSamples" -dv 16 -min 1 -max 2147483647 
		-smx 256 -at "long";
	setAttr -k off ".v";
	setAttr ".rdl" 1;
	setAttr ".col" 803.79242672786336;
	setAttr ".phi" 8000;
	setAttr ".algt" yes;
	setAttr ".atyp" 1;
createNode discLightLocator -n "_renderSetup_areaLight2_mrLoc" -p "light_2";
	setAttr -k off ".v";
createNode transform -n "light_3" -p "lighting_setup";
	setAttr ".t" -type "double3" -1805.2455866344137 243.41350616714649 1885.626975168592 ;
	setAttr ".r" -type "double3" 6.6000000000002519 -46.000000000000227 5.7232353641725533e-016 ;
	setAttr ".s" -type "double3" 1246.2350570627889 662.71694614659964 662.71694614659975 ;
	setAttr ".rp" -type "double3" -7.2177929930871698e-014 0 0 ;
	setAttr ".rpt" -type "double3" 2.2038926741988889e-014 0 -5.192045770533059e-014 ;
	setAttr ".sp" -type "double3" -2.3592239273284581e-016 0 0 ;
	setAttr ".spt" -type "double3" -7.1942007538138865e-014 0 0 ;
createNode areaLight -n "light_Shape3" -p "light_3";
	addAttr -ci true -sn "rsEmitCausticPhotons" -ln "rsEmitCausticPhotons" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsEmitGIPhotons" -ln "rsEmitGIPhotons" -min 0 -max 1 -at "bool";
	addAttr -ci true -uac -sn "rsPhotonColor" -ln "rsPhotonColor" -at "float3" -nc 3;
	addAttr -ci true -sn "rsPhotonColorR" -ln "rsPhotonColorR" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorG" -ln "rsPhotonColorG" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonColorB" -ln "rsPhotonColorB" -dv 1 -at "float" -p "rsPhotonColor";
	addAttr -ci true -sn "rsPhotonIntensity" -ln "rsPhotonIntensity" -dv 1 -min 0 -max 
		1.7976931348623157e+308 -at "double";
	addAttr -ci true -sn "rsCausticPhotons" -ln "rsCausticPhotons" -dv 10000 -min 0 
		-max 2147483647 -at "long";
	addAttr -ci true -sn "rsGIPhotons" -ln "rsGIPhotons" -dv 10000 -min 0 -max 2147483647 
		-at "long";
	addAttr -ci true -sn "rsLightShader" -ln "rsLightShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsAreaShape" -ln "rsAreaShape" -min 0 -max 3 -en "Rectangle:Disc:Sphere:Cylinder" 
		-at "enum";
	addAttr -ci true -sn "rsAreaVisible" -ln "rsAreaVisible" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rsAreaSamples" -ln "rsAreaSamples" -dv 16 -min 1 -max 2147483647 
		-smx 256 -at "long";
	setAttr -k off ".v";
	setAttr ".rdl" 1;
	setAttr ".col" 363.16342552605227;
	setAttr ".phi" 8000;
createNode transform -n "groundPlane" -p "lighting_setup";
createNode transform -n "renderCam" -p "lighting_setup";
	setAttr ".t" -type "double3" -164.30872609202646 158.44049176112554 459.6685174402005 ;
	setAttr ".r" -type "double3" -7.7999999999999696 -19.599999999999987 4.2202238728289647e-016 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".sp" -type "double3" -3.907985046680551e-014 -2.8421709430404007e-014 0 ;
createNode camera -n "renderCamShape" -p "renderCam";
	addAttr -ci true -sn "rsCameraType" -ln "rsCameraType" -min 0 -max 4 -en "Standard:Fisheye=2:Spherical:Cylindrical" 
		-at "enum";
	addAttr -ci true -sn "rsFisheyeScaleX" -ln "rsFisheyeScaleX" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsFisheyeScaleY" -ln "rsFisheyeScaleY" -dv 1 -min 0 -max 3.4028234663852886e+038 
		-smn 0.1 -smx 10 -at "double";
	addAttr -ci true -sn "rsCylindricalIsOrtho" -ln "rsCylindricalIsOrtho" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "rsCylindricalFovH" -ln "rsCylindricalFovH" -dv 360 -min 0 
		-max 360 -at "double";
	addAttr -ci true -sn "rsCylindricalFovV" -ln "rsCylindricalFovV" -dv 180 -min 0 
		-max 180 -at "double";
	addAttr -ci true -sn "rsCylindricalOrthoHeight" -ln "rsCylindricalOrthoHeight" -dv 
		100 -min 0 -max 3.4028234663852886e+038 -smn 1 -smx 500 -at "double";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsLensShader" -ln "rsLensShader" -at "message";
	addAttr -ci true -m -sn "rsLensShaderList" -ln "rsLensShaderList" -at "message";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 55.000000000000007;
	setAttr ".ncp" 6;
	setAttr ".fcp" 100000000;
	setAttr ".coi" 519.65244083453831;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" -1.0251998901367187e-005 4.5828531851649892 -2.2939988076686859 ;
	setAttr ".dr" yes;
createNode transform -n "pPlane1_temp" -p "lighting_setup";
	setAttr ".s" -type "double3" 8738.8601536108981 8738.8601536108981 8738.8601536108981 ;
createNode mesh -n "pPlane1_tempShape" -p "pPlane1_temp";
	addAttr -ci true -sn "rsObjectId" -ln "rsObjectId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.80000001 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001 0.40000001 0.40000001
		 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.69999999 0.40000001 0.80000001
		 0.40000001 0.90000004 0.40000001 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.80000001
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.69999999 0.2 0.69999999
		 0.30000001 0.69999999 0.40000001 0.69999999 0.5 0.69999999 0.60000002 0.69999999
		 0.69999999 0.69999999 0.80000001 0.69999999 0.90000004 0.69999999 1 0.69999999 0
		 0.80000001 0.1 0.80000001 0.2 0.80000001 0.30000001 0.80000001 0.40000001 0.80000001
		 0.5 0.80000001 0.60000002 0.80000001 0.69999999 0.80000001 0.80000001 0.80000001
		 0.90000004 0.80000001 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000001 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".vt[0:120]"  -0.5 -1.110223e-016 0.5 -0.40000001 -1.110223e-016 0.5
		 -0.30000001 -1.110223e-016 0.5 -0.19999999 -1.110223e-016 0.5 -0.099999994 -1.110223e-016 0.5
		 0 -1.110223e-016 0.5 0.10000002 -1.110223e-016 0.5 0.19999999 -1.110223e-016 0.5
		 0.30000001 -1.110223e-016 0.5 0.40000004 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 -8.8817843e-017 0.40000001 -0.40000001 -8.8817843e-017 0.40000001 -0.30000001 -8.8817843e-017 0.40000001
		 -0.19999999 -8.8817843e-017 0.40000001 -0.099999994 -8.8817843e-017 0.40000001 0 -8.8817843e-017 0.40000001
		 0.10000002 -8.8817843e-017 0.40000001 0.19999999 -8.8817843e-017 0.40000001 0.30000001 -8.8817843e-017 0.40000001
		 0.40000004 -8.8817843e-017 0.40000001 0.5 -8.8817843e-017 0.40000001 -0.5 -6.6613384e-017 0.30000001
		 -0.40000001 -6.6613384e-017 0.30000001 -0.30000001 -6.6613384e-017 0.30000001 -0.19999999 -6.6613384e-017 0.30000001
		 -0.099999994 -6.6613384e-017 0.30000001 0 -6.6613384e-017 0.30000001 0.10000002 -6.6613384e-017 0.30000001
		 0.19999999 -6.6613384e-017 0.30000001 0.30000001 -6.6613384e-017 0.30000001 0.40000004 -6.6613384e-017 0.30000001
		 0.5 -6.6613384e-017 0.30000001 -0.5 -4.4408918e-017 0.19999999 -0.40000001 -4.4408918e-017 0.19999999
		 -0.30000001 -4.4408918e-017 0.19999999 -0.19999999 -4.4408918e-017 0.19999999 -0.099999994 -4.4408918e-017 0.19999999
		 0 -4.4408918e-017 0.19999999 0.10000002 -4.4408918e-017 0.19999999 0.19999999 -4.4408918e-017 0.19999999
		 0.30000001 -4.4408918e-017 0.19999999 0.40000004 -4.4408918e-017 0.19999999 0.5 -4.4408918e-017 0.19999999
		 -0.5 -2.2204459e-017 0.099999994 -0.40000001 -2.2204459e-017 0.099999994 -0.30000001 -2.2204459e-017 0.099999994
		 -0.19999999 -2.2204459e-017 0.099999994 -0.099999994 -2.2204459e-017 0.099999994
		 0 -2.2204459e-017 0.099999994 0.10000002 -2.2204459e-017 0.099999994 0.19999999 -2.2204459e-017 0.099999994
		 0.30000001 -2.2204459e-017 0.099999994 0.40000004 -2.2204459e-017 0.099999994 0.5 -2.2204459e-017 0.099999994
		 -0.5 0 0 -0.40000001 0 0 -0.30000001 0 0 -0.19999999 0 0 -0.099999994 0 0 0 0 0 0.10000002 0 0
		 0.19999999 0 0 0.30000001 0 0 0.40000004 0 0 0.5 0 0 -0.5 2.2204466e-017 -0.10000002
		 -0.40000001 2.2204466e-017 -0.10000002 -0.30000001 2.2204466e-017 -0.10000002 -0.19999999 2.2204466e-017 -0.10000002
		 -0.099999994 2.2204466e-017 -0.10000002 0 2.2204466e-017 -0.10000002 0.10000002 2.2204466e-017 -0.10000002
		 0.19999999 2.2204466e-017 -0.10000002 0.30000001 2.2204466e-017 -0.10000002 0.40000004 2.2204466e-017 -0.10000002
		 0.5 2.2204466e-017 -0.10000002 -0.5 4.4408918e-017 -0.19999999 -0.40000001 4.4408918e-017 -0.19999999
		 -0.30000001 4.4408918e-017 -0.19999999 -0.19999999 4.4408918e-017 -0.19999999 -0.099999994 4.4408918e-017 -0.19999999
		 0 4.4408918e-017 -0.19999999 0.10000002 4.4408918e-017 -0.19999999 0.19999999 4.4408918e-017 -0.19999999
		 0.30000001 4.4408918e-017 -0.19999999 0.40000004 4.4408918e-017 -0.19999999 0.5 4.4408918e-017 -0.19999999
		 -0.5 6.6613384e-017 -0.30000001 -0.40000001 6.6613384e-017 -0.30000001 -0.30000001 6.6613384e-017 -0.30000001
		 -0.19999999 6.6613384e-017 -0.30000001 -0.099999994 6.6613384e-017 -0.30000001 0 6.6613384e-017 -0.30000001
		 0.10000002 6.6613384e-017 -0.30000001 0.19999999 6.6613384e-017 -0.30000001 0.30000001 6.6613384e-017 -0.30000001
		 0.40000004 6.6613384e-017 -0.30000001 0.5 6.6613384e-017 -0.30000001 -0.5 8.881785e-017 -0.40000004
		 -0.40000001 8.881785e-017 -0.40000004 -0.30000001 8.881785e-017 -0.40000004 -0.19999999 8.881785e-017 -0.40000004
		 -0.099999994 8.881785e-017 -0.40000004 0 8.881785e-017 -0.40000004 0.10000002 8.881785e-017 -0.40000004
		 0.19999999 8.881785e-017 -0.40000004 0.30000001 8.881785e-017 -0.40000004 0.40000004 8.881785e-017 -0.40000004
		 0.5 8.881785e-017 -0.40000004 -0.5 1.110223e-016 -0.5 -0.40000001 1.110223e-016 -0.5
		 -0.30000001 1.110223e-016 -0.5 -0.19999999 1.110223e-016 -0.5 -0.099999994 1.110223e-016 -0.5
		 0 1.110223e-016 -0.5 0.10000002 1.110223e-016 -0.5 0.19999999 1.110223e-016 -0.5
		 0.30000001 1.110223e-016 -0.5 0.40000004 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:219]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 0
		 111 112 0 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 3 -22 -2
		mu 0 4 0 1 12 11
		f 4 2 5 -24 -4
		mu 0 4 1 2 13 12
		f 4 4 7 -26 -6
		mu 0 4 2 3 14 13
		f 4 6 9 -28 -8
		mu 0 4 3 4 15 14
		f 4 8 11 -30 -10
		mu 0 4 4 5 16 15
		f 4 10 13 -32 -12
		mu 0 4 5 6 17 16
		f 4 12 15 -34 -14
		mu 0 4 6 7 18 17
		f 4 14 17 -36 -16
		mu 0 4 7 8 19 18
		f 4 16 19 -38 -18
		mu 0 4 8 9 20 19
		f 4 18 20 -40 -20
		mu 0 4 9 10 21 20
		f 4 21 24 -43 -23
		mu 0 4 11 12 23 22
		f 4 23 26 -45 -25
		mu 0 4 12 13 24 23
		f 4 25 28 -47 -27
		mu 0 4 13 14 25 24
		f 4 27 30 -49 -29
		mu 0 4 14 15 26 25
		f 4 29 32 -51 -31
		mu 0 4 15 16 27 26
		f 4 31 34 -53 -33
		mu 0 4 16 17 28 27
		f 4 33 36 -55 -35
		mu 0 4 17 18 29 28
		f 4 35 38 -57 -37
		mu 0 4 18 19 30 29
		f 4 37 40 -59 -39
		mu 0 4 19 20 31 30
		f 4 39 41 -61 -41
		mu 0 4 20 21 32 31
		f 4 42 45 -64 -44
		mu 0 4 22 23 34 33
		f 4 44 47 -66 -46
		mu 0 4 23 24 35 34
		f 4 46 49 -68 -48
		mu 0 4 24 25 36 35
		f 4 48 51 -70 -50
		mu 0 4 25 26 37 36
		f 4 50 53 -72 -52
		mu 0 4 26 27 38 37
		f 4 52 55 -74 -54
		mu 0 4 27 28 39 38
		f 4 54 57 -76 -56
		mu 0 4 28 29 40 39
		f 4 56 59 -78 -58
		mu 0 4 29 30 41 40
		f 4 58 61 -80 -60
		mu 0 4 30 31 42 41
		f 4 60 62 -82 -62
		mu 0 4 31 32 43 42
		f 4 63 66 -85 -65
		mu 0 4 33 34 45 44
		f 4 65 68 -87 -67
		mu 0 4 34 35 46 45
		f 4 67 70 -89 -69
		mu 0 4 35 36 47 46
		f 4 69 72 -91 -71
		mu 0 4 36 37 48 47
		f 4 71 74 -93 -73
		mu 0 4 37 38 49 48
		f 4 73 76 -95 -75
		mu 0 4 38 39 50 49
		f 4 75 78 -97 -77
		mu 0 4 39 40 51 50
		f 4 77 80 -99 -79
		mu 0 4 40 41 52 51
		f 4 79 82 -101 -81
		mu 0 4 41 42 53 52
		f 4 81 83 -103 -83
		mu 0 4 42 43 54 53
		f 4 84 87 -106 -86
		mu 0 4 44 45 56 55
		f 4 86 89 -108 -88
		mu 0 4 45 46 57 56
		f 4 88 91 -110 -90
		mu 0 4 46 47 58 57
		f 4 90 93 -112 -92
		mu 0 4 47 48 59 58
		f 4 92 95 -114 -94
		mu 0 4 48 49 60 59
		f 4 94 97 -116 -96
		mu 0 4 49 50 61 60
		f 4 96 99 -118 -98
		mu 0 4 50 51 62 61
		f 4 98 101 -120 -100
		mu 0 4 51 52 63 62
		f 4 100 103 -122 -102
		mu 0 4 52 53 64 63
		f 4 102 104 -124 -104
		mu 0 4 53 54 65 64
		f 4 105 108 -127 -107
		mu 0 4 55 56 67 66
		f 4 107 110 -129 -109
		mu 0 4 56 57 68 67
		f 4 109 112 -131 -111
		mu 0 4 57 58 69 68
		f 4 111 114 -133 -113
		mu 0 4 58 59 70 69
		f 4 113 116 -135 -115
		mu 0 4 59 60 71 70
		f 4 115 118 -137 -117
		mu 0 4 60 61 72 71
		f 4 117 120 -139 -119
		mu 0 4 61 62 73 72
		f 4 119 122 -141 -121
		mu 0 4 62 63 74 73
		f 4 121 124 -143 -123
		mu 0 4 63 64 75 74
		f 4 123 125 -145 -125
		mu 0 4 64 65 76 75
		f 4 126 129 -148 -128
		mu 0 4 66 67 78 77
		f 4 128 131 -150 -130
		mu 0 4 67 68 79 78
		f 4 130 133 -152 -132
		mu 0 4 68 69 80 79
		f 4 132 135 -154 -134
		mu 0 4 69 70 81 80
		f 4 134 137 -156 -136
		mu 0 4 70 71 82 81
		f 4 136 139 -158 -138
		mu 0 4 71 72 83 82
		f 4 138 141 -160 -140
		mu 0 4 72 73 84 83
		f 4 140 143 -162 -142
		mu 0 4 73 74 85 84
		f 4 142 145 -164 -144
		mu 0 4 74 75 86 85
		f 4 144 146 -166 -146
		mu 0 4 75 76 87 86
		f 4 147 150 -169 -149
		mu 0 4 77 78 89 88
		f 4 149 152 -171 -151
		mu 0 4 78 79 90 89
		f 4 151 154 -173 -153
		mu 0 4 79 80 91 90
		f 4 153 156 -175 -155
		mu 0 4 80 81 92 91
		f 4 155 158 -177 -157
		mu 0 4 81 82 93 92
		f 4 157 160 -179 -159
		mu 0 4 82 83 94 93
		f 4 159 162 -181 -161
		mu 0 4 83 84 95 94
		f 4 161 164 -183 -163
		mu 0 4 84 85 96 95
		f 4 163 166 -185 -165
		mu 0 4 85 86 97 96
		f 4 165 167 -187 -167
		mu 0 4 86 87 98 97
		f 4 168 171 -190 -170
		mu 0 4 88 89 100 99
		f 4 170 173 -192 -172
		mu 0 4 89 90 101 100
		f 4 172 175 -194 -174
		mu 0 4 90 91 102 101
		f 4 174 177 -196 -176
		mu 0 4 91 92 103 102
		f 4 176 179 -198 -178
		mu 0 4 92 93 104 103
		f 4 178 181 -200 -180
		mu 0 4 93 94 105 104
		f 4 180 183 -202 -182
		mu 0 4 94 95 106 105
		f 4 182 185 -204 -184
		mu 0 4 95 96 107 106
		f 4 184 187 -206 -186
		mu 0 4 96 97 108 107
		f 4 186 188 -208 -188
		mu 0 4 97 98 109 108
		f 4 189 192 -211 -191
		mu 0 4 99 100 111 110
		f 4 191 194 -212 -193
		mu 0 4 100 101 112 111
		f 4 193 196 -213 -195
		mu 0 4 101 102 113 112
		f 4 195 198 -214 -197
		mu 0 4 102 103 114 113
		f 4 197 200 -215 -199
		mu 0 4 103 104 115 114
		f 4 199 202 -216 -201
		mu 0 4 104 105 116 115
		f 4 201 204 -217 -203
		mu 0 4 105 106 117 116
		f 4 203 206 -218 -205
		mu 0 4 106 107 118 117
		f 4 205 208 -219 -207
		mu 0 4 107 108 119 118
		f 4 207 209 -220 -209
		mu 0 4 108 109 120 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "groundPlane";
createNode mesh -n "groundPlaneShape" -p "|groundPlane";
	addAttr -ci true -sn "rsObjectId" -ln "rsObjectId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr -k off ".v";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 645 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64906001 0.30188 0.65750998
		 0.30204999 0.65943998 0.31048 0.65063 0.31072 0.67177999 0.35019001 0.66219002 0.35137999
		 0.68304998 0.39146 0.67306 0.39286 0.69203001 0.43415001 0.68181998 0.43546 0.6983
		 0.47773999 0.68800998 0.47885999 0.70174998 0.52161998 0.69150001 0.52253002 0.70247
		 0.56515998 0.69240999 0.56598002 0.70093 0.60778999 0.69129997 0.60882998 0.69865
		 0.64941001 0.68993998 0.65116 0.69845998 0.65785998 0.69010001 0.65990001 0.60780001
		 0.29903999 0.60882998 0.30866 0.61672002 0.35371 0.62568998 0.39737999 0.63352001
		 0.44079 0.63946003 0.48436001 0.64336002 0.52819997 0.64546001 0.57235003 0.64657003
		 0.61694998 0.64864999 0.66219002 0.64978999 0.67176002 0.56533998 0.29741001 0.56619
		 0.30746001 0.57226002 0.3547 0.57953 0.40042999 0.58638 0.44523001 0.59209001 0.48973
		 0.59648001 0.53442001 0.59978998 0.57968003 0.60276002 0.62582999 0.60690999 0.67299002
		 0.60832 0.68296999 0.52187002 0.29815999 0.52283001 0.30840001 0.52824003 0.3567
		 0.53433001 0.40366 0.54030001 0.44955 0.54575998 0.49491999 0.55058998 0.54036999
		 0.55492002 0.58644998 0.55918998 0.63356 0.56422001 0.68177003 0.56555998 0.69198
		 0.47802001 0.30164999 0.47918001 0.31194001 0.48445001 0.36052999 0.48965999 0.40792999
		 0.49483001 0.45427001 0.50002998 0.49996001 0.50519001 0.54569 0.51036 0.59201998
		 0.51555997 0.63941997 0.52081001 0.68800998 0.52195001 0.6983 0.43441999 0.30798
		 0.43577999 0.31819001 0.44080999 0.3664 0.44509 0.41350999 0.44942999 0.45958 0.45423999
		 0.50502002 0.45971 0.55039001 0.46568999 0.59627998 0.47176999 0.64323997 0.47716999
		 0.69155002 0.47810999 0.70179999 0.39164999 0.317 0.39309999 0.32699001 0.39725 0.37413999
		 0.40020999 0.42028001 0.40351999 0.46553001 0.40790999 0.51020998 0.41363001 0.55470997
		 0.42048001 0.59951001 0.42774999 0.64523 0.43382001 0.69248003 0.43463999 0.70253998
		 0.35016999 0.32821 0.35137001 0.3378 0.35343 0.38303 0.35453001 0.42761001 0.35664001
		 0.47176 0.36054 0.51559001 0.36647999 0.55915999 0.37430999 0.60257 0.38328999 0.64622003
		 0.39120001 0.69125003 0.39219001 0.70090997 0.31 0.34009999 0.30998999 0.3488 0.30868
		 0.39113 0.30757999 0.43397999 0.30849999 0.47742999 0.31198999 0.52109998 0.31817999
		 0.56449997 0.32694 0.60710001 0.33781001 0.64857 0.34933999 0.68923002 0.35100999
		 0.69802999 0.30129999 0.35054001 0.30158001 0.34211999 0.29905 0.39217001 0.29752001
		 0.4348 0.29824999 0.47834 0.3017 0.52222002 0.30796999 0.56581002 0.31694999 0.6085
		 0.32821 0.64977002 0.34053001 0.68949002 0.34257001 0.69783998 0.70722997 0.29469001
		 0.70262003 0.28674001 0.70530999 0.28465 0.71015 0.29271999 0.72689003 0.33526 0.73057002
		 0.33364999 0.74158001 0.37882999 0.74563998 0.37763 0.75240999 0.42440999 0.75665998
		 0.42357999 0.75950003 0.47117001 0.76384002 0.47069001 0.76283997 0.51827002 0.76718003
		 0.51815999 0.76247001 0.56485999 0.76670003 0.56513 0.75845999 0.61013001 0.76245999
		 0.61080998 0.75060999 0.65333998 0.75411999 0.65464002 0.75027001 0.66323 0.74721998
		 0.66174001 0.70545 0.70739001 0.71341997 0.70279002 0.71548998 0.70546001 0.70740002
		 0.71030003 0.66470999 0.72691 0.66632003 0.73058999 0.62107003 0.74153 0.62226999
		 0.74559999 0.57546002 0.75235999 0.57630002 0.75661999 0.52869999 0.75949001 0.52917999
		 0.76381999 0.48161 0.76286 0.48173001 0.76718998 0.43505001 0.76248002 0.43478999
		 0.76670003 0.38984001 0.75839001 0.38916001 0.76238 0.34672001 0.75036001 0.34542
		 0.75388998 0.33684999 0.75002003 0.33835 0.74695998 0.66316003 0.24992 0.66166002
		 0.25297999 0.65328997 0.24958 0.65459001 0.24606 0.61015999 0.24156 0.61084002 0.23757
		 0.56493998 0.23748 0.56519997 0.23325001 0.51836997 0.23710001 0.51826 0.23277 0.47128001
		 0.24047001 0.47080001 0.23614 0.42451999 0.2476 0.42368001 0.24334 0.37891999 0.25843
		 0.37772 0.25437 0.33526999 0.27305999 0.33366001 0.26938 0.29455 0.29258999 0.29258999
		 0.28968 0.28658 0.29719001 0.28450999 0.29451999 0.24972001 0.33673999 0.25277001
		 0.33823001 0.24938001 0.34663999 0.24586999 0.34533 0.24152 0.38984001 0.23752999
		 0.38916001 0.23751999 0.43511 0.23329 0.43483999 0.23715 0.4817 0.23281001 0.48181
		 0.24049 0.52880001 0.23616 0.52928001 0.24759001 0.57555997 0.24334 0.57639003 0.25841999
		 0.62114 0.25435999 0.62233001 0.27311 0.66470999 0.26943001 0.66632003 0.29278001
		 0.70526999 0.28986001 0.70723999 0.29739001 0.71322 0.2947 0.71530002 0.76576 0.22905999
		 0.77415001 0.23865999 0.70696998 0.1813 0.69585001 0.17497 0.80842 0.28847 0.83385998
		 0.34305999 0.85144001 0.40059999 0.86173999 0.45985001 0.86491001 0.51991999 0.86061001
		 0.57998002 0.84792 0.63910002 0.82507998 0.69586003 0.81875998 0.70699 0.77095997
		 0.76581001 0.76135999 0.77420002 0.63911998 0.15211 0.71151 0.80844003 0.58002001
		 0.13937999 0.65688998 0.83385998 0.51995999 0.13507 0.59934002 0.85141999 0.45989999
		 0.13823999 0.54009002 0.86172003 0.40064001 0.14855 0.48001999 0.86488998 0.34309
		 0.16610999 0.41997999 0.86058003 0.28848001 0.19153 0.36087999 0.84785002 0.23863
		 0.22577 0.30416 0.82498997 0.22902 0.23417 0.29304001 0.81866002 0.18122999 0.29299
		 0.1749 0.30412 0.15207 0.36087999 0.13936999 0.42001 0.13507999 0.48006001 0.13824999
		 0.54013002 0.14856 0.59938002 0.16614 0.65692002;
	setAttr ".uvst[0].uvsp[250:499]" 0.19158 0.71151 0.22585 0.76130998 0.23424999
		 0.77090001 0.85683 0.14026999 0.86897999 0.15277 0.77573001 0.076300003 0.76055998
		 0.06769 0.91791999 0.21856999 0.9551 0.29076999 0.98071998 0.36721 0.99505001 0.44628
		 0.99804002 0.52670002 0.98918003 0.60718 0.96754998 0.68598002 0.93233001 0.76056999
		 0.92370999 0.77574003 0.85971999 0.85685003 0.84720999 0.86900997 0.68599999 0.03246
		 0.78138 0.91794997 0.60721999 0.01082 0.70916998 0.95511001 0.52675003 0.0019499999
		 0.63271999 0.98071003 0.44633001 0.0049399999 0.55365002 0.99502999 0.36726001 0.01926
		 0.47323 0.99800998 0.29080999 0.04487 0.39276999 0.98913997 0.21859001 0.082029998
		 0.31400001 0.96749997 0.15277 0.13097 0.23943999 0.93228 0.14025 0.14313 0.22428
		 0.92366999 0.076269999 0.22425 0.067649998 0.23942 0.032430001 0.31400999 0.01081
		 0.39282 0.0019499999 0.47329 0.00495 0.55370998 0.01929 0.63278002 0.044909999 0.70921999
		 0.082089998 0.78140998 0.13102999 0.84720999 0.14319 0.85970998 0.69641 0.27794001
		 0.69871002 0.27570999 0.68899 0.27004001 0.69107002 0.26765001 0.68063003 0.26317999
		 0.6825 0.26063001 0.67145002 0.25751999 0.67312998 0.25472999 0.66737998 0.30142999
		 0.66982001 0.30937001 0.67704999 0.29951999 0.67995 0.30726999 0.68627 0.29640999
		 0.68966001 0.30410001 0.69483 0.29210001 0.69878 0.29986 0.65829003 0.26209 0.65019
		 0.25974 0.65617001 0.27186 0.64819002 0.27017 0.65533 0.28191 0.64735001 0.28075001
		 0.65581 0.29201999 0.64769 0.29135999 0.68309999 0.34839001 0.69435 0.34601 0.70543998
		 0.34301001 0.71630001 0.33941001 0.60854 0.25286999 0.60746002 0.26434001 0.60697001
		 0.27590999 0.60710001 0.28749999 0.69487 0.38957 0.70666999 0.38736999 0.71841002
		 0.38484001 0.73005003 0.38198999 0.70414001 0.43248999 0.71625 0.43068999 0.72834003
		 0.42873999 0.74040002 0.42664999 0.71052998 0.47644001 0.72277999 0.47512999 0.73504001
		 0.47380999 0.74728 0.47249001 0.71394002 0.52068001 0.72617 0.51986998 0.73841 0.51920003
		 0.75063998 0.51867002 0.71446002 0.56449002 0.72649002 0.56410998 0.73852998 0.56405002
		 0.75053 0.5643 0.71248001 0.60707998 0.72408003 0.60693997 0.73566002 0.60742003
		 0.74713999 0.60851002 0.70905 0.64791 0.71957999 0.64749998 0.73009998 0.64828998
		 0.74048001 0.65025997 0.70840001 0.65606999 0.71844 0.65551001 0.72842002 0.65630001
		 0.73815 0.65837997 0.72223997 0.69656003 0.72446001 0.69885999 0.73016 0.68914002
		 0.73253 0.69120997 0.73703003 0.68076003 0.73957002 0.68261999 0.74269003 0.67154998
		 0.74546999 0.67322999 0.69897002 0.66771001 0.69102001 0.67018998 0.70078999 0.67733002
		 0.69300997 0.68024999 0.70381999 0.68651003 0.69611001 0.68989998 0.70809001 0.69502997
		 0.70029998 0.69897997 0.65158999 0.68308002 0.65395999 0.69433999 0.65696001 0.70543998
		 0.66056001 0.71631002 0.56439 0.24941 0.56414998 0.26139 0.56423002 0.27340999 0.56462997
		 0.28543001 0.61023998 0.69480002 0.61246997 0.70660001 0.61501998 0.71834999 0.61790001
		 0.73000002 0.51879001 0.2493 0.51934999 0.26152 0.52004999 0.27375001 0.52089 0.28597
		 0.56726003 0.70409 0.56910002 0.71619999 0.57108003 0.72829002 0.57319999 0.74035001
		 0.47262999 0.25268999 0.47398001 0.26493001 0.47533 0.27717999 0.47668001 0.28942999
		 0.52329999 0.71052998 0.52464998 0.72277999 0.52600002 0.73503 0.52735001 0.74726999
		 0.42677999 0.25961 0.4289 0.27167001 0.43088001 0.28376001 0.43272001 0.29587999
		 0.47909001 0.71398997 0.47994 0.72621 0.48063999 0.73843998 0.48120001 0.75066 0.38207999
		 0.26995999 0.38496 0.28162 0.38751 0.29335999 0.38973001 0.30517 0.43536001 0.71451998
		 0.43575999 0.72654003 0.43584001 0.73856002 0.43560001 0.75054997 0.33943 0.28365001
		 0.34303001 0.29453 0.34602001 0.30563 0.34839001 0.31687999 0.39289001 0.71245003
		 0.39302999 0.72403997 0.39254001 0.73561001 0.39144999 0.74708003 0.29969999 0.301
		 0.3039 0.31009001 0.30702001 0.31974 0.30903 0.32980999 0.35235 0.70855999 0.35267001
		 0.71917999 0.35183001 0.72977 0.34981999 0.74019998 0.29192001 0.30495 0.29618999
		 0.31347999 0.29923001 0.32266 0.30105999 0.33228001 0.34423 0.70788002 0.34470999
		 0.71802002 0.34386 0.72807002 0.34173 0.73784 0.27776 0.30340999 0.27553999 0.30112001
		 0.26984 0.31084001 0.26745999 0.30877 0.26297 0.31922001 0.26043001 0.31735 0.25729999
		 0.32842001 0.25453001 0.32674 0.26183999 0.34158 0.2595 0.34970999 0.27157 0.34367001
		 0.26988 0.35168001 0.28154999 0.34446001 0.28040001 0.35247001 0.29161 0.3439 0.29091001
		 0.35205001 0.30361 0.72201997 0.30131 0.72425002 0.31101999 0.72991002 0.30893999
		 0.73229998 0.31939 0.73676002 0.31751001 0.73931003 0.32857001 0.74242997 0.32688001
		 0.74520999 0.33265999 0.69850999 0.33015999 0.69059998 0.32297999 0.70043999 0.32003999
		 0.69269001 0.31373999 0.70354003 0.31035 0.69586998 0.30518001 0.70785999 0.30122
		 0.7001 0.25284001 0.39146 0.26431999 0.39254001 0.27590001 0.39302 0.28749999 0.39289001
		 0.24946 0.43566999 0.26146001 0.43592 0.27349001 0.43586001 0.28553 0.43548 0.24935
		 0.4813 0.26157999 0.48076999 0.27382001 0.48008999 0.28604999 0.47927999 0.25271001
		 0.52748001 0.26495999 0.52614999 0.27721 0.52484 0.28946 0.52351999 0.25960001 0.57331997
		 0.27164999 0.57121998 0.28375 0.56927001 0.29585999 0.56747001 0.26993999 0.61798
		 0.28159001 0.61511999 0.29333001 0.61259001;
	setAttr ".uvst[0].uvsp[500:644]" 0.30511999 0.61037999 0.28369999 0.66056001
		 0.29455999 0.65695 0.30565 0.65394998 0.31689 0.65157002 0.75520003 0.2182 0.74399
		 0.20793 0.73218 0.19833 0.71981001 0.18944 0.78184003 0.75524998 0.79211003 0.74404001
		 0.80172002 0.73220998 0.81061 0.71983999 0.21815 0.24473 0.20788001 0.25593999 0.19826999
		 0.26776999 0.18938001 0.28014001 0.24481 0.78176999 0.25602001 0.79202998 0.26783001
		 0.80163002 0.2802 0.81051999 0.84183002 0.12602 0.82618999 0.11245 0.80993003 0.09962
		 0.7931 0.087549999 0.87397999 0.84184998 0.88755 0.82621002 0.90039003 0.80994999
		 0.91246003 0.79311001 0.126 0.15813001 0.11243 0.17377999 0.099590003 0.19004001
		 0.087520003 0.20688 0.15818 0.87396002 0.17383 0.88752002 0.19008 0.90034997 0.20691
		 0.91241997 0.66760999 0.26563999 0.67641002 0.27013001 0.68340999 0.27587 0.68948001
		 0.28367999 0.68200999 0.28849 0.67423999 0.29113999 0.66510999 0.29199001 0.66387999
		 0.28257999 0.66465002 0.27415001 0.67286998 0.27746999 0.67712998 0.28101 0.67232001
		 0.28263 0.73460001 0.66773999 0.73010999 0.67655998 0.72435999 0.68357998 0.71653003
		 0.68967003 0.71177 0.68223 0.70916998 0.67448002 0.70836997 0.66536999 0.71774 0.66408002
		 0.72614002 0.66481 0.72280002 0.67304999 0.71925998 0.67732 0.71767002 0.67253 0.26539001
		 0.33223 0.26989001 0.32341999 0.27564001 0.31639999 0.28347 0.31031001 0.28823999
		 0.31775001 0.29085001 0.32550001 0.29164001 0.3346 0.28226 0.33589 0.27386001 0.33515999
		 0.27720001 0.32692 0.28075001 0.32266 0.28233999 0.32745001 0.33241001 0.73429 0.32361001
		 0.72981 0.31661001 0.72408003 0.31053999 0.71627003 0.31801 0.71145999 0.32578999
		 0.70880002 0.33493 0.70793998 0.33614999 0.71735001 0.33537999 0.72579002 0.32714999
		 0.72246999 0.3229 0.71893001 0.32769999 0.71731001 0.89645505 0.80684972 0.88374388
		 0.82293308 0.87030542 0.83839643 0.85618025 0.85321939 0.84378636 0.86522901 0.7785936
		 0.91358274 0.70708507 0.95027459 0.63138884 0.97555393 0.55310923 0.98971361 0.47350079
		 0.99270117 0.39385512 0.98401302 0.31586957 0.96272838 0.24202102 0.92800134 0.22702213
		 0.91948223 0.20983279 0.90835619 0.19318065 0.89641303 0.17710772 0.88371187 0.16163479
		 0.87028348 0.14682144 0.85616827 0.1348114 0.84378433 0.086456433 0.77862233 0.049744628
		 0.70713431 0.024445262 0.63144803 0.010265977 0.55316842 0.0072591975 0.47355998
		 0.015936946 0.39390433 0.037201218 0.31587914 0.0719271 0.24200022 0.08045578 0.22699134
		 0.091582164 0.2098016 0.10352534 0.19313987 0.11623652 0.17705652 0.12967493 0.1615836
		 0.14379013 0.14676066 0.15619408 0.13475062 0.22137721 0.086396836 0.2928949 0.049705029
		 0.36859119 0.024416061 0.44687116 0.010255977 0.52647924 0.0072587989 0.60613525
		 0.015946947 0.68413043 0.03723162 0.75797939 0.071968302 0.7729879 0.080487378 0.79017723
		 0.091613352 0.80682933 0.10355653 0.82291186 0.11625773 0.83837521 0.12969612 0.85319817
		 0.14381093 0.86519819 0.15619527 0.91355312 0.2213576 0.95026493 0.29285532 0.97556436
		 0.36854157 0.98973364 0.44682118 0.9927308 0.52642965 0.98405266 0.60609525 0.96277916
		 0.68411046 0.9280529 0.75798935 0.91952461 0.77299827 0.90839827 0.79018801;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 645 ".vt";
	setAttr ".vt[0:165]"  -2474.53955078 -0.0045170002 2474.53955078 -1855.90454102 -0.0045170002 2474.53955078
		 -1237.26977539 -0.0045170002 2474.53955078 -618.6348877 -0.0045170002 2474.53955078
		 0 -0.0045170002 2474.53955078 618.6348877 -0.0045170002 2474.53955078 1237.26977539 -0.0045170002 2474.53955078
		 1855.90454102 -0.0045170002 2474.53955078 2474.53955078 -0.0045170002 2474.53955078
		 -2474.53955078 -0.0045170002 1855.90454102 -1855.90454102 -0.0045170002 1855.90454102
		 -1237.26977539 -0.0045170002 1855.90454102 -618.6348877 -0.0045170002 1855.90454102
		 0 -0.0045170002 1855.90454102 618.6348877 -0.0045170002 1855.90454102 1237.26977539 -0.0045170002 1855.90454102
		 1855.90454102 -0.0045170002 1855.90454102 2474.53955078 -0.0045170002 1855.90454102
		 -2474.53955078 -0.0045170002 1237.26977539 -1855.90454102 -0.0045170002 1237.26977539
		 -1237.26977539 -0.0045170002 1237.26977539 -618.6348877 -0.0045170002 1237.26977539
		 0 -0.0045170002 1237.26977539 618.6348877 -0.0045170002 1237.26977539 1237.26977539 -0.0045170002 1237.26977539
		 1855.90454102 -0.0045170002 1237.26977539 2474.53955078 -0.0045170002 1237.26977539
		 -2474.53955078 -0.0045170002 618.6348877 -1855.90454102 -0.0045170002 618.6348877
		 -1237.26977539 -0.0045170002 618.6348877 -618.6348877 -0.0045170002 618.6348877 0 -0.0045170002 618.6348877
		 618.6348877 -0.0045170002 618.6348877 1237.26977539 -0.0045170002 618.6348877 1855.90454102 -0.0045170002 618.6348877
		 2474.53955078 -0.0045170002 618.6348877 -2474.53955078 -0.0045170002 0 -1855.90454102 -0.0045170002 0
		 -1237.26977539 -0.0045170002 0 -618.6348877 -0.0045170002 0 0 -0.0045170002 0 618.6348877 -0.0045170002 0
		 1237.26977539 -0.0045170002 0 1855.90454102 -0.0045170002 0 2474.53955078 -0.0045170002 0
		 -2474.53955078 -0.0045170002 -618.6348877 -1855.90454102 -0.0045170002 -618.6348877
		 -1237.26977539 -0.0045170002 -618.6348877 -618.6348877 -0.0045170002 -618.6348877
		 0 -0.0045170002 -618.6348877 618.6348877 -0.0045170002 -618.6348877 1237.26977539 -0.0045170002 -618.6348877
		 1855.90454102 -0.0045170002 -618.6348877 2474.53955078 -0.0045170002 -618.6348877
		 -2474.53955078 -0.0045170002 -1237.26977539 -1855.90454102 -0.0045170002 -1237.26977539
		 -1237.26977539 -0.0045170002 -1237.26977539 -618.6348877 -0.0045170002 -1237.26977539
		 0 -0.0045170002 -1237.26977539 618.6348877 -0.0045170002 -1237.26977539 1237.26977539 -0.0045170002 -1237.26977539
		 1855.90454102 -0.0045170002 -1237.26977539 2474.53955078 -0.0045170002 -1237.26977539
		 -2474.53955078 -0.0045170002 -1855.90454102 -1855.90454102 -0.0045170002 -1855.90454102
		 -1237.26977539 -0.0045170002 -1855.90454102 -618.6348877 -0.0045170002 -1855.90454102
		 0 -0.0045170002 -1855.90454102 618.6348877 -0.0045170002 -1855.90454102 1237.26977539 -0.0045170002 -1855.90454102
		 1855.90454102 -0.0045170002 -1855.90454102 2474.53955078 -0.0045170002 -1855.90454102
		 -2474.53955078 -0.0045170002 -2474.53955078 -1855.90454102 -0.0045170002 -2474.53955078
		 -1237.26977539 -0.0045170002 -2474.53955078 -618.6348877 -0.0045170002 -2474.53955078
		 0 -0.0045170002 -2474.53955078 618.6348877 -0.0045170002 -2474.53955078 1237.26977539 -0.0045170002 -2474.53955078
		 1855.90454102 -0.0045170002 -2474.53955078 2474.53955078 -0.0045170002 -2474.53955078
		 -2474.53955078 543.83013916 3093.17407227 -3093.17407227 543.83013916 2474.53955078
		 -1855.90454102 543.83013916 3093.17407227 -1237.26977539 543.83013916 3093.17407227
		 -618.6348877 543.83013916 3093.17407227 0 543.83013916 3093.17407227 618.6348877 543.83013916 3093.17407227
		 1237.26977539 543.83013916 3093.17407227 1855.90454102 543.83013916 3093.17407227
		 2474.53955078 543.83013916 3093.17407227 3093.17407227 543.83013916 2474.53955078
		 -3093.17407227 543.83013916 1855.90454102 3093.17407227 543.83013916 1855.90454102
		 -3093.17407227 543.83013916 1237.26977539 3093.17407227 543.83013916 1237.26977539
		 -3093.17407227 543.83013916 618.6348877 3093.17407227 543.83013916 618.6348877 -3093.17407227 543.83013916 0
		 3093.17407227 543.83013916 0 -3093.17407227 543.83013916 -618.6348877 3093.17407227 543.83013916 -618.6348877
		 -3093.17407227 543.83013916 -1237.26977539 3093.17407227 543.83013916 -1237.26977539
		 -3093.17407227 543.83013916 -1855.90454102 3093.17407227 543.83013916 -1855.90454102
		 -3093.17407227 543.83013916 -2474.53955078 3093.17407227 543.83013916 -2474.53955078
		 -2474.53955078 543.83013916 -3093.17407227 -1855.90454102 543.83013916 -3093.17407227
		 -1237.26977539 543.83013916 -3093.17407227 -618.6348877 543.83013916 -3093.17407227
		 0 543.83013916 -3093.17407227 618.6348877 543.83013916 -3093.17407227 1237.26977539 543.83013916 -3093.17407227
		 1855.90454102 543.83013916 -3093.17407227 2474.53955078 543.83013916 -3093.17407227
		 -2474.53955078 1818.51489258 3093.17407227 -3093.17407227 1818.51489258 2474.53955078
		 -1855.90466309 1818.51489258 3093.17407227 -1237.26989746 1818.51489258 3093.17407227
		 -618.6350708 1818.51489258 3093.17407227 -0.00018436 1818.51489258 3093.17407227
		 618.63470459 1818.51489258 3093.17407227 1237.26953125 1818.51489258 3093.17407227
		 1855.90429688 1818.51489258 3093.17407227 2474.53930664 1818.51489258 3093.17407227
		 3093.17382813 1818.51489258 2474.53955078 -3093.17407227 1818.51489258 1855.90454102
		 3093.17382813 1818.51489258 1855.90454102 -3093.17407227 1818.51489258 1237.26977539
		 3093.17382813 1818.51489258 1237.26977539 -3093.17407227 1818.51489258 618.6348877
		 3093.17382813 1818.51489258 618.6348877 -3093.17407227 1818.51489258 0 3093.17382813 1818.51489258 0
		 -3093.17407227 1818.51489258 -618.6348877 3093.17382813 1818.51489258 -618.6348877
		 -3093.17407227 1818.51489258 -1237.26977539 3093.17382813 1818.51489258 -1237.26977539
		 -3093.17407227 1818.51489258 -1855.90454102 3093.17382813 1818.51489258 -1855.90454102
		 -3093.17407227 1818.51489258 -2474.53955078 3093.17382813 1818.51489258 -2474.53955078
		 -2474.53955078 1818.51489258 -3093.17407227 -1855.90466309 1818.51489258 -3093.17407227
		 -1237.26989746 1818.51489258 -3093.17407227 -618.6350708 1818.51489258 -3093.17407227
		 -0.00018436 1818.51489258 -3093.17407227 618.63470459 1818.51489258 -3093.17407227
		 1237.26953125 1818.51489258 -3093.17407227 1855.90429688 1818.51489258 -3093.17407227
		 2474.53930664 1818.51489258 -3093.17407227 -2474.53979492 3529.074462891 3093.17407227
		 -3093.17407227 3529.074462891 2474.53955078 -1855.90490723 3529.074462891 3093.17407227
		 -1237.2701416 3529.074462891 3093.17407227 -618.63525391 3529.074462891 3093.17407227
		 -0.00036872999 3529.074462891 3093.17407227 618.63452148 3529.074462891 3093.17407227
		 1237.26940918 3529.074462891 3093.17407227 1855.9041748 3529.074462891 3093.17407227
		 2474.5390625 3529.074462891 3093.17407227 3093.17358398 3529.074462891 2474.53955078
		 -3093.17407227 3529.074462891 1855.90454102 3093.17358398 3529.074462891 1855.90454102;
	setAttr ".vt[166:331]" -3093.17407227 3529.074462891 1237.26977539 3093.17358398 3529.074462891 1237.26977539
		 -3093.17407227 3529.074462891 618.6348877 3093.17358398 3529.074462891 618.6348877
		 -3093.17407227 3529.074462891 0 3093.17358398 3529.074462891 0 -3093.17407227 3529.074462891 -618.6348877
		 3093.17358398 3529.074462891 -618.6348877 -3093.17407227 3529.074462891 -1237.26977539
		 3093.17358398 3529.074462891 -1237.26977539 -3093.17407227 3529.074462891 -1855.90454102
		 3093.17358398 3529.074462891 -1855.90454102 -3093.17407227 3529.074462891 -2474.53955078
		 3093.17358398 3529.074462891 -2474.53955078 -2474.53979492 3529.074462891 -3093.17407227
		 -1855.90490723 3529.074462891 -3093.17407227 -1237.2701416 3529.074462891 -3093.17407227
		 -618.63525391 3529.074462891 -3093.17407227 -0.00036872999 3529.074462891 -3093.17407227
		 618.63452148 3529.074462891 -3093.17407227 1237.26940918 3529.074462891 -3093.17407227
		 1855.9041748 3529.074462891 -3093.17407227 2474.5390625 3529.074462891 -3093.17407227
		 -3093.17407227 489.3977356 2603.77148438 -3069.22070313 489.3977356 2755.0053710938
		 -2999.70654297 489.3977356 2891.43505859 -2891.43505859 489.3977356 2999.70654297
		 -2755.0053710938 489.3977356 3069.22070313 -2603.77148438 489.3977356 3093.17407227
		 -2603.77148438 338.16418457 3069.22070313 -2603.77148438 201.73431396 2999.70654297
		 -2603.77148438 93.46300507 2891.43505859 -2603.77148438 23.94851494 2755.0053710938
		 -2603.77148438 -0.0045170002 2603.77148438 -2755.0053710938 23.94851494 2603.77148438
		 -2891.43505859 93.46300507 2603.77148438 -2999.70654297 201.73431396 2603.77148438
		 -3069.22070313 338.16418457 2603.77148438 -2474.53955078 489.3977356 3093.17407227
		 -2474.53955078 338.16418457 3069.22070313 -2474.53955078 201.73431396 2999.70654297
		 -2474.53955078 93.46300507 2891.43505859 -2474.53955078 23.94851494 2755.0053710938
		 -2474.53955078 -0.0045170002 2603.77148438 -3093.17407227 489.3977356 2474.53955078
		 -3069.22070313 338.16418457 2474.53955078 -2999.70654297 201.73431396 2474.53955078
		 -2891.43505859 93.46300507 2474.53955078 -2755.0053710938 23.94851494 2474.53955078
		 -2603.77148438 -0.0045170002 2474.53955078 -1855.90454102 489.3977356 3093.17407227
		 -1855.90454102 338.16418457 3069.22070313 -1855.90454102 201.73431396 2999.70654297
		 -1855.90454102 93.46300507 2891.43505859 -1855.90454102 23.94851494 2755.0053710938
		 -1855.90454102 -0.0045170002 2603.77148438 -1237.26977539 489.3977356 3093.17407227
		 -1237.26977539 338.16418457 3069.22070313 -1237.26977539 201.73431396 2999.70654297
		 -1237.26977539 93.46300507 2891.43505859 -1237.26977539 23.94851494 2755.0053710938
		 -1237.26977539 -0.0045170002 2603.77148438 -618.6348877 489.3977356 3093.17407227
		 -618.6348877 338.16418457 3069.22070313 -618.6348877 201.73431396 2999.70654297 -618.6348877 93.46300507 2891.43505859
		 -618.6348877 23.94851494 2755.0053710938 -618.6348877 -0.0045170002 2603.77148438
		 0 489.3977356 3093.17407227 0 338.16418457 3069.22070313 0 201.73431396 2999.70654297
		 0 93.46300507 2891.43505859 0 23.94851494 2755.0053710938 0 -0.0045170002 2603.77148438
		 618.6348877 489.3977356 3093.17407227 618.6348877 338.16418457 3069.22070313 618.6348877 201.73431396 2999.70654297
		 618.6348877 93.46300507 2891.43505859 618.6348877 23.94851494 2755.0053710938 618.6348877 -0.0045170002 2603.77148438
		 1237.26977539 489.3977356 3093.17407227 1237.26977539 338.16418457 3069.22070313
		 1237.26977539 201.73431396 2999.70654297 1237.26977539 93.46300507 2891.43505859
		 1237.26977539 23.94851494 2755.0053710938 1237.26977539 -0.0045170002 2603.77148438
		 1855.90454102 489.3977356 3093.17407227 1855.90454102 338.16418457 3069.22070313
		 1855.90454102 201.73431396 2999.70654297 1855.90454102 93.46300507 2891.43505859
		 1855.90454102 23.94851494 2755.0053710938 1855.90454102 -0.0045170002 2603.77148438
		 2474.53955078 489.3977356 3093.17407227 2474.53955078 338.16418457 3069.22070313
		 2474.53955078 201.73431396 2999.70654297 2474.53955078 93.46300507 2891.43505859
		 2474.53955078 23.94851494 2755.0053710938 2474.53955078 -0.0045170002 2603.77148438
		 2603.77148438 489.3977356 3093.17407227 2755.0053710938 489.3977356 3069.22070313
		 2891.43505859 489.3977356 2999.70654297 2999.70654297 489.3977356 2891.43505859 3069.22070313 489.3977356 2755.0053710938
		 3093.17407227 489.3977356 2603.77148438 3069.22070313 338.16418457 2603.77148438
		 2999.70654297 201.73431396 2603.77148438 2891.43505859 93.46300507 2603.77148438
		 2755.0053710938 23.94851494 2603.77148438 2603.77148438 -0.0045170002 2603.77148438
		 2603.77148438 23.94851494 2755.0053710938 2603.77148438 93.46300507 2891.43505859
		 2603.77148438 201.73431396 2999.70654297 2603.77148438 338.16418457 3069.22070313
		 3093.17407227 489.3977356 2474.53955078 3069.22070313 338.16418457 2474.53955078
		 2999.70654297 201.73431396 2474.53955078 2891.43505859 93.46300507 2474.53955078
		 2755.0053710938 23.94851494 2474.53955078 2603.77148438 -0.0045170002 2474.53955078
		 -3093.17407227 489.3977356 1855.90454102 -3069.22070313 338.16418457 1855.90454102
		 -2999.70654297 201.73431396 1855.90454102 -2891.43505859 93.46300507 1855.90454102
		 -2755.0053710938 23.94851494 1855.90454102 -2603.77148438 -0.0045170002 1855.90454102
		 3093.17407227 489.3977356 1855.90454102 3069.22070313 338.16418457 1855.90454102
		 2999.70654297 201.73431396 1855.90454102 2891.43505859 93.46300507 1855.90454102
		 2755.0053710938 23.94851494 1855.90454102 2603.77148438 -0.0045170002 1855.90454102
		 -3093.17407227 489.3977356 1237.26977539 -3069.22070313 338.16418457 1237.26977539
		 -2999.70654297 201.73431396 1237.26977539 -2891.43505859 93.46300507 1237.26977539
		 -2755.0053710938 23.94851494 1237.26977539 -2603.77148438 -0.0045170002 1237.26977539
		 3093.17407227 489.3977356 1237.26977539 3069.22070313 338.16418457 1237.26977539
		 2999.70654297 201.73431396 1237.26977539 2891.43505859 93.46300507 1237.26977539
		 2755.0053710938 23.94851494 1237.26977539 2603.77148438 -0.0045170002 1237.26977539
		 -3093.17407227 489.3977356 618.6348877 -3069.22070313 338.16418457 618.6348877 -2999.70654297 201.73431396 618.6348877
		 -2891.43505859 93.46300507 618.6348877 -2755.0053710938 23.94851494 618.6348877 -2603.77148438 -0.0045170002 618.6348877
		 3093.17407227 489.3977356 618.6348877 3069.22070313 338.16418457 618.6348877 2999.70654297 201.73431396 618.6348877
		 2891.43505859 93.46300507 618.6348877 2755.0053710938 23.94851494 618.6348877 2603.77148438 -0.0045170002 618.6348877
		 -3093.17407227 489.3977356 0 -3069.22070313 338.16418457 0 -2999.70654297 201.73431396 0
		 -2891.43505859 93.46300507 0 -2755.0053710938 23.94851494 0 -2603.77148438 -0.0045170002 0
		 3093.17407227 489.3977356 0 3069.22070313 338.16418457 0 2999.70654297 201.73431396 0
		 2891.43505859 93.46300507 0 2755.0053710938 23.94851494 0;
	setAttr ".vt[332:497]" 2603.77148438 -0.0045170002 0 -3093.17407227 489.3977356 -618.6348877
		 -3069.22070313 338.16418457 -618.6348877 -2999.70654297 201.73431396 -618.6348877
		 -2891.43505859 93.46300507 -618.6348877 -2755.0053710938 23.94851494 -618.6348877
		 -2603.77148438 -0.0045170002 -618.6348877 3093.17407227 489.3977356 -618.6348877
		 3069.22070313 338.16418457 -618.6348877 2999.70654297 201.73431396 -618.6348877 2891.43505859 93.46300507 -618.6348877
		 2755.0053710938 23.94851494 -618.6348877 2603.77148438 -0.0045170002 -618.6348877
		 -3093.17407227 489.3977356 -1237.26977539 -3069.22070313 338.16418457 -1237.26977539
		 -2999.70654297 201.73431396 -1237.26977539 -2891.43505859 93.46300507 -1237.26977539
		 -2755.0053710938 23.94851494 -1237.26977539 -2603.77148438 -0.0045170002 -1237.26977539
		 3093.17407227 489.3977356 -1237.26977539 3069.22070313 338.16418457 -1237.26977539
		 2999.70654297 201.73431396 -1237.26977539 2891.43505859 93.46300507 -1237.26977539
		 2755.0053710938 23.94851494 -1237.26977539 2603.77148438 -0.0045170002 -1237.26977539
		 -3093.17407227 489.3977356 -1855.90454102 -3069.22070313 338.16418457 -1855.90454102
		 -2999.70654297 201.73431396 -1855.90454102 -2891.43505859 93.46300507 -1855.90454102
		 -2755.0053710938 23.94851494 -1855.90454102 -2603.77148438 -0.0045170002 -1855.90454102
		 3093.17407227 489.3977356 -1855.90454102 3069.22070313 338.16418457 -1855.90454102
		 2999.70654297 201.73431396 -1855.90454102 2891.43505859 93.46300507 -1855.90454102
		 2755.0053710938 23.94851494 -1855.90454102 2603.77148438 -0.0045170002 -1855.90454102
		 -3093.17407227 489.3977356 -2474.53955078 -3069.22070313 338.16418457 -2474.53955078
		 -2999.70654297 201.73431396 -2474.53955078 -2891.43505859 93.46300507 -2474.53955078
		 -2755.0053710938 23.94851494 -2474.53955078 -2603.77148438 -0.0045170002 -2474.53955078
		 3093.17407227 489.3977356 -2474.53955078 3069.22070313 338.16418457 -2474.53955078
		 2999.70654297 201.73431396 -2474.53955078 2891.43505859 93.46300507 -2474.53955078
		 2755.0053710938 23.94851494 -2474.53955078 2603.77148438 -0.0045170002 -2474.53955078
		 -2603.77148438 489.3977356 -3093.17407227 -2755.0053710938 489.3977356 -3069.22070313
		 -2891.43505859 489.3977356 -2999.70654297 -2999.70654297 489.3977356 -2891.43505859
		 -3069.22070313 489.3977356 -2755.0053710938 -3093.17407227 489.3977356 -2603.77148438
		 -3069.22070313 338.16418457 -2603.77148438 -2999.70654297 201.73431396 -2603.77148438
		 -2891.43505859 93.46300507 -2603.77148438 -2755.0053710938 23.94851494 -2603.77148438
		 -2603.77148438 -0.0045170002 -2603.77148438 -2603.77148438 23.94851494 -2755.0053710938
		 -2603.77148438 93.46300507 -2891.43505859 -2603.77148438 201.73431396 -2999.70654297
		 -2603.77148438 338.16418457 -3069.22070313 3093.17407227 489.3977356 -2603.77148438
		 3069.22070313 489.3977356 -2755.0053710938 2999.70654297 489.3977356 -2891.43505859
		 2891.43505859 489.3977356 -2999.70654297 2755.0053710938 489.3977356 -3069.22070313
		 2603.77148438 489.3977356 -3093.17407227 2603.77148438 338.16418457 -3069.22070313
		 2603.77148438 201.73431396 -2999.70654297 2603.77148438 93.46300507 -2891.43505859
		 2603.77148438 23.94851494 -2755.0053710938 2603.77148438 -0.0045170002 -2603.77148438
		 2755.0053710938 23.94851494 -2603.77148438 2891.43505859 93.46300507 -2603.77148438
		 2999.70654297 201.73431396 -2603.77148438 3069.22070313 338.16418457 -2603.77148438
		 -2474.53955078 489.3977356 -3093.17407227 -2474.53955078 338.16418457 -3069.22070313
		 -2474.53955078 201.73431396 -2999.70654297 -2474.53955078 93.46300507 -2891.43505859
		 -2474.53955078 23.94851494 -2755.0053710938 -2474.53955078 -0.0045170002 -2603.77148438
		 -1855.90454102 489.3977356 -3093.17407227 -1855.90454102 338.16418457 -3069.22070313
		 -1855.90454102 201.73431396 -2999.70654297 -1855.90454102 93.46300507 -2891.43505859
		 -1855.90454102 23.94851494 -2755.0053710938 -1855.90454102 -0.0045170002 -2603.77148438
		 -1237.26977539 489.3977356 -3093.17407227 -1237.26977539 338.16418457 -3069.22070313
		 -1237.26977539 201.73431396 -2999.70654297 -1237.26977539 93.46300507 -2891.43505859
		 -1237.26977539 23.94851494 -2755.0053710938 -1237.26977539 -0.0045170002 -2603.77148438
		 -618.6348877 489.3977356 -3093.17407227 -618.6348877 338.16418457 -3069.22070313
		 -618.6348877 201.73431396 -2999.70654297 -618.6348877 93.46300507 -2891.43505859
		 -618.6348877 23.94851494 -2755.0053710938 -618.6348877 -0.0045170002 -2603.77148438
		 0 489.3977356 -3093.17407227 0 338.16418457 -3069.22070313 0 201.73431396 -2999.70654297
		 0 93.46300507 -2891.43505859 0 23.94851494 -2755.0053710938 0 -0.0045170002 -2603.77148438
		 618.6348877 489.3977356 -3093.17407227 618.6348877 338.16418457 -3069.22070313 618.6348877 201.73431396 -2999.70654297
		 618.6348877 93.46300507 -2891.43505859 618.6348877 23.94851494 -2755.0053710938 618.6348877 -0.0045170002 -2603.77148438
		 1237.26977539 489.3977356 -3093.17407227 1237.26977539 338.16418457 -3069.22070313
		 1237.26977539 201.73431396 -2999.70654297 1237.26977539 93.46300507 -2891.43505859
		 1237.26977539 23.94851494 -2755.0053710938 1237.26977539 -0.0045170002 -2603.77148438
		 1855.90454102 489.3977356 -3093.17407227 1855.90454102 338.16418457 -3069.22070313
		 1855.90454102 201.73431396 -2999.70654297 1855.90454102 93.46300507 -2891.43505859
		 1855.90454102 23.94851494 -2755.0053710938 1855.90454102 -0.0045170002 -2603.77148438
		 2474.53955078 489.3977356 -3093.17407227 2474.53955078 338.16418457 -3069.22070313
		 2474.53955078 201.73431396 -2999.70654297 2474.53955078 93.46300507 -2891.43505859
		 2474.53955078 23.94851494 -2755.0053710938 2474.53955078 -0.0045170002 -2603.77148438
		 -3069.22070313 543.83013916 2755.0053710938 -2999.70654297 543.83013916 2891.43505859
		 -2891.43505859 543.83013916 2999.70654297 -2755.0053710938 543.83013916 3069.22070313
		 -2603.77148438 543.83013916 3093.17407227 -3093.17407227 543.83013916 2603.77148438
		 2755.0053710938 543.83013916 3069.22070313 2891.43505859 543.83013916 2999.70654297
		 2999.70654297 543.83013916 2891.43505859 3069.22070313 543.83013916 2755.0053710938
		 3093.17407227 543.83013916 2603.77148438 2603.77148438 543.83013916 3093.17407227
		 -2755.0053710938 543.83013916 -3069.22070313 -2891.43505859 543.83013916 -2999.70654297
		 -2999.70654297 543.83013916 -2891.43505859 -3069.22070313 543.83013916 -2755.0053710938
		 -3093.17407227 543.83013916 -2603.77148438 -2603.77148438 543.83013916 -3093.17407227
		 3069.22070313 543.83013916 -2755.0053710938 2999.70654297 543.83013916 -2891.43505859
		 2891.43505859 543.83013916 -2999.70654297 2755.0053710938 543.83013916 -3069.22070313
		 2603.77148438 543.83013916 -3093.17407227 3093.17407227 543.83013916 -2603.77148438
		 -3069.22094727 1818.51489258 2755.0053710938 -2999.70678711 1818.51489258 2891.43505859
		 -2891.43530273 1818.51489258 2999.70654297 -2755.0056152344 1818.51489258 3069.22070313
		 -2603.77172852 1818.51489258 3093.17407227 -3093.17407227 1818.51489258 2603.77148438
		 2755.0053710938 1818.51489258 3069.22070313 2891.43481445 1818.51489258 2999.70654297
		 2999.70629883 1818.51489258 2891.43505859;
	setAttr ".vt[498:644]" 3069.22045898 1818.51489258 2755.0053710938 3093.17382813 1818.51489258 2603.77148438
		 2603.77124023 1818.51489258 3093.17407227 -2755.0056152344 1818.51489258 -3069.22070313
		 -2891.43530273 1818.51489258 -2999.70654297 -2999.70678711 1818.51489258 -2891.43505859
		 -3069.22094727 1818.51489258 -2755.0053710938 -3093.17407227 1818.51489258 -2603.77148438
		 -2603.77172852 1818.51489258 -3093.17407227 3069.22045898 1818.51489258 -2755.0053710938
		 2999.70629883 1818.51489258 -2891.43505859 2891.43481445 1818.51489258 -2999.70654297
		 2755.0053710938 1818.51489258 -3069.22070313 2603.77124023 1818.51489258 -3093.17407227
		 3093.17382813 1818.51489258 -2603.77148438 -3069.22094727 3529.074462891 2755.0053710938
		 -2999.70703125 3529.074462891 2891.43505859 -2891.43530273 3529.074462891 2999.70654297
		 -2755.005859375 3529.074462891 3069.22070313 -2603.77197266 3529.074462891 3093.17407227
		 -3093.17407227 3529.074462891 2603.77148438 2755.0051269531 3529.074462891 3069.22070313
		 2891.43457031 3529.074462891 2999.70654297 2999.70629883 3529.074462891 2891.43505859
		 3069.22021484 3529.074462891 2755.0053710938 3093.17358398 3529.074462891 2603.77148438
		 2603.77124023 3529.074462891 3093.17407227 -2755.005859375 3529.074462891 -3069.22070313
		 -2891.43530273 3529.074462891 -2999.70654297 -2999.70703125 3529.074462891 -2891.43505859
		 -3069.22094727 3529.074462891 -2755.0053710938 -3093.17407227 3529.074462891 -2603.77148438
		 -2603.77197266 3529.074462891 -3093.17407227 3069.22021484 3529.074462891 -2755.0053710938
		 2999.70629883 3529.074462891 -2891.43505859 2891.43457031 3529.074462891 -2999.70654297
		 2755.0051269531 3529.074462891 -3069.22070313 2603.77124023 3529.074462891 -3093.17407227
		 3093.17358398 3529.074462891 -2603.77148438 -3046.43969727 341.86508179 2751.30444336
		 -2980.32788086 352.60568237 2884.39550781 -2884.39550781 352.60568237 2980.32788086
		 -2751.30444336 341.86508179 3046.43969727 -2740.56396484 208.77392578 2980.32788086
		 -2740.5637207 112.84141541 2884.39550781 -2751.30444336 46.72924423 2751.30444336
		 -2884.39550781 112.84141541 2740.5637207 -2980.32788086 208.77392578 2740.56396484
		 -2924.089111328 229.20370483 2863.96557617 -2863.96557617 229.20370483 2924.08984375
		 -2863.96557617 169.079788208 2863.96557617 2751.30444336 341.86508179 3046.43969727
		 2884.39550781 352.60568237 2980.32788086 2980.32788086 352.60568237 2884.39550781
		 3046.43969727 341.86508179 2751.30444336 2980.32788086 208.77392578 2740.56396484
		 2884.39550781 112.84141541 2740.5637207 2751.30444336 46.72924423 2751.30444336 2740.5637207 112.84141541 2884.39550781
		 2740.56396484 208.77392578 2980.32788086 2863.96557617 229.20370483 2924.089111328
		 2924.08984375 229.20370483 2863.96557617 2863.96557617 169.079788208 2863.96557617
		 -2751.30444336 341.86508179 -3046.43969727 -2884.39550781 352.60568237 -2980.32788086
		 -2980.32788086 352.60568237 -2884.39550781 -3046.43969727 341.86508179 -2751.30444336
		 -2980.32788086 208.77392578 -2740.56396484 -2884.39550781 112.84141541 -2740.5637207
		 -2751.30444336 46.72924423 -2751.30444336 -2740.5637207 112.84141541 -2884.39550781
		 -2740.56396484 208.77392578 -2980.32788086 -2863.96557617 229.20370483 -2924.089111328
		 -2924.08984375 229.20370483 -2863.96557617 -2863.96557617 169.079788208 -2863.96557617
		 3046.43969727 341.86508179 -2751.30444336 2980.32788086 352.60568237 -2884.39550781
		 2884.39550781 352.60568237 -2980.32788086 2751.30444336 341.86508179 -3046.43969727
		 2740.56396484 208.77392578 -2980.32788086 2740.5637207 112.84141541 -2884.39550781
		 2751.30444336 46.72924423 -2751.30444336 2884.39550781 112.84141541 -2740.5637207
		 2980.32788086 208.77392578 -2740.56396484 2924.089111328 229.20370483 -2863.96557617
		 2863.96557617 229.20370483 -2924.08984375 2863.96557617 169.079788208 -2863.96557617
		 2891.43457031 3460.85766602 2999.70654297 2999.70629883 3460.85766602 2891.43505859
		 3069.22021484 3460.85766602 2755.0053710938 3093.17358398 3460.85766602 2603.77148438
		 3093.17358398 3460.85766602 2474.53955078 3093.17358398 3460.85766602 1855.90454102
		 3093.17358398 3460.85766602 1237.26977539 3093.17358398 3460.85766602 618.6348877
		 3093.17358398 3460.85766602 0 3093.17358398 3460.85766602 -618.6348877 3093.17358398 3460.85766602 -1237.26977539
		 3093.17358398 3460.85766602 -1855.90454102 3093.17358398 3460.85766602 -2474.53955078
		 3093.17358398 3460.85766602 -2603.77148438 3069.22021484 3460.85766602 -2755.0053710938
		 2999.70629883 3460.85766602 -2891.43505859 2891.43457031 3460.85766602 -2999.70654297
		 2755.0051269531 3460.85766602 -3069.22070313 2603.77124023 3460.85766602 -3093.17407227
		 2474.5390625 3460.85766602 -3093.17407227 1855.9041748 3460.85766602 -3093.17407227
		 1237.26940918 3460.85766602 -3093.17407227 618.63452148 3460.85766602 -3093.17407227
		 -0.00036137734 3460.85766602 -3093.17407227 -618.63525391 3460.85766602 -3093.17407227
		 -1237.2701416 3460.85766602 -3093.17407227 -1855.90490723 3460.85766602 -3093.17407227
		 -2474.53979492 3460.85766602 -3093.17407227 -2603.77197266 3460.85766602 -3093.17407227
		 -2755.005859375 3460.85766602 -3069.22070313 -2891.43530273 3460.85766602 -2999.70654297
		 -2999.70703125 3460.85766602 -2891.43505859 -3069.22094727 3460.85766602 -2755.0053710938
		 -3093.17407227 3460.85766602 -2603.77148438 -3093.17407227 3460.85766602 -2474.53955078
		 -3093.17407227 3460.85766602 -1855.90454102 -3093.17407227 3460.85766602 -1237.26977539
		 -3093.17407227 3460.85766602 -618.6348877 -3093.17407227 3460.85766602 0 -3093.17407227 3460.85766602 618.6348877
		 -3093.17407227 3460.85766602 1237.26977539 -3093.17407227 3460.85766602 1855.90454102
		 -3093.17407227 3460.85766602 2474.53955078 -3093.17407227 3460.85766602 2603.77148438
		 -3069.22094727 3460.85766602 2755.0053710938 -2999.70703125 3460.85766602 2891.43505859
		 -2891.43530273 3460.85766602 2999.70654297 -2755.005859375 3460.85766602 3069.22070313
		 -2603.77197266 3460.85766602 3093.17407227 -2474.53979492 3460.85766602 3093.17407227
		 -1855.90490723 3460.85766602 3093.17407227 -1237.2701416 3460.85766602 3093.17407227
		 -618.63525391 3460.85766602 3093.17407227 -0.00036137734 3460.85766602 3093.17407227
		 618.63452148 3460.85766602 3093.17407227 1237.26940918 3460.85766602 3093.17407227
		 1855.9041748 3460.85766602 3093.17407227 2474.5390625 3460.85766602 3093.17407227
		 2603.77124023 3460.85766602 3093.17407227 2755.0051269531 3460.85766602 3069.22070313;
	setAttr -s 1260 ".ed";
	setAttr ".ed[0:165]"  215 199 1 199 209 1 209 0 1 0 215 1 209 221 1 221 1 1
		 1 0 1 221 227 1 227 2 1 2 1 1 227 233 1 233 3 1 3 2 1 233 239 1 239 4 1 4 3 1 239 245 1
		 245 5 1 5 4 1 245 251 1 251 6 1 6 5 1 251 257 1 257 7 1 7 6 1 257 263 1 263 8 1 8 7 1
		 263 274 1 274 284 1 284 8 1 290 215 1 0 9 1 9 290 1 1 10 1 10 9 1 2 11 1 11 10 1
		 3 12 1 12 11 1 4 13 1 13 12 1 5 14 1 14 13 1 6 15 1 15 14 1 7 16 1 16 15 1 8 17 1
		 17 16 1 284 296 1 296 17 1 302 290 1 9 18 1 18 302 1 10 19 1 19 18 1 11 20 1 20 19 1
		 12 21 1 21 20 1 13 22 1 22 21 1 14 23 1 23 22 1 15 24 1 24 23 1 16 25 1 25 24 1 17 26 1
		 26 25 1 296 308 1 308 26 1 314 302 1 18 27 1 27 314 1 19 28 1 28 27 1 20 29 1 29 28 1
		 21 30 1 30 29 1 22 31 1 31 30 1 23 32 1 32 31 1 24 33 1 33 32 1 25 34 1 34 33 1 26 35 1
		 35 34 1 308 320 1 320 35 1 326 314 1 27 36 1 36 326 1 28 37 1 37 36 1 29 38 1 38 37 1
		 30 39 1 39 38 1 31 40 1 40 39 1 32 41 1 41 40 1 33 42 1 42 41 1 34 43 1 43 42 1 35 44 1
		 44 43 1 320 332 1 332 44 1 338 326 1 36 45 1 45 338 1 37 46 1 46 45 1 38 47 1 47 46 1
		 39 48 1 48 47 1 40 49 1 49 48 1 41 50 1 50 49 1 42 51 1 51 50 1 43 52 1 52 51 1 44 53 1
		 53 52 1 332 344 1 344 53 1 350 338 1 45 54 1 54 350 1 46 55 1 55 54 1 47 56 1 56 55 1
		 48 57 1 57 56 1 49 58 1 58 57 1 50 59 1 59 58 1 51 60 1 60 59 1 52 61 1 61 60 1 53 62 1
		 62 61 1 344 356 1 356 62 1 362 350 1 54 63 1 63 362 1 55 64 1 64 63 1 56 65 1 65 64 1
		 57 66 1 66 65 1;
	setAttr ".ed[166:331]" 58 67 1 67 66 1 59 68 1 68 67 1 60 69 1 69 68 1 61 70 1
		 70 69 1 62 71 1 71 70 1 356 368 1 368 71 1 374 362 1 63 72 1 72 374 1 64 73 1 73 72 1
		 65 74 1 74 73 1 66 75 1 75 74 1 67 76 1 76 75 1 68 77 1 77 76 1 69 78 1 78 77 1 70 79 1
		 79 78 1 71 80 1 80 79 1 368 380 1 380 80 1 416 391 1 391 374 1 72 416 1 73 422 1
		 422 416 1 74 428 1 428 422 1 75 434 1 434 428 1 76 440 1 440 434 1 77 446 1 446 440 1
		 78 452 1 452 446 1 79 458 1 458 452 1 80 464 1 464 458 1 380 406 1 406 464 1 204 194 1
		 194 469 1 469 81 1 81 204 1 216 204 1 81 83 1 83 216 1 222 216 1 83 84 1 84 222 1
		 228 222 1 84 85 1 85 228 1 234 228 1 85 86 1 86 234 1 240 234 1 86 87 1 87 240 1
		 246 240 1 87 88 1 88 246 1 252 246 1 88 89 1 89 252 1 258 252 1 89 90 1 90 258 1
		 476 264 1 264 258 1 90 476 1 279 269 1 269 475 1 475 91 1 91 279 1 291 279 1 91 93 1
		 93 291 1 303 291 1 93 95 1 95 303 1 315 303 1 95 97 1 97 315 1 327 315 1 97 99 1
		 99 327 1 339 327 1 99 101 1 101 339 1 351 339 1 101 103 1 103 351 1 363 351 1 103 105 1
		 105 363 1 375 363 1 105 107 1 107 375 1 488 396 1 396 375 1 107 488 1 470 189 1 189 210 1
		 210 82 1 82 470 1 210 285 1 285 92 1 92 82 1 285 297 1 297 94 1 94 92 1 297 309 1
		 309 96 1 96 94 1 309 321 1 321 98 1 98 96 1 321 333 1 333 100 1 100 98 1 333 345 1
		 345 102 1 102 100 1 345 357 1 357 104 1 104 102 1 357 369 1 369 106 1 106 104 1 369 386 1
		 386 481 1 481 106 1 482 381 1 381 411 1 411 108 1 108 482 1 411 417 1 417 109 1 109 108 1
		 417 423 1 423 110 1 110 109 1 423 429 1 429 111 1 111 110 1 429 435 1 435 112 1 112 111 1
		 435 441 1 441 113 1 113 112 1;
	setAttr ".ed[332:497]" 441 447 1 447 114 1 114 113 1 447 453 1 453 115 1 115 114 1
		 453 459 1 459 116 1 116 115 1 459 401 1 401 487 1 487 116 1 469 493 1 493 117 1 117 81 1
		 494 470 1 82 118 1 118 494 1 117 119 1 119 83 1 119 120 1 120 84 1 120 121 1 121 85 1
		 121 122 1 122 86 1 122 123 1 123 87 1 123 124 1 124 88 1 124 125 1 125 89 1 125 126 1
		 126 90 1 500 476 1 126 500 1 475 499 1 499 127 1 127 91 1 92 128 1 128 118 1 127 129 1
		 129 93 1 94 130 1 130 128 1 129 131 1 131 95 1 96 132 1 132 130 1 131 133 1 133 97 1
		 98 134 1 134 132 1 133 135 1 135 99 1 100 136 1 136 134 1 135 137 1 137 101 1 102 138 1
		 138 136 1 137 139 1 139 103 1 104 140 1 140 138 1 139 141 1 141 105 1 106 142 1 142 140 1
		 141 143 1 143 107 1 481 505 1 505 142 1 512 488 1 143 512 1 506 482 1 108 144 1 144 506 1
		 109 145 1 145 144 1 110 146 1 146 145 1 111 147 1 147 146 1 112 148 1 148 147 1 113 149 1
		 149 148 1 114 150 1 150 149 1 115 151 1 151 150 1 116 152 1 152 151 1 487 511 1 511 152 1
		 493 633 1 517 153 0 153 634 1 518 628 1 118 627 1 154 518 0 153 155 0 155 635 1 155 156 0
		 156 636 1 156 157 0 157 637 1 157 158 0 158 638 1 158 159 0 159 639 1 159 160 0 160 640 1
		 160 161 0 161 641 1 161 162 0 162 642 1 524 643 1 162 524 0 499 588 1 523 163 0 163 589 1
		 128 626 1 164 154 0 163 165 0 165 590 1 130 625 1 166 164 0 165 167 0 167 591 1 132 624 1
		 168 166 0 167 169 0 169 592 1 134 623 1 170 168 0 169 171 0 171 593 1 136 622 1 172 170 0
		 171 173 0 173 594 1 138 621 1 174 172 0 173 175 0 175 595 1 140 620 1 176 174 0 175 177 0
		 177 596 1 142 619 1 178 176 0 177 179 0 179 597 1 505 618 1 529 178 0 536 598 1 179 536 0
		 530 613 1 144 612 1 180 530 0 145 611 1 181 180 0 146 610 1 182 181 0;
	setAttr ".ed[498:663]" 147 609 1 183 182 0 148 608 1 184 183 0 149 607 1 185 184 0
		 150 606 1 186 185 0 151 605 1 187 186 0 152 604 1 188 187 0 511 603 1 535 188 0 194 193 1
		 193 468 1 468 469 1 193 192 1 192 467 1 467 468 1 192 191 1 191 466 1 466 467 1 191 190 1
		 190 465 1 465 466 1 190 189 1 470 465 1 199 198 1 198 208 1 208 209 1 198 197 1 197 207 1
		 207 208 1 197 196 1 196 206 1 206 207 1 196 195 1 195 205 1 205 206 1 195 194 1 204 205 1
		 189 203 1 203 211 1 211 210 1 203 202 1 202 212 1 212 211 1 202 201 1 201 213 1 213 212 1
		 201 200 1 200 214 1 214 213 1 200 199 1 215 214 1 208 220 1 220 221 1 207 219 1 219 220 1
		 206 218 1 218 219 1 205 217 1 217 218 1 216 217 1 211 286 1 286 285 1 212 287 1 287 286 1
		 213 288 1 288 287 1 214 289 1 289 288 1 290 289 1 220 226 1 226 227 1 219 225 1 225 226 1
		 218 224 1 224 225 1 217 223 1 223 224 1 222 223 1 226 232 1 232 233 1 225 231 1 231 232 1
		 224 230 1 230 231 1 223 229 1 229 230 1 228 229 1 232 238 1 238 239 1 231 237 1 237 238 1
		 230 236 1 236 237 1 229 235 1 235 236 1 234 235 1 238 244 1 244 245 1 237 243 1 243 244 1
		 236 242 1 242 243 1 235 241 1 241 242 1 240 241 1 244 250 1 250 251 1 243 249 1 249 250 1
		 242 248 1 248 249 1 241 247 1 247 248 1 246 247 1 250 256 1 256 257 1 249 255 1 255 256 1
		 248 254 1 254 255 1 247 253 1 253 254 1 252 253 1 256 262 1 262 263 1 255 261 1 261 262 1
		 254 260 1 260 261 1 253 259 1 259 260 1 258 259 1 262 275 1 275 274 1 261 276 1 276 275 1
		 260 277 1 277 276 1 259 278 1 278 277 1 264 278 1 269 268 1 268 474 1 474 475 1 268 267 1
		 267 473 1 473 474 1 267 266 1 266 472 1 472 473 1 266 265 1 265 471 1 471 472 1 265 264 1
		 476 471 1 274 273 1 273 283 1 283 284 1 273 272 1 272 282 1 282 283 1;
	setAttr ".ed[664:829]" 272 271 1 271 281 1 281 282 1 271 270 1 270 280 1 280 281 1
		 270 269 1 279 280 1 283 295 1 295 296 1 282 294 1 294 295 1 281 293 1 293 294 1 280 292 1
		 292 293 1 291 292 1 286 298 1 298 297 1 287 299 1 299 298 1 288 300 1 300 299 1 289 301 1
		 301 300 1 302 301 1 295 307 1 307 308 1 294 306 1 306 307 1 293 305 1 305 306 1 292 304 1
		 304 305 1 303 304 1 298 310 1 310 309 1 299 311 1 311 310 1 300 312 1 312 311 1 301 313 1
		 313 312 1 314 313 1 307 319 1 319 320 1 306 318 1 318 319 1 305 317 1 317 318 1 304 316 1
		 316 317 1 315 316 1 310 322 1 322 321 1 311 323 1 323 322 1 312 324 1 324 323 1 313 325 1
		 325 324 1 326 325 1 319 331 1 331 332 1 318 330 1 330 331 1 317 329 1 329 330 1 316 328 1
		 328 329 1 327 328 1 322 334 1 334 333 1 323 335 1 335 334 1 324 336 1 336 335 1 325 337 1
		 337 336 1 338 337 1 331 343 1 343 344 1 330 342 1 342 343 1 329 341 1 341 342 1 328 340 1
		 340 341 1 339 340 1 334 346 1 346 345 1 335 347 1 347 346 1 336 348 1 348 347 1 337 349 1
		 349 348 1 350 349 1 343 355 1 355 356 1 342 354 1 354 355 1 341 353 1 353 354 1 340 352 1
		 352 353 1 351 352 1 346 358 1 358 357 1 347 359 1 359 358 1 348 360 1 360 359 1 349 361 1
		 361 360 1 362 361 1 355 367 1 367 368 1 354 366 1 366 367 1 353 365 1 365 366 1 352 364 1
		 364 365 1 363 364 1 358 370 1 370 369 1 359 371 1 371 370 1 360 372 1 372 371 1 361 373 1
		 373 372 1 374 373 1 367 379 1 379 380 1 366 378 1 378 379 1 365 377 1 377 378 1 364 376 1
		 376 377 1 375 376 1 370 387 1 387 386 1 371 388 1 388 387 1 372 389 1 389 388 1 373 390 1
		 390 389 1 391 390 1 379 407 1 407 406 1 378 408 1 408 407 1 377 409 1 409 408 1 376 410 1
		 410 409 1 396 410 1 386 385 1 385 480 1 480 481 1 385 384 1 384 479 1;
	setAttr ".ed[830:995]" 479 480 1 384 383 1 383 478 1 478 479 1 383 382 1 382 477 1
		 477 478 1 382 381 1 482 477 1 381 395 1 395 412 1 412 411 1 395 394 1 394 413 1 413 412 1
		 394 393 1 393 414 1 414 413 1 393 392 1 392 415 1 415 414 1 392 391 1 416 415 1 401 400 1
		 400 486 1 486 487 1 400 399 1 399 485 1 485 486 1 399 398 1 398 484 1 484 485 1 398 397 1
		 397 483 1 483 484 1 397 396 1 488 483 1 406 405 1 405 463 1 463 464 1 405 404 1 404 462 1
		 462 463 1 404 403 1 403 461 1 461 462 1 403 402 1 402 460 1 460 461 1 402 401 1 459 460 1
		 412 418 1 418 417 1 413 419 1 419 418 1 414 420 1 420 419 1 415 421 1 421 420 1 422 421 1
		 418 424 1 424 423 1 419 425 1 425 424 1 420 426 1 426 425 1 421 427 1 427 426 1 428 427 1
		 424 430 1 430 429 1 425 431 1 431 430 1 426 432 1 432 431 1 427 433 1 433 432 1 434 433 1
		 430 436 1 436 435 1 431 437 1 437 436 1 432 438 1 438 437 1 433 439 1 439 438 1 440 439 1
		 436 442 1 442 441 1 437 443 1 443 442 1 438 444 1 444 443 1 439 445 1 445 444 1 446 445 1
		 442 448 1 448 447 1 443 449 1 449 448 1 444 450 1 450 449 1 445 451 1 451 450 1 452 451 1
		 448 454 1 454 453 1 449 455 1 455 454 1 450 456 1 456 455 1 451 457 1 457 456 1 458 457 1
		 454 460 1 455 461 1 456 462 1 457 463 1 468 492 1 492 493 1 467 491 1 491 492 1 466 490 1
		 490 491 1 465 489 1 489 490 1 494 489 1 474 498 1 498 499 1 473 497 1 497 498 1 472 496 1
		 496 497 1 471 495 1 495 496 1 500 495 1 480 504 1 504 505 1 479 503 1 503 504 1 478 502 1
		 502 503 1 477 501 1 501 502 1 506 501 1 486 510 1 510 511 1 485 509 1 509 510 1 484 508 1
		 508 509 1 483 507 1 507 508 1 512 507 1 492 632 1 516 517 0 491 631 1 515 516 0 490 630 1
		 514 515 0 489 629 1 513 514 0 518 513 0 498 587 1 522 523 0 497 586 1;
	setAttr ".ed[996:1161]" 521 522 0 496 585 1 520 521 0 495 644 1 519 520 0 524 519 0
		 504 617 1 528 529 0 503 616 1 527 528 0 502 615 1 526 527 0 501 614 1 525 526 0 530 525 0
		 510 602 1 534 535 0 509 601 1 533 534 0 508 600 1 532 533 0 507 599 1 531 532 0 536 531 0
		 190 537 1 537 203 1 191 538 1 538 537 1 192 539 1 539 538 1 193 540 1 540 539 1 195 540 1
		 196 541 1 541 540 1 197 542 1 542 541 1 198 543 1 543 542 1 200 543 1 201 544 1 544 543 1
		 202 545 1 545 544 1 537 545 1 538 546 1 546 545 1 539 547 1 547 546 1 541 547 1 542 548 1
		 548 547 1 544 548 1 546 548 1 265 549 1 549 278 1 266 550 1 550 549 1 267 551 1 551 550 1
		 268 552 1 552 551 1 270 552 1 271 553 1 553 552 1 272 554 1 554 553 1 273 555 1 555 554 1
		 275 555 1 276 556 1 556 555 1 277 557 1 557 556 1 549 557 1 550 558 1 558 557 1 551 559 1
		 559 558 1 553 559 1 554 560 1 560 559 1 556 560 1 558 560 1 382 561 1 561 395 1 383 562 1
		 562 561 1 384 563 1 563 562 1 385 564 1 564 563 1 387 564 1 388 565 1 565 564 1 389 566 1
		 566 565 1 390 567 1 567 566 1 392 567 1 393 568 1 568 567 1 394 569 1 569 568 1 561 569 1
		 562 570 1 570 569 1 563 571 1 571 570 1 565 571 1 566 572 1 572 571 1 568 572 1 570 572 1
		 397 573 1 573 410 1 398 574 1 574 573 1 399 575 1 575 574 1 400 576 1 576 575 1 402 576 1
		 403 577 1 577 576 1 404 578 1 578 577 1 405 579 1 579 578 1 407 579 1 408 580 1 580 579 1
		 409 581 1 581 580 1 573 581 1 574 582 1 582 581 1 575 583 1 583 582 1 577 583 1 578 584 1
		 584 583 1 580 584 1 582 584 1 585 520 1 586 521 1 585 586 1 587 522 1 586 587 1 588 523 1
		 587 588 1 589 127 1 588 589 1 590 129 1 589 590 1 591 131 1 590 591 1 592 133 1 591 592 1
		 593 135 1 592 593 1 594 137 1 593 594 1 595 139 1 594 595 1 596 141 1;
	setAttr ".ed[1162:1259]" 595 596 1 597 143 1 596 597 1 598 512 1 597 598 1 599 531 1
		 598 599 1 600 532 1 599 600 1 601 533 1 600 601 1 602 534 1 601 602 1 603 535 1 602 603 1
		 604 188 1 603 604 1 605 187 1 604 605 1 606 186 1 605 606 1 607 185 1 606 607 1 608 184 1
		 607 608 1 609 183 1 608 609 1 610 182 1 609 610 1 611 181 1 610 611 1 612 180 1 611 612 1
		 613 506 1 612 613 1 614 525 1 613 614 1 615 526 1 614 615 1 616 527 1 615 616 1 617 528 1
		 616 617 1 618 529 1 617 618 1 619 178 1 618 619 1 620 176 1 619 620 1 621 174 1 620 621 1
		 622 172 1 621 622 1 623 170 1 622 623 1 624 168 1 623 624 1 625 166 1 624 625 1 626 164 1
		 625 626 1 627 154 1 626 627 1 628 494 1 627 628 1 629 513 1 628 629 1 630 514 1 629 630 1
		 631 515 1 630 631 1 632 516 1 631 632 1 633 517 1 632 633 1 634 117 1 633 634 1 635 119 1
		 634 635 1 636 120 1 635 636 1 637 121 1 636 637 1 638 122 1 637 638 1 639 123 1 638 639 1
		 640 124 1 639 640 1 641 125 1 640 641 1 642 126 1 641 642 1 643 500 1 642 643 1 644 519 1
		 643 644 1 644 585 1;
	setAttr -s 616 -ch 2460 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -3
		mu 0 4 2 4 5 3
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 -12
		mu 0 4 8 10 11 9
		f 4 16 17 18 -15
		mu 0 4 10 12 13 11
		f 4 19 20 21 -18
		mu 0 4 12 14 15 13
		f 4 22 23 24 -21
		mu 0 4 14 16 17 15
		f 4 25 26 27 -24
		mu 0 4 16 18 19 17
		f 4 28 29 30 -27
		mu 0 4 18 20 21 19
		f 4 31 -4 32 33
		mu 0 4 22 0 3 23
		f 4 -7 34 35 -33
		mu 0 4 3 5 24 23
		f 4 -10 36 37 -35
		mu 0 4 5 7 25 24
		f 4 -13 38 39 -37
		mu 0 4 7 9 26 25
		f 4 -16 40 41 -39
		mu 0 4 9 11 27 26
		f 4 -19 42 43 -41
		mu 0 4 11 13 28 27
		f 4 -22 44 45 -43
		mu 0 4 13 15 29 28
		f 4 -25 46 47 -45
		mu 0 4 15 17 30 29
		f 4 -28 48 49 -47
		mu 0 4 17 19 31 30
		f 4 -31 50 51 -49
		mu 0 4 19 21 32 31
		f 4 52 -34 53 54
		mu 0 4 33 22 23 34
		f 4 -36 55 56 -54
		mu 0 4 23 24 35 34
		f 4 -38 57 58 -56
		mu 0 4 24 25 36 35
		f 4 -40 59 60 -58
		mu 0 4 25 26 37 36
		f 4 -42 61 62 -60
		mu 0 4 26 27 38 37
		f 4 -44 63 64 -62
		mu 0 4 27 28 39 38
		f 4 -46 65 66 -64
		mu 0 4 28 29 40 39
		f 4 -48 67 68 -66
		mu 0 4 29 30 41 40
		f 4 -50 69 70 -68
		mu 0 4 30 31 42 41
		f 4 -52 71 72 -70
		mu 0 4 31 32 43 42
		f 4 73 -55 74 75
		mu 0 4 44 33 34 45
		f 4 -57 76 77 -75
		mu 0 4 34 35 46 45
		f 4 -59 78 79 -77
		mu 0 4 35 36 47 46
		f 4 -61 80 81 -79
		mu 0 4 36 37 48 47
		f 4 -63 82 83 -81
		mu 0 4 37 38 49 48
		f 4 -65 84 85 -83
		mu 0 4 38 39 50 49
		f 4 -67 86 87 -85
		mu 0 4 39 40 51 50
		f 4 -69 88 89 -87
		mu 0 4 40 41 52 51
		f 4 -71 90 91 -89
		mu 0 4 41 42 53 52
		f 4 -73 92 93 -91
		mu 0 4 42 43 54 53
		f 4 94 -76 95 96
		mu 0 4 55 44 45 56
		f 4 -78 97 98 -96
		mu 0 4 45 46 57 56
		f 4 -80 99 100 -98
		mu 0 4 46 47 58 57
		f 4 -82 101 102 -100
		mu 0 4 47 48 59 58
		f 4 -84 103 104 -102
		mu 0 4 48 49 60 59
		f 4 -86 105 106 -104
		mu 0 4 49 50 61 60
		f 4 -88 107 108 -106
		mu 0 4 50 51 62 61
		f 4 -90 109 110 -108
		mu 0 4 51 52 63 62
		f 4 -92 111 112 -110
		mu 0 4 52 53 64 63
		f 4 -94 113 114 -112
		mu 0 4 53 54 65 64
		f 4 115 -97 116 117
		mu 0 4 66 55 56 67
		f 4 -99 118 119 -117
		mu 0 4 56 57 68 67
		f 4 -101 120 121 -119
		mu 0 4 57 58 69 68
		f 4 -103 122 123 -121
		mu 0 4 58 59 70 69
		f 4 -105 124 125 -123
		mu 0 4 59 60 71 70
		f 4 -107 126 127 -125
		mu 0 4 60 61 72 71
		f 4 -109 128 129 -127
		mu 0 4 61 62 73 72
		f 4 -111 130 131 -129
		mu 0 4 62 63 74 73
		f 4 -113 132 133 -131
		mu 0 4 63 64 75 74
		f 4 -115 134 135 -133
		mu 0 4 64 65 76 75
		f 4 136 -118 137 138
		mu 0 4 77 66 67 78
		f 4 -120 139 140 -138
		mu 0 4 67 68 79 78
		f 4 -122 141 142 -140
		mu 0 4 68 69 80 79
		f 4 -124 143 144 -142
		mu 0 4 69 70 81 80
		f 4 -126 145 146 -144
		mu 0 4 70 71 82 81
		f 4 -128 147 148 -146
		mu 0 4 71 72 83 82
		f 4 -130 149 150 -148
		mu 0 4 72 73 84 83
		f 4 -132 151 152 -150
		mu 0 4 73 74 85 84
		f 4 -134 153 154 -152
		mu 0 4 74 75 86 85
		f 4 -136 155 156 -154
		mu 0 4 75 76 87 86
		f 4 157 -139 158 159
		mu 0 4 88 77 78 89
		f 4 -141 160 161 -159
		mu 0 4 78 79 90 89
		f 4 -143 162 163 -161
		mu 0 4 79 80 91 90
		f 4 -145 164 165 -163
		mu 0 4 80 81 92 91
		f 4 -147 166 167 -165
		mu 0 4 81 82 93 92
		f 4 -149 168 169 -167
		mu 0 4 82 83 94 93
		f 4 -151 170 171 -169
		mu 0 4 83 84 95 94
		f 4 -153 172 173 -171
		mu 0 4 84 85 96 95
		f 4 -155 174 175 -173
		mu 0 4 85 86 97 96
		f 4 -157 176 177 -175
		mu 0 4 86 87 98 97
		f 4 178 -160 179 180
		mu 0 4 99 88 89 100
		f 4 -162 181 182 -180
		mu 0 4 89 90 101 100
		f 4 -164 183 184 -182
		mu 0 4 90 91 102 101
		f 4 -166 185 186 -184
		mu 0 4 91 92 103 102
		f 4 -168 187 188 -186
		mu 0 4 92 93 104 103
		f 4 -170 189 190 -188
		mu 0 4 93 94 105 104
		f 4 -172 191 192 -190
		mu 0 4 94 95 106 105
		f 4 -174 193 194 -192
		mu 0 4 95 96 107 106
		f 4 -176 195 196 -194
		mu 0 4 96 97 108 107
		f 4 -178 197 198 -196
		mu 0 4 97 98 109 108
		f 4 199 200 -181 201
		mu 0 4 110 111 99 100
		f 4 -183 202 203 -202
		mu 0 4 100 101 112 110
		f 4 -185 204 205 -203
		mu 0 4 101 102 113 112
		f 4 -187 206 207 -205
		mu 0 4 102 103 114 113
		f 4 -189 208 209 -207
		mu 0 4 103 104 115 114
		f 4 -191 210 211 -209
		mu 0 4 104 105 116 115
		f 4 -193 212 213 -211
		mu 0 4 105 106 117 116
		f 4 -195 214 215 -213
		mu 0 4 106 107 118 117
		f 4 -197 216 217 -215
		mu 0 4 107 108 119 118
		f 4 -199 218 219 -217
		mu 0 4 108 109 120 119
		f 4 220 221 222 223
		mu 0 4 121 122 123 124
		f 4 224 -224 225 226
		mu 0 4 125 121 124 126
		f 4 227 -227 228 229
		mu 0 4 127 125 126 128
		f 4 230 -230 231 232
		mu 0 4 129 127 128 130
		f 4 233 -233 234 235
		mu 0 4 131 129 130 132
		f 4 236 -236 237 238
		mu 0 4 133 131 132 134
		f 4 239 -239 240 241
		mu 0 4 135 133 134 136
		f 4 242 -242 243 244
		mu 0 4 137 135 136 138
		f 4 245 -245 246 247
		mu 0 4 139 137 138 140
		f 4 248 249 -248 250
		mu 0 4 141 142 139 140
		f 4 251 252 253 254
		mu 0 4 143 144 145 146
		f 4 255 -255 256 257
		mu 0 4 147 143 146 148
		f 4 258 -258 259 260
		mu 0 4 149 147 148 150
		f 4 261 -261 262 263
		mu 0 4 151 149 150 152
		f 4 264 -264 265 266
		mu 0 4 153 151 152 154
		f 4 267 -267 268 269
		mu 0 4 155 153 154 156
		f 4 270 -270 271 272
		mu 0 4 157 155 156 158
		f 4 273 -273 274 275
		mu 0 4 159 157 158 160
		f 4 276 -276 277 278
		mu 0 4 161 159 160 162
		f 4 279 280 -279 281
		mu 0 4 163 164 161 162
		f 4 282 283 284 285
		mu 0 4 165 166 167 168
		f 4 286 287 288 -285
		mu 0 4 167 169 170 168
		f 4 289 290 291 -288
		mu 0 4 169 171 172 170
		f 4 292 293 294 -291
		mu 0 4 171 173 174 172
		f 4 295 296 297 -294
		mu 0 4 173 175 176 174
		f 4 298 299 300 -297
		mu 0 4 175 177 178 176
		f 4 301 302 303 -300
		mu 0 4 177 179 180 178
		f 4 304 305 306 -303
		mu 0 4 179 181 182 180
		f 4 307 308 309 -306
		mu 0 4 181 183 184 182
		f 4 310 311 312 -309
		mu 0 4 183 185 186 184
		f 4 313 314 315 316
		mu 0 4 187 188 189 190
		f 4 317 318 319 -316
		mu 0 4 189 191 192 190
		f 4 320 321 322 -319
		mu 0 4 191 193 194 192
		f 4 323 324 325 -322
		mu 0 4 193 195 196 194
		f 4 326 327 328 -325
		mu 0 4 195 197 198 196
		f 4 329 330 331 -328
		mu 0 4 197 199 200 198
		f 4 332 333 334 -331
		mu 0 4 199 201 202 200
		f 4 335 336 337 -334
		mu 0 4 201 203 204 202
		f 4 338 339 340 -337
		mu 0 4 203 205 206 204
		f 4 341 342 343 -340
		mu 0 4 205 207 208 206
		f 4 -223 344 345 346
		mu 0 4 124 123 209 210
		f 4 347 -286 348 349
		mu 0 4 211 165 168 212
		f 4 -226 -347 350 351
		mu 0 4 126 124 210 213
		f 4 -229 -352 352 353
		mu 0 4 128 126 213 214
		f 4 -232 -354 354 355
		mu 0 4 130 128 214 215
		f 4 -235 -356 356 357
		mu 0 4 132 130 215 216
		f 4 -238 -358 358 359
		mu 0 4 134 132 216 217
		f 4 -241 -360 360 361
		mu 0 4 136 134 217 218
		f 4 -244 -362 362 363
		mu 0 4 138 136 218 219
		f 4 -247 -364 364 365
		mu 0 4 140 138 219 220
		f 4 366 -251 -366 367
		mu 0 4 221 141 140 220
		f 4 -254 368 369 370
		mu 0 4 146 145 222 223
		f 4 -289 371 372 -349
		mu 0 4 168 170 224 212
		f 4 -257 -371 373 374
		mu 0 4 148 146 223 225
		f 4 -292 375 376 -372
		mu 0 4 170 172 226 224
		f 4 -260 -375 377 378
		mu 0 4 150 148 225 227
		f 4 -295 379 380 -376
		mu 0 4 172 174 228 226
		f 4 -263 -379 381 382
		mu 0 4 152 150 227 229
		f 4 -298 383 384 -380
		mu 0 4 174 176 230 228
		f 4 -266 -383 385 386
		mu 0 4 154 152 229 231
		f 4 -301 387 388 -384
		mu 0 4 176 178 232 230
		f 4 -269 -387 389 390
		mu 0 4 156 154 231 233
		f 4 -304 391 392 -388
		mu 0 4 178 180 234 232
		f 4 -272 -391 393 394
		mu 0 4 158 156 233 235
		f 4 -307 395 396 -392
		mu 0 4 180 182 236 234
		f 4 -275 -395 397 398
		mu 0 4 160 158 235 237
		f 4 -310 399 400 -396
		mu 0 4 182 184 238 236
		f 4 -278 -399 401 402
		mu 0 4 162 160 237 239
		f 4 -313 403 404 -400
		mu 0 4 184 186 240 238
		f 4 405 -282 -403 406
		mu 0 4 241 163 162 239
		f 4 407 -317 408 409
		mu 0 4 242 187 190 243
		f 4 -320 410 411 -409
		mu 0 4 190 192 244 243
		f 4 -323 412 413 -411
		mu 0 4 192 194 245 244
		f 4 -326 414 415 -413
		mu 0 4 194 196 246 245
		f 4 -329 416 417 -415
		mu 0 4 196 198 247 246
		f 4 -332 418 419 -417
		mu 0 4 198 200 248 247
		f 4 -335 420 421 -419
		mu 0 4 200 202 249 248
		f 4 -338 422 423 -421
		mu 0 4 202 204 250 249
		f 4 -341 424 425 -423
		mu 0 4 204 206 251 250
		f 4 -344 426 427 -425
		mu 0 4 206 208 252 251
		f 4 -346 428 1238 1237
		mu 0 4 210 209 633 634
		f 4 1225 -350 432 1226
		mu 0 4 628 211 212 627
		f 4 -351 -1238 1240 1239
		mu 0 4 213 210 634 635
		f 4 -353 -1240 1242 1241
		mu 0 4 214 213 635 636
		f 4 -355 -1242 1244 1243
		mu 0 4 215 214 636 637
		f 4 -357 -1244 1246 1245
		mu 0 4 216 215 637 638
		f 4 -359 -1246 1248 1247
		mu 0 4 217 216 638 639
		f 4 -361 -1248 1250 1249
		mu 0 4 218 217 639 640
		f 4 -363 -1250 1252 1251
		mu 0 4 219 218 640 641
		f 4 -365 -1252 1254 1253
		mu 0 4 220 219 641 642
		f 4 1255 -368 -1254 1256
		mu 0 4 643 221 220 642
		f 4 -370 452 1148 1147
		mu 0 4 223 222 588 589
		f 4 -373 455 1224 -433
		mu 0 4 212 224 626 627
		f 4 -374 -1148 1150 1149
		mu 0 4 225 223 589 590
		f 4 -377 459 1222 -456
		mu 0 4 224 226 625 626
		f 4 -378 -1150 1152 1151
		mu 0 4 227 225 590 591
		f 4 -381 463 1220 -460
		mu 0 4 226 228 624 625
		f 4 -382 -1152 1154 1153
		mu 0 4 229 227 591 592
		f 4 -385 467 1218 -464
		mu 0 4 228 230 623 624
		f 4 -386 -1154 1156 1155
		mu 0 4 231 229 592 593
		f 4 -389 471 1216 -468
		mu 0 4 230 232 622 623
		f 4 -390 -1156 1158 1157
		mu 0 4 233 231 593 594
		f 4 -393 475 1214 -472
		mu 0 4 232 234 621 622
		f 4 -394 -1158 1160 1159
		mu 0 4 235 233 594 595
		f 4 -397 479 1212 -476
		mu 0 4 234 236 620 621
		f 4 -398 -1160 1162 1161
		mu 0 4 237 235 595 596
		f 4 -401 483 1210 -480
		mu 0 4 236 238 619 620
		f 4 -402 -1162 1164 1163
		mu 0 4 239 237 596 597
		f 4 -405 487 1208 -484
		mu 0 4 238 240 618 619
		f 4 1165 -407 -1164 1166
		mu 0 4 598 241 239 597
		f 4 1195 -410 492 1196
		mu 0 4 613 242 243 612
		f 4 -412 494 1194 -493
		mu 0 4 243 244 611 612
		f 4 -414 496 1192 -495
		mu 0 4 244 245 610 611
		f 4 -416 498 1190 -497
		mu 0 4 245 246 609 610
		f 4 -418 500 1188 -499
		mu 0 4 246 247 608 609
		f 4 -420 502 1186 -501
		mu 0 4 247 248 607 608
		f 4 -422 504 1184 -503
		mu 0 4 248 249 606 607
		f 4 -424 506 1182 -505
		mu 0 4 249 250 605 606
		f 4 -426 508 1180 -507
		mu 0 4 250 251 604 605
		f 4 -428 510 1178 -509
		mu 0 4 251 252 603 604
		f 4 512 513 514 -222
		mu 0 4 122 297 298 123
		f 4 515 516 517 -514
		mu 0 4 297 299 300 298
		f 4 518 519 520 -517
		mu 0 4 299 301 302 300
		f 4 521 522 523 -520
		mu 0 4 301 303 304 302
		f 4 524 -283 525 -523
		mu 0 4 303 166 165 304
		f 4 526 527 528 -2
		mu 0 4 1 305 306 2
		f 4 529 530 531 -528
		mu 0 4 305 307 308 306
		f 4 532 533 534 -531
		mu 0 4 307 309 310 308
		f 4 535 536 537 -534
		mu 0 4 309 311 312 310
		f 4 538 -221 539 -537
		mu 0 4 311 122 121 312
		f 4 540 541 542 -284
		mu 0 4 166 313 314 167
		f 4 543 544 545 -542
		mu 0 4 313 315 316 314
		f 4 546 547 548 -545
		mu 0 4 315 317 318 316
		f 4 549 550 551 -548
		mu 0 4 317 319 320 318
		f 4 552 -1 553 -551
		mu 0 4 319 1 0 320
		f 4 -529 554 555 -5
		mu 0 4 2 306 321 4
		f 4 -532 556 557 -555
		mu 0 4 306 308 322 321
		f 4 -535 558 559 -557
		mu 0 4 308 310 323 322
		f 4 -538 560 561 -559
		mu 0 4 310 312 324 323
		f 4 -540 -225 562 -561
		mu 0 4 312 121 125 324
		f 4 -543 563 564 -287
		mu 0 4 167 314 325 169
		f 4 -546 565 566 -564
		mu 0 4 314 316 326 325
		f 4 -549 567 568 -566
		mu 0 4 316 318 327 326
		f 4 -552 569 570 -568
		mu 0 4 318 320 328 327
		f 4 -554 -32 571 -570
		mu 0 4 320 0 22 328
		f 4 -556 572 573 -8
		mu 0 4 4 321 329 6
		f 4 -558 574 575 -573
		mu 0 4 321 322 330 329
		f 4 -560 576 577 -575
		mu 0 4 322 323 331 330
		f 4 -562 578 579 -577
		mu 0 4 323 324 332 331
		f 4 -563 -228 580 -579
		mu 0 4 324 125 127 332
		f 4 -574 581 582 -11
		mu 0 4 6 329 333 8
		f 4 -576 583 584 -582
		mu 0 4 329 330 334 333
		f 4 -578 585 586 -584
		mu 0 4 330 331 335 334
		f 4 -580 587 588 -586
		mu 0 4 331 332 336 335
		f 4 -581 -231 589 -588
		mu 0 4 332 127 129 336
		f 4 -583 590 591 -14
		mu 0 4 8 333 337 10
		f 4 -585 592 593 -591
		mu 0 4 333 334 338 337
		f 4 -587 594 595 -593
		mu 0 4 334 335 339 338
		f 4 -589 596 597 -595
		mu 0 4 335 336 340 339
		f 4 -590 -234 598 -597
		mu 0 4 336 129 131 340
		f 4 -592 599 600 -17
		mu 0 4 10 337 341 12
		f 4 -594 601 602 -600
		mu 0 4 337 338 342 341
		f 4 -596 603 604 -602
		mu 0 4 338 339 343 342
		f 4 -598 605 606 -604
		mu 0 4 339 340 344 343
		f 4 -599 -237 607 -606
		mu 0 4 340 131 133 344
		f 4 -601 608 609 -20
		mu 0 4 12 341 345 14
		f 4 -603 610 611 -609
		mu 0 4 341 342 346 345
		f 4 -605 612 613 -611
		mu 0 4 342 343 347 346
		f 4 -607 614 615 -613
		mu 0 4 343 344 348 347
		f 4 -608 -240 616 -615
		mu 0 4 344 133 135 348
		f 4 -610 617 618 -23
		mu 0 4 14 345 349 16
		f 4 -612 619 620 -618
		mu 0 4 345 346 350 349
		f 4 -614 621 622 -620
		mu 0 4 346 347 351 350
		f 4 -616 623 624 -622
		mu 0 4 347 348 352 351
		f 4 -617 -243 625 -624
		mu 0 4 348 135 137 352
		f 4 -619 626 627 -26
		mu 0 4 16 349 353 18
		f 4 -621 628 629 -627
		mu 0 4 349 350 354 353
		f 4 -623 630 631 -629
		mu 0 4 350 351 355 354
		f 4 -625 632 633 -631
		mu 0 4 351 352 356 355
		f 4 -626 -246 634 -633
		mu 0 4 352 137 139 356
		f 4 -628 635 636 -29
		mu 0 4 18 353 357 20
		f 4 -630 637 638 -636
		mu 0 4 353 354 358 357
		f 4 -632 639 640 -638
		mu 0 4 354 355 359 358
		f 4 -634 641 642 -640
		mu 0 4 355 356 360 359
		f 4 -635 -250 643 -642
		mu 0 4 356 139 142 360
		f 4 644 645 646 -253
		mu 0 4 144 361 362 145
		f 4 647 648 649 -646
		mu 0 4 361 363 364 362
		f 4 650 651 652 -649
		mu 0 4 363 365 366 364
		f 4 653 654 655 -652
		mu 0 4 365 367 368 366
		f 4 656 -249 657 -655
		mu 0 4 367 142 141 368
		f 4 658 659 660 -30
		mu 0 4 20 369 370 21
		f 4 661 662 663 -660
		mu 0 4 369 371 372 370
		f 4 664 665 666 -663
		mu 0 4 371 373 374 372
		f 4 667 668 669 -666
		mu 0 4 373 375 376 374
		f 4 670 -252 671 -669
		mu 0 4 375 144 143 376
		f 4 -661 672 673 -51
		mu 0 4 21 370 377 32
		f 4 -664 674 675 -673
		mu 0 4 370 372 378 377
		f 4 -667 676 677 -675
		mu 0 4 372 374 379 378
		f 4 -670 678 679 -677
		mu 0 4 374 376 380 379
		f 4 -672 -256 680 -679
		mu 0 4 376 143 147 380
		f 4 -565 681 682 -290
		mu 0 4 169 325 381 171
		f 4 -567 683 684 -682
		mu 0 4 325 326 382 381
		f 4 -569 685 686 -684
		mu 0 4 326 327 383 382
		f 4 -571 687 688 -686
		mu 0 4 327 328 384 383
		f 4 -572 -53 689 -688
		mu 0 4 328 22 33 384
		f 4 -674 690 691 -72
		mu 0 4 32 377 385 43
		f 4 -676 692 693 -691
		mu 0 4 377 378 386 385
		f 4 -678 694 695 -693
		mu 0 4 378 379 387 386
		f 4 -680 696 697 -695
		mu 0 4 379 380 388 387
		f 4 -681 -259 698 -697
		mu 0 4 380 147 149 388
		f 4 -683 699 700 -293
		mu 0 4 171 381 389 173
		f 4 -685 701 702 -700
		mu 0 4 381 382 390 389
		f 4 -687 703 704 -702
		mu 0 4 382 383 391 390
		f 4 -689 705 706 -704
		mu 0 4 383 384 392 391
		f 4 -690 -74 707 -706
		mu 0 4 384 33 44 392
		f 4 -692 708 709 -93
		mu 0 4 43 385 393 54
		f 4 -694 710 711 -709
		mu 0 4 385 386 394 393
		f 4 -696 712 713 -711
		mu 0 4 386 387 395 394
		f 4 -698 714 715 -713
		mu 0 4 387 388 396 395
		f 4 -699 -262 716 -715
		mu 0 4 388 149 151 396
		f 4 -701 717 718 -296
		mu 0 4 173 389 397 175
		f 4 -703 719 720 -718
		mu 0 4 389 390 398 397
		f 4 -705 721 722 -720
		mu 0 4 390 391 399 398
		f 4 -707 723 724 -722
		mu 0 4 391 392 400 399
		f 4 -708 -95 725 -724
		mu 0 4 392 44 55 400
		f 4 -710 726 727 -114
		mu 0 4 54 393 401 65
		f 4 -712 728 729 -727
		mu 0 4 393 394 402 401
		f 4 -714 730 731 -729
		mu 0 4 394 395 403 402
		f 4 -716 732 733 -731
		mu 0 4 395 396 404 403
		f 4 -717 -265 734 -733
		mu 0 4 396 151 153 404
		f 4 -719 735 736 -299
		mu 0 4 175 397 405 177
		f 4 -721 737 738 -736
		mu 0 4 397 398 406 405
		f 4 -723 739 740 -738
		mu 0 4 398 399 407 406
		f 4 -725 741 742 -740
		mu 0 4 399 400 408 407
		f 4 -726 -116 743 -742
		mu 0 4 400 55 66 408
		f 4 -728 744 745 -135
		mu 0 4 65 401 409 76
		f 4 -730 746 747 -745
		mu 0 4 401 402 410 409
		f 4 -732 748 749 -747
		mu 0 4 402 403 411 410
		f 4 -734 750 751 -749
		mu 0 4 403 404 412 411
		f 4 -735 -268 752 -751
		mu 0 4 404 153 155 412
		f 4 -737 753 754 -302
		mu 0 4 177 405 413 179
		f 4 -739 755 756 -754
		mu 0 4 405 406 414 413
		f 4 -741 757 758 -756
		mu 0 4 406 407 415 414
		f 4 -743 759 760 -758
		mu 0 4 407 408 416 415
		f 4 -744 -137 761 -760
		mu 0 4 408 66 77 416
		f 4 -746 762 763 -156
		mu 0 4 76 409 417 87
		f 4 -748 764 765 -763
		mu 0 4 409 410 418 417
		f 4 -750 766 767 -765
		mu 0 4 410 411 419 418
		f 4 -752 768 769 -767
		mu 0 4 411 412 420 419
		f 4 -753 -271 770 -769
		mu 0 4 412 155 157 420
		f 4 -755 771 772 -305
		mu 0 4 179 413 421 181
		f 4 -757 773 774 -772
		mu 0 4 413 414 422 421
		f 4 -759 775 776 -774
		mu 0 4 414 415 423 422
		f 4 -761 777 778 -776
		mu 0 4 415 416 424 423
		f 4 -762 -158 779 -778
		mu 0 4 416 77 88 424
		f 4 -764 780 781 -177
		mu 0 4 87 417 425 98
		f 4 -766 782 783 -781
		mu 0 4 417 418 426 425
		f 4 -768 784 785 -783
		mu 0 4 418 419 427 426
		f 4 -770 786 787 -785
		mu 0 4 419 420 428 427
		f 4 -771 -274 788 -787
		mu 0 4 420 157 159 428
		f 4 -773 789 790 -308
		mu 0 4 181 421 429 183
		f 4 -775 791 792 -790
		mu 0 4 421 422 430 429
		f 4 -777 793 794 -792
		mu 0 4 422 423 431 430
		f 4 -779 795 796 -794
		mu 0 4 423 424 432 431
		f 4 -780 -179 797 -796
		mu 0 4 424 88 99 432
		f 4 -782 798 799 -198
		mu 0 4 98 425 433 109
		f 4 -784 800 801 -799
		mu 0 4 425 426 434 433
		f 4 -786 802 803 -801
		mu 0 4 426 427 435 434
		f 4 -788 804 805 -803
		mu 0 4 427 428 436 435
		f 4 -789 -277 806 -805
		mu 0 4 428 159 161 436
		f 4 -791 807 808 -311
		mu 0 4 183 429 437 185
		f 4 -793 809 810 -808
		mu 0 4 429 430 438 437
		f 4 -795 811 812 -810
		mu 0 4 430 431 439 438
		f 4 -797 813 814 -812
		mu 0 4 431 432 440 439
		f 4 -798 -201 815 -814
		mu 0 4 432 99 111 440
		f 4 -800 816 817 -219
		mu 0 4 109 433 441 120
		f 4 -802 818 819 -817
		mu 0 4 433 434 442 441
		f 4 -804 820 821 -819
		mu 0 4 434 435 443 442
		f 4 -806 822 823 -821
		mu 0 4 435 436 444 443
		f 4 -807 -281 824 -823
		mu 0 4 436 161 164 444
		f 4 825 826 827 -312
		mu 0 4 185 445 446 186
		f 4 828 829 830 -827
		mu 0 4 445 447 448 446
		f 4 831 832 833 -830
		mu 0 4 447 449 450 448
		f 4 834 835 836 -833
		mu 0 4 449 451 452 450
		f 4 837 -314 838 -836
		mu 0 4 451 188 187 452
		f 4 839 840 841 -315
		mu 0 4 188 453 454 189
		f 4 842 843 844 -841
		mu 0 4 453 455 456 454
		f 4 845 846 847 -844
		mu 0 4 455 457 458 456
		f 4 848 849 850 -847
		mu 0 4 457 459 460 458
		f 4 851 -200 852 -850
		mu 0 4 459 111 110 460
		f 4 853 854 855 -343
		mu 0 4 207 461 462 208
		f 4 856 857 858 -855
		mu 0 4 461 463 464 462
		f 4 859 860 861 -858
		mu 0 4 463 465 466 464
		f 4 862 863 864 -861
		mu 0 4 465 467 468 466
		f 4 865 -280 866 -864
		mu 0 4 467 164 163 468
		f 4 867 868 869 -220
		mu 0 4 120 469 470 119
		f 4 870 871 872 -869
		mu 0 4 469 471 472 470
		f 4 873 874 875 -872
		mu 0 4 471 473 474 472
		f 4 876 877 878 -875
		mu 0 4 473 475 476 474
		f 4 879 -342 880 -878
		mu 0 4 475 207 205 476
		f 4 -842 881 882 -318
		mu 0 4 189 454 477 191
		f 4 -845 883 884 -882
		mu 0 4 454 456 478 477
		f 4 -848 885 886 -884
		mu 0 4 456 458 479 478
		f 4 -851 887 888 -886
		mu 0 4 458 460 480 479
		f 4 -853 -204 889 -888
		mu 0 4 460 110 112 480
		f 4 -883 890 891 -321
		mu 0 4 191 477 481 193
		f 4 -885 892 893 -891
		mu 0 4 477 478 482 481
		f 4 -887 894 895 -893
		mu 0 4 478 479 483 482
		f 4 -889 896 897 -895
		mu 0 4 479 480 484 483
		f 4 -890 -206 898 -897
		mu 0 4 480 112 113 484
		f 4 -892 899 900 -324
		mu 0 4 193 481 485 195
		f 4 -894 901 902 -900
		mu 0 4 481 482 486 485
		f 4 -896 903 904 -902
		mu 0 4 482 483 487 486
		f 4 -898 905 906 -904
		mu 0 4 483 484 488 487
		f 4 -899 -208 907 -906
		mu 0 4 484 113 114 488
		f 4 -901 908 909 -327
		mu 0 4 195 485 489 197
		f 4 -903 910 911 -909
		mu 0 4 485 486 490 489
		f 4 -905 912 913 -911
		mu 0 4 486 487 491 490
		f 4 -907 914 915 -913
		mu 0 4 487 488 492 491
		f 4 -908 -210 916 -915
		mu 0 4 488 114 115 492
		f 4 -910 917 918 -330
		mu 0 4 197 489 493 199
		f 4 -912 919 920 -918
		mu 0 4 489 490 494 493
		f 4 -914 921 922 -920
		mu 0 4 490 491 495 494
		f 4 -916 923 924 -922
		mu 0 4 491 492 496 495
		f 4 -917 -212 925 -924
		mu 0 4 492 115 116 496
		f 4 -919 926 927 -333
		mu 0 4 199 493 497 201
		f 4 -921 928 929 -927
		mu 0 4 493 494 498 497
		f 4 -923 930 931 -929
		mu 0 4 494 495 499 498
		f 4 -925 932 933 -931
		mu 0 4 495 496 500 499
		f 4 -926 -214 934 -933
		mu 0 4 496 116 117 500
		f 4 -928 935 936 -336
		mu 0 4 201 497 501 203
		f 4 -930 937 938 -936
		mu 0 4 497 498 502 501
		f 4 -932 939 940 -938
		mu 0 4 498 499 503 502
		f 4 -934 941 942 -940
		mu 0 4 499 500 504 503
		f 4 -935 -216 943 -942
		mu 0 4 500 117 118 504
		f 4 -937 944 -881 -339
		mu 0 4 203 501 476 205
		f 4 -939 945 -879 -945
		mu 0 4 501 502 474 476
		f 4 -941 946 -876 -946
		mu 0 4 502 503 472 474
		f 4 -943 947 -873 -947
		mu 0 4 503 504 470 472
		f 4 -944 -218 -870 -948
		mu 0 4 504 118 119 470
		f 4 -515 948 949 -345
		mu 0 4 123 298 505 209
		f 4 -518 950 951 -949
		mu 0 4 298 300 506 505
		f 4 -521 952 953 -951
		mu 0 4 300 302 507 506
		f 4 -524 954 955 -953
		mu 0 4 302 304 508 507
		f 4 -526 -348 956 -955
		mu 0 4 304 165 211 508
		f 4 -647 957 958 -369
		mu 0 4 145 362 509 222
		f 4 -650 959 960 -958
		mu 0 4 362 364 510 509
		f 4 -653 961 962 -960
		mu 0 4 364 366 511 510
		f 4 -656 963 964 -962
		mu 0 4 366 368 512 511
		f 4 -658 -367 965 -964
		mu 0 4 368 141 221 512
		f 4 -828 966 967 -404
		mu 0 4 186 446 513 240
		f 4 -831 968 969 -967
		mu 0 4 446 448 514 513
		f 4 -834 970 971 -969
		mu 0 4 448 450 515 514
		f 4 -837 972 973 -971
		mu 0 4 450 452 516 515
		f 4 -839 -408 974 -973
		mu 0 4 452 187 242 516
		f 4 -856 975 976 -427
		mu 0 4 208 462 517 252
		f 4 -859 977 978 -976
		mu 0 4 462 464 518 517
		f 4 -862 979 980 -978
		mu 0 4 464 466 519 518
		f 4 -865 981 982 -980
		mu 0 4 466 468 520 519
		f 4 -867 -406 983 -982
		mu 0 4 468 163 241 520
		f 4 -950 984 1236 -429
		mu 0 4 209 505 632 633
		f 4 -952 986 1234 -985
		mu 0 4 505 506 631 632
		f 4 -954 988 1232 -987
		mu 0 4 506 507 630 631
		f 4 -956 990 1230 -989
		mu 0 4 507 508 629 630
		f 4 -957 -1226 1228 -991
		mu 0 4 508 211 628 629
		f 4 -959 993 1146 -453
		mu 0 4 222 509 587 588
		f 4 -961 995 1144 -994
		mu 0 4 509 510 586 587
		f 4 -963 997 1142 -996
		mu 0 4 510 511 585 586
		f 4 -965 999 1259 -998
		mu 0 4 511 512 644 585
		f 4 -966 -1256 1258 -1000
		mu 0 4 512 221 643 644
		f 4 -968 1002 1206 -488
		mu 0 4 240 513 617 618
		f 4 -970 1004 1204 -1003
		mu 0 4 513 514 616 617
		f 4 -972 1006 1202 -1005
		mu 0 4 514 515 615 616
		f 4 -974 1008 1200 -1007
		mu 0 4 515 516 614 615
		f 4 -975 -1196 1198 -1009
		mu 0 4 516 242 613 614
		f 4 -977 1011 1176 -511
		mu 0 4 252 517 602 603
		f 4 -979 1013 1174 -1012
		mu 0 4 517 518 601 602
		f 4 -981 1015 1172 -1014
		mu 0 4 518 519 600 601
		f 4 -983 1017 1170 -1016
		mu 0 4 519 520 599 600
		f 4 -984 -1166 1168 -1018
		mu 0 4 520 241 598 599
		f 4 -541 -525 1020 1021
		mu 0 4 313 166 303 537
		f 4 -1021 -522 1022 1023
		mu 0 4 537 303 301 538
		f 4 -1023 -519 1024 1025
		mu 0 4 538 301 299 539
		f 4 -1025 -516 1026 1027
		mu 0 4 539 299 297 540
		f 4 -513 -539 1028 -1027
		mu 0 4 297 122 311 540
		f 4 -1029 -536 1029 1030
		mu 0 4 540 311 309 541
		f 4 -1030 -533 1031 1032
		mu 0 4 541 309 307 542
		f 4 -1032 -530 1033 1034
		mu 0 4 542 307 305 543
		f 4 -527 -553 1035 -1034
		mu 0 4 305 1 319 543
		f 4 -1036 -550 1036 1037
		mu 0 4 543 319 317 544
		f 4 -1037 -547 1038 1039
		mu 0 4 544 317 315 545
		f 4 -1039 -544 -1022 1040
		mu 0 4 545 315 313 537
		f 4 -1041 -1024 1041 1042
		mu 0 4 545 537 538 546
		f 4 -1042 -1026 1043 1044
		mu 0 4 546 538 539 547
		f 4 -1028 -1031 1045 -1044
		mu 0 4 539 540 541 547
		f 4 -1046 -1033 1046 1047
		mu 0 4 547 541 542 548
		f 4 -1035 -1038 1048 -1047
		mu 0 4 542 543 544 548
		f 4 -1049 -1040 -1043 1049
		mu 0 4 548 544 545 546
		f 3 -1045 -1048 -1050
		mu 0 3 546 547 548
		f 4 -644 -657 1050 1051
		mu 0 4 360 142 367 549;
	setAttr ".fc[500:615]"
		f 4 -1051 -654 1052 1053
		mu 0 4 549 367 365 550
		f 4 -1053 -651 1054 1055
		mu 0 4 550 365 363 551
		f 4 -1055 -648 1056 1057
		mu 0 4 551 363 361 552
		f 4 -645 -671 1058 -1057
		mu 0 4 361 144 375 552
		f 4 -1059 -668 1059 1060
		mu 0 4 552 375 373 553
		f 4 -1060 -665 1061 1062
		mu 0 4 553 373 371 554
		f 4 -1062 -662 1063 1064
		mu 0 4 554 371 369 555
		f 4 -659 -637 1065 -1064
		mu 0 4 369 20 357 555
		f 4 -1066 -639 1066 1067
		mu 0 4 555 357 358 556
		f 4 -1067 -641 1068 1069
		mu 0 4 556 358 359 557
		f 4 -1069 -643 -1052 1070
		mu 0 4 557 359 360 549
		f 4 -1071 -1054 1071 1072
		mu 0 4 557 549 550 558
		f 4 -1072 -1056 1073 1074
		mu 0 4 558 550 551 559
		f 4 -1058 -1061 1075 -1074
		mu 0 4 551 552 553 559
		f 4 -1076 -1063 1076 1077
		mu 0 4 559 553 554 560
		f 4 -1065 -1068 1078 -1077
		mu 0 4 554 555 556 560
		f 4 -1079 -1070 -1073 1079
		mu 0 4 560 556 557 558
		f 3 -1075 -1078 -1080
		mu 0 3 558 559 560
		f 4 -840 -838 1080 1081
		mu 0 4 453 188 451 561
		f 4 -1081 -835 1082 1083
		mu 0 4 561 451 449 562
		f 4 -1083 -832 1084 1085
		mu 0 4 562 449 447 563
		f 4 -1085 -829 1086 1087
		mu 0 4 563 447 445 564
		f 4 -826 -809 1088 -1087
		mu 0 4 445 185 437 564
		f 4 -1089 -811 1089 1090
		mu 0 4 564 437 438 565
		f 4 -1090 -813 1091 1092
		mu 0 4 565 438 439 566
		f 4 -1092 -815 1093 1094
		mu 0 4 566 439 440 567
		f 4 -816 -852 1095 -1094
		mu 0 4 440 111 459 567
		f 4 -1096 -849 1096 1097
		mu 0 4 567 459 457 568
		f 4 -1097 -846 1098 1099
		mu 0 4 568 457 455 569
		f 4 -1099 -843 -1082 1100
		mu 0 4 569 455 453 561
		f 4 -1101 -1084 1101 1102
		mu 0 4 569 561 562 570
		f 4 -1102 -1086 1103 1104
		mu 0 4 570 562 563 571
		f 4 -1088 -1091 1105 -1104
		mu 0 4 563 564 565 571
		f 4 -1106 -1093 1106 1107
		mu 0 4 571 565 566 572
		f 4 -1095 -1098 1108 -1107
		mu 0 4 566 567 568 572
		f 4 -1109 -1100 -1103 1109
		mu 0 4 572 568 569 570
		f 3 -1105 -1108 -1110
		mu 0 3 570 571 572
		f 4 -825 -866 1110 1111
		mu 0 4 444 164 467 573
		f 4 -1111 -863 1112 1113
		mu 0 4 573 467 465 574
		f 4 -1113 -860 1114 1115
		mu 0 4 574 465 463 575
		f 4 -1115 -857 1116 1117
		mu 0 4 575 463 461 576
		f 4 -854 -880 1118 -1117
		mu 0 4 461 207 475 576
		f 4 -1119 -877 1119 1120
		mu 0 4 576 475 473 577
		f 4 -1120 -874 1121 1122
		mu 0 4 577 473 471 578
		f 4 -1122 -871 1123 1124
		mu 0 4 578 471 469 579
		f 4 -868 -818 1125 -1124
		mu 0 4 469 120 441 579
		f 4 -1126 -820 1126 1127
		mu 0 4 579 441 442 580
		f 4 -1127 -822 1128 1129
		mu 0 4 580 442 443 581
		f 4 -1129 -824 -1112 1130
		mu 0 4 581 443 444 573
		f 4 -1131 -1114 1131 1132
		mu 0 4 581 573 574 582
		f 4 -1132 -1116 1133 1134
		mu 0 4 582 574 575 583
		f 4 -1118 -1121 1135 -1134
		mu 0 4 575 576 577 583
		f 4 -1136 -1123 1136 1137
		mu 0 4 583 577 578 584
		f 4 -1125 -1128 1138 -1137
		mu 0 4 578 579 580 584
		f 4 -1139 -1130 -1133 1139
		mu 0 4 584 580 581 582
		f 3 -1135 -1138 -1140
		mu 0 3 582 583 584
		f 4 -1143 1140 998 -1142
		mu 0 4 586 585 527 526
		f 4 -1145 1141 996 -1144
		mu 0 4 587 586 526 525
		f 4 -1147 1143 994 -1146
		mu 0 4 588 587 525 266
		f 4 -1149 1145 453 454
		mu 0 4 589 588 266 267
		f 4 -1151 -455 457 458
		mu 0 4 590 589 267 269
		f 4 -1153 -459 461 462
		mu 0 4 591 590 269 271
		f 4 -1155 -463 465 466
		mu 0 4 592 591 271 273
		f 4 -1157 -467 469 470
		mu 0 4 593 592 273 275
		f 4 -1159 -471 473 474
		mu 0 4 594 593 275 277
		f 4 -1161 -475 477 478
		mu 0 4 595 594 277 279
		f 4 -1163 -479 481 482
		mu 0 4 596 595 279 281
		f 4 -1165 -483 485 486
		mu 0 4 597 596 281 283
		f 4 489 -1167 -487 490
		mu 0 4 285 598 597 283
		f 4 -1169 -490 1019 -1168
		mu 0 4 599 598 285 536
		f 4 -1171 1167 1018 -1170
		mu 0 4 600 599 536 535
		f 4 -1173 1169 1016 -1172
		mu 0 4 601 600 535 534
		f 4 -1175 1171 1014 -1174
		mu 0 4 602 601 534 533
		f 4 -1177 1173 1012 -1176
		mu 0 4 603 602 533 296
		f 4 -1179 1175 511 -1178
		mu 0 4 604 603 296 295
		f 4 -1181 1177 509 -1180
		mu 0 4 605 604 295 294
		f 4 -1183 1179 507 -1182
		mu 0 4 606 605 294 293
		f 4 -1185 1181 505 -1184
		mu 0 4 607 606 293 292
		f 4 -1187 1183 503 -1186
		mu 0 4 608 607 292 291
		f 4 -1189 1185 501 -1188
		mu 0 4 609 608 291 290
		f 4 -1191 1187 499 -1190
		mu 0 4 610 609 290 289
		f 4 -1193 1189 497 -1192
		mu 0 4 611 610 289 288
		f 4 -1195 1191 495 -1194
		mu 0 4 612 611 288 287
		f 4 491 -1197 1193 493
		mu 0 4 286 613 612 287
		f 4 -1199 -492 1010 -1198
		mu 0 4 614 613 286 532
		f 4 -1201 1197 1009 -1200
		mu 0 4 615 614 532 531
		f 4 -1203 1199 1007 -1202
		mu 0 4 616 615 531 530
		f 4 -1205 1201 1005 -1204
		mu 0 4 617 616 530 529
		f 4 -1207 1203 1003 -1206
		mu 0 4 618 617 529 284
		f 4 -1209 1205 488 -1208
		mu 0 4 619 618 284 282
		f 4 -1211 1207 484 -1210
		mu 0 4 620 619 282 280
		f 4 -1213 1209 480 -1212
		mu 0 4 621 620 280 278
		f 4 -1215 1211 476 -1214
		mu 0 4 622 621 278 276
		f 4 -1217 1213 472 -1216
		mu 0 4 623 622 276 274
		f 4 -1219 1215 468 -1218
		mu 0 4 624 623 274 272
		f 4 -1221 1217 464 -1220
		mu 0 4 625 624 272 270
		f 4 -1223 1219 460 -1222
		mu 0 4 626 625 270 268
		f 4 -1225 1221 456 -1224
		mu 0 4 627 626 268 256
		f 4 431 -1227 1223 433
		mu 0 4 255 628 627 256
		f 4 -1229 -432 992 -1228
		mu 0 4 629 628 255 524
		f 4 -1231 1227 991 -1230
		mu 0 4 630 629 524 523
		f 4 -1233 1229 989 -1232
		mu 0 4 631 630 523 522
		f 4 -1235 1231 987 -1234
		mu 0 4 632 631 522 521
		f 4 -1237 1233 985 -1236
		mu 0 4 633 632 521 253
		f 4 -1239 1235 429 430
		mu 0 4 634 633 253 254
		f 4 -1241 -431 434 435
		mu 0 4 635 634 254 257
		f 4 -1243 -436 436 437
		mu 0 4 636 635 257 258
		f 4 -1245 -438 438 439
		mu 0 4 637 636 258 259
		f 4 -1247 -440 440 441
		mu 0 4 638 637 259 260
		f 4 -1249 -442 442 443
		mu 0 4 639 638 260 261
		f 4 -1251 -444 444 445
		mu 0 4 640 639 261 262
		f 4 -1253 -446 446 447
		mu 0 4 641 640 262 263
		f 4 -1255 -448 448 449
		mu 0 4 642 641 263 264
		f 4 450 -1257 -450 451
		mu 0 4 265 643 642 264
		f 4 -1259 -451 1001 -1258
		mu 0 4 644 643 265 528
		f 4 -1260 1257 1000 -1141
		mu 0 4 585 644 528 527;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"renderCam\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"renderCam\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n"
		+ "            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n"
		+ "                -nurbsCurves 0\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput1\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 1\n                -showDeformers 1\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n"
		+ "                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 1\n                -showDeformers 1\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 1\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"renderCam\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"renderCam\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode mib_blackbody -n "mib_blackbody1";
	setAttr ".S00" 4500;
	setAttr ".S01" 0.30000001192092896;
createNode mia_exposure_simple -n "mia_exposure_simple1";
	setAttr ".S02" 1;
	setAttr ".S03" 0;
createNode reference -n "trex_rigRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"trex_rigRN"
		"trex_rigRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mib_blackbody -n "mib_blackbody3";
	setAttr ".S00" 9500;
	setAttr ".S01" 2;
createNode mib_blackbody -n "mib_blackbody4";
	setAttr ".S00" 8500;
	setAttr ".S01" 0.10000000149011612;
createNode blinn -n "bg_mtl";
	addAttr -ci true -sn "rsRefractionSamples" -ln "rsRefractionSamples" -dv 1 -min 
		1 -max 32767 -smx 256 -at "long";
	addAttr -ci true -sn "rsReflectionSamples" -ln "rsReflectionSamples" -dv 1 -min 
		1 -max 32767 -smx 256 -at "long";
	setAttr ".c" -type "float3" 0.032516975 0.032516975 0.032516975 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0;
	setAttr ".sro" 0;
createNode shadingEngine -n "blinn1SG";
	addAttr -ci true -sn "rsSurfaceShader" -ln "rsSurfaceShader" -at "message";
	addAttr -ci true -sn "rsShadowShader" -ln "rsShadowShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsBumpmapShader" -ln "rsBumpmapShader" -at "message";
	addAttr -ci true -sn "rsDisplacementShader" -ln "rsDisplacementShader" -at "message";
	addAttr -ci true -sn "rsMaterialId" -ln "rsMaterialId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "G:/EVERYDAY/trex/texture/plane_alpha.tif";
createNode place2dTexture -n "place2dTexture2";
createNode file -n "file3";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "G:/EVERYDAY/Generic Hero/cyborg//plane_alpha.tif";
createNode place2dTexture -n "place2dTexture3";
createNode animCurveTU -n "dragon_rig:Main_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:Main_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:Main_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 825.00075126465083;
createNode animCurveTL -n "dragon_rig:Main_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:Main_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:Main_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:Main_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:Main_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:Main_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:Main_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKToes_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKToes_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKToes_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKToes_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKToes_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKToes_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKToes_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKToes_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKToes_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKToes_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg1_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg1_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg1_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg1_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg1_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg1_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg1_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg1_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg1_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg1_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg2_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg2_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg2_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg2_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg2_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg2_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg2_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg2_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg2_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg2_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg3_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg3_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg3_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg3_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg3_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg3_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg3_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg3_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg3_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg3_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg5_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg5_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg5_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg5_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg5_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg5_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg5_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg5_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg5_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg5_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg6_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg6_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg6_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg6_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg6_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg6_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg6_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg6_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg6_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg6_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg7_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg7_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg7_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg7_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg7_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg7_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg7_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg7_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg7_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg7_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg9_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg9_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg9_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg9_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg9_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg9_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg9_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg9_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg9_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg9_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg10_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg10_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg10_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg10_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg10_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg10_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg10_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg10_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg10_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg10_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg11_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg11_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg11_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg11_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg11_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg11_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg11_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg11_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg11_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg11_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_5_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKKneeToe_5_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKKneeToe_5_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKKneeToe_5_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_5_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_5_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_5_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKKneeToe_5_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_5_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_5_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_3_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKKneeToe_3_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKKneeToe_3_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKKneeToe_3_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_3_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_3_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_3_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKKneeToe_3_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_3_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_3_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail1_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKTail1_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail1_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail1_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail1_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail1_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail1_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKTail1_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail1_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail1_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail2_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKTail2_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail2_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail2_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail2_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail2_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail2_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKTail2_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail2_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail2_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail3_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKTail3_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail3_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail3_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail3_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail3_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail3_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKTail3_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail3_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail3_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail4_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKTail4_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail4_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail4_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail4_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail4_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail4_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKTail4_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail4_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail4_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail5_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKTail5_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail5_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail5_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail5_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail5_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail5_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKTail5_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail5_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail5_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail6_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKTail6_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail6_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKTail6_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail6_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail6_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKTail6_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKTail6_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail6_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKTail6_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHip_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKHip_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHip_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHip_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHip_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHip_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHip_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKHip_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHip_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHip_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHip_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKHip_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHip_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHip_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHip_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHip_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHip_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKHip_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHip_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHip_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck1_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKNeck1_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck1_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck1_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck1_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck1_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck1_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKNeck1_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck1_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck1_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck2_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKNeck2_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck2_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck2_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck2_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -0.17185905937374524;
createNode animCurveTA -n "dragon_rig:FKNeck2_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0.81783539744316347;
createNode animCurveTA -n "dragon_rig:FKNeck2_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -20.78005215078807;
createNode animCurveTU -n "dragon_rig:FKNeck2_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck2_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck2_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck3_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKNeck3_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck3_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck3_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck3_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck3_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck3_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKNeck3_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck3_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck3_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck4_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKNeck4_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck4_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck4_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck4_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck4_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck4_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 15.399077269486758;
createNode animCurveTU -n "dragon_rig:FKNeck4_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck4_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck4_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck5_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKNeck5_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck5_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKNeck5_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck5_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck5_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKNeck5_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKNeck5_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck5_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKNeck5_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHead_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKHead_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHead_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHead_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHead_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHead_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHead_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 13.599949248168372;
createNode animCurveTU -n "dragon_rig:FKHead_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHead_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHead_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHead_M_Global";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 10;
createNode animCurveTU -n "dragon_rig:FKHead_M_faceConVis";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKJaw_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKJaw_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKJaw_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKJaw_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKJaw_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKJaw_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKJaw_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -15.6435672887082;
createNode animCurveTU -n "dragon_rig:FKJaw_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKJaw_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKJaw_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue1_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtongue1_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtongue1_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtongue1_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue1_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue1_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue1_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtongue1_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue1_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue1_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue2_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtongue2_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtongue2_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtongue2_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue2_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue2_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue2_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtongue2_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue2_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue2_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue3_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtongue3_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtongue3_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtongue3_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue3_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue3_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue3_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtongue3_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue3_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue3_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue4_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtongue4_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtongue4_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtongue4_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue4_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue4_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtongue4_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtongue4_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue4_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtongue4_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEye_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKEye_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEye_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEye_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEye_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEye_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEye_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKEye_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEye_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEye_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidUpper1_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKEyeLidUpper1_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEyeLidUpper1_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEyeLidUpper1_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidUpper1_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidUpper1_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidUpper1_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKEyeLidUpper1_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidUpper1_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidUpper1_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidLower1_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKEyeLidLower1_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEyeLidLower1_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEyeLidLower1_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidLower1_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidLower1_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidLower1_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKEyeLidLower1_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidLower1_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidLower1_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEye_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKEye_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEye_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEye_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEye_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEye_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEye_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKEye_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEye_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEye_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidUpper1_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKEyeLidUpper1_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEyeLidUpper1_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEyeLidUpper1_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidUpper1_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidUpper1_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidUpper1_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKEyeLidUpper1_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidUpper1_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidUpper1_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidLower1_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKEyeLidLower1_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEyeLidLower1_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKEyeLidLower1_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidLower1_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidLower1_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKEyeLidLower1_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKEyeLidLower1_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidLower1_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKEyeLidLower1_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat7_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKneckFat7_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKneckFat7_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKneckFat7_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat7_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat7_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat7_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKneckFat7_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat7_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat7_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat5_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKneckFat5_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKneckFat5_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKneckFat5_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat5_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat5_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat5_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKneckFat5_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat5_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat5_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat3_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKneckFat3_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKneckFat3_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKneckFat3_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat3_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat3_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat3_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKneckFat3_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat3_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat3_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat1_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKneckFat1_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKneckFat1_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKneckFat1_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat1_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat1_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKneckFat1_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKneckFat1_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat1_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKneckFat1_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKScapula_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKScapula_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKScapula_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKScapula_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKScapula_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKScapula_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 16.350236481552024;
createNode animCurveTA -n "dragon_rig:FKScapula_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKScapula_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKScapula_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKScapula_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKScapula_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKScapula_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKScapula_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKScapula_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKScapula_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKScapula_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 15.825603883711617;
createNode animCurveTA -n "dragon_rig:FKScapula_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKScapula_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKScapula_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKScapula_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHandToeMaster_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKHandToeMaster_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHandToeMaster_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHandToeMaster_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHandToeMaster_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHandToeMaster_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHandToeMaster_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKHandToeMaster_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHandToeMaster_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHandToeMaster_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_1_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_1_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_1_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_1_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_1_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_1_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_1_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -14.184990229014089;
createNode animCurveTU -n "dragon_rig:FKfinger_1_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_1_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_1_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_2_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_2_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_2_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_2_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_2_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_2_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_2_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -14.184990229014089;
createNode animCurveTU -n "dragon_rig:FKfinger_2_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_2_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_2_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_3_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_3_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_3_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_3_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_3_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_3_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_3_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -14.184990229014089;
createNode animCurveTU -n "dragon_rig:FKfinger_3_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_3_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_3_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_5_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_5_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_5_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_5_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_5_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -5.4688046519339037;
createNode animCurveTA -n "dragon_rig:FKfinger_5_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -8.5150894645260706;
createNode animCurveTA -n "dragon_rig:FKfinger_5_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 12.327811977993145;
createNode animCurveTU -n "dragon_rig:FKfinger_5_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_5_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_5_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_6_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_6_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_6_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_6_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_6_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -5.4688046519339037;
createNode animCurveTA -n "dragon_rig:FKfinger_6_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -8.5150894645260706;
createNode animCurveTA -n "dragon_rig:FKfinger_6_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 12.327811977993145;
createNode animCurveTU -n "dragon_rig:FKfinger_6_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_6_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_6_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_7_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_7_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_7_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_7_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_7_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -5.4688046519339037;
createNode animCurveTA -n "dragon_rig:FKfinger_7_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -8.5150894645260706;
createNode animCurveTA -n "dragon_rig:FKfinger_7_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 12.327811977993145;
createNode animCurveTU -n "dragon_rig:FKfinger_7_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_7_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_7_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKthumb1_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKthumb1_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKthumb1_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKthumb1_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKthumb1_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKthumb1_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKthumb1_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKthumb1_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKthumb1_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKthumb1_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKWingFingerRoot_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKWingFingerRoot_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKWingFingerRoot_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKWingFingerRoot_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKWingFingerRoot_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKWingFingerRoot_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKWingFingerRoot_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKWingFingerRoot_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKWingFingerRoot_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKWingFingerRoot_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_5_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_5_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_5_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_5_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_5_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_5_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_5_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_5_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_5_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_5_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_6_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_6_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_6_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_6_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_6_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_6_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_6_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_6_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_6_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_6_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_7_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_7_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_7_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_7_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_7_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_7_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_7_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_7_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_7_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_7_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_1_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_1_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_1_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_1_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_1_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_1_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_1_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_1_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_1_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_1_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_2_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_2_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_2_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_2_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_2_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -2.2145875511350477;
createNode animCurveTA -n "dragon_rig:FKwingFinger_2_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -0.057612400334361151;
createNode animCurveTA -n "dragon_rig:FKwingFinger_2_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -15.726822888115077;
createNode animCurveTU -n "dragon_rig:FKwingFinger_2_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_2_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_2_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_3_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_3_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_3_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_3_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_3_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_3_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_3_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_3_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_3_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_3_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_9_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_9_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_9_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_9_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_9_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_9_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_9_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_9_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_9_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_9_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_10_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_10_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_10_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_10_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_10_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 6.6370014453716806;
createNode animCurveTA -n "dragon_rig:FKwingFinger_10_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 18.811179319219445;
createNode animCurveTA -n "dragon_rig:FKwingFinger_10_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -16.825993273698714;
createNode animCurveTU -n "dragon_rig:FKwingFinger_10_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_10_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_10_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_11_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_11_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_11_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_11_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_11_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_11_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_11_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_11_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_11_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_11_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_13_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_13_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_13_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_13_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_13_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_13_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_13_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_13_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_13_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_13_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_14_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_14_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_14_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_14_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_14_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_14_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_14_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 -16.121686398359923;
createNode animCurveTU -n "dragon_rig:FKwingFinger_14_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_14_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_14_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_15_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_15_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_15_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_15_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_15_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_15_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_15_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_15_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_15_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_15_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKbreath1_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKbreath1_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKbreath1_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKbreath1_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKbreath1_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKbreath1_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKbreath1_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKbreath1_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKbreath1_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKbreath1_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKRoot_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "dragon_rig:FKRoot_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKRoot_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKRoot_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKRoot_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKRoot_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKRoot_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine1_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKSpine1_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKSpine1_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKSpine1_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine1_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine1_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine1_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKSpine1_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine1_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine1_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine2_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKSpine2_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKSpine2_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKSpine2_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine2_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine2_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine2_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKSpine2_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine2_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine2_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine3_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKSpine3_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKSpine3_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKSpine3_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine3_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine3_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKSpine3_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKSpine3_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine3_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKSpine3_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKChest_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKChest_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKChest_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKChest_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKChest_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKChest_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKChest_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKChest_M_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKChest_M_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKChest_M_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKToes_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKToes_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKToes_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKToes_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKToes_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKToes_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKToes_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKToes_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKToes_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKToes_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg1_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg1_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg1_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg1_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg1_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg1_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg1_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg1_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg1_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg1_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg2_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg2_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg2_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg2_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg2_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg2_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg2_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg2_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg2_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg2_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg3_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg3_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg3_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg3_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg3_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg3_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg3_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg3_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg3_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg3_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg5_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg5_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg5_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg5_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg5_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg5_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg5_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg5_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg5_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg5_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg6_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg6_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg6_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg6_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg6_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg6_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg6_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg6_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg6_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg6_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg7_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg7_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg7_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg7_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg7_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg7_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg7_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg7_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg7_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg7_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg9_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg9_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg9_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg9_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg9_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg9_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg9_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg9_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg9_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg9_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg10_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg10_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg10_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg10_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg10_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg10_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg10_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg10_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg10_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg10_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg11_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKtoeLeg11_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg11_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKtoeLeg11_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg11_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg11_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKtoeLeg11_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKtoeLeg11_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg11_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKtoeLeg11_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_5_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKKneeToe_5_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKKneeToe_5_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKKneeToe_5_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_5_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_5_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_5_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKKneeToe_5_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_5_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_5_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_3_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKKneeToe_3_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKKneeToe_3_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKKneeToe_3_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_3_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_3_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKKneeToe_3_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKKneeToe_3_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_3_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKKneeToe_3_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHandToeMaster_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKHandToeMaster_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHandToeMaster_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKHandToeMaster_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHandToeMaster_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHandToeMaster_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKHandToeMaster_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKHandToeMaster_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHandToeMaster_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKHandToeMaster_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_1_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_1_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_1_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_1_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_1_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_1_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_1_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKfinger_1_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_1_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_1_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_2_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_2_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_2_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_2_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_2_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_2_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_2_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKfinger_2_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_2_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_2_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_3_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_3_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_3_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_3_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_3_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_3_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_3_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKfinger_3_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_3_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_3_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_5_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_5_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_5_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_5_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_5_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_5_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_5_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKfinger_5_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_5_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_5_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_6_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_6_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_6_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_6_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_6_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_6_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_6_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKfinger_6_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_6_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_6_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_7_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKfinger_7_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_7_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKfinger_7_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_7_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_7_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKfinger_7_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKfinger_7_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_7_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKfinger_7_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKthumb1_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKthumb1_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKthumb1_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKthumb1_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKthumb1_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKthumb1_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKthumb1_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKthumb1_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKthumb1_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKthumb1_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKWingFingerRoot_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKWingFingerRoot_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKWingFingerRoot_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKWingFingerRoot_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKWingFingerRoot_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKWingFingerRoot_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKWingFingerRoot_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKWingFingerRoot_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKWingFingerRoot_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKWingFingerRoot_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_5_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_5_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_5_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_5_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_5_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_5_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_5_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_5_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_5_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_5_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_6_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_6_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_6_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_6_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_6_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_6_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_6_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_6_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_6_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_6_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_7_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_7_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_7_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_7_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_7_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_7_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_7_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_7_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_7_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_7_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_1_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_1_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_1_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_1_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_1_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_1_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_1_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_1_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_1_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_1_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_2_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_2_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_2_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_2_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_2_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_2_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_2_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_2_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_2_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_2_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_3_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_3_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_3_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_3_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_3_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_3_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_3_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_3_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_3_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_3_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_9_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_9_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_9_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_9_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_9_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_9_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_9_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_9_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_9_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_9_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_10_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_10_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_10_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_10_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_10_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_10_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_10_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_10_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_10_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_10_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_11_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_11_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_11_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_11_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_11_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_11_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_11_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_11_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_11_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_11_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_13_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_13_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_13_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_13_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_13_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_13_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_13_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_13_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_13_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_13_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_14_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_14_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_14_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_14_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_14_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_14_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_14_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_14_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_14_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_14_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_15_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:FKwingFinger_15_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_15_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:FKwingFinger_15_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_15_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_15_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:FKwingFinger_15_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKwingFinger_15_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_15_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:FKwingFinger_15_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:HipSwinger_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "dragon_rig:HipSwinger_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:HipSwinger_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:HipSwinger_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:HipSwinger_M_stabilize";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:IKLeg1_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:IKLeg1_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:IKLeg1_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg1_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg1_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg1_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_swivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_toe";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_rollAngle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 25 2 25;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_legAim";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_legAimSDK";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_stretchy";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_antiPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_Lenght1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_Lenght2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_R_volume";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:RollHeel_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RollHeel_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollHeel_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollHeel_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHeel_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHeel_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHeel_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RollHeel_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHeel_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHeel_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToesEnd_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RollToesEnd_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollToesEnd_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollToesEnd_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToesEnd_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToesEnd_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToesEnd_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RollToesEnd_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToesEnd_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToesEnd_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToes_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RollToes_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollToes_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollToes_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToes_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToes_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToes_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RollToes_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToes_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToes_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTL -n "dragon_rig:PoleLeg1_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:PoleLeg1_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:PoleLeg1_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:PoleLeg1_R_follow";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:PoleLeg1_R_lock";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:IKLeg_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:IKLeg_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:IKLeg_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_R_swivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_R_toe";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_R_roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_R_rollAngle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 25 2 25;
createNode animCurveTU -n "dragon_rig:IKLeg_R_stretchy";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_R_antiPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_R_Lenght1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_R_Lenght2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_R_volume";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:RolltoeHeel_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RolltoeHeel_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RolltoeHeel_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RolltoeHeel_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeHeel_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeHeel_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeHeel_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RolltoeHeel_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeHeel_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeHeel_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeEndJnt__R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RolltoeEndJnt__R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RolltoeEndJnt__R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RolltoeEndJnt__R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeEndJnt__R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeEndJnt__R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeEndJnt__R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RolltoeEndJnt__R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeEndJnt__R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeEndJnt__R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHandToeMaster_R_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RollHandToeMaster_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollHandToeMaster_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollHandToeMaster_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHandToeMaster_R_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHandToeMaster_R_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHandToeMaster_R_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RollHandToeMaster_R_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHandToeMaster_R_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHandToeMaster_R_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTL -n "dragon_rig:PoleLeg_R_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:PoleLeg_R_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:PoleLeg_R_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:PoleLeg_R_follow";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:PoleLeg_R_lock";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:IKLeg1_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:IKLeg1_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:IKLeg1_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg1_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg1_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg1_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_swivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_toe";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_rollAngle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 25 2 25;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_legAim";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_legAimSDK";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_stretchy";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_antiPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_Lenght1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_Lenght2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg1_L_volume";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:RollHeel_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RollHeel_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollHeel_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollHeel_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHeel_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHeel_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHeel_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RollHeel_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHeel_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHeel_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToesEnd_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RollToesEnd_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollToesEnd_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollToesEnd_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToesEnd_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToesEnd_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToesEnd_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RollToesEnd_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToesEnd_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToesEnd_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToes_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RollToes_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollToes_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollToes_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToes_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToes_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollToes_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RollToes_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToes_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollToes_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTL -n "dragon_rig:PoleLeg1_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:PoleLeg1_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:PoleLeg1_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:PoleLeg1_L_follow";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:PoleLeg1_L_lock";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:IKLeg_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:IKLeg_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:IKLeg_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:IKLeg_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_L_swivel";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_L_toe";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_L_roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_L_rollAngle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 25 2 25;
createNode animCurveTU -n "dragon_rig:IKLeg_L_stretchy";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_L_antiPop";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:IKLeg_L_Lenght1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_L_Lenght2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:IKLeg_L_volume";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:RolltoeHeel_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RolltoeHeel_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RolltoeHeel_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RolltoeHeel_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeHeel_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeHeel_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeHeel_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RolltoeHeel_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeHeel_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeHeel_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeEndJnt__L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RolltoeEndJnt__L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RolltoeEndJnt__L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RolltoeEndJnt__L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeEndJnt__L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeEndJnt__L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RolltoeEndJnt__L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RolltoeEndJnt__L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeEndJnt__L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RolltoeEndJnt__L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHandToeMaster_L_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RollHandToeMaster_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollHandToeMaster_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RollHandToeMaster_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHandToeMaster_L_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHandToeMaster_L_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RollHandToeMaster_L_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RollHandToeMaster_L_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHandToeMaster_L_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:RollHandToeMaster_L_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTL -n "dragon_rig:PoleLeg_L_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:PoleLeg_L_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:PoleLeg_L_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:PoleLeg_L_follow";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 10;
createNode animCurveTU -n "dragon_rig:PoleLeg_L_lock";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKIKLeg1_R_FKIKBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 0;
createNode animCurveTU -n "dragon_rig:FKIKLeg1_R_FKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKLeg1_R_IKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKSpline_M_FKIKBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKIKSpline_M_FKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKSpline_M_IKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKLeg_R_FKIKBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 0;
createNode animCurveTU -n "dragon_rig:FKIKLeg_R_FKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKLeg_R_IKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKSpine_M_FKIKBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:FKIKSpine_M_FKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKSpine_M_IKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKLeg1_L_FKIKBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 0;
createNode animCurveTU -n "dragon_rig:FKIKLeg1_L_FKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKLeg1_L_IKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKLeg_L_FKIKBlend";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 2 0;
createNode animCurveTU -n "dragon_rig:FKIKLeg_L_FKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:FKIKLeg_L_IKVis";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "dragon_rig:RootX_M_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:RootX_M_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RootX_M_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:RootX_M_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RootX_M_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RootX_M_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:RootX_M_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RootX_M_legLock";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:RootX_M_CenterBtwFeet";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane01_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane01_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane01_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane01_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane01_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane01_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane01_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane01_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane01_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane01_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane02_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane02_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane02_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane02_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane02_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane02_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane02_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane02_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane02_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.0000000000000004 2 1.0000000000000004;
createNode animCurveTU -n "dragon_rig:membrane02_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.0000000000000002 2 1.0000000000000002;
createNode animCurveTU -n "dragon_rig:membrane03_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane03_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane03_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane03_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane03_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane03_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane03_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane03_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane03_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane03_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane04_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane04_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane04_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane04_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane04_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane04_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane04_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane04_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane04_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane04_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane05_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane05_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane05_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane05_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane05_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane05_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane05_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane05_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane05_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane05_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane06_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane06_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane06_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane06_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane06_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane06_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane06_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane06_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane06_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane06_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane07_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane07_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane07_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane07_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane07_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane07_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane07_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane07_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.0000000000000002 2 1.0000000000000002;
createNode animCurveTU -n "dragon_rig:membrane07_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane07_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.0000000000000002 2 1.0000000000000002;
createNode animCurveTU -n "dragon_rig:membrane08_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane08_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane08_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane08_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane08_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane08_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane08_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane08_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane08_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane08_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane01_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane01_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0.73268785031309525;
createNode animCurveTL -n "dragon_rig:membrane01_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.6843418860808015e-014 2 23.239961848052975;
createNode animCurveTL -n "dragon_rig:membrane01_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.4210854715202004e-014 2 -4.3191999321717152;
createNode animCurveTA -n "dragon_rig:membrane01_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 4.5720473546038044e-015 2 4.5720473546038044e-015;
createNode animCurveTA -n "dragon_rig:membrane01_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane01_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.9513867036587919e-016 2 7.9513867036587919e-016;
createNode animCurveTU -n "dragon_rig:membrane01_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane01_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane01_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane02_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane02_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.1316282072803009e-014 2 2.1316282072803009e-014;
createNode animCurveTL -n "dragon_rig:membrane02_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.6843418860808015e-014 2 6.753972901353432;
createNode animCurveTL -n "dragon_rig:membrane02_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.4210854715202004e-014 2 1.4210854715202004e-014;
createNode animCurveTA -n "dragon_rig:membrane02_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane02_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane02_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane02_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane02_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane02_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane03_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane03_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane03_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 46.404699796199786;
createNode animCurveTL -n "dragon_rig:membrane03_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane03_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane03_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane03_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane03_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane03_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane03_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane04_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane04_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane04_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 46.404699796199786;
createNode animCurveTL -n "dragon_rig:membrane04_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane04_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane04_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane04_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane04_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane04_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane04_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane05_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane05_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.4210854715202004e-014 2 -1.4210854715202004e-014;
createNode animCurveTL -n "dragon_rig:membrane05_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane05_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane05_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.0545155653739461e-021 2 1.0545155653739461e-021;
createNode animCurveTA -n "dragon_rig:membrane05_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.987846675914699e-014 2 -1.987846675914699e-014;
createNode animCurveTA -n "dragon_rig:membrane05_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.2227891436147567e-021 2 3.2227891436147567e-021;
createNode animCurveTU -n "dragon_rig:membrane05_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane05_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane05_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane06_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane06_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 4.8849813083506888e-015 2 4.8849813083506888e-015;
createNode animCurveTL -n "dragon_rig:membrane06_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.6843418860808015e-014 2 5.6843418860808015e-014;
createNode animCurveTL -n "dragon_rig:membrane06_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.2737367544323206e-013 2 2.2737367544323206e-013;
createNode animCurveTA -n "dragon_rig:membrane06_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.1848489498583665e-023 2 -1.1848489498583665e-023;
createNode animCurveTA -n "dragon_rig:membrane06_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane06_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 9.4787915988669323e-023 2 9.4787915988669323e-023;
createNode animCurveTU -n "dragon_rig:membrane06_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane06_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane06_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane07_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane07_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.6843418860808015e-014 2 5.6843418860808015e-014;
createNode animCurveTL -n "dragon_rig:membrane07_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.6843418860808015e-014 2 5.6843418860808015e-014;
createNode animCurveTL -n "dragon_rig:membrane07_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane07_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane07_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane07_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane07_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane07_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane07_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 2 0.99999999999999989;
createNode animCurveTU -n "dragon_rig:membrane08_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:membrane08_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.6843418860808015e-014 2 5.6843418860808015e-014;
createNode animCurveTL -n "dragon_rig:membrane08_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:membrane08_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.1368683772161603e-013 2 1.1368683772161603e-013;
createNode animCurveTA -n "dragon_rig:membrane08_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:membrane08_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -9.5416640443905566e-015 2 -9.5416640443905566e-015;
createNode animCurveTA -n "dragon_rig:membrane08_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:membrane08_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999967 2 0.99999999999999967;
createNode animCurveTU -n "dragon_rig:membrane08_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:membrane08_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999967 2 0.99999999999999967;
createNode animCurveTU -n "dragon_rig:mouthMembranes_L_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:mouthMembranes_L_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:mouthMembranes_L_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:mouthMembranes_L_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:mouthMembranes_L_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:mouthMembranes_L_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:mouthMembranes_L_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:mouthMembranes_L_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:mouthMembranes_L_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:mouthMembranes_L_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:mouthMembranes_R_CON_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "dragon_rig:mouthMembranes_R_CON_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:mouthMembranes_R_CON_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTL -n "dragon_rig:mouthMembranes_R_CON_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:mouthMembranes_R_CON_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:mouthMembranes_R_CON_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTA -n "dragon_rig:mouthMembranes_R_CON_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2 0;
createNode animCurveTU -n "dragon_rig:mouthMembranes_R_CON_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:mouthMembranes_R_CON_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode animCurveTU -n "dragon_rig:mouthMembranes_R_CON_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 2 1;
createNode displayLayer -n "bg_render";
	setAttr ".do" 1;
createNode lambert -n "lambert2";
	addAttr -ci true -sn "rsRefractionSamples" -ln "rsRefractionSamples" -dv 1 -min 
		1 -max 32767 -smx 256 -at "long";
createNode shadingEngine -n "lambert2SG";
	addAttr -ci true -sn "rsSurfaceShader" -ln "rsSurfaceShader" -at "message";
	addAttr -ci true -sn "rsShadowShader" -ln "rsShadowShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsBumpmapShader" -ln "rsBumpmapShader" -at "message";
	addAttr -ci true -sn "rsDisplacementShader" -ln "rsDisplacementShader" -at "message";
	addAttr -ci true -sn "rsMaterialId" -ln "rsMaterialId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode displayLayer -n "bg_temp";
	setAttr ".v" no;
	setAttr ".do" 2;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr -s 28 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	setAttr ".dat" 2;
createNode mentalrayOptions -s -n "miContourPreset";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "Draft";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".splck" yes;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode RedshiftOptions -s -n "redshiftOptions";
	setAttr ".imageFormat" 2;
	setAttr ".unifiedMinSamples" 4;
	setAttr ".unifiedMaxSamples" 120;
	setAttr ".unifiedFilterSize" 2;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	addAttr -ci true -sn "rsSurfaceShader" -ln "rsSurfaceShader" -at "message";
	addAttr -ci true -sn "rsShadowShader" -ln "rsShadowShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsBumpmapShader" -ln "rsBumpmapShader" -at "message";
	addAttr -ci true -sn "rsDisplacementShader" -ln "rsDisplacementShader" -at "message";
	addAttr -ci true -sn "rsMaterialId" -ln "rsMaterialId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	addAttr -ci true -sn "rsSurfaceShader" -ln "rsSurfaceShader" -at "message";
	addAttr -ci true -sn "rsShadowShader" -ln "rsShadowShader" -at "message";
	addAttr -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -ci true -sn "rsBumpmapShader" -ln "rsBumpmapShader" -at "message";
	addAttr -ci true -sn "rsDisplacementShader" -ln "rsDisplacementShader" -at "message";
	addAttr -ci true -sn "rsMaterialId" -ln "rsMaterialId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".ep" 1;
	setAttr ".cpe" yes;
select -ne :defaultResolution;
	setAttr ".w" 2048;
	setAttr ".h" 2048;
	setAttr ".pa" 1;
	setAttr ".dar" 1;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "mib_blackbody1.S02" "light_Shape1.cl";
connectAttr "mib_blackbody3.S02" "light_Shape2.cl";
connectAttr "mib_blackbody4.S02" "light_Shape3.cl";
connectAttr "mia_exposure_simple1.msg" "renderCamShape.mils";
connectAttr "bg_temp.di" "pPlane1_temp.do";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file3.ot" "bg_mtl.it";
connectAttr "bg_mtl.oc" "blinn1SG.ss";
connectAttr "groundPlaneShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "bg_mtl.msg" "materialInfo3.m";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "layerManager.dli[1]" "bg_render.id";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPlane1_tempShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo4.sg";
connectAttr "lambert2.msg" "materialInfo4.m";
connectAttr "layerManager.dli[2]" "bg_temp.id";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "bg_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "light_Shape1.ltd" ":lightList1.l" -na;
connectAttr "light_Shape2.ltd" ":lightList1.l" -na;
connectAttr "light_Shape3.ltd" ":lightList1.l" -na;
connectAttr "mib_blackbody1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_areaLight1_mrLoc.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mia_exposure_simple1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mib_blackbody3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "_renderSetup_areaLight2_mrLoc.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "mib_blackbody4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "light_1.iog" ":defaultLightSet.dsm" -na;
connectAttr "light_2.iog" ":defaultLightSet.dsm" -na;
connectAttr "light_3.iog" ":defaultLightSet.dsm" -na;
// End of cyborg_lighting.ma
