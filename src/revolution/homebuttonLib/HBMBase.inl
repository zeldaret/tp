#ifndef RVL_SDK_HBM_BASE_INL
#define RVL_SDK_HBM_BASE_INL

// These files will be provided when this file is included by HBMBase.cpp.
#if 0
#include <revolution/types.h>

#include "HBMBase.h"

#include <revolution/wpad.h>

#include "HBMBase.cpp"
#endif

namespace homebutton {
    // .rodata
    static AnmControllerTable const scAnmTable[12] = {{0, 0}, {0, 2}, {4, 1}, {1, 0},
                                                      {1, 2}, {5, 1}, {2, 0}, {2, 2},
                                                      {6, 1}, {3, 0}, {3, 2}, {7, 1}};

    static AnmControllerTable const scGroupAnmTable[74] = {
        {0, 0},   {1, 1},   {2, 0},   {3, 1},   {4, 2},   {4, 19},  {5, 3},   {5, 20},  {6, 4},
        {6, 7},   {7, 4},   {7, 7},   {8, 4},   {8, 7},   {9, 4},   {9, 7},   {10, 4},  {10, 7},
        {11, 5},  {12, 5},  {13, 6},  {13, 8},  {14, 14}, {14, 6},  {14, 8},  {15, 5},  {16, 6},
        {16, 14}, {17, 11}, {17, 12}, {18, 11}, {18, 12}, {19, 13}, {20, 13}, {21, 9},  {21, 10},
        {22, 9},  {22, 10}, {23, 9},  {23, 10}, {24, 9},  {24, 10}, {25, 9},  {25, 10}, {26, 9},
        {26, 10}, {27, 9},  {27, 10}, {28, 9},  {28, 10}, {29, 9},  {29, 10}, {30, 9},  {30, 10},
        {31, 15}, {31, 16}, {31, 17}, {31, 18}, {31, 21}, {32, 15}, {32, 16}, {32, 17}, {32, 18},
        {32, 21}, {33, 15}, {33, 16}, {33, 17}, {33, 18}, {33, 21}, {34, 15}, {34, 16}, {34, 17},
        {34, 18}, {34, 21}};

    int const HomeButton::scReConnectTime = 3600;
    int const HomeButton::scReConnectTime2 = 3570;
    int const HomeButton::scPadDrawWaitTime = 5;
    int const HomeButton::scGetPadInfoTime = 100;
    int const HomeButton::scForcusSEWaitTime = 2;
    f32 const HomeButton::scOnPaneVibTime = 3.0f;
    f32 const HomeButton::scOnPaneVibWaitTime = 9.0f;
    int const HomeButton::scWaitStopMotorTime = 30;
    int const HomeButton::scWaitDisConnectTime = 180;

    // .data
    char const* HomeButton::scCursorLytName[WPAD_MAX_CONTROLLERS] = {
        "P1_Def.brlyt", "P2_Def.brlyt", "P3_Def.brlyt", "P4_Def.brlyt"};

    char const* HomeButton::scCursorPaneName = "N_Trans";
    char const* HomeButton::scCursorRotPaneName = "N_Rot";
    char const* HomeButton::scCursorSRotPaneName = "N_SRot";

    char const* HomeButton::scBtnName[4] = {
        "B_btnL_00",
        "B_btnL_01",
        "B_btnL_10",
        /* ... */
    };

    char const* HomeButton::scTxtName[4] = {
        "T_btnL_00",
        "T_btnL_01",
        "T_btnL_10",
        /* ... */
    };

    char const* HomeButton::scGrName[8] = {"btnL_00_inOut", "btnL_01_inOut", "btnL_10_inOut",
                                           "btnL_11_inOut", "btnL_00_psh",   "btnL_01_psh",
                                           "btnL_10_psh",   "btnL_11_psh"};

    char const* HomeButton::scAnimName[3] = {"_cntBtn_in.brlan", "_cntBtn_psh.brlan",
                                             "_cntBtn_out.brlan"};

    char const* HomeButton::scPairGroupAnimName[15] = {
        "_ltrIcn_on.brlan",      "_optn_bar_psh.brlan",   "_close_bar_psh.brlan",
        "_hmMenu_bar_in.brlan",  "_hmMenu_bar_psh.brlan", "_link_msg_in.brlan",
        "_link_msg_out.brlan",   "_cmn_msg_in.brlan",     "_cmn_msg_out.brlan",
        "_cntrl_up.brlan",       "_cntrl_wndw_opn.brlan", "_cntrl_dwn.brlan",
        "_hmMenu_bar_out.brlan", "_cmn_msg_rtrn.brlan",   "_12btn_on.brlan"};

    char const* HomeButton::scPairGroupName[15] = {
        "ltrIcn_on",      "optn_bar_psh", "close_bar_psh",  "hmMenu_bar_in", "hmMenu_bar_psh",
        "link_msg_in",    "link_msg_out", "cmn_msg_in",     "cmn_msg_out",   "cntrl_up",
        "cntrl_wndw_opn", "cntrl_dwn",    "hmMenu_bar_out", "cmn_msg_rtrn",  "12btn_on"};

    char const* HomeButton::scGroupAnimName[22] = {
        "_hmMenu_strt.brlan",     "_hmMenu_fnsh.brlan",     "_optn_bar_in.brlan",
        "_optn_bar_out.brlan",    "_optn_btn_in.brlan",     "_optn_btn_psh.brlan",
        "_vb_btn_wht_psh.brlan",  "_optn_btn_out.brlan",    "_vb_btn_ylw_psh.brlan",
        "_sound_gry.brlan",       "_sound_ylw.brlan",       "_cmn_msg_btn_in.brlan",
        "_cmn_msg_btn_out.brlan", "_cmn_msg_btn_psh.brlan", "_vb_btn_ylw_ylw.brlan",
        "_btry_wink.brlan",       "_btry_gry.brlan",        "_btry_wht.brlan",
        "_btry_wink_gry.brlan",   "_close_bar_in.brlan",    "_close_bar_out.brlan",
        "_btry_red.brlan"};

    char const* HomeButton::scGroupName[35] = {
        "hmMenu_strt",      "hmMenu_fnsh",      "hmMenuBck_strt",   "hmMenuBck_fnsh",
        "optn_bar_in",      "optn_bar_out",     "optnBtn_00_inOut", "optnBtn_01_inOut",
        "optnBtn_10_inOut", "optnBtn_11_inOut", "optnBtn_20_inOut", "optnBtn_00_psh",
        "optnBtn_01_psh",   "optnBtn_10_psh",   "optnBtn_11_psh",   "optnBtn_20_psh",
        "optnBtn_10_cntrl", "msgBtn_00_inOut",  "msgBtn_01_inOut",  "msgBtn_00_psh",
        "msgBtn_01_psh",    "vol_00",           "vol_01",           "vol_02",
        "vol_03",           "vol_04",           "vol_05",           "vol_06",
        "vol_07",           "vol_08",           "vol_09",           "plyr_00",
        "plyr_01",          "plyr_02",          "plyr_03"};

    char const* HomeButton::scFuncPaneName[5] = {"let_icn_00",

                                                 "N_plyr_00", "N_plyr_01", "N_plyr_02",
                                                 "N_plyr_03"};

    char const* HomeButton::scFuncTouchPaneName[10] = {
        "B_btn_00",     "B_bar_10",

        "B_optnBtn_00", "B_optnBtn_01", "B_optnBtn_10", "B_optnBtn_11", "B_optnBtn_20",

        "B_BtnA",       "B_BtnB",

        "cntrl_00"};

    char const* HomeButton::scFuncTextPaneName[3] = {"T_msg_00", "T_msg_01",

                                                     "T_Dialog"};

    char const* HomeButton::scBatteryPaneName[WPAD_MAX_CONTROLLERS][4] = {
        {"btryPwr_00_0", "btryPwr_00_1", "btryPwr_00_2", "btryPwr_00_3"},
        {"btryPwr_01_0", "btryPwr_01_1", "btryPwr_01_2", "btryPwr_01_3"},
        {"btryPwr_02_0", "btryPwr_02_1", "btryPwr_02_2", "btryPwr_02_3"},
        {"btryPwr_03_0", "btryPwr_03_1", "btryPwr_03_2", "btryPwr_03_3"}};
}  // namespace homebutton

#endif  // RVL_SDK_HBM_BASE_INL
