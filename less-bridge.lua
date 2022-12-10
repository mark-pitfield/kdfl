lessbridge_proto = Proto("LessBridge", "cellXion.net Bridge API")
lessbridge_server_proto = Proto("LessBridgeServer", "cellXion.net Bridge Server API")
lessbridge_client_proto = Proto("LessBridgeClient", "cellXion.net Bridge Client API")

lb_msg_bridgestatus_proto = Proto("lbmsgbridgestatus", "API MSG Bridge Status")
lb_msg_servicemode_proto = Proto("lbmsgservicemode", "API MSG Service Mode")
lb_msg_knownplmns_proto = Proto("lbmsgknownplmns", "API MSG Lnown PLMNS")
lb_msg_networkinfo_proto = Proto("lbmsgnetworkinfo", "API MSG NetworkInfo")
lb_msg_clonecand_proto = Proto("lbmsgclonecand", "API Clone Candidates")
lb_msg_plmn_cells_proto = Proto("lbmsgplmncells","API PLMN Cells")
lb_msg_spectrum_bands_proto = Proto("lbmsgspectrumbands", "API Spectrum Bands")
lb_msg_spectrum_cells_proto = Proto("lbmsgspectrumcells", "API Spectrum cells")
lb_msg_gpspos_proto = Proto("lbmsggpspos", "API GPS Position")
lb_msg_sysarch_proto = Proto("lbmsgsysarch", "API Sysarch")
lb_msg_btsarch_proto = Proto("lbmsgbtsarch", "API BTSarch")
lb_msg_btsconfig_proto = Proto("lbmsgbtsconfig", "API BTS Config")



-- ****************************************************************

local vs_clientopcode = {
	[0x00] = "MSG_UIC_LOGIN",
	[0x01] = "MSG_UIC_MISSION",
	[0x02] = "MSG_UIC_RESETSCAN",
	[0x03] = "MSG_UIC_SUBSCRIBE",
	[0x04] = "MSG_UIC_MSGROUP",
	[0x05] = "MSG_UIC_SEND_SMS",
	[0x06] = "MSG_UIC_WDB_ADD_SRC_MAC",
	[0x07] = "MSG_UIC_BEACON",
	[0x10] = "MSG_UIC_SVCMODE",
	[0x11] = "MSG_UIC_PTM_BTS",
	[0x12] = "MSG_UIC_LDQ_RESETHITS",
	[0x13] = "MSG_UIC_LDQ_RETRY",
	[0x15] = "MSG_UIC_ACTIVATEBTS",
	[0x20] = "MSG_UIC_BTSCONFIG",
	[0x25] = "MSG_UIC_CHANGELAC",
	[0x26] = "MSG_UIC_SETT3212",
	[0x27] = "MSG_UIC_SETLACRANGE",
	[0x28] = "MSG_UIC_ADDMS",
	[0x29] = "MSG_UIC_VLR_RESETHITS",
	[0x30] = "MSG_UIC_DEL_MAPMARKER",
	[0x34] = "MSG_UIC_SETLACTIMER",
	[0x35] = "MSG_UIC_SETGLOBALPOWER",
	[0x41] = "MSG_UIC_SUBSCRIBERDETAILS",
	[0x4A] = "MSG_UIC_CLONECELL",
	[0x4B] = "MSG_UIC_CLONEPLMN",
	[0x51] = "MSG_UIC_CALLOP",
	[0x52] = "MSG_UIC_ORIGINATECALL",
	[0x53] = "MSG_UIC_HANDOVER_MS",
	[0x5E] = "MSG_UIC_LOGNOTES",
	[0x62] = "MSG_UIC_ANTSWTCH",
	[0x66] = "MSG_UIC_USEREVENTMARKER",
	[0x69] = "MSG_UIC_MSPOWERCONTROL",
	[0x6A] = "MSG_UIC_X1POSITION",
	[0x6B] = "MSG_UIC_BTS_HANDOVER",
	[0x72] = "MSG_UIC_RECONCILE_DSL",
	[0x73] = "MSG_UIC_RELOAD_DSL",
	[0x76] = "MSG_UIC_SPECTRUM_BANDS",
	[0x77] = "MSG_UIC_HAL_ACTIVATE",
	[0x78] = "MSG_UIC_HAL_CONFIG",
	[0x79] = "MSG_UIC_KNOWN_PLMN",
	[0x7a] = "MSG_UIC_SEQ_ACTIVATE",
	[0x7b] = "MSG_UIC_SEQ_CONFIG",
	[0x7c] = "MSG_UIC_SEQ_TEMPLATE",
	[0x7E] = "MSG_UIC_ACTIVATE_WIFI",
	[0x7F] = "MSG_UIC_WIFIDETAILS",
	[0x08] = "MSG_UIC_DF_CONFIG",
	[0x80] = "MSG_UIUR_SYSARCH",
	[0x81] = "MSG_UIUR_MISSION",
	[0x82] = "MSG_UIUR_MSGROUP",
	[0x83] = "MSG_UIUR_SYSINFO",
	[0x84] = "MSG_UIUR_PLMNINFO",
	[0x85] = "MSG_UIUR_MSAUTOFILTER",
	[0x87] = "MSG_UIUR_SCANSTATUS",
	[0x88] = "MSG_UIUR_BTSSTATUS",
	[0x89] = "MSG_UIUR_BTSBALIST",
	[0x8A] = "MSG_UIUR_BTS_LOADING",
	[0x8C] = "MSG_UIUR_GPSPOS",
	[0x8D] = "MSG_UIUR_LDQ_PAUSE",
	[0x8F] = "MSG_UIUR_LDQ_DISPLAYOPTS",
	[0x90] = "MSG_UIUR_LOGVIEWPORT",
	[0x92] = "MSG_UIUR_LOG_SETPAUSE",
	[0xE0] = "MSG_UIUR_WDB_SETPAUSE",
	[0xA8] = "MSG_UIUR_LDQ_SETPAGING",
	[0x93] = "MSG_UIUR_LOG_SETPAGING",
	[0x9E] = "MSG_UIUR_VLR_SETPAGING",
	[0xE1] = "MSG_UIUR_WDB_SETPAGING",
	[0x94] = "MSG_UIUR_LOG_ACK",
	[0x95] = "MSG_UIUR_CELLVIEW",
	[0x96] = "MSG_UIUR_SETMONITOR",
	[0x97] = "MSG_UIUR_VALIDATEMS",
	[0x98] = "MSG_UIUR_VLR_VIEWPORT",
	[0x99] = "MSG_UIUR_VLR_DISPLAYOPTS",
	[0x9A] = "MSG_UIUR_VLR_UPDATEGROUPFILTER",
	[0xE3] = "MSG_UIUR_WDB_UPDATEGROUPFILTER",
	[0x8E] = "MSG_UIUR_LDQ_REFRESH",
	[0x9B] = "MSG_UIUR_VLR_REFRESH",
	[0xE2] = "MSG_UIUR_WDB_REFRESH",
	[0x9C] = "MSG_UIUR_VLR_PAUSE",
	[0x9F] = "MSG_UIUR_VLR_ACK",
	[0xA1] = "MSG_UIUR_SYSTEMMODES",
	[0xA2] = "MSG_UIUR_GETLACRANGE",
	[0xA3] = "MSG_UIUR_VLR_TARGETPRIORITY",
	[0xA4] = "MSG_UIUR_T3212",
	[0xA5] = "MSG_UIUR_LDQ_VIEWPORT",
	[0xA6] = "MSG_UIUR_LDQ_ACK",
	[0xA9] = "MSG_UIUR_LDQ_RESOLVINGPRIORITY",
	[0xBA] = "MSG_UIUR_CHANSCAN",
	[0xC1] = "MSG_UIUR_LOGNOTES",
	[0xc5] = "MSG_UIUR_GETMAPDATA",
	[0xc6] = "MSG_UIUR_ANTSWTCH",
	[0xC7] = "MSG_UIUR_SUBSCRIBERDETAILS",
	[0xC8] = "MSG_UIUR_HANDSETACTIVITY",
	[0xC9] = "MSG_UIUR_HANDSETHISTORY",
	[0xCF] = "MSG_UIUR_SCANCYLCE_COMPLETE",
	[0xD1] = "MSG_UIUR_AMPSTATUS",
	[0xD2] = "MSG_UIUR_WIFISTATUS",
	[0xD4] = "MSG_UIUR_SPECTRUM",
	[0xD5] = "MSG_UIUR_SPECTRUM_BANDS",
	[0xD6] = "MSG_UIUR_HAL_ACTIVATE",
	[0xD7] = "MSG_UIUR_HAL_CONFIG",
	[0xD8] = "MSG_UIUR_SEQ_ACTIVATE",
	[0xD9] = "MSG_UIUR_SEQ_CONFIG",
	[0xDA] = "MSG_UIUR_SEQ_STATUS",
	[0xDB] = "MSG_UIUR_SEQ_TEMPLATE",
	[0xDC] = "MSG_UIUR_WDB_DISPLAYOPTS",
	[0xDD] = "MSG_UIUR_WDB_TARGETPRIORITY",
	[0xDE] = "MSG_UIUR_WDB_ACK",
	[0xDF] = "MSG_UIUR_WDB_VIEWPORT",
	[0xE4] = "MSG_UIUR_WDB_VALIDATE_SRC_MAC",
	[0xE5] = "MSG_UIUR_WDB_SUMMARY",
	[0xE6] = "MSG_UIUR_BTS_HANDOVER",
	[0xE7] = "MSG_UIUR_CLONE_FLOWER",
	[0xE8] = "MSG_UIUR_NCELL_FLOWER",
	[0xE9] = "MSG_UIUR_PAMPSTATUS",
	[0xEA] = "MSG_UIUR_HAL_PROGRESS",
	[0xEB] = "MSG_UIUR_BEACON",
	[0xEC] = "MSG_UIUR_VLR_ADVANCED_FILTERS",
	[0xED] = "MSG_UIUR_DF",
	[0xEE] = "MSG_UIUR_CELL_SIBS"

}
-- **************************************************************

local vs_serveropcode = {
	[0x00] = "MSG_UIU_LOGINACK",
	[0x01] = "MSG_UIU_PERMS",
	[0x02] = "MSG_UIU_PLMNINFO",
	[0x10] = "MSG_UIU_SYSARCH",
	[0x11] = "MSG_UIU_BTSARCH",
	[0x12] = "MSG_UIU_PTM_BTS",
	[0x20] = "MSG_UIU_MISSION",
	[0x21] = "MSG_UIU_MISSIONDATA",
	[0x22] = "MSG_UIU_MISSIONLOC",
	[0x23] = "MSG_UIU_SYSINFO",
	[0x2A] = "MSG_UIU_MSGROUP",
	[0x2B] = "MSG_UIU_MSGROUPDATA",
	[0x30] = "MSG_UIU_LOG_ROW",
	[0x31] = "MSG_UIU_VLR_ROW",
	[0x34] = "MSG_UIU_VLR_STATS",
	[0x35] = "MSG_UIU_LOG_PREAMBLE",
	[0x36] = "MSG_UIU_VLR_PREAMBLE",
	[0x37] = "MSG_UIU_MSVALIDATION",
	[0x38] = "MSG_UIU_LOG_POSTAMBLE",
	[0x39] = "MSG_UIU_VLR_POSTAMBLE",
	[0xFA] = "MSG_ERROR_STR",
	[0xFF] = "MSG_ERROR",
	[0x40] = "MSG_UIU_SVCMODE",
	[0x47] = "MSG_UIU_NSSALERT",
	[0x48] = "MSG_UIU_BTSSTATUS",
	[0x4B] = "MSG_UIU_T3212",
	[0x4C] = "MSG_UIU_LACRANGE",
	[0x4D] = "MSG_UIU_TRAFFICRATE",
	[0x4E] = "MSG_UIU_LACTIMER",
	[0x50] = "MSG_UIU_BTSCONFIG",
	[0x51] = "MSG_UIU_ACTIVATEBTS",
	[0x52] = "MSG_UIU_BTSWARNING",
	[0x56] = "MSG_UIU_MONITORACTIVITY",
	[0x57] = "MSG_UIU_SUBSCRIBERDETAILS",
	[0x58] = "MSG_UIU_RESETENVIRONMENT",
	[0x59] = "MSG_UIU_NETWORKINFO",
	[0x5B] = "MSG_UIU_CELLUPDATE",
	[0x5F] = "MSG_UIU_BRIDGESTATUS",
	[0x62] = "MSG_UIU_MSAUTOFILTER",
	[0x63] = "MSG_UIU_MSAUTOFILTERDATA",
	[0x69] = "MSG_UIU_BTS_AUTOCONFIG",
	[0x6D] = "MSG_UIU_LOGNOTES",
	[0x6E] = "MSG_UIU_BTS_LOADING",
	[0x74] = "MSG_UIU_GPSPOS",
	[0x76] = "MSG_UIU_MAPDATA",
	[0x77] = "MSG_UIU_ANTSWTCH_STATUS",
	[0x79] = "MSG_UIU_MAPLOCATIONS",
	[0x80] = "MSG_UIU_HANDSETACTIVITY",
	[0x81] = "MSG_UIU_HANDSETHISTORY",
	[0x83] = "MSG_UIU_ADDMSGROUPSTATUS",
	[0x88] = "MSG_UIU_X1POSITION",
	[0x97] = "MSG_UIU_AMPSTATUS",
	[0x98] = "MSG_UIU_WIFISTATUS",
	[0x99] = "MSG_UIU_REM_SCAN_PROGRESS",
	[0x9B] = "MSG_UIU_SPECTRUM_BANDS",
	[0x9C] = "MSG_UIU_SPECTRUM_RSSI",
	[0x9D] = "MSG_UIU_SPECTRUM_CELL",
	[0x9E] = "MSG_UIU_SPECTRUM_CELL_DELETE",
	[0x9F] = "MSG_UIU_SPECTRUM_BATCH",
	[0xa0] = "MSG_UIU_SPECTRUM_TIMESTAMP",
	[0xa1] = "MSG_UIU_HAL_ACTIVATE",
	[0xa2] = "MSG_UIU_HAL_CONFIG",
	[0xa3] = "MSG_UIU_KNOWN_PLMNS",
	[0xa4] = "MSG_UIU_SPECTRUM_BTS",
	[0xa5] = "MSG_UIU_SEQ_ACTIVATE",
	[0xa6] = "MSG_UIU_SEQ_CONFIG",
	[0xa7] = "MSG_UIU_SEQ_STATUS",
	[0xa8] = "MSG_UIU_SEQ_TEMPLATE",
	[0xa9] = "MSG_UIU_WDB_STATS",
	[0xaa] = "MSG_UIU_WDB_PREAMBLE",
	[0xab] = "MSG_UIU_WDB_ROW",
	[0xac] = "MSG_UIU_ACTIVATE_WIFI",
	[0xad] = "MSG_UIU_WIFIDETAILS",
	[0xae] = "MSG_UIU_WDB_SRC_MAC_VALIDATION",
	[0xaf] = "MSG_UIU_WIFI_TRAFFICRATE",
	[0xb0] = "MSG_UIU_SPECTRUM_WIFI",
	[0xb1] = "MSG_UIU_SPECTRUM_WIFI_DELETE",
	[0xb2] = "UIU_WDB_SUMMARY",
	[0xB3] = "MSG_UIU_BTS_HANDOVER",
	[0xB4] = "MSG_UIU_BTS_HANDOVER_RESET",
	[0xB5] = "MSG_UIU_CLONE_CANDIDATES",
	[0xB6] = "MSG_UIU_CLONE_FLOWER",
	[0xB7] = "MSG_UIU_PLMN_CELLS",
	[0xB8] = "MSG_UIU_NCELL_FLOWER",
	[0xB9] = "MSG_UIU_PAMPSTATUS",
	[0xBA] = "MSG_UIU_HAL_PROGRESS",
	[0xBB] = "MSG_UIU_BEACON",
	[0xBC] = "MSG_UIU_BEACON_TRAFFIC_RATE",
	[0xBD] = "MSG_UIU_SPECTRUM_BEACON",
	[0xBF] = "MSG_UIU_SPECTRUM_SYNC",
	[0xC0] = "MSG_UIU_SPECTRUM_SYNC_DELETE",
	[0xC1] = "MSG_UIU_X3_STATUS",
	[0xC2] = "MSG_UIU_MAPMARKER",
	[0xC3] = "MSG_UIU_CANNED_SMS",
	[0xC4] = "MSG_UIU_CANNED_SMS_DELETE",
	[0xC5] = "MSG_UIU_DF_POSITION",
	[0xC6] = "MSG_UIU_DF_STATUS",
	[0xC7] = "MSG_UIU_CELL_SIB",
	[0xC8] = "MSG_UIU_WDB_POSTAMBLE",
	[0xC9] = "MSG_UIU_LDQ_PREAMBLE",
	[0xCA] = "MSG_UIU_LDQ_ROW",
	[0xCB] = "MSG_UIU_LDQ_POSTAMBLE",
	[0xCC] = "MSG_UIU_LDQ_STATS"
}

-- redo but using strings for later lookup

local vs_clientopcodetext = {
	["00"] = "MSG_UIC_LOGIN",
	["01"] = "MSG_UIC_MISSION",
	["02"] = "MSG_UIC_RESETSCAN",
	["03"] = "MSG_UIC_SUBSCRIBE",
	["04"] = "MSG_UIC_MSGROUP",
	["05"] = "MSG_UIC_SEND_SMS",
	["06"] = "MSG_UIC_WDB_ADD_SRC_MAC",
	["07"] = "MSG_UIC_BEACON",
	["10"] = "MSG_UIC_SVCMODE",
	["11"] = "MSG_UIC_PTM_BTS",
	["12"] = "MSG_UIC_LDQ_RESETHITS",
	["13"] = "MSG_UIC_LDQ_RETRY",
	["15"] = "MSG_UIC_ACTIVATEBTS",
	["20"] = "MSG_UIC_BTSCONFIG",
	["25"] = "MSG_UIC_CHANGELAC",
	["26"] = "MSG_UIC_SETT3212",
	["27"] = "MSG_UIC_SETLACRANGE",
	["28"] = "MSG_UIC_ADDMS",
	["29"] = "MSG_UIC_VLR_RESETHITS",
	["30"] = "MSG_UIC_DEL_MAPMARKER",
	["34"] = "MSG_UIC_SETLACTIMER",
	["35"] = "MSG_UIC_SETGLOBALPOWER",
	["41"] = "MSG_UIC_SUBSCRIBERDETAILS",
	["4A"] = "MSG_UIC_CLONECELL",
	["4B"] = "MSG_UIC_CLONEPLMN",
	["51"] = "MSG_UIC_CALLOP",
	["52"] = "MSG_UIC_ORIGINATECALL",
	["53"] = "MSG_UIC_HANDOVER_MS",
	["5E"] = "MSG_UIC_LOGNOTES",
	["62"] = "MSG_UIC_ANTSWTCH",
	["66"] = "MSG_UIC_USEREVENTMARKER",
	["69"] = "MSG_UIC_MSPOWERCONTROL",
	["6A"] = "MSG_UIC_X1POSITION",
	["6B"] = "MSG_UIC_BTS_HANDOVER",
	["72"] = "MSG_UIC_RECONCILE_DSL",
	["73"] = "MSG_UIC_RELOAD_DSL",
	["76"] = "MSG_UIC_SPECTRUM_BANDS",
	["77"] = "MSG_UIC_HAL_ACTIVATE",
	["78"] = "MSG_UIC_HAL_CONFIG",
	["79"] = "MSG_UIC_KNOWN_PLMN",
	["7a"] = "MSG_UIC_SEQ_ACTIVATE",
	["7b"] = "MSG_UIC_SEQ_CONFIG",
	["7c"] = "MSG_UIC_SEQ_TEMPLATE",
	["7E"] = "MSG_UIC_ACTIVATE_WIFI",
	["7F"] = "MSG_UIC_WIFIDETAILS",
	["08"] = "MSG_UIC_DF_CONFIG",
	["80"] = "MSG_UIUR_SYSARCH",
	["81"] = "MSG_UIUR_MISSION",
	["82"] = "MSG_UIUR_MSGROUP",
	["83"] = "MSG_UIUR_SYSINFO",
	["84"] = "MSG_UIUR_PLMNINFO",
	["85"] = "MSG_UIUR_MSAUTOFILTER",
	["87"] = "MSG_UIUR_SCANSTATUS",
	["88"] = "MSG_UIUR_BTSSTATUS",
	["89"] = "MSG_UIUR_BTSBALIST",
	["8A"] = "MSG_UIUR_BTS_LOADING",
	["8C"] = "MSG_UIUR_GPSPOS",
	["8D"] = "MSG_UIUR_LDQ_PAUSE",
	["8F"] = "MSG_UIUR_LDQ_DISPLAYOPTS",
	["90"] = "MSG_UIUR_LOGVIEWPORT",
	["92"] = "MSG_UIUR_LOG_SETPAUSE",
	["E0"] = "MSG_UIUR_WDB_SETPAUSE",
	["A8"] = "MSG_UIUR_LDQ_SETPAGING",
	["93"] = "MSG_UIUR_LOG_SETPAGING",
	["9E"] = "MSG_UIUR_VLR_SETPAGING",
	["E1"] = "MSG_UIUR_WDB_SETPAGING",
	["94"] = "MSG_UIUR_LOG_ACK",
	["95"] = "MSG_UIUR_CELLVIEW",
	["96"] = "MSG_UIUR_SETMONITOR",
	["97"] = "MSG_UIUR_VALIDATEMS",
	["98"] = "MSG_UIUR_VLR_VIEWPORT",
	["99"] = "MSG_UIUR_VLR_DISPLAYOPTS",
	["9A"] = "MSG_UIUR_VLR_UPDATEGROUPFILTER",
	["E3"] = "MSG_UIUR_WDB_UPDATEGROUPFILTER",
	["8E"] = "MSG_UIUR_LDQ_REFRESH",
	["9B"] = "MSG_UIUR_VLR_REFRESH",
	["E2"] = "MSG_UIUR_WDB_REFRESH",
	["9C"] = "MSG_UIUR_VLR_PAUSE",
	["9F"] = "MSG_UIUR_VLR_ACK",
	["A1"] = "MSG_UIUR_SYSTEMMODES",
	["A2"] = "MSG_UIUR_GETLACRANGE",
	["A3"] = "MSG_UIUR_VLR_TARGETPRIORITY",
	["A4"] = "MSG_UIUR_T3212",
	["A5"] = "MSG_UIUR_LDQ_VIEWPORT",
	["A6"] = "MSG_UIUR_LDQ_ACK",
	["A9"] = "MSG_UIUR_LDQ_RESOLVINGPRIORITY",
	["BA"] = "MSG_UIUR_CHANSCAN",
	["C1"] = "MSG_UIUR_LOGNOTES",
	["c5"] = "MSG_UIUR_GETMAPDATA",
	["c6"] = "MSG_UIUR_ANTSWTCH",
	["C7"] = "MSG_UIUR_SUBSCRIBERDETAILS",
	["C8"] = "MSG_UIUR_HANDSETACTIVITY",
	["C9"] = "MSG_UIUR_HANDSETHISTORY",
	["CF"] = "MSG_UIUR_SCANCYLCE_COMPLETE",
	["D1"] = "MSG_UIUR_AMPSTATUS",
	["D2"] = "MSG_UIUR_WIFISTATUS",
	["D4"] = "MSG_UIUR_SPECTRUM",
	["D5"] = "MSG_UIUR_SPECTRUM_BANDS",
	["D6"] = "MSG_UIUR_HAL_ACTIVATE",
	["D7"] = "MSG_UIUR_HAL_CONFIG",
	["D8"] = "MSG_UIUR_SEQ_ACTIVATE",
	["D9"] = "MSG_UIUR_SEQ_CONFIG",
	["DA"] = "MSG_UIUR_SEQ_STATUS",
	["DB"] = "MSG_UIUR_SEQ_TEMPLATE",
	["DC"] = "MSG_UIUR_WDB_DISPLAYOPTS",
	["DD"] = "MSG_UIUR_WDB_TARGETPRIORITY",
	["DE"] = "MSG_UIUR_WDB_ACK",
	["DF"] = "MSG_UIUR_WDB_VIEWPORT",
	["E4"] = "MSG_UIUR_WDB_VALIDATE_SRC_MAC",
	["E5"] = "MSG_UIUR_WDB_SUMMARY",
	["E6"] = "MSG_UIUR_BTS_HANDOVER",
	["E7"] = "MSG_UIUR_CLONE_FLOWER",
	["E8"] = "MSG_UIUR_NCELL_FLOWER",
	["E9"] = "MSG_UIUR_PAMPSTATUS",
	["EA"] = "MSG_UIUR_HAL_PROGRESS",
	["EB"] = "MSG_UIUR_BEACON",
	["EC"] = "MSG_UIUR_VLR_ADVANCED_FILTERS",
	["ED"] = "MSG_UIUR_DF",
	["EE"] = "MSG_UIUR_CELL_SIBS"

}
-- **************************************************************

local vs_serveropcodetext = {
	["00"] = "MSG_UIU_LOGINACK",
	["01"] = "MSG_UIU_PERMS",
	["02"] = "MSG_UIU_PLMNINFO",
	["10"] = "MSG_UIU_SYSARCH",
	["11"] = "MSG_UIU_BTSARCH",
	["12"] = "MSG_UIU_PTM_BTS",
	["20"] = "MSG_UIU_MISSION",
	["21"] = "MSG_UIU_MISSIONDATA",
	["22"] = "MSG_UIU_MISSIONLOC",
	["23"] = "MSG_UIU_SYSINFO",
	["2A"] = "MSG_UIU_MSGROUP",
	["2B"] = "MSG_UIU_MSGROUPDATA",
	["30"] = "MSG_UIU_LOG_ROW",
	["31"] = "MSG_UIU_VLR_ROW",
	["34"] = "MSG_UIU_VLR_STATS",
	["35"] = "MSG_UIU_LOG_PREAMBLE",
	["36"] = "MSG_UIU_VLR_PREAMBLE",
	["37"] = "MSG_UIU_MSVALIDATION",
	["38"] = "MSG_UIU_LOG_POSTAMBLE",
	["39"] = "MSG_UIU_VLR_POSTAMBLE",
	["40"] = "MSG_UIU_SVCMODE",
	["47"] = "MSG_UIU_NSSALERT",
	["48"] = "MSG_UIU_BTSSTATUS",
	["4B"] = "MSG_UIU_T3212",
	["4C"] = "MSG_UIU_LACRANGE",
	["4D"] = "MSG_UIU_TRAFFICRATE",
	["4E"] = "MSG_UIU_LACTIMER",
	["50"] = "MSG_UIU_BTSCONFIG",
	["51"] = "MSG_UIU_ACTIVATEBTS",
	["52"] = "MSG_UIU_BTSWARNING",
	["56"] = "MSG_UIU_MONITORACTIVITY",
	["57"] = "MSG_UIU_SUBSCRIBERDETAILS",
	["58"] = "MSG_UIU_RESETENVIRONMENT",
	["59"] = "MSG_UIU_NETWORKINFO",
	["5B"] = "MSG_UIU_CELLUPDATE",
	["5F"] = "MSG_UIU_BRIDGESTATUS",
	["62"] = "MSG_UIU_MSAUTOFILTER",
	["63"] = "MSG_UIU_MSAUTOFILTERDATA",
	["69"] = "MSG_UIU_BTS_AUTOCONFIG",
	["6D"] = "MSG_UIU_LOGNOTES",
	["6E"] = "MSG_UIU_BTS_LOADING",
	["74"] = "MSG_UIU_GPSPOS",
	["76"] = "MSG_UIU_MAPDATA",
	["77"] = "MSG_UIU_ANTSWTCH_STATUS",
	["79"] = "MSG_UIU_MAPLOCATIONS",
	["80"] = "MSG_UIU_HANDSETACTIVITY",
	["81"] = "MSG_UIU_HANDSETHISTORY",
	["83"] = "MSG_UIU_ADDMSGROUPSTATUS",
	["88"] = "MSG_UIU_X1POSITION",
	["97"] = "MSG_UIU_AMPSTATUS",
	["98"] = "MSG_UIU_WIFISTATUS",
	["99"] = "MSG_UIU_REM_SCAN_PROGRESS",
	["9B"] = "MSG_UIU_SPECTRUM_BANDS",
	["9C"] = "MSG_UIU_SPECTRUM_RSSI",
	["9D"] = "MSG_UIU_SPECTRUM_CELL",
	["9E"] = "MSG_UIU_SPECTRUM_CELL_DELETE",
	["9F"] = "MSG_UIU_SPECTRUM_BATCH",
	["A0"] = "MSG_UIU_SPECTRUM_TIMESTAMP",
	["A1"] = "MSG_UIU_HAL_ACTIVATE",
	["A2"] = "MSG_UIU_HAL_CONFIG",
	["A3"] = "MSG_UIU_KNOWN_PLMNS",
	["A4"] = "MSG_UIU_SPECTRUM_BTS",
	["A5"] = "MSG_UIU_SEQ_ACTIVATE",
	["A6"] = "MSG_UIU_SEQ_CONFIG",
	["A7"] = "MSG_UIU_SEQ_STATUS",
	["A8"] = "MSG_UIU_SEQ_TEMPLATE",
	["A9"] = "MSG_UIU_WDB_STATS",
	["AA"] = "MSG_UIU_WDB_PREAMBLE",
	["AB"] = "MSG_UIU_WDB_ROW",
	["AC"] = "MSG_UIU_ACTIVATE_WIFI",
	["AD"] = "MSG_UIU_WIFIDETAILS",
	["AE"] = "MSG_UIU_WDB_SRC_MAC_VALIDATION",
	["AF"] = "MSG_UIU_WIFI_TRAFFICRATE",
	["B0"] = "MSG_UIU_SPECTRUM_WIFI",
	["B1"] = "MSG_UIU_SPECTRUM_WIFI_DELETE",
	["B3"] = "MSG_UIU_BTS_HANDOVER",
	["B4"] = "MSG_UIU_BTS_HANDOVER_RESET",
	["B5"] = "MSG_UIU_CLONE_CANDIDATES",
	["B6"] = "MSG_UIU_CLONE_FLOWER",
	["B7"] = "MSG_UIU_PLMN_CELLS",
	["B8"] = "MSG_UIU_NCELL_FLOWER",
	["B9"] = "MSG_UIU_PAMPSTATUS",
	["BA"] = "MSG_UIU_HAL_PROGRESS",
	["BB"] = "MSG_UIU_BEACON",
	["BC"] = "MSG_UIU_BEACON_TRAFFIC_RATE",
	["BD"] = "MSG_UIU_SPECTRUM_BEACON",
	["BF"] = "MSG_UIU_SPECTRUM_SYNC",
	["C0"] = "MSG_UIU_SPECTRUM_SYNC_DELETE",
	["C1"] = "MSG_UIU_X3_STATUS",
	["C2"] = "MSG_UIU_MAPMARKER",
	["C3"] = "MSG_UIU_CANNED_SMS",
	["C4"] = "MSG_UIU_CANNED_SMS_DELETE",
	["C5"] = "MSG_UIU_DF_POSITION",
	["C6"] = "MSG_UIU_DF_STATUS",
	["C7"] = "MSG_UIU_CELL_SIB",
	["C8"] = "MSG_UIU_WDB_POSTAMBLE",
	["C9"] = "MSG_UIU_LDQ_PREAMBLE",
	["CA"] = "MSG_UIU_LDQ_ROW",
	["CB"] = "MSG_UIU_LDQ_POSTAMBLE",
	["CC"] = "MSG_UIU_LDQ_STATS"
}

	f_opcode = ProtoField.uint8("lessbridge.f_opcode","opcode", base.HEX)
	f_server = ProtoField.uint8("lessbridge.f_opcode","opcode", base.HEX, vs_serveropcode)
	f_client = ProtoField.uint8("lessbridge.f_opcode","opcode", base.HEX, vs_clientopcode)
	f_datalen = ProtoField.uint8("lessbridge.f_datalen","DataLen", base.DEC)
	f_data = ProtoField.bytes("lessbridge.f_data","PayLoad", base.BYTES)
	f_checksum = ProtoField.uint8("lessbridge.f_checksum","Checksum", base.HEX)
	s_datalen = ProtoField.uint8("lessbridge.f_datalen","DataLen", base.DEC)
	s_len = ProtoField.uint8("lessbridge.f_len","Len", base.DEC)
	s_data = ProtoField.bytes("lessbridge.f_data","PayLoad", base.BYTES)
	s_checksum = ProtoField.uint8("lessbridge.f_checksum","Checksum", base.HEX)
	c_datalen = ProtoField.uint8("lessbridge.f_datalen","DataLen", base.DEC)
	c_data = ProtoField.bytes("lessbridge.f_data","PayLoad", base.BYTES)
	c_checksum = ProtoField.uint8("lessbridge.f_checksum","Checksum", base.HEX)

-- MSG_UIU_BRIDGESTATUS

local en_5f_power = {
	[0] = "Running on AC Power - Battery Full",
	[1] = "Running on AC Power - Battery Charging",
	[2] = "Running on Battery Power - Ok",
	[3] = "Running on Battery Power - LOW BATTERY WARNING",
	[4] = "Calculating...",
	[255] = "Status Unknown"
}
local en_5f_storage = {
	[0] = "Internal Hard Disk",
	[1] = "External USB"
}
	s_5f_power = ProtoField.uint8("lbmsgbridgestatus.s_5f_power","powerstatus", base.DEC, en_5f_power, 0x10)
	s_5f_bc = ProtoField.uint8("lbmsgbridgestatus.s_5f_bc","batterycharge", base.DEC)
	s_5f_mr = ProtoField.uint8("lbmsgbridgestatus.s_5f_mr","minremaining", base.DEC)
	s_5f_ut_years = ProtoField.uint8("lbmsgbridgestatus.s_5f_uty","uptimeyears", base.DEC)
	s_5f_ut_days = ProtoField.uint8("lbmsgbridgestatus.s_5f_utd","uptimedays", base.DEC)
	s_5f_ut_hours = ProtoField.uint8("lbmsgbridgestatus.s_5f_uth","uptimehours", base.DEC)
	s_5f_ut_mins = ProtoField.uint8("lbmsgbridgestatus.s_5f_utm","uptimemins", base.DEC)
	s_5f_ut_secs = ProtoField.uint8("lbmsgbridgestatus.s_5f_uts","uptimesecs", base.DEC)
	s_5f_storage = ProtoField.uint8("lbmsgbridgestatus.s_5f_store","storage", base.DEC, en_5f_storage, 0x10)
	s_5f_storeused = ProtoField.uint8("lbmsgbridgestatus.s_5f_storeused","storageused", base.DEC)

	s_5f_usb_free_high = ProtoField.uint8("lbmsgbridgestatus.s_5f_usb_free_high","usbfreehigh", base.DEC)
	s_5f_usb_free_low = ProtoField.uint8("lbmsgbridgestatus.s_5f_usb_free_low","usbfreelow", base.DEC)
	s_5f_usb_free_unit = ProtoField.string("lbmsgbridgestatus.s_5f_usb_free_unit","usbfreeunit", base.ASCII)

	s_5f_usb_total_high = ProtoField.uint8("lbmsgbridgestatus.s_5f_usb_total_high","usbtotalhigh", base.DEC)
	s_5f_usb_total_low = ProtoField.uint8("lbmsgbridgestatus.s_5f_usb_total_low","usbtotallow", base.DEC)
	s_5f_usb_total_unit = ProtoField.string("lbmsgbridgestatus.s_5f_usb_total_unit","usbtotalunit", base.ASCII)
	s_5f_clients = ProtoField.uint8("lbmsgbridgestatus.s_5f_clients","numberclients",base.DEC)
	s_5f_load = ProtoField.uint8("lbmsgbridgestatus.s_5f_load","systemload",base.DEC)
	s_5f_temp = ProtoField.uint8("lbmsgbridgestatus.s_5f_temp","scantemp", base.HEX)
	s_5f_volt = ProtoField.uint8("lbmsgbridgestatus.s_5f_volt","systemvoltage", base.DEC)

	s_5f_curyear = ProtoField.uint8("lbmsgbridgestatus.s_5f_curyear","currentyear", base.DEC)
	s_5f_curmon = ProtoField.uint8("lbmsgbridgestatus.s_5f_curmon","currmonth", base.DEC)
	s_5f_curday = ProtoField.uint8("lbmsgbridgestatus.s_5f_curday","currentday", base.DEC)
	s_5f_curhour = ProtoField.uint8("lbmsgbridgestatus.s_5f_curhour","currenthour", base.DEC)
	s_5f_curmin = ProtoField.uint8("lbmsgbridgestatus.s_5f_curmin","currentmin", base.DEC)
	s_5f_tzcode = ProtoField.string("lbmsgbridgestatus.s_5f_tzcode","timezonecode", base.ASCII)

-- End MSG_UIU_BRIDGESTATUS
-- MSG_UIU_SVCMODE
local en_40_newsm = {
	[0x00] = "Off-Air",
	[0x01] = "IMSI Research Only",
	[0x02] = "Targetted Lock",
	[0x03] = "Firewall",
	[0x04] = "Emergency Net-in-a-box",
	[0x05] = "Locate Priority Targets",
	[0x06] = "Call All Handsets",
	[0x07] = "Disable All Handsets",
	[0x08] = "Ping Mode",
	[0x09] = "Firmware updating",
	[0x0a] = "Environment scan",
	[0x50] = "reserved for scheduler (means no mode set for that snapshot)",
	[0x80] = "Off Air Pending",
	[0x81] = "IMSI Research Pending",
	[0x82] = "Lock Targets Pending",
	[0x83] = "Firewall Pending",
	[0x84] = "Emergency Net in a box Pending",
	[0x85] = "DF Targets Pending",
	[0x86] = "Call All Handsets Pending",
	[0x87] = "Disable All Handsets Pending",
	[0x88] = "Ping Mode Pending",
	[0xFE] = "System will reboot in 20 seconds if not aborted *",
	[0xFF] = "System will shutdown in 20 seconds if not aborted *",
	[0xFD] = "System shutdown has been aborted *",
	[0xFB] = "System is rebooting",
	[0xFC] = "System is shutting down",
	[0xFD] = "Abort shutdown/reboot (Abort a pending poweroff or shutdown)"
}

s_40_newsm = ProtoField.uint8("lb_msg_servicemode_proto.s_40_newsm","newservicemode", base.HEX, en_40_newsm, 0x10)
s_40_cursm = ProtoField.uint8("lb_msg_servicemode_proto.s_40_cursm","curservicemode", base.HEX, en_40_newsm, 0x10)

-- End MSG_UIU_SVCMODE

-- MSG_UIU_KNOWN_PLMNS
local en_a3_rat = {
	[0x01] = "GSM",
	[0x02] = "UMTS",
	[0x04] = "LTE"
}
local en_a3_protect = {
	[0] = "No",
	[1] = "Yes"
}
-- s_a3_count = ProtoField.uint8("lb_msg_knownplmns_proto.s_a3_count","plmncount", base.HEX)
	s_a3_plmn = ProtoField.uint8("lb_msg_knownplmns_proto.s_a3_plmn","plmn", base.HEX)
	s_a3_rat = ProtoField.uint8("lb_msg_knownplmns_proto.s_a3_rat","RAT", base.HEX, en_a3_rat)
	s_a3_rgb = ProtoField.uint8("lb_msg_knownplmns_proto.s_a3_rgb","RGB", base.HEX)
	s_a3_name = ProtoField.string("lb_msg_knownplmns_proto.s_a3_name","name", base.ASCII)
	s_a3_protected = ProtoField.uint8("lb_msg_knownplmns_proto.s_a3_protected","protectednet", base.HEX, en_a3_protect, 0x01)
--  End MSG_UIU_KNOWN_PLMNS

-- MSG_UIU_NETWORKINFO
local en_59_ratflags = {
	[0x00] = "No Flags",
	[0x01] = "Cat M1 Enabled",
	[0x02] = "Release 15 Indication Set"
}


	s_59_plmn = ProtoField.uint8("lb_msg_networkinfo_proto.s_59_plmn","plmn", base.HEX)
	s_59_rat = ProtoField.uint8("lb_msg_networkinfo_proto.s_59_rat","RAT", base.HEX, en_a3_rat)
	s_59_dcol = ProtoField.uint8("lb_msg_networkinfo_proto.s_59_dcol","displaycolor", base.HEX)
	s_59_name = ProtoField.string("lb_msg_networkinfo_proto.s_59_name","name", base.ASCII)
	s_59_protected = ProtoField.uint8("lb_msg_networkinfo_proto.s_59_protected","protectednet", base.HEX, en_a3_protect, 0x01)
	s_59_ratflags = ProtoField.uint8("lb_msg_networkinfo_proto.s_59_ratflags","ratflags", base.HEX, en_59_ratflags)

--  End MSG_UIU_NETWORKINFO

-- MSG_UIU_CLONE_CANDIDATES 
local en_b5_flags = {
	[0x01] = "Supported by at least 1 BTS",
	[0x02] = "LTE PLMN Release 15 Indication is set",
	[0x04] = "LTE Cat M1 is set",
	[0x08] = "The channel is occupied by live network cells"
}
	s_b5_plmn = ProtoField.uint8("lb_msg_clonecand_proto.s_b5_plmn", "plmnbcd", base.HEX)
	s_b5_rat = ProtoField.uint8("lb_msg_clonecand_proto.s_b5_rat","RAT", base.HEX, en_a3_rat)
	s_b5_arfcn = ProtoField.uint8("lb_msg_clonecand_proto.s_b5_arfcn","arfcn", base.HEX)
	s_b5_rssi = ProtoField.int8("lb_msg_clonecand_proto.s_b5_rssi","RSSI", base.DEC)
	s_b5_flags = ProtoField.uint8("lb_msg_clonecand_proto.s_b5_flags","flags", base.HEX, en_b5_flags)
	s_b5_spri = ProtoField.uint8("lb_msg_clonecand_proto.s_b5_spri","reselectionpriority", base.HEX)
-- End MSG_UIU_CLONE_CANDIDATES

-- MSG_UIU_PLMN_CELLS
	s_b7_plmn = ProtoField.uint8("lbmsgplmncells.s_b7_plmn","plmnbcd",base.HEX)
	s_b7_rat = ProtoField.uint8("lbmsgplmncells.s_b7_rat", "RAT", base.HEX, en_a3_rat)
	s_b7_arfcn = ProtoField.uint8("lbmsgplmncells.s_b7_arfcn", "arfcn", base.HEX)
-- End MSG_UIU_PLMN_CELLS                                                           

-- MSG_UIU_SPECTRUM_BANDS
	en_9b_gsmband = {
		[0x00] = "850",
		[0x01] = "900",
		[0x02] = "1800",
		[0x03] = "1900",
		[0x04] = "ER900",
		[0x06] = "Marks Stuff"
	}
	en_9b_wifibands = {
		[0x00] = "2.4MHz",
		[0x02] = "5MHz"
	}
	en_9b_region = {
		[0] = "Custom Selection",
		[1] = "NAR",
		[2] = "APAC",
		[3] = "EMEA",
		[4] = "Japan",
		[5] = "China"
	}
	s_9b_gsmbands = ProtoField.uint8("lbmsgspectrumbands.s_9b_gsmbands", "gsmbands", base.HEX, en_9b_gsmband)
	s_9b_umtsbands = ProtoField.uint64("lbmsgspectrumbands.s_9b_umtsbands","umtsbands", base.HEX)
	s_9b_ltebands = ProtoField.uint64("lbmsgspectrumbands.s_9b_ltebands","ltebands", base.HEX)
	s_9b_wifibands = ProtoField.uint8("lbmsgspectrumbands.s_9b_wifibands","wifibands", base.HEX, en_9b_wifibands)
	s_9b_etsibands = ProtoField.uint64("lbmsgspectrumbands.s_9b_etsibands","etsibands", base.HEX)
	s_9b_regions = ProtoField.uint8("lbmsgspectrumbands.s_9b_regions","region",base.HEX, en_9b_region)
	s_9b_flag = ProtoField.uint8("lbmsgspectrumbands.s_9b_flag","flag",base.HEX)

-- End MSG_UIU_SPECTRUM_BANDS

-- MSG_UIU_SPECTRUM_CELL
	s_9d_id = ProtoField.uint8("lbmsgspectrumcells.s_9d_id","id", base.HEX)

-- End MSG_UIU_SPECTRUM_CELL

-- MSG_UIU_GPSPOS
	en_74_gpsfix = {
		[0] = "No GPS Fix",
		[1] = "Has GPS Fix"
	}
	s_74_gpscount = ProtoField.uint8("lb_msg_gpspos_proto.s_74_gpscount", "gpscount", base.DEC)
	s_74_gpsfix = ProtoField.uint8("lb_msg_gpspos_proto.s_74_gpsfix", "gpsfix", base.HEX, en_74_gpsfix)
	s_74_gpslat = ProtoField.uint8("lb_msg_gpspos_proto.s_74_gpslat", "gpslat", base.DEC)
	s_74_gpslong = ProtoField.uint8("lb_msg_gpspos_proto.s_74_gpslong", "gpslong", base.DEC)
	s_74_gpshead = ProtoField.uint8("lb_msg_gpspos_proto.s_74_gpshead","gpshead", base.DEC)
	s_74_gpsspeed = ProtoField.uint8("lb_msg_gpspos_proto.s_74_gpsspeed", "gpsspeed", base.DEC)
	s_74_gpsheight = ProtoField.int8("lb_msg_gpspos_proto.s_74_gpsheight", "gpsheight", base.DEC)

-- End MSG_UIU_GPSPOS  

-- MSG_UIU_SYSARCH
	en_10_equip = {
		[0] = "BTS modules",
		[1] = "WiFi modules",
		[2] = "Amplifiers",
		[3] = "PeliAmplifiers",
		[4] = "Antenna Switches"
	}
	s_10_equip = ProtoField.uint8("lb_msg_sysarch_proto.s_10_equip", "equiptype", base.HEX, en_10_equip)
	s_10_count = ProtoField.uint8("lb_msg_sysarch_proto.s_10_count", "equipcount", base.DEC)

-- End MSG_UIU_SYSARCH

-- MSG_UIU_BTSARCH
	en_11_tech = {
		[0x00] = "GSM",
		[0x01] = "UMTS",
		[0x02] = "LTE",
		[0x03] = "NR",
		[0x04] = "X3 for UMTS",
		[0x05] = "X3 for LTE",
		[0x06] = "UMTS SIR capable",
		[0x07] = "Open Banded Radio"
	}
	s_11_btsid = ProtoField.uint8("lb_msg_btsarch_proto.s_11_btsid", "btsid", base.HEX)
	s_11_tech = ProtoField.uint8("lb_msg_btsarch_proto.s_11_tech", "tech", base.HEX, en_11_tech)
	s_11_suppband = ProtoField.uint64("lb_msg_btsarch_proto.s_11_suppband","supportedbands", base.HEX)
	s_11_mingsm = ProtoField.int8("lb_msg_btsarch_proto.s_11_mingsm", "mingsm", base.DEC)
	s_11_maxgsm = ProtoField.int8("lb_msg_btsarch_proto.s_11_maxgsm", "maxgsm", base.DEC)
	s_11_minumts = ProtoField.int8("lb_msg_btsarch_proto.s_11_minumts", "minumts", base.DEC)
	s_11_maxumts = ProtoField.int8("lb_msg_btsarch_proto.s_11_maxumts", "maxumts", base.DEC)
	s_11_minlte = ProtoField.int8("lb_msg_btsarch_proto.s_11_minlte", "minlte", base.DEC)
	s_11_maxlte = ProtoField.int8("lb_msg_btsarch_proto.s_11_maxlte", "maxlte", base.DEC)
	s_11_minnr = ProtoField.int8("lb_msg_btsarch_proto.s_11_minnr", "minnr", base.DEC)
	s_11_maxnr = ProtoField.int8("lb_msg_btsarch_proto.s_11_maxnr", "maxnr", base.DEC)

	-- if using open band i.e. 0x07 
	s_11_minopfreq = ProtoField.uint8("lb_msg_btsarch_proto.s_11_minopfreq","minopfreq", base.HEX)
	s_11_maxopfreq = ProtoField.uint8("lb_msg_btsarch_proto.s_11_maxopfreq","maxopfreq", base.HEX)
-- End MSG_UIU_BTSARCH

-- MSG_UIU_BTSCONFIG
	
-- End MSG_UIU_BTSCONFIG

-- Protocol Fields Definition
	lessbridge_proto.fields = { f_opcode, f_datalen, f_data, f_checksum }
	lessbridge_server_proto.fields = { f_server, s_datalen, s_len, s_data, s_checksum }
	lessbridge_client_proto.fields = { f_client, c_datalen, c_data, c_checksum }

	lb_msg_bridgestatus_proto.fields = { s_5f_power, s_5f_bc , s_5f_mr, s_5f_ut_years, s_5f_ut_days, s_5f_ut_hours, s_5f_ut_mins, s_5f_ut_secs, s_5f_storage, s_5f_storeused,
	s_5f_usb_free_high, s_5f_usb_free_low, s_5f_usb_free_unit, s_5f_usb_total_high, s_5f_usb_total_low, s_5f_usb_total_unit, s_5f_clients, s_5f_load,
	s_5f_temp, s_5f_volt, s_5f_curyear, s_5f_curmon, s_5f_curday, s_5f_curhour, s_5f_curmin, s_5f_tzcode}

	lb_msg_servicemode_proto.fields = { s_40_newsm, s_40_cursm}

	lb_msg_knownplmns_proto.fields = { s_a3_plmn, s_a3_rat, s_a3_rgb, s_a3_name, s_a3_protected }

	lb_msg_networkinfo_proto.fields = { s_59_plmn, s_59_rat, s_59_dcol, s_59_name, s_59_protected, s_59_ratflags}

	lb_msg_clonecand_proto.fields = { s_b5_plmn, s_b5_rat, s_b5_arfcn, s_b5_rssi, s_b5_flags, s_b5_spri }

	lb_msg_plmn_cells_proto.fields = { s_b7_plmn, s_b7_rat, s_b7_arfcn}	

	lb_msg_spectrum_bands_proto.fields = { s_9b_gsmbands, s_9b_umtsbands, s_9b_ltebands, s_9b_wifibands, s_9b_etsibands, s_9b_regions, s_9b_flag }

	lb_msg_gpspos_proto.fields = { s_74_gpscount, s_74_gpsfix, s_74_gpslat, s_74_gpslong, s_74_gpshead, s_74_gpsspeed, s_74_gpsheight }

	lb_msg_sysarch_proto.fields = { s_10_equip, s_10_count }

	lb_msg_btsarch_proto.fields = {  s_11_btsid, s_11_tech, s_11_suppband, s_11_mingsm, s_11_maxgsm, s_11_minumts, s_11_maxumts, 
		s_11_minlte, s_11_maxlte, s_11_minnr, s_11_maxnr, s_11_minopfreq, s_11_maxopfreq}

	
-- Protocol Fields Definition

printf = function(s,...) 
	return io.write(s:format(...)) 
end


function lessbridge_proto.dissector(buffer,pinfo,tree)
    length = buffer:len()
	os = 0

	if pinfo.src_port == 55000 then
		-- printf("Server\n")
		lessbridge_server_proto.dissector(buffer(os):tvb(),pinfo,tree)

	else
		-- printf("Client\n")
		
		lessbridge_client_proto.dissector(buffer(os):tvb(),pinfo,tree)
	end
	
end


function lessbridge_server_proto.dissector(buffer,pinfo,tree)

    length = buffer:len()
	-- printf("I am Server\n")
	local os = 0

    pinfo.cols.protocol = lessbridge_server_proto.name
    if length == 0 then return end

 	local opcode = buffer(os,1)
	local codetext = vs_serveropcodetext[ tostring(opcode):upper() ]
	local subtree = tree:add(lessbridge_proto, buffer(), codetext)

    subtree:add(f_server , opcode)
    os = os+1
    datalength = buffer(os,1):uint() + buffer(os+1,1):le_uint()
	
	
	subtree:add(s_datalen, datalength)
	subtree:add(s_len, length)
	os = os + 2

	-- stop overrun errors
	if datalength >= length then 
		if (datalength - length) == 0 then
			-- allow for the the first three bytes and the checksum
			myoffset = 4
		else
			myoffset = datalength - length
		end
		pinfo.desegment_len = myoffset
		pinfo_desegment_offset = 0
		return 
	end
	 



    local mydata = buffer(os, datalength)
	-- if codetext ~= nil then
	-- 	-- print("Decoding payload\n")
		decode_server_payload(codetext,mydata,subtree) 

	subtree:add(s_data, mydata)

	os = os + datalength 
	subtree:add(s_checksum, buffer(os,1))

	os = os + 1
	if ((os) < length) then

		lessbridge_server_proto.dissector(buffer(os):tvb(),pinfo,tree)
	end
end


function lessbridge_client_proto.dissector(buffer,pinfo,tree)
    length = buffer:len()
	-- printf("I am Client\n")
	os = 0

    pinfo.cols.protocol = lessbridge_client_proto.name

    local subtree = tree:add(lessbridge_proto, buffer(), "LeSS Bridge Data")

    subtree:add(f_client , buffer(os,1))
	-- printf(subtree.f_opcode)
    os = os+1
    datalength = buffer(os,1):uint() + buffer(os+1,1):le_uint()
    if datalength == 0 then return end

    subtree:add(f_datalen, datalength)

	os = os + 2

    local mydata = buffer(os, datalength)
	subtree:add(f_data, mydata)

	os = os + datalength 
	subtree:add(f_checksum, buffer(os,1))

	os = os + 1
	if ((os) < length) then

		lessbridge_client_proto.dissector(buffer(os):tvb(),pinfo,tree)
	end
end

function decode_server_payload(ocode,payload,tree)
	-- print(ocode)
	
	if ocode == "MSG_UIU_BRIDGESTATUS" then
		local os = 0
		-- print("\t\t\tMSG_UIU_BRIDGESTATUS")
		local subtree = tree:add(lb_msg_bridgestatus_proto, payload, "MSG_UIU_BRIDGESTATUS")
		subtree:add(s_5f_power,payload(os,1))
		os = os + 1
		subtree:add(s_5f_bc,payload(os,1))
		os = os + 1
		subtree:add(s_5f_mr,payload(os,1))
		os = os + 1
		subtree:add(s_5f_ut_years,payload(os,1))
		os = os + 1
		subtree:add(s_5f_ut_days,payload(os,2))
		os = os + 2
		subtree:add(s_5f_ut_hours,payload(os,1))
		os = os + 1
		subtree:add(s_5f_ut_mins,payload(os,1))
		os = os + 1
		subtree:add(s_5f_ut_secs,payload(os,1))
		os = os + 1
		subtree:add(s_5f_storage,payload(os,1))
		os = os + 1
		subtree:add(s_5f_storeused,payload(os,1))
		os = os + 1
		subtree:add(s_5f_usb_free_high,payload(os,1))
		os = os + 1
		subtree:add(s_5f_usb_free_low,payload(os,1))
		os = os + 1
		subtree:add(s_5f_usb_free_unit,payload(os,1))
		os = os + 1
		subtree:add(s_5f_usb_total_high,payload(os,1))
		os = os + 1
		subtree:add(s_5f_usb_total_low,payload(os,1))
		os = os + 1
		subtree:add(s_5f_usb_total_unit,payload(os,1))
		os = os + 1
		subtree:add(s_5f_clients,payload(os,1))
		os = os + 1
		subtree:add(s_5f_load,payload(os,2))
		os = os + 2
		subtree:add(s_5f_temp,payload(os,1))
		os = os + 1
		subtree:add(s_5f_volt,payload(os,1))
		os = os + 1
		subtree:add(s_5f_curyear,payload(os,1))
		os = os + 1
		subtree:add(s_5f_curmon,payload(os,1))
		os = os + 1
		subtree:add(s_5f_curday,payload(os,1))
		os = os + 1
		subtree:add(s_5f_curhour,payload(os,1))
		os = os + 1
		subtree:add(s_5f_curmin,payload(os,1))
		os = os + 1
		tzlen = payload(os,1)
		os = os + 1
		x = payload(os,tostring(tzlen))
		
		subtree:add(s_5f_tzcode,payload(os,tostring(tzlen)))
		return 0
	end

	if ocode == "MSG_UIU_SVCMODE" then
		local os = 0
		local subtree = tree:add(lb_msg_servicemode_proto, payload, "MSG_UIU_SVCMODE")
		subtree:add(s_40_newsm, payload(os,1))
		os = os + 1
		subtree:add(s_40_cursm, payload(os,1))
		return 0
	end

	if ocode == "MSG_UIU_KNOWN_PLMNS" then
		-- print("known plmns")
		local os = 0
		local subtree = tree:add(lb_msg_knownplmns_proto, payload, "MSG_UIU_KNOWN_PLMNS")
		-- subtree:add(s_a3_count, payload(os,1))
		plmncnt = payload(os,1)
		-- create for loop
		x = tonumber(plmncnt:uint())
		-- print(type(x))
		
		for i = 1,x,1
		do
			os = os + 1
			subtree:add(s_a3_plmn, payload(os,3))
			os = os + 3
			subtree:add(s_a3_rat, payload(os,1))
			os = os + 1
			subtree:add(s_a3_rgb, payload(os,3))
			os = os + 3
			local namelen = payload(os,1)
			os = os + 1
			local x = tonumber(namelen:uint())
			subtree:add(s_a3_name, payload(os,x))
			os = os + namelen:uint()
				
		end
		subtree:add(s_a3_protected, payload(os,1))
		return 0
	end


	if ocode == "MSG_UIU_NETWORKINFO" then
		local os = 0
		local subtree = tree:add(lb_msg_networkinfo_proto, payload, "MSG_UIU_NETWORKINFO_payload")
		subtree:add(s_59_plmn, payload(os,3))
		os = os + 3
		subtree:add(s_59_rat, payload(os,1))
		os = os + 1
		subtree:add(s_59_dcol, payload(os,3))
		os = os + 3
		local namelen = payload(os,1)
		local x = tonumber(namelen:uint())
		os = os + 1
		subtree:add(s_59_name, payload(os,x))
		os = os + x
		subtree:add(s_59_protected, payload(os,1))
		os = os + 1
		subtree:add(s_59_ratflags, payload(os,1))
		return 0
	end

	if ocode == "MSG_UIU_CLONE_CANDIDATES" then
		local os = 0
		local subtree = tree:add(lb_msg_clonecand_proto, payload, "MSG_UIU_CLONE_CANDIDATES_payload")
		subtree:add(s_b5_plmn, payload(os,3))
		os = os + 3
		subtree:add(s_b5_rat, payload(os,1))
		os = os + 1
		candcount = payload(os,1)
		x = tonumber(candcount:uint())

		for i = 1,x,1
		do
			os = os + 1
			subtree:add(s_b5_arfcn, payload(os,4))
			os = os + 4
			subtree:add(s_b5_rssi, payload(os,1))
			os = os + 1
			subtree:add(s_b5_flags, payload(os,1))
			os = os + 1
			subtree:add(s_b5_spri, payload(os,1))
		end

		return 0
	end

	if ocode == "MSG_UIU_PLMN_CELLS" then
		os = 0
		local subtree = tree:add(lb_msg_plmn_cells_proto, payload, "MSG_UIU_PLMN_CELLS_payload")

		subtree:add(s_b7_plmn, payload(os,3))
		os = os + 3
		subtree:add(s_b7_rat, payload(os,1))
		os = os + 1
		account = payload(os,1)
		x = tonumber(account:uint())
		os = os + 1

		for i = 1,x,1
		do
			subtree:add(s_b7_arfcn, payload(os,4))
			os = os + 4
		end

		return 0
	end


	if ocode == "MSG_UIU_SPECTRUM_BANDS" then
		os = 0
		local subtree = tree:add(lb_msg_spectrum_bands_proto, payload, "MSG_UIU_SPECTRUM_BANDS_payload")
		subtree:add(s_9b_gsmbands, payload(os,1))
		os = os + 1
		subtree:add(s_9b_umtsbands, payload(os,10))
		os = os + 10
		subtree:add(s_9b_ltebands, payload(os,10))
		os = os + 10
		subtree:add(s_9b_wifibands, payload(os,1))
		os = os + 1
		subtree:add(s_9b_etsibands, payload(os,10))
		os = os + 10
		subtree:add(s_9b_regions, payload(os,1))
		os = os + 1
		subtree:add(s_9b_flag,payload(os,1))

		return 0
	end

	if ocode == "MSG_UIU_GPSPOS" then
		os = 0
		local subtree = tree:add(lb_msg_gpspos_proto, payload, "MSG_UIU_GPSPOS_payload")
		local gpscount = payload(os,1):int()
		subtree:add(s_74_gpscount, gpscount)
		os = os + 1
		subtree:add(s_74_gpsfix, payload(os,1))
		os = os + 1
		local lat = payload(os,4):int()
		os = os + 4
		local long = payload(os,4):int()
		-- print(type(long))
		os = os + 4
		long = (long / 1000000) - 180
		lat = (lat / 1000000) - 180
	
		subtree:add(s_74_gpslat, lat)
		subtree:add(s_74_gpslong, long)
	
		subtree:add(s_74_gpshead, payload(os,2))
		os = os + 2
		subtree:add(s_74_gpsspeed, payload(os,4))
		os = os + 4
		subtree:add(s_74_gpsheight, payload(os,2))
	
		return 0
	end

	if ocode == "MSG_UIU_SYSARCH" then
		os = 0
		local subtree = tree:add(lb_msg_sysarch_proto, payload, "MSG_UIU_SYSARCH_payload")
		subtree:add(s_10_equip, payload(os,1))
		os = os + 1

		local ecount = payload(os,1):int()
		subtree:add(s_10_count, ecount)
		return 0
	end

	if ocode == "MSG_UIU_BTSARCH" then
		os = 0
		local subtree = tree:add(lb_msg_btsarch_proto, payload, "MSG_UIU_BTSARCH_payload")
		subtree:add(s_11_btsid, payload(os,1))
		os = os + 1
		local tech = payload(os,1):int()
		subtree:add(s_11_tech, tech)
		os = os + 1
		subtree:add(s_11_suppband, payload(os,10))
		os = os + 10

		subtree:add(s_11_mingsm, payload(os,1))
		os = os + 1
		subtree:add(s_11_maxgsm, payload(os,1))
		os = os + 1

		subtree:add(s_11_minumts, payload(os,1))
		os = os + 1
		subtree:add(s_11_maxumts, payload(os,1))
		os = os + 1

		subtree:add(s_11_minlte, payload(os,1))
		os = os + 1
		subtree:add(s_11_maxlte, payload(os,1))
		os = os + 1

		subtree:add(s_11_minnr, payload(os,1))
		os = os + 1
		subtree:add(s_11_maxnr, payload(os,1))
		os = os + 1

			-- print(tech)
		return 0
	end

	return 1
end




local tcp_port = DissectorTable.get("tcp.port")

tcp_port:add(55000,lessbridge_proto)
