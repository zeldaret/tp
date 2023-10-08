/**
 * d_file_select.cpp
 * dolzel2 - Quest Log Management (File Select Menu)
 */

// temp hack to get the TU to match
#define __dt__15J2DAnmTransformFv_DEFINED

#include "d/file/d_file_select.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "d/meter/d_meter2_info.h"
#include "d/s/d_s_play.h"
#include "dol2asm.h"
#include "dolphin/dvd/dvd.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_MemCard.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_Reset.h"


//
// Forward References:
//

extern "C" void __ct__9dFs_HIO_cFv();
extern "C" void __ct__14dFile_select_cFP10JKRArchive();
extern "C" void __dt__14dFile_select_cFv();
extern "C" void __dt__15J2DAnmTevRegKeyFv();
extern "C" void __dt__19J2DAnmTextureSRTKeyFv();
extern "C" void __dt__11J2DAnmColorFv();
extern "C" void __dt__15J2DAnmTransformFv();
extern "C" void _create__14dFile_select_cFv();
extern "C" void _move__14dFile_select_cFv();
extern "C" void selFileWakuAnm__14dFile_select_cFv();
extern "C" void bookIconAnm__14dFile_select_cFv();
extern "C" void selCopyFileWakuAnm__14dFile_select_cFv();
extern "C" void copyBookIconAnm__14dFile_select_cFv();
extern "C" void dataDelEffAnm__14dFile_select_cFv();
extern "C" void dataCopyEffAnm__14dFile_select_cFv();
extern "C" void selectDataBaseMoveAnmInitSet__14dFile_select_cFii();
extern "C" void selectDataBaseMoveAnm__14dFile_select_cFv();
extern "C" void dataSelectInAnmSet__14dFile_select_cFv();
extern "C" void dataSelectIn__14dFile_select_cFv();
extern "C" void dataSelectInit__14dFile_select_cFv();
extern "C" void dataSelect__14dFile_select_cFv();
extern "C" void dataSelectStart__14dFile_select_cFv();
extern "C" void selectDataMoveAnmInitSet__14dFile_select_cFii();
extern "C" void selectDataMoveAnm__14dFile_select_cFv();
extern "C" void dataSelectAnmSet__14dFile_select_cFv();
extern "C" void dataSelectMoveAnime__14dFile_select_cFv();
extern "C" void makeRecInfo__14dFile_select_cFUc();
extern "C" void selectDataOpenMove__14dFile_select_cFv();
extern "C" void selectDataNameMove__14dFile_select_cFv();
extern "C" void selectDataOpenEraseMove__14dFile_select_cFv();
extern "C" void menuSelect__14dFile_select_cFv();
extern "C" void menuSelectStart__14dFile_select_cFv();
extern "C" void menuSelectCansel__14dFile_select_cFv();
extern "C" void menuMoveAnmInitSet__14dFile_select_cFii();
extern "C" void setWhite__10J2DTextBoxFQ28JUtility6TColor();
extern "C" void menuMoveAnm__14dFile_select_cFv();
extern "C" void menuSelectAnmSet__14dFile_select_cFv();
extern "C" void menuSelectMoveAnm__14dFile_select_cFv();
extern "C" void ToNameMove__14dFile_select_cFv();
extern "C" void ToNameMove2__14dFile_select_cFv();
extern "C" void nameInputWait__14dFile_select_cFv();
extern "C" void nameInput__14dFile_select_cFv();
extern "C" void nameToDataSelectMove__14dFile_select_cFv();
extern "C" void nameInputFade__14dFile_select_cFv();
extern "C" void nameInput2Move__14dFile_select_cFv();
extern "C" void nameInput2__14dFile_select_cFv();
extern "C" void backNameInputMove0__14dFile_select_cFv();
extern "C" void backNameInputMove__14dFile_select_cFv();
extern "C" void ToCopyPaneMove__14dFile_select_cFv();
extern "C" void ToErasePaneMove__14dFile_select_cFv();
extern "C" void backSelectMove__14dFile_select_cFv();
extern "C" void copySelMoveAnmInitSet__14dFile_select_cFii();
extern "C" void setSaveDataForCopySel__14dFile_select_cFv();
extern "C" void copyDataToSelect__14dFile_select_cFv();
extern "C" void copyDataToSelectStart__14dFile_select_cFv();
extern "C" void copyDataToSelectCansel__14dFile_select_cFv();
extern "C" void copyDataToSelectMoveAnmSet__14dFile_select_cFv();
extern "C" void copyDataToSelectMoveAnm__14dFile_select_cFv();
extern "C" void copySelectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc();
extern "C" void copySelectWakuAlpahAnm__14dFile_select_cFUc();
extern "C" void getCptoNum__14dFile_select_cFUc();
extern "C" void copyToSelBack__14dFile_select_cFv();
extern "C" void copyToSelPaneMove__14dFile_select_cFv();
extern "C" void yesnoMenuMoveAnmInitSet__14dFile_select_cFii();
extern "C" void yesnoMenuMoveAnm__14dFile_select_cFv();
extern "C" void yesnoSelectMoveAnm__14dFile_select_cFv();
extern "C" void yesnoCursorShow__14dFile_select_cFv();
extern "C" void YesNoSelect__14dFile_select_cFv();
extern "C" void yesNoSelectStart__14dFile_select_cFv();
extern "C" void yesnoSelectAnmSet__14dFile_select_cFv();
extern "C" void yesnoCancelAnmSet__14dFile_select_cFv();
extern "C" void YesNoCancelMove__14dFile_select_cFv();
extern "C" void yesNoCursorMoveAnm__14dFile_select_cFv();
extern "C" void CmdExecPaneMove0__14dFile_select_cFv();
extern "C" void CommandExec__14dFile_select_cFv();
extern "C" void DataEraseWait__14dFile_select_cFv();
extern "C" void DataEraseWait2__14dFile_select_cFv();
extern "C" void ErasePaneMoveOk__14dFile_select_cFv();
extern "C" void ErasePaneMoveOk2__14dFile_select_cFv();
extern "C" void eraseEndBackSelectWait__14dFile_select_cFv();
extern "C" void eraseEndBackSelect__14dFile_select_cFv();
extern "C" void DataCopyWait__14dFile_select_cFv();
extern "C" void DataCopyWait2__14dFile_select_cFv();
extern "C" void copyPaneMoveOk__14dFile_select_cFv();
extern "C" void copyPaneMoveOk2__14dFile_select_cFv();
extern "C" void ErrorMsgPaneMove__14dFile_select_cFv();
extern "C" void backDatSelPaneMove__14dFile_select_cFv();
extern "C" void backDatSelWait__14dFile_select_cFv();
extern "C" void backDatSelWait2__14dFile_select_cFv();
extern "C" void nextModeWait__14dFile_select_cFv();
extern "C" void screenSet__14dFile_select_cFv();
extern "C" void setBlackWhite__10J2DPictureFQ28JUtility6TColorQ28JUtility6TColor();
extern "C" void setAnimation__7J2DPaneFP19J2DAnmTextureSRTKey();
extern "C" void screenSetCopySel__14dFile_select_cFv();
extern "C" void screenSetYesNo__14dFile_select_cFv();
extern "C" void screenSet3Menu__14dFile_select_cFv();
extern "C" void screenSetDetail__14dFile_select_cFv();
extern "C" void setWakuAnm__14dFile_select_cFv();
extern "C" void displayInit__14dFile_select_cFv();
extern "C" void setSaveData__14dFile_select_cFv();
extern "C" void headerTxtSet__14dFile_select_cFUsUcUc();
extern "C" void headerTxtChangeAnm__14dFile_select_cFv();
extern "C" void modoruTxtChange__14dFile_select_cFUc();
extern "C" void modoruTxtDispAnmInit__14dFile_select_cFUc();
extern "C" void modoruTxtDispAnm__14dFile_select_cFv();
extern "C" void ketteiTxtDispAnmInit__14dFile_select_cFUc();
extern "C" void ketteiTxtDispAnm__14dFile_select_cFv();
extern "C" void selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc();
extern "C" void selectWakuAlpahAnm__14dFile_select_cFUc();
extern "C" void selFileCursorShow__14dFile_select_cFv();
extern "C" void menuWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc();
extern "C" void menuWakuAlpahAnm__14dFile_select_cFUc();
extern "C" void menuCursorShow__14dFile_select_cFv();
extern "C" void yesnoWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc();
extern "C" void yesnoWakuAlpahAnm__14dFile_select_cFUc();
extern "C" void _draw__14dFile_select_cFv();
extern "C" void draw__15dDlst_FileSel_cFv();
extern "C" void draw__17dDlst_FileSelDt_cFv();
extern "C" void draw__17dDlst_FileSelCp_cFv();
extern "C" void draw__17dDlst_FileSelYn_cFv();
extern "C" void draw__17dDlst_FileSel3m_cFv();
extern "C" void errorMoveAnmInitSet__14dFile_select_cFii();
extern "C" void errorMoveAnm__14dFile_select_cFv();
extern "C" void errDispInitSet__14dFile_select_cFii();
extern "C" void MemCardCheckMain__14dFile_select_cFv();
extern "C" void MemCardStatCheck__14dFile_select_cFv();
extern "C" void MemCardLoadWait__14dFile_select_cFv();
extern "C" void MemCardErrMsgWaitKey__14dFile_select_cFv();
extern "C" void noFileSpaceDispInit__14dFile_select_cFv();
extern "C" void MemCardNoFileSpaceDisp__14dFile_select_cFv();
extern "C" void iplSelDispInit__14dFile_select_cFv();
extern "C" void MemCardGotoIPLSelectDisp__14dFile_select_cFv();
extern "C" void MemCardGotoIPLSelect__14dFile_select_cFv();
extern "C" void MemCardGotoIPL__14dFile_select_cFv();
extern "C" void noSaveSelDispInit__14dFile_select_cFv();
extern "C" void MemCardNoSaveSelDisp__14dFile_select_cFv();
extern "C" void MemCardErrMsgWaitNoSaveSel__14dFile_select_cFv();
extern "C" void formatYesSelDispInitSet__14dFile_select_cFv();
extern "C" void formatNoSelDispInitSet__14dFile_select_cFv();
extern "C" void MemCardFormatYesSelDisp__14dFile_select_cFv();
extern "C" void MemCardFormatNoSelDisp__14dFile_select_cFv();
extern "C" void MemCardErrMsgWaitFormatSel__14dFile_select_cFv();
extern "C" void formatYesSel2DispInitSet__14dFile_select_cFv();
extern "C" void MemCardErrMsgWaitFormatSel2__14dFile_select_cFv();
extern "C" void MemCardFormatYesSel2Disp__14dFile_select_cFv();
extern "C" void MemCardFormat__14dFile_select_cFv();
extern "C" void MemCardFormatWait__14dFile_select_cFv();
extern "C" void MemCardFormatCheck__14dFile_select_cFv();
extern "C" void MemCardMakeGameFileSel__14dFile_select_cFv();
extern "C" void MemCardMakeGameFileSelDisp__14dFile_select_cFv();
extern "C" void MemCardMakeGameFile__14dFile_select_cFv();
extern "C" void MemCardMakeGameFileWait__14dFile_select_cFv();
extern "C" void MemCardMakeGameFileCheck__14dFile_select_cFv();
extern "C" void MemCardMsgWindowInitOpen__14dFile_select_cFv();
extern "C" void MemCardMsgWindowOpen__14dFile_select_cFv();
extern "C" void MemCardMsgWindowClose__14dFile_select_cFv();
extern "C" void errYesNoSelect__14dFile_select_cFv();
extern "C" void errCurMove__14dFile_select_cFUc();
extern "C" void MemCardErrYesNoCursorMoveAnm__14dFile_select_cFv();
extern "C" void errorTxtSet__14dFile_select_cFUs();
extern "C" void errorTxtChangeAnm__14dFile_select_cFv();
extern "C" void fileRecScaleAnm__14dFile_select_cFv();
extern "C" void fileRecScaleAnmInitSet2__14dFile_select_cFff();
extern "C" void fileRecScaleAnm2__14dFile_select_cFv();
extern "C" void fileInfoScaleAnm__14dFile_select_cFv();
extern "C" void nameMoveAnmInitSet__14dFile_select_cFii();
extern "C" void nameMoveAnm__14dFile_select_cFv();
extern "C" void MemCardSaveDataClear__14dFile_select_cFv();
extern "C" void setInitSaveData__14dFile_select_cFv();
extern "C" void dataSave__14dFile_select_cFv();
extern "C" void __ct__16dFile_select3D_cFv();
extern "C" void __dt__16dFile_select3D_cFv();
extern "C" void _create__16dFile_select3D_cFUcUc();
extern "C" void _delete__16dFile_select3D_cFv();
extern "C" void freeHeap__16dFile_select3D_cFv();
extern "C" void _move__16dFile_select3D_cFv();
extern "C" void draw__16dFile_select3D_cFv();
extern "C" void setJ3D__16dFile_select3D_cFPCcPCcPCc();
extern "C" void set_mtx__16dFile_select3D_cFv();
extern "C" void animePlay__16dFile_select3D_cFv();
extern "C" void animeEntry__16dFile_select3D_cFv();
extern "C" void createMaskModel__16dFile_select3D_cFv();
extern "C" void createMirrorModel__16dFile_select3D_cFv();
extern "C" void toItem3Dpos__16dFile_select3D_cFfffP4cXyz();
extern "C" void calcViewMtx__16dFile_select3D_cFPA4_f();
extern "C" void getTransform__15J2DAnmTransformCFUsP16J3DTransformInfo();
extern "C" void __dt__10JUTNameTabFv();
extern "C" void __dt__17dDlst_FileSel3m_cFv();
extern "C" void __dt__17dDlst_FileSelYn_cFv();
extern "C" void __dt__17dDlst_FileSelCp_cFv();
extern "C" void __dt__17dDlst_FileSelDt_cFv();
extern "C" void __dt__15dDlst_FileSel_cFv();
extern "C" void __dt__9dFs_HIO_cFv();
extern "C" void __sinit_d_file_select_cpp();
extern "C" void getString__12dMsgString_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc();
extern "C" extern char const* const d_file_d_file_select__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_createSolidHeapFromGameToCurrent__FPP7JKRHeapUlUl();
extern "C" void mDoExt_destroySolidHeap__FP12JKRSolidHeap();
extern "C" void mDoExt_setCurrentHeap__FP7JKRHeap();
extern "C" void mDoExt_getMesgFont__Fv();
extern "C" void mDoExt_removeMesgFont__Fv();
extern "C" void mDoExt_getSubFont__Fv();
extern "C" void mDoExt_removeSubFont__Fv();
extern "C" void load__15mDoMemCd_Ctrl_cFv();
extern "C" void LoadSync__15mDoMemCd_Ctrl_cFPvUlUl();
extern "C" void save__15mDoMemCd_Ctrl_cFPvUlUl();
extern "C" void SaveSync__15mDoMemCd_Ctrl_cFv();
extern "C" void getStatus__15mDoMemCd_Ctrl_cFUl();
extern "C" void command_format__15mDoMemCd_Ctrl_cFv();
extern "C" void FormatSync__15mDoMemCd_Ctrl_cFv();
extern "C" void mDoMemCdRWm_TestCheckSumGameData__FPv();
extern "C" void mDoMemCdRWm_SetCheckSumGameData__FPUcUc();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void fopMsgM_messageGet__FPcUl();
extern "C" void itemInit__14dComIfG_play_cFv();
extern "C" void __ct__9STControlFssssffss();
extern "C" void checkTrigger__9STControlFv();
extern "C" void checkLeftTrigger__9STControlFv();
extern "C" void checkRightTrigger__9STControlFv();
extern "C" void checkUpTrigger__9STControlFv();
extern "C" void checkDownTrigger__9STControlFv();
extern "C" void isFirstBit__21dSv_player_get_item_cCFUc();
extern "C" void isCollectCrystal__20dSv_player_collect_cCFUc();
extern "C" void isCollectMirror__20dSv_player_collect_cCFUc();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void init__10dSv_info_cFv();
extern "C" void card_to_memory__10dSv_info_cFPci();
extern "C" void initdata_to_card__10dSv_info_cFPci();
extern "C" void __dt__15J3DTevKColorAnmFv();
extern "C" void __ct__15J3DTevKColorAnmFv();
extern "C" void __dt__14J3DTevColorAnmFv();
extern "C" void __ct__14J3DTevColorAnmFv();
extern "C" void __dt__11J3DTexNoAnmFv();
extern "C" void __ct__11J3DTexNoAnmFv();
extern "C" void __dt__12J3DTexMtxAnmFv();
extern "C" void __ct__12J3DTexMtxAnmFv();
extern "C" void __dt__14J3DMatColorAnmFv();
extern "C" void __ct__14J3DMatColorAnmFv();
extern "C" void set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c();
extern "C" void searchUpdateMaterialID__10J2DAnmBaseFP9J2DScreen();
extern "C" void __ct__15dFile_warning_cFP10JKRArchiveUc();
extern "C" void _move__15dFile_warning_cFv();
extern "C" void openInit__15dFile_warning_cFv();
extern "C" void closeInit__15dFile_warning_cFv();
extern "C" void init__15dFile_warning_cFv();
extern "C" void _draw__15dFile_warning_cFv();
extern "C" void __ct__12dFile_info_cFP10JKRArchiveUc();
extern "C" void setSaveData__12dFile_info_cFP10dSv_save_ciUc();
extern "C" void _draw__12dFile_info_cFv();
extern "C" void __ct__16dSelect_cursor_cFUcfP10JKRArchive();
extern "C" void setPos__16dSelect_cursor_cFffP7J2DPaneb();
extern "C" void setParam__16dSelect_cursor_cFfffff();
extern "C" void setAlphaRate__16dSelect_cursor_cFf();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void decMsgKeyWaitTimer__13dMeter2Info_cFv();
extern "C" void getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c();
extern "C" void
getStringLocal__16dMsgStringBase_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc();
extern "C" void __ct__12dMsgString_cFv();
extern "C" void __dt__12dMsgString_cFv();
extern "C" void __ct__7dName_cFP7J2DPane();
extern "C" void initial__7dName_cFv();
extern "C" void showIcon__7dName_cFv();
extern "C" void _move__7dName_cFv();
extern "C" void _draw__7dName_cFv();
extern "C" void __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void reinit__8CPaneMgrFv();
extern "C" void scaleAnime__8CPaneMgrFsffUc();
extern "C" void
colorAnime__8CPaneMgrFsQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorUc();
extern "C" void getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void show__13CPaneMgrAlphaFv();
extern "C" void hide__13CPaneMgrAlphaFv();
extern "C" void alphaAnime__13CPaneMgrAlphaFsUcUcUc();
extern "C" void cAPICPad_ANY_BUTTON__FUl();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void adjustSize__12JKRSolidHeapFv();
extern "C" void getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader();
extern "C" void func_802F5E88();
extern "C" void insertChild__7J2DPaneFP7J2DPaneP7J2DPane();
extern "C" void animationTransform__7J2DPaneFv();
extern "C" void __ct__9J2DScreenFv();
extern "C" void setPriority__9J2DScreenFPCcUlP10JKRArchive();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void animation__9J2DScreenFv();
extern "C" void func_802FC800();
extern "C" void getStringPtr__10J2DTextBoxCFv();
extern "C" void setString__10J2DTextBoxFPCce();
extern "C" void setString__10J2DTextBoxFsPCce();
extern "C" void load__20J2DAnmLoaderDataBaseFPCv();
extern "C" void init__15J3DVertexBufferFv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void initialize__8J3DModelFv();
extern "C" void entryModelData__8J3DModelFP12J3DModelDataUlUl();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void load__22J3DModelLoaderDataBaseFPCvUl();
extern "C" void load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag();
extern "C" void __register_global_object();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" void __div2i();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__12J3DFrameCtrl[3];
extern "C" extern void* __vt__12dDlst_base_c[3];
extern "C" extern void* __vt__10J2DAnmBase[4];
extern "C" extern void* __vt__15J2DAnmTevRegKey[4];
extern "C" extern void* __vt__19J2DAnmTextureSRTKey[4];
extern "C" extern void* __vt__11J2DAnmColor[5];
extern "C" extern void* __vt__8J3DModel[9];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 mFadeColor__13mDoGph_gInf_c[4];
extern "C" u8 mFader__13mDoGph_gInf_c[4];
extern "C" u8 mResetData__6mDoRst[4 + 4 /* padding */];
extern "C" u8 sManager__10JFWDisplay[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80394388-80394388 0209E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80394388 = "tt_1_metal_40x40.bti";
SECTION_DEAD static char const* const stringBase_8039439D = "tt_2_metal_40x40.bti";
SECTION_DEAD static char const* const stringBase_803943B2 = "tt_3_metal_40x40.bti";
SECTION_DEAD static char const* const stringBase_803943C7 = "zelda_file_select.blo";
SECTION_DEAD static char const* const stringBase_803943DD = "zelda_file_select.bck";
SECTION_DEAD static char const* const stringBase_803943F3 = "";
SECTION_DEAD static char const* const stringBase_803943F4 = "zelda_file_select.bpk";
SECTION_DEAD static char const* const stringBase_8039440A = "zelda_file_select_05.btk";
SECTION_DEAD static char const* const stringBase_80394423 = "zelda_file_select.btk";
SECTION_DEAD static char const* const stringBase_80394439 = "zelda_file_select.brk";
SECTION_DEAD static char const* const stringBase_8039444F = "zelda_file_select_02.btk";
SECTION_DEAD static char const* const stringBase_80394468 = "zelda_file_select_03.btk";
SECTION_DEAD static char const* const stringBase_80394481 = "tt_block8x8.bti";
SECTION_DEAD static char const* const stringBase_80394491 = "zelda_file_select_copy_select.blo";
SECTION_DEAD static char const* const stringBase_803944B3 = "zelda_file_select_copy_select.bck";
SECTION_DEAD static char const* const stringBase_803944D5 = "zelda_file_select_copy_select.bpk";
SECTION_DEAD static char const* const stringBase_803944F7 = "zelda_file_select_copy_select_03.btk";
SECTION_DEAD static char const* const stringBase_8039451C = "zelda_file_select_copy_select.btk";
SECTION_DEAD static char const* const stringBase_8039453E = "zelda_file_select_copy_select.brk";
SECTION_DEAD static char const* const stringBase_80394560 = "zelda_file_select_yes_no_window.blo";
SECTION_DEAD static char const* const stringBase_80394584 = "zelda_file_select_yes_no_window.bck";
SECTION_DEAD static char const* const stringBase_803945A8 = "zelda_file_select_yes_no_window.bpk";
SECTION_DEAD static char const* const stringBase_803945CC = "zelda_file_select_yes_no_window.btk";
SECTION_DEAD static char const* const stringBase_803945F0 = "zelda_file_select_3menu_window.blo";
SECTION_DEAD static char const* const stringBase_80394613 = "zelda_file_select_3menu_window.bck";
SECTION_DEAD static char const* const stringBase_80394636 = "zelda_file_select_3menu_window.bpk";
SECTION_DEAD static char const* const stringBase_80394659 = "zelda_file_select_3menu_window.btk";
SECTION_DEAD static char const* const stringBase_8039467C = "zelda_file_select_details.blo";
SECTION_DEAD static char const* const stringBase_8039469A = "zelda_file_select_details.btk";
SECTION_DEAD static char const* const stringBase_803946B8 = "md_mask_parts_spin_1.bck";
SECTION_DEAD static char const* const stringBase_803946D1 = "md_mask_parts_spin_2.bck";
SECTION_DEAD static char const* const stringBase_803946EA = "md_mask_parts_spin_3.bck";
SECTION_DEAD static char const* const stringBase_80394703 = "md_mask_parts_spin_4.bck";
SECTION_DEAD static char const* const stringBase_8039471C = "md_mask_parts_spin_1.brk";
SECTION_DEAD static char const* const stringBase_80394735 = "md_mask_parts_spin_2_3.brk";
SECTION_DEAD static char const* const stringBase_80394750 = "md_mask_parts_spin_4.brk";
SECTION_DEAD static char const* const stringBase_80394769 = "md_mask_UI.bmd";
SECTION_DEAD static char const* const stringBase_80394778 = "kageri_mirrer_spin_1.bck";
SECTION_DEAD static char const* const stringBase_80394791 = "kageri_mirrer_spin_2.bck";
SECTION_DEAD static char const* const stringBase_803947AA = "kageri_mirrer_spin_3.bck";
SECTION_DEAD static char const* const stringBase_803947C3 = "kageri_mirrer_spin_4.bck";
SECTION_DEAD static char const* const stringBase_803947DC = "kageri_mirrer_spin_1.brk";
SECTION_DEAD static char const* const stringBase_803947F5 = "kageri_mirrer_spin_2_3_4.brk";
#pragma pop

/* 803BA848-803BA854 017968 000C+00 6/6 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BA854-803BA860 017974 000C+00 3/3 0/0 0/0 .data            SelStartFrameTbl */
SECTION_DATA static u32 SelStartFrameTbl[3] = {
    0x0000003B, 
    0x00000063, 
    0x0000008B,
};

/* 803BA860-803BA86C 017980 000C+00 3/3 0/0 0/0 .data            SelEndFrameTbl */
SECTION_DATA static s32 SelEndFrameTbl[3] = {
    0x00000045,
    0x0000006D,
    0x00000095,
};

/* 803BA86C-803BA878 01798C 000C+00 7/7 0/0 0/0 .data            SelOpenStartFrameTbl */
SECTION_DATA static u32 SelOpenStartFrameTbl[3] = {
    0x000000F8,
    0x000001C0, 
    0x00000288,
};

/* 803BA878-803BA884 017998 000C+00 7/7 0/0 0/0 .data            SelOpenEndFrameTbl */
SECTION_DATA static u32 SelOpenEndFrameTbl[3] = {
    0x00000103,
    0x000001CC, 
    0x00000293,
};

/* 803BA884-803BA890 0179A4 000C+00 5/5 0/0 0/0 .data            MenuSelStartFrameTbl */
SECTION_DATA static s32 MenuSelStartFrameTbl[3] = {
    0x000007CD, 
    0x00000382, 
    0x00000390,
};

/* 803BA890-803BA8A0 0179B0 000C+04 3/3 0/0 0/0 .data            MenuSelEndFrameTbl */
SECTION_DATA static s32 MenuSelEndFrameTbl[4] = {
    0x000007DB,
    0x0000038E,
    0x00000382,
};

/* 803BA8A0-803BA8B8 0179C0 0018+00 0/2 0/0 0/0 .data            l_tagName13 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName13[24] = {
    0x77, 0x5F, 0x64, 0x61, 0x74, 0x5F, 0x69, 0x30, 0x77, 0x5F, 0x64, 0x61,
    0x74, 0x5F, 0x69, 0x31, 0x77, 0x5F, 0x64, 0x61, 0x74, 0x5F, 0x69, 0x32,
};
#pragma pop

/* 803BA8B8-803BA8C4 -00001 000C+00 0/1 0/0 0/0 .data            @4167 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4167[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardCheckMain__14dFile_select_cFv,
};
#pragma pop

/* 803BA8C4-803BA8D0 -00001 000C+00 0/1 0/0 0/0 .data            @4168 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4168[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dataSelectIn__14dFile_select_cFv,
};
#pragma pop

/* 803BA8D0-803BA8DC -00001 000C+00 0/1 0/0 0/0 .data            @4169 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4169[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dataSelectInit__14dFile_select_cFv,
};
#pragma pop

/* 803BA8DC-803BA8E8 -00001 000C+00 0/1 0/0 0/0 .data            @4170 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4170[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dataSelect__14dFile_select_cFv,
};
#pragma pop

/* 803BA8E8-803BA8F4 -00001 000C+00 0/1 0/0 0/0 .data            @4171 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4171[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dataSelectMoveAnime__14dFile_select_cFv,
};
#pragma pop

/* 803BA8F4-803BA900 -00001 000C+00 0/1 0/0 0/0 .data            @4172 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4172[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)selectDataOpenMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA900-803BA90C -00001 000C+00 0/1 0/0 0/0 .data            @4173 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4173[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)selectDataNameMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA90C-803BA918 -00001 000C+00 0/1 0/0 0/0 .data            @4174 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4174[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)selectDataOpenEraseMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA918-803BA924 -00001 000C+00 0/1 0/0 0/0 .data            @4175 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4175[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)menuSelect__14dFile_select_cFv,
};
#pragma pop

/* 803BA924-803BA930 -00001 000C+00 0/1 0/0 0/0 .data            @4176 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4176[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)menuSelectMoveAnm__14dFile_select_cFv,
};
#pragma pop

/* 803BA930-803BA93C -00001 000C+00 0/1 0/0 0/0 .data            @4177 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4177[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ToNameMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA93C-803BA948 -00001 000C+00 0/1 0/0 0/0 .data            @4178 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4178[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ToCopyPaneMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA948-803BA954 -00001 000C+00 0/1 0/0 0/0 .data            @4179 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4179[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ToErasePaneMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA954-803BA960 -00001 000C+00 0/1 0/0 0/0 .data            @4180 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4180[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)backSelectMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA960-803BA96C -00001 000C+00 0/1 0/0 0/0 .data            @4181 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4181[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nameToDataSelectMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA96C-803BA978 -00001 000C+00 0/1 0/0 0/0 .data            @4182 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4182[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nameInputWait__14dFile_select_cFv,
};
#pragma pop

/* 803BA978-803BA984 -00001 000C+00 0/1 0/0 0/0 .data            @4183 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4183[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nameInput__14dFile_select_cFv,
};
#pragma pop

/* 803BA984-803BA990 -00001 000C+00 0/1 0/0 0/0 .data            @4184 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4184[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nameInputFade__14dFile_select_cFv,
};
#pragma pop

/* 803BA990-803BA99C -00001 000C+00 0/1 0/0 0/0 .data            @4185 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4185[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nameInput2Move__14dFile_select_cFv,
};
#pragma pop

/* 803BA99C-803BA9A8 -00001 000C+00 0/1 0/0 0/0 .data            @4186 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4186[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nameInput2__14dFile_select_cFv,
};
#pragma pop

/* 803BA9A8-803BA9B4 -00001 000C+00 0/1 0/0 0/0 .data            @4187 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4187[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)backNameInputMove0__14dFile_select_cFv,
};
#pragma pop

/* 803BA9B4-803BA9C0 -00001 000C+00 0/1 0/0 0/0 .data            @4188 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4188[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)backNameInputMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA9C0-803BA9CC -00001 000C+00 0/1 0/0 0/0 .data            @4189 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4189[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)copyDataToSelect__14dFile_select_cFv,
};
#pragma pop

/* 803BA9CC-803BA9D8 -00001 000C+00 0/1 0/0 0/0 .data            @4190 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4190[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)copyDataToSelectMoveAnm__14dFile_select_cFv,
};
#pragma pop

/* 803BA9D8-803BA9E4 -00001 000C+00 0/1 0/0 0/0 .data            @4191 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4191[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)copyToSelBack__14dFile_select_cFv,
};
#pragma pop

/* 803BA9E4-803BA9F0 -00001 000C+00 0/1 0/0 0/0 .data            @4192 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4192[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)copyToSelPaneMove__14dFile_select_cFv,
};
#pragma pop

/* 803BA9F0-803BA9FC -00001 000C+00 0/1 0/0 0/0 .data            @4193 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4193[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)YesNoSelect__14dFile_select_cFv,
};
#pragma pop

/* 803BA9FC-803BAA08 -00001 000C+00 0/1 0/0 0/0 .data            @4194 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4194[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)YesNoCancelMove__14dFile_select_cFv,
};
#pragma pop

/* 803BAA08-803BAA14 -00001 000C+00 0/1 0/0 0/0 .data            @4195 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4195[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)yesNoCursorMoveAnm__14dFile_select_cFv,
};
#pragma pop

/* 803BAA14-803BAA20 -00001 000C+00 0/1 0/0 0/0 .data            @4196 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4196[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)CmdExecPaneMove0__14dFile_select_cFv,
};
#pragma pop

/* 803BAA20-803BAA2C -00001 000C+00 0/1 0/0 0/0 .data            @4197 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4197[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)CommandExec__14dFile_select_cFv,
};
#pragma pop

/* 803BAA2C-803BAA38 -00001 000C+00 0/1 0/0 0/0 .data            @4198 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4198[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)DataEraseWait__14dFile_select_cFv,
};
#pragma pop

/* 803BAA38-803BAA44 -00001 000C+00 0/1 0/0 0/0 .data            @4199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)DataEraseWait2__14dFile_select_cFv,
};
#pragma pop

/* 803BAA44-803BAA50 -00001 000C+00 0/1 0/0 0/0 .data            @4200 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4200[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)DataCopyWait__14dFile_select_cFv,
};
#pragma pop

/* 803BAA50-803BAA5C -00001 000C+00 0/1 0/0 0/0 .data            @4201 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4201[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)DataCopyWait2__14dFile_select_cFv,
};
#pragma pop

/* 803BAA5C-803BAA68 -00001 000C+00 0/1 0/0 0/0 .data            @4202 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4202[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)copyPaneMoveOk__14dFile_select_cFv,
};
#pragma pop

/* 803BAA68-803BAA74 -00001 000C+00 0/1 0/0 0/0 .data            @4203 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4203[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)copyPaneMoveOk2__14dFile_select_cFv,
};
#pragma pop

/* 803BAA74-803BAA80 -00001 000C+00 0/1 0/0 0/0 .data            @4204 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4204[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ErasePaneMoveOk__14dFile_select_cFv,
};
#pragma pop

/* 803BAA80-803BAA8C -00001 000C+00 0/1 0/0 0/0 .data            @4205 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4205[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ErasePaneMoveOk2__14dFile_select_cFv,
};
#pragma pop

/* 803BAA8C-803BAA98 -00001 000C+00 0/1 0/0 0/0 .data            @4206 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4206[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ErrorMsgPaneMove__14dFile_select_cFv,
};
#pragma pop

/* 803BAA98-803BAAA4 -00001 000C+00 0/1 0/0 0/0 .data            @4207 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4207[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)eraseEndBackSelectWait__14dFile_select_cFv,
};
#pragma pop

/* 803BAAA4-803BAAB0 -00001 000C+00 0/1 0/0 0/0 .data            @4208 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4208[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)eraseEndBackSelect__14dFile_select_cFv,
};
#pragma pop

/* 803BAAB0-803BAABC -00001 000C+00 0/1 0/0 0/0 .data            @4209 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4209[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)backDatSelWait__14dFile_select_cFv,
};
#pragma pop

/* 803BAABC-803BAAC8 -00001 000C+00 0/1 0/0 0/0 .data            @4210 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4210[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)backDatSelWait2__14dFile_select_cFv,
};
#pragma pop

/* 803BAAC8-803BAAD4 -00001 000C+00 0/1 0/0 0/0 .data            @4211 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4211[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)backDatSelPaneMove__14dFile_select_cFv,
};
#pragma pop

/* 803BAAD4-803BAAE0 -00001 000C+00 0/1 0/0 0/0 .data            @4212 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4212[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ToNameMove2__14dFile_select_cFv,
};
#pragma pop

/* 803BAAE0-803BAAEC -00001 000C+00 0/1 0/0 0/0 .data            @4213 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4213[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nextModeWait__14dFile_select_cFv,
};
#pragma pop

/* 803BAAEC-803BAD20 017C0C 0234+00 1/2 0/0 0/0 .data            DataSelProc */
typedef void (dFile_select_c::*DataSelProcFunc)(void);
SECTION_DATA static DataSelProcFunc DataSelProc[47] = {};

/* 803BAD20-803BAD30 017E40 0010+00 1/1 0/0 0/0 .data            l_tagName101$5620 */
SECTION_DATA static u8 l_tagName101[16] = {
    0x00, 0x77, 0x5F, 0x6E, 0x75, 0x6E, 0x30, 0x31, 0x00, 0x77, 0x5F, 0x6E, 0x75, 0x6E, 0x30, 0x32,
};

/* 803BAD30-803BAD40 -00001 000C+04 1/1 0/0 0/0 .data            l_numTex$5621 */
SECTION_DATA static void* l_numTex[3 + 1 /* padding */] = {
    (void*)&d_file_d_file_select__stringBase0,
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x15),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x2A),
    /* padding */
    NULL,
};

/* 803BAD40-803BAD58 017E60 0018+00 0/1 0/0 0/0 .data            l_tagName0$6517 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName0[24] = {
    0x77, 0x5F, 0x73, 0x65, 0x6C, 0x5F, 0x30, 0x30, 0x77, 0x5F, 0x73, 0x65,
    0x6C, 0x5F, 0x30, 0x31, 0x77, 0x5F, 0x73, 0x65, 0x6C, 0x5F, 0x30, 0x32,
};
#pragma pop

/* 803BAD58-803BAD70 017E78 0018+00 0/1 0/0 0/0 .data            l_tagName3$6528 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName3[24] = {
    0x77, 0x5F, 0x6D, 0x6F, 0x79, 0x6F, 0x30, 0x30, 0x77, 0x5F, 0x6D, 0x6F,
    0x79, 0x6F, 0x30, 0x31, 0x77, 0x5F, 0x6D, 0x6F, 0x79, 0x6F, 0x30, 0x32,
};
#pragma pop

/* 803BAD70-803BAD88 017E90 0018+00 0/1 0/0 0/0 .data            l_tagName4$6529 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName4[24] = {
    0x77, 0x5F, 0x67, 0x6F, 0x6C, 0x64, 0x30, 0x30, 0x77, 0x5F, 0x67, 0x6F,
    0x6C, 0x64, 0x30, 0x31, 0x77, 0x5F, 0x67, 0x6F, 0x6C, 0x64, 0x30, 0x32,
};
#pragma pop

/* 803BAD88-803BADA0 017EA8 0018+00 0/1 0/0 0/0 .data            l_tagName5$6530 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName5[24] = {
    0x77, 0x5F, 0x67, 0x6F, 0x32, 0x5F, 0x30, 0x30, 0x77, 0x5F, 0x67, 0x6F,
    0x32, 0x5F, 0x30, 0x31, 0x77, 0x5F, 0x67, 0x6F, 0x32, 0x5F, 0x30, 0x32,
};
#pragma pop

/* 803BADA0-803BADB8 017EC0 0018+00 0/1 0/0 0/0 .data            l_tagName12$6539 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName12[24] = {
    0x77, 0x5F, 0x62, 0x6B, 0x5F, 0x6C, 0x30, 0x30, 0x77, 0x5F, 0x62, 0x6B,
    0x5F, 0x6C, 0x30, 0x31, 0x77, 0x5F, 0x62, 0x6B, 0x5F, 0x6C, 0x30, 0x32,
};
#pragma pop

/* 803BADB8-803BAE30 017ED8 0078+00 0/1 0/0 0/0 .data            l_nouseTag$6546 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_nouseTag[120] = {
    0x77, 0x5F, 0x6D, 0x63, 0x68, 0x65, 0x63, 0x6B, 0x00, 0x77, 0x5F, 0x74, 0x61, 0x62, 0x69,
    0x31, 0x00, 0x77, 0x5F, 0x74, 0x61, 0x62, 0x69, 0x32, 0x00, 0x77, 0x5F, 0x74, 0x61, 0x62,
    0x69, 0x33, 0x77, 0x5F, 0x64, 0x6F, 0x6B, 0x6F, 0x5F, 0x63, 0x00, 0x77, 0x5F, 0x75, 0x77,
    0x61, 0x5F, 0x63, 0x77, 0x5F, 0x63, 0x70, 0x5F, 0x63, 0x68, 0x75, 0x77, 0x5F, 0x63, 0x70,
    0x73, 0x69, 0x74, 0x61, 0x00, 0x00, 0x77, 0x5F, 0x63, 0x70, 0x5F, 0x78, 0x00, 0x00, 0x00,
    0x00, 0x77, 0x5F, 0x64, 0x65, 0x77, 0x5F, 0x64, 0x65, 0x5F, 0x63, 0x68, 0x75, 0x77, 0x5F,
    0x64, 0x65, 0x73, 0x69, 0x74, 0x61, 0x00, 0x00, 0x77, 0x5F, 0x64, 0x65, 0x5F, 0x78, 0x00,
    0x00, 0x77, 0x5F, 0x6E, 0x61, 0x6D, 0x65, 0x77, 0x5F, 0x68, 0x5F, 0x6E, 0x61, 0x6D, 0x65,
};
#pragma pop

/* 803BAE30-803BAE40 017F50 0010+00 0/1 0/0 0/0 .data            l_tagName21$6552 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName21[16] = {
    0x00, 0x00, 0x00, 0x74, 0x5F, 0x66, 0x6F, 0x72, 0x00, 0x00, 0x74, 0x5F, 0x66, 0x6F, 0x72, 0x31,
};
#pragma pop

/* 803BAE40-803BAE58 017F60 0018+00 0/1 0/0 0/0 .data            l_tagName18$6559 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName18[24] = {
    0x77, 0x5F, 0x64, 0x65, 0x5F, 0x65, 0x66, 0x30, 0x77, 0x5F, 0x64, 0x65,
    0x5F, 0x65, 0x66, 0x31, 0x77, 0x5F, 0x64, 0x65, 0x5F, 0x65, 0x66, 0x32,
};
#pragma pop

/* 803BAE58-803BAE70 017F78 0018+00 0/1 0/0 0/0 .data            l_tagName19$6560 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName19[24] = {
    0x77, 0x5F, 0x63, 0x70, 0x5F, 0x65, 0x66, 0x30, 0x77, 0x5F, 0x63, 0x70,
    0x5F, 0x65, 0x66, 0x31, 0x77, 0x5F, 0x63, 0x70, 0x5F, 0x65, 0x66, 0x32,
};
#pragma pop

/* 803BAE70-803BAE80 017F90 0010+00 0/1 0/0 0/0 .data            l_tagName20$6568 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName20[16] = {
    0x00, 0x65, 0x72, 0x5F, 0x66, 0x6F, 0x72, 0x30, 0x00, 0x65, 0x72, 0x5F, 0x66, 0x6F, 0x72, 0x31,
};
#pragma pop

/* 803BAE80-803BAE98 017FA0 0018+00 0/1 0/0 0/0 .data            l_tagName131$6576 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName131[24] = {
    0x4E, 0x5F, 0x73, 0x65, 0x6C, 0x5F, 0x30, 0x30, 0x4E, 0x5F, 0x73, 0x65,
    0x6C, 0x5F, 0x30, 0x31, 0x4E, 0x5F, 0x73, 0x65, 0x6C, 0x5F, 0x30, 0x32,
};
#pragma pop

/* 803BAE98-803BAEA8 017FB8 0010+00 0/1 0/0 0/0 .data            l_tagName000$6897 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName000[16] = {
    0x77, 0x5F, 0x73, 0x65, 0x6C, 0x5F, 0x30, 0x31, 0x77, 0x5F, 0x73, 0x65, 0x6C, 0x5F, 0x30, 0x32,
};
#pragma pop

/* 803BAEA8-803BAEB8 017FC8 0010+00 0/1 0/0 0/0 .data            l_tagName001$6898 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName001[16] = {
    0x77, 0x5F, 0x6D, 0x6F, 0x79, 0x6F, 0x30, 0x31, 0x77, 0x5F, 0x6D, 0x6F, 0x79, 0x6F, 0x30, 0x32,
};
#pragma pop

/* 803BAEB8-803BAEC8 017FD8 0010+00 0/1 0/0 0/0 .data            l_tagName002$6899 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName002[16] = {
    0x77, 0x5F, 0x67, 0x6F, 0x6C, 0x64, 0x30, 0x31, 0x77, 0x5F, 0x67, 0x6F, 0x6C, 0x64, 0x30, 0x32,
};
#pragma pop

/* 803BAEC8-803BAED8 017FE8 0010+00 0/1 0/0 0/0 .data            l_tagName003$6900 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName003[16] = {
    0x77, 0x5F, 0x67, 0x6F, 0x32, 0x5F, 0x30, 0x31, 0x77, 0x5F, 0x67, 0x6F, 0x32, 0x5F, 0x30, 0x32,
};
#pragma pop

/* 803BAED8-803BAEE8 017FF8 0010+00 0/1 0/0 0/0 .data            l_tagName004$6901 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName004[16] = {
    0x77, 0x5F, 0x62, 0x6B, 0x5F, 0x6C, 0x30, 0x31, 0x77, 0x5F, 0x62, 0x6B, 0x5F, 0x6C, 0x30, 0x32,
};
#pragma pop

/* 803BAEE8-803BAEF8 018008 0010+00 0/1 0/0 0/0 .data            l_tagName005$6902 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName005[16] = {
    0x77, 0x5F, 0x63, 0x70, 0x5F, 0x65, 0x66, 0x31, 0x77, 0x5F, 0x63, 0x70, 0x5F, 0x65, 0x66, 0x32,
};
#pragma pop

/* 803BAEF8-803BAF08 018018 0010+00 0/1 0/0 0/0 .data            l_tagName012$6999 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName012[16] = {
    0x00, 0x00, 0x77, 0x5F, 0x6E, 0x6F, 0x5F, 0x6E, 0x00, 0x77, 0x5F, 0x79, 0x65, 0x73, 0x5F, 0x6E,
};
#pragma pop

/* 803BAF08-803BAF18 018028 0010+00 0/1 0/0 0/0 .data            l_tagName013$7000 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName013[16] = {
    0x00, 0x00, 0x77, 0x5F, 0x6E, 0x6F, 0x5F, 0x74, 0x00, 0x77, 0x5F, 0x79, 0x65, 0x73, 0x5F, 0x74,
};
#pragma pop

/* 803BAF18-803BAF28 018038 0010+00 0/1 0/0 0/0 .data            l_tagName013U$7001 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName013U[16] = {
    0x00, 0x00, 0x66, 0x5F, 0x6E, 0x6F, 0x5F, 0x74, 0x00, 0x66, 0x5F, 0x79, 0x65, 0x73, 0x5F, 0x74,
};
#pragma pop

/* 803BAF28-803BAF38 018048 0010+00 0/1 0/0 0/0 .data            l_tagName9$7010 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName9[16] = {
    0x00, 0x00, 0x77, 0x5F, 0x6E, 0x6F, 0x5F, 0x6D, 0x00, 0x77, 0x5F, 0x79, 0x65, 0x73, 0x5F, 0x6D,
};
#pragma pop

/* 803BAF38-803BAF48 018058 0010+00 0/1 0/0 0/0 .data            l_tagName10$7011 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName10[16] = {
    0x00, 0x00, 0x77, 0x5F, 0x6E, 0x6F, 0x5F, 0x67, 0x00, 0x77, 0x5F, 0x79, 0x65, 0x73, 0x5F, 0x67,
};
#pragma pop

/* 803BAF48-803BAF58 018068 0010+00 0/1 0/0 0/0 .data            l_tagName11$7012 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName11[16] = {
    0x00, 0x77, 0x5F, 0x6E, 0x6F, 0x5F, 0x67, 0x72, 0x77, 0x5F, 0x79, 0x65, 0x73, 0x5F, 0x67, 0x72,
};
#pragma pop

/* 803BAF58-803BAF70 018078 0018+00 0/1 0/0 0/0 .data            l_tagName6$7076 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName6[24] = {
    0x77, 0x5F, 0x73, 0x61, 0x74, 0x5F, 0x6D, 0x6F, 0x77, 0x5F, 0x64, 0x65,
    0x6C, 0x5F, 0x6D, 0x6F, 0x77, 0x5F, 0x63, 0x6F, 0x70, 0x5F, 0x6D, 0x6F,
};
#pragma pop

/* 803BAF70-803BAF88 018090 0018+00 0/1 0/0 0/0 .data            l_tagName7$7077 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName7[24] = {
    0x00, 0x77, 0x5F, 0x73, 0x61, 0x74, 0x5F, 0x67, 0x00, 0x77, 0x5F, 0x64,
    0x65, 0x6C, 0x5F, 0x67, 0x00, 0x77, 0x5F, 0x63, 0x6F, 0x70, 0x5F, 0x67,
};
#pragma pop

/* 803BAF88-803BAFA0 0180A8 0018+00 0/1 0/0 0/0 .data            l_tagName8$7078 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName8[24] = {
    0x77, 0x5F, 0x73, 0x61, 0x74, 0x5F, 0x67, 0x72, 0x77, 0x5F, 0x64, 0x65,
    0x6C, 0x5F, 0x67, 0x72, 0x77, 0x5F, 0x63, 0x6F, 0x70, 0x5F, 0x67, 0x72,
};
#pragma pop

/* 803BAFA0-803BAFB8 0180C0 0018+00 0/1 0/0 0/0 .data            l_tagName1$7079 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName1[24] = {
    0x00, 0x77, 0x5F, 0x73, 0x74, 0x61, 0x5F, 0x6E, 0x00, 0x77, 0x5F, 0x64,
    0x65, 0x6C, 0x5F, 0x6E, 0x00, 0x77, 0x5F, 0x63, 0x6F, 0x70, 0x5F, 0x6E,
};
#pragma pop

/* 803BAFB8-803BAFD0 0180D8 0018+00 0/1 0/0 0/0 .data            l_tagName011$7080 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName011[24] = {
    0x00, 0x00, 0x00, 0x77, 0x5F, 0x73, 0x74, 0x61, 0x00, 0x00, 0x00, 0x77,
    0x5F, 0x64, 0x65, 0x6C, 0x00, 0x77, 0x5F, 0x63, 0x6F, 0x70, 0x5F, 0x74,
};
#pragma pop

/* 803BAFD0-803BAFE8 0180F0 0018+00 0/1 0/0 0/0 .data            l_tagName011U$7081 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_tagName011U[24] = {
    0x00, 0x00, 0x00, 0x66, 0x5F, 0x73, 0x74, 0x61, 0x00, 0x00, 0x00, 0x66,
    0x5F, 0x64, 0x65, 0x6C, 0x00, 0x66, 0x5F, 0x63, 0x6F, 0x70, 0x5F, 0x74,
};
#pragma pop

/* 803BAFE8-803BAFF4 -00001 000C+00 0/1 0/0 0/0 .data            @7759 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7759[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardStatCheck__14dFile_select_cFv,
};
#pragma pop

/* 803BAFF4-803BB000 -00001 000C+00 0/1 0/0 0/0 .data            @7760 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7760[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardLoadWait__14dFile_select_cFv,
};
#pragma pop

/* 803BB000-803BB00C -00001 000C+00 0/1 0/0 0/0 .data            @7761 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7761[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardErrMsgWaitKey__14dFile_select_cFv,
};
#pragma pop

/* 803BB00C-803BB018 -00001 000C+00 0/1 0/0 0/0 .data            @7762 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7762[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardNoSaveSelDisp__14dFile_select_cFv,
};
#pragma pop

/* 803BB018-803BB024 -00001 000C+00 0/1 0/0 0/0 .data            @7763 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7763[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardErrMsgWaitNoSaveSel__14dFile_select_cFv,
};
#pragma pop

/* 803BB024-803BB030 -00001 000C+00 0/1 0/0 0/0 .data            @7764 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7764[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardErrMsgWaitFormatSel__14dFile_select_cFv,
};
#pragma pop

/* 803BB030-803BB03C -00001 000C+00 0/1 0/0 0/0 .data            @7765 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7765[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardFormatYesSelDisp__14dFile_select_cFv,
};
#pragma pop

/* 803BB03C-803BB048 -00001 000C+00 0/1 0/0 0/0 .data            @7766 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7766[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardFormatNoSelDisp__14dFile_select_cFv,
};
#pragma pop

/* 803BB048-803BB054 -00001 000C+00 0/1 0/0 0/0 .data            @7767 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7767[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardErrMsgWaitFormatSel2__14dFile_select_cFv,
};
#pragma pop

/* 803BB054-803BB060 -00001 000C+00 0/1 0/0 0/0 .data            @7768 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7768[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardFormatYesSel2Disp__14dFile_select_cFv,
};
#pragma pop

/* 803BB060-803BB06C -00001 000C+00 0/1 0/0 0/0 .data            @7769 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7769[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardFormat__14dFile_select_cFv,
};
#pragma pop

/* 803BB06C-803BB078 -00001 000C+00 0/1 0/0 0/0 .data            @7770 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7770[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardFormatWait__14dFile_select_cFv,
};
#pragma pop

/* 803BB078-803BB084 -00001 000C+00 0/1 0/0 0/0 .data            @7771 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7771[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardFormatCheck__14dFile_select_cFv,
};
#pragma pop

/* 803BB084-803BB090 -00001 000C+00 0/1 0/0 0/0 .data            @7772 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7772[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardMakeGameFileSel__14dFile_select_cFv,
};
#pragma pop

/* 803BB090-803BB09C -00001 000C+00 0/1 0/0 0/0 .data            @7773 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7773[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardMakeGameFileSelDisp__14dFile_select_cFv,
};
#pragma pop

/* 803BB09C-803BB0A8 -00001 000C+00 0/1 0/0 0/0 .data            @7774 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7774[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardMakeGameFile__14dFile_select_cFv,
};
#pragma pop

/* 803BB0A8-803BB0B4 -00001 000C+00 0/1 0/0 0/0 .data            @7775 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7775[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardMakeGameFileWait__14dFile_select_cFv,
};
#pragma pop

/* 803BB0B4-803BB0C0 -00001 000C+00 0/1 0/0 0/0 .data            @7776 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7776[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardMakeGameFileCheck__14dFile_select_cFv,
};
#pragma pop

/* 803BB0C0-803BB0CC -00001 000C+00 0/1 0/0 0/0 .data            @7777 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardNoFileSpaceDisp__14dFile_select_cFv,
};
#pragma pop

/* 803BB0CC-803BB0D8 -00001 000C+00 0/1 0/0 0/0 .data            @7778 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7778[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardGotoIPLSelectDisp__14dFile_select_cFv,
};
#pragma pop

/* 803BB0D8-803BB0E4 -00001 000C+00 0/1 0/0 0/0 .data            @7779 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7779[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardGotoIPLSelect__14dFile_select_cFv,
};
#pragma pop

/* 803BB0E4-803BB0F0 -00001 000C+00 0/1 0/0 0/0 .data            @7780 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7780[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardGotoIPL__14dFile_select_cFv,
};
#pragma pop

/* 803BB0F0-803BB0FC -00001 000C+00 0/1 0/0 0/0 .data            @7781 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7781[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardMsgWindowInitOpen__14dFile_select_cFv,
};
#pragma pop

/* 803BB0FC-803BB108 -00001 000C+00 0/1 0/0 0/0 .data            @7782 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7782[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardMsgWindowOpen__14dFile_select_cFv,
};
#pragma pop

/* 803BB108-803BB114 -00001 000C+00 0/1 0/0 0/0 .data            @7783 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7783[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardMsgWindowClose__14dFile_select_cFv,
};
#pragma pop

/* 803BB114-803BB120 -00001 000C+00 0/1 0/0 0/0 .data            @7784 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7784[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardErrYesNoCursorMoveAnm__14dFile_select_cFv,
};
#pragma pop

/* 803BB120-803BB12C -00001 000C+00 0/1 0/0 0/0 .data            @7785 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7785[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)MemCardSaveDataClear__14dFile_select_cFv,
};
#pragma pop

/* 803BB12C-803BB270 01824C 0144+00 1/2 0/0 0/0 .data            MemCardCheckProc */
SECTION_DATA static u8 MemCardCheckProc[324] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 803BB270-803BB27C -00001 000C+00 0/1 0/0 0/0 .data            @7797 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7797[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)noSaveSelDispInit__14dFile_select_cFv,
};
#pragma pop

/* 803BB27C-803BB288 -00001 000C+00 0/0 0/0 0/0 .data            @7799 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7799[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)noSaveSelDispInit__14dFile_select_cFv,
};
#pragma pop

/* 803BB288-803BB294 -00001 000C+00 0/0 0/0 0/0 .data            @7801 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7801[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)noSaveSelDispInit__14dFile_select_cFv,
};
#pragma pop

/* 803BB294-803BB2A0 -00001 000C+00 0/0 0/0 0/0 .data            @7803 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7803[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)noSaveSelDispInit__14dFile_select_cFv,
};
#pragma pop

/* 803BB2A0-803BB2AC -00001 000C+00 0/0 0/0 0/0 .data            @7808 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_7808[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)noFileSpaceDispInit__14dFile_select_cFv,
};
#pragma pop

/* 803BB2AC-803BB2E0 -00001 0034+00 1/1 0/0 0/0 .data            @7815 */
SECTION_DATA static void* lit_7815[13] = {
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x58),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x288),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x270),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x2A8),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x2A8),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x2A8),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x1E8),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x1E8),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0xBC),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x120),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x184),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x20C),
    (void*)(((char*)MemCardStatCheck__14dFile_select_cFv) + 0x20C),
};

/* 803BB2E0-803BB2EC -00001 000C+00 1/1 0/0 0/0 .data            @7865 */
SECTION_DATA static void* lit_7865[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)iplSelDispInit__14dFile_select_cFv,
};

/* 803BB2EC-803BB2F8 -00001 000C+00 1/1 0/0 0/0 .data            @8004 */
SECTION_DATA static void* lit_8004[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)noSaveSelDispInit__14dFile_select_cFv,
};

/* 803BB2F8-803BB304 -00001 000C+00 1/1 0/0 0/0 .data            @8083 */
SECTION_DATA static void* lit_8083[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)noSaveSelDispInit__14dFile_select_cFv,
};

/* 803BB304-803BB314 -00001 0010+00 1/1 0/0 0/0 .data            bck_name$8683 */
SECTION_DATA static void* bck_name_8683[4] = {
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x330),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x349),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x362),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x37B),
};

/* 803BB314-803BB324 -00001 0010+00 1/1 0/0 0/0 .data            brk_name$8684 */
SECTION_DATA static void* brk_name_8684[4] = {
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x394),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x3AD),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x3AD),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x3C8),
};

/* 803BB324-803BB334 -00001 0010+00 1/1 0/0 0/0 .data            bck_name$8786 */
SECTION_DATA static void* bck_name_8786[4] = {
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x3F0),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x409),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x422),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x43B),
};

/* 803BB334-803BB35C -00001 0010+18 1/1 0/0 0/0 .data            brk_name$8787 */
SECTION_DATA static void* brk_name_8787[4 + 6 /* padding */] = {
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x454),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x46D),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x46D),
    (void*)(((char*)&d_file_d_file_select__stringBase0) + 0x46D),
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803BB35C-803BB368 01847C 000C+00 2/2 0/0 0/0 .data            __vt__16dFile_select3D_c */
SECTION_DATA extern void* __vt__16dFile_select3D_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16dFile_select3D_cFv,
};

/* 803BB368-803BB378 018488 0010+00 3/3 0/0 0/0 .data            __vt__17dDlst_FileSel3m_c */
SECTION_DATA extern void* __vt__17dDlst_FileSel3m_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__17dDlst_FileSel3m_cFv,
    (void*)__dt__17dDlst_FileSel3m_cFv,
};

/* 803BB378-803BB388 018498 0010+00 3/3 0/0 0/0 .data            __vt__17dDlst_FileSelYn_c */
SECTION_DATA extern void* __vt__17dDlst_FileSelYn_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__17dDlst_FileSelYn_cFv,
    (void*)__dt__17dDlst_FileSelYn_cFv,
};

/* 803BB388-803BB398 0184A8 0010+00 3/3 0/0 0/0 .data            __vt__17dDlst_FileSelCp_c */
SECTION_DATA extern void* __vt__17dDlst_FileSelCp_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__17dDlst_FileSelCp_cFv,
    (void*)__dt__17dDlst_FileSelCp_cFv,
};

/* 803BB398-803BB3A8 0184B8 0010+00 3/3 0/0 0/0 .data            __vt__17dDlst_FileSelDt_c */
SECTION_DATA extern void* __vt__17dDlst_FileSelDt_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__17dDlst_FileSelDt_cFv,
    (void*)__dt__17dDlst_FileSelDt_cFv,
};

/* 803BB3A8-803BB3B8 0184C8 0010+00 3/3 0/0 0/0 .data            __vt__15dDlst_FileSel_c */
SECTION_DATA extern void* __vt__15dDlst_FileSel_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__15dDlst_FileSel_cFv,
    (void*)__dt__15dDlst_FileSel_cFv,
};

/* 803BB3B8-803BB3DC 0184D8 0014+10 1/1 3/3 0/0 .data            __vt__15J2DAnmTransform */
SECTION_DATA extern void* __vt__15J2DAnmTransform[5 + 4 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15J2DAnmTransformFv,
    (void*)searchUpdateMaterialID__10J2DAnmBaseFP9J2DScreen,
    (void*)getTransform__15J2DAnmTransformCFUsP16J3DTransformInfo,
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803BB3DC-803BB3E8 0184FC 000C+00 4/4 11/11 0/0 .data            __vt__10JUTNameTab */
SECTION_DATA extern void* __vt__10JUTNameTab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10JUTNameTabFv,
};

/* 803BB3E8-803BB400 018508 000C+0C 2/2 0/0 0/0 .data            __vt__14dFile_select_c */
SECTION_DATA extern void* __vt__14dFile_select_c[3 + 3 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dFile_select_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
};

/* 803BB400-803BB410 018520 000C+04 2/2 0/0 0/0 .data            __vt__9dFs_HIO_c */
SECTION_DATA extern void* __vt__9dFs_HIO_c[3 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__9dFs_HIO_cFv,
    /* padding */
    NULL,
};

/* 80453928-8045392C 001F28 0004+00 1/1 0/0 0/0 .sdata2          @3812 */
SECTION_SDATA2 static f32 lit_3812 = 111.0f / 100.0f;

/* 801835F8-8018366C 17DF38 0074+00 1/1 0/0 0/0 .text            __ct__9dFs_HIO_cFv */
#ifdef NONMATCHING
// matches with literals
dFs_HIO_c::dFs_HIO_c() {
    field_0x0006 = 5;
    field_0x0007 = 5;
    field_0x000a = 60;
    field_0x0008 = 5;
    field_0x0009 = 15;
    field_0x0005 = 5;
    field_0x000b = 15;
    field_0x000d = 15;
    field_0x000c = 90;
    field_0x0010 = 1.11f;
    field_0x0014 = 1.11f;
    field_0x0018 = 1.11f;
    field_0x001c = 0;
    field_0x001d = 0;
    field_0x001e = 0;
    field_0x001f = 0;
    field_0x0020 = 0;
    field_0x0021 = 0;
    field_0x0022 = 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dFs_HIO_c::dFs_HIO_c() {
    nofralloc
#include "asm/d/file/d_file_select/__ct__9dFs_HIO_cFv.s"
}
#pragma pop
#endif

/* 8018366C-8018375C 17DFAC 00F0+00 0/0 1/1 0/0 .text __ct__14dFile_select_cFP10JKRArchive */
#ifdef NONMATCHING
// inheritance/vtable mess needs to be fixed first
dFile_select_c::dFile_select_c(JKRArchive* i_archiveP) {
    mpArchive = i_archiveP;
    mpMessageFont = mDoExt_getMesgFont();
    mpSubFont = mDoExt_getSubFont();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dFile_select_c::dFile_select_c(JKRArchive* param_0) {
    nofralloc
#include "asm/d/file/d_file_select/__ct__14dFile_select_cFP10JKRArchive.s"
}
#pragma pop
#endif

/* 8018375C-801841EC 17E09C 0A90+00 1/0 0/0 0/0 .text            __dt__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dFile_select_c::~dFile_select_c() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__14dFile_select_cFv.s"
}
#pragma pop

/* 801841EC-80184274 17EB2C 0088+00 0/0 1/0 0/0 .text            __dt__15J2DAnmTevRegKeyFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J2DAnmTevRegKey::~J2DAnmTevRegKey() {
extern "C" asm void __dt__15J2DAnmTevRegKeyFv() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__15J2DAnmTevRegKeyFv.s"
}
#pragma pop

/* 80184274-801842FC 17EBB4 0088+00 0/0 1/0 0/0 .text            __dt__19J2DAnmTextureSRTKeyFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J2DAnmTextureSRTKey::~J2DAnmTextureSRTKey() {
extern "C" asm void __dt__19J2DAnmTextureSRTKeyFv() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__19J2DAnmTextureSRTKeyFv.s"
}
#pragma pop

/* 801842FC-80184370 17EC3C 0074+00 0/0 1/0 0/0 .text            __dt__11J2DAnmColorFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J2DAnmColor::~J2DAnmColor() {
extern "C" asm void __dt__11J2DAnmColorFv() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__11J2DAnmColorFv.s"
}
#pragma pop

/* 80184370-801843CC 17ECB0 005C+00 1/0 0/0 0/0 .text            __dt__15J2DAnmTransformFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J2DAnmTransform::~J2DAnmTransform() {
extern "C" asm void __dt__15J2DAnmTransformFv() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__15J2DAnmTransformFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8042C9E0-8042C9EC 059700 000C+00 1/1 0/0 0/0 .bss             @3807 */
static u8 lit_3807[12];

/* 8042C9EC-8042CA10 05970C 0024+00 35/35 0/0 0/0 .bss             g_fsHIO */
static dFs_HIO_c_tmp g_fsHIO;
// static dFs_HIO_c g_fsHIO;

/* 8045392C-80453930 001F2C 0004+00 1/1 0/0 0/0 .sdata2          @4165 */
SECTION_SDATA2 static f32 lit_4165 = 9.0f / 10.0f;

/* 80453930-80453938 001F30 0004+04 5/5 0/0 0/0 .sdata2          @4166 */
SECTION_SDATA2 static f32 lit_4166[1 + 1 /* padding */] = {
    0.5f,
    /* padding */
    0.0f,
};

/* 801843CC-801844FC 17ED0C 0130+00 0/0 1/1 0/0 .text            _create__14dFile_select_cFv */
#ifdef NONMATCHING
// setFadeColor instruction reordering
void dFile_select_c::_create() {
    mDoGph_gInf_c::setFadeColor(static_cast<JUtility::TColor&>(g_blackColor));
    mStick = new STControl(2, 2, 1, 1, 0.9f, 0.5f, 0, 0x2000);
    g_fsHIO.field_0x0004 = -1;

    for (int i = 0; i < 3; i++) {
        mDataNew[i] = 0;
        field_0x025b[i] = 0;
    }

    mSelectNum = 0;
    
    dComIfGs_init();
    dComIfGp_itemDataInit();
    dComIfGs_setNewFile(0);

    mHasDrawn = false;

    screenSet();
    screenSetCopySel();
    screenSet3Menu();
    screenSetYesNo();
    screenSetDetail();
    displayInit();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::_create() {
    nofralloc
#include "asm/d/file/d_file_select/_create__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 801844FC-80184664 17EE3C 0168+00 0/0 1/1 0/0 .text            _move__14dFile_select_cFv */
void dFile_select_c::_move() {
    dMeter2Info_decMsgKeyWaitTimer();

    s32 drive_status = DVDGetDriveStatus();

    if (drive_status != DVD_STATE_END && drive_status != DVD_STATE_BUSY && field_0x03b1 != 0) {
        field_0x03b1 = 0;
    }

    if ((mDoMemCd_getProbeStat() == 0 || mDoMemCd_getProbeStat() == 1) && (mDoRst::isReset() == 0 && field_0x03b1 == 0)) {
        if (field_0x2378->getAlpha() != 0) {
            field_0x2378->setAlpha(0);
        }
        
        field_0x026f = 0;
        field_0x0271 = 0;
        
    }

    (this->*DataSelProc[field_0x026f])();

    selFileWakuAnm();
    bookIconAnm();
    dataDelEffAnm();
    dataCopyEffAnm();

    mFileSelectDlst.mpScreen->animation();
    mFileSelYesNoDlst.mpScreen->animation();
    mFileSel3mDlst.mpScreen->animation();
    mFileSelDeleteDlst.mpScreen->animation();

    if (mFileSelCopyDlst.field_0x08) {
        selCopyFileWakuAnm();
        copyBookIconAnm();
        mFileSelCopyDlst.mpScreen->animation();
    }

    mpFileWarning->_move();
    mpFileSelect3d->_move();

    mDoMemCd_clearProbeStat();
}

/* ############################################################################################## */
/* 80453938-80453940 001F38 0008+00 34/34 0/0 0/0 .sdata2          @4342 */
SECTION_SDATA2 static f64 lit_4342 = 4503601774854144.0 /* cast s32 to float */;

/* 80184664-801848A0 17EFA4 023C+00 1/1 0/0 0/0 .text            selFileWakuAnm__14dFile_select_cFv
 */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::selFileWakuAnm() {
    field_0x01cc += 2;

    if (field_0x01cc >= field_0x01c8->getFrameMax())
        field_0x01cc -= field_0x01c8->getFrameMax();

    field_0x01c8->setFrame(field_0x01cc);
    field_0x01D4 += 2;

    if (field_0x01D4 >= field_0x01d0->getFrameMax())
        field_0x01D4 -= field_0x01d0->getFrameMax();

    field_0x01d0->setFrame(field_0x01D4);
    field_0x031c += 2;

    if (field_0x031c >= field_0x0318->getFrameMax())
        field_0x031c -= field_0x0318->getFrameMax();

    field_0x0318->setFrame(field_0x031c);
    field_0x0324 += 2;

    if (field_0x0324 >= field_0x0320->getFrameMax())
        field_0x0324 -= field_0x0320->getFrameMax();

    field_0x0320->setFrame(field_0x0324);
    field_0x0334 += 2;

    if (field_0x0334 >= field_0x0330->getFrameMax())
        field_0x0334 -= field_0x0330->getFrameMax();

    field_0x0330->setFrame(field_0x0334);
    field_0x033c += 2;

    if (field_0x033c >= field_0x0338->getFrameMax())
        field_0x033c -= field_0x0338->getFrameMax();

    field_0x0338->setFrame(field_0x033c);
    field_0x03a4 += 2;

    if (field_0x03a4 >= field_0x03a0->getFrameMax())
        field_0x03a4 -= field_0x03a0->getFrameMax();

    field_0x03a0->setFrame(field_0x03a4);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::selFileWakuAnm() {
    nofralloc
#include "asm/d/file/d_file_select/selFileWakuAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 801848A0-8018499C 17F1E0 00FC+00 1/1 0/0 0/0 .text            bookIconAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::bookIconAnm() {
    field_0x01dc += 2;

    if (field_0x01dc >= field_0x01d8->getFrameMax())
        field_0x01dc -= field_0x01d8->getFrameMax();

    field_0x01d8->setFrame(field_0x01dc);
    field_0x01e4 += 2;

    if (field_0x01e4 >= field_0x01e0->getFrameMax())
        field_0x01e4 -= field_0x01e0->getFrameMax();

    field_0x01e0->setFrame(field_0x01e4);
    field_0x01ec += 2;

    if (field_0x01ec >= field_0x01e8->getFrameMax())
        field_0x01ec -= field_0x01e8->getFrameMax();

    field_0x01e8->setFrame(field_0x01ec);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::bookIconAnm() {
    nofralloc
#include "asm/d/file/d_file_select/bookIconAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 8018499C-80184A48 17F2DC 00AC+00 1/1 0/0 0/0 .text selCopyFileWakuAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::selCopyFileWakuAnm() {
    field_0x02ec += 2;

    if (field_0x02ec >= field_0x02e8->getFrameMax())
        field_0x02ec -= field_0x02e8->getFrameMax();

    field_0x02e8->setFrame(field_0x02ec);
    field_0x02f4 += 2;

    if (field_0x02f4 >= field_0x02f0->getFrameMax())
        field_0x02f4 -= field_0x02f0->getFrameMax();

    field_0x02f0->setFrame(field_0x02f4);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::selCopyFileWakuAnm() {
    nofralloc
#include "asm/d/file/d_file_select/selCopyFileWakuAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80184A48-80184B44 17F388 00FC+00 1/1 0/0 0/0 .text            copyBookIconAnm__14dFile_select_cFv
 */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::copyBookIconAnm() {
    field_0x02fc += 2;

    if (field_0x02fc >= field_0x02f8->getFrameMax())
        field_0x02fc -= field_0x02f8->getFrameMax();

    field_0x02f8->setFrame(field_0x02fc);
    field_0x0304 += 2;

    if (field_0x0304 >= field_0x0300->getFrameMax())
        field_0x0304 -= field_0x0300->getFrameMax();

    field_0x0300->setFrame(field_0x0304);
    field_0x030c += 2;

    if (field_0x030c >= field_0x0308->getFrameMax())
        field_0x030c -= field_0x0308->getFrameMax();
    
    field_0x0308->setFrame(field_0x030c);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyBookIconAnm() {
    nofralloc
#include "asm/d/file/d_file_select/copyBookIconAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80184B44-80184BFC 17F484 00B8+00 1/1 0/0 0/0 .text            dataDelEffAnm__14dFile_select_cFv
 */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::dataDelEffAnm() {
    if (field_0x0208 != 0) {
        field_0x0204 += 2;

        if (field_0x0204 >= field_0x0200->getFrameMax())
            field_0x0204 -= field_0x0200->getFrameMax();
        
        field_0x0200->setFrame(field_0x0204);
        field_0x01f4 += 2;

        if (field_0x01f4 >= field_0x01f0->getFrameMax())
            field_0x01f4 -= field_0x01f0->getFrameMax();

        field_0x01f0->setFrame(field_0x01f4);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataDelEffAnm() {
    nofralloc
#include "asm/d/file/d_file_select/dataDelEffAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80184BFC-80184CB4 17F53C 00B8+00 1/1 0/0 0/0 .text            dataCopyEffAnm__14dFile_select_cFv
 */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::dataCopyEffAnm() {
    if (field_0x0209 != 0) {
        field_0x0204 += 2;

        if (field_0x0204 >= field_0x0200->getFrameMax())
            field_0x0204 -= field_0x0200->getFrameMax();

        field_0x0200->setFrame(field_0x0204);
        field_0x01fc += 2;

        if (field_0x01fc >= field_0x01f8->getFrameMax())
            field_0x01fc -= field_0x01f8->getFrameMax();

        field_0x01f8->setFrame(field_0x01fc);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataCopyEffAnm() {
    nofralloc
#include "asm/d/file/d_file_select/dataCopyEffAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80184CB4-80184D4C 17F5F4 0098+00 2/2 0/0 0/0 .text
 * selectDataBaseMoveAnmInitSet__14dFile_select_cFii            */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::selectDataBaseMoveAnmInitSet(int param_0, int param_1) {
    field_0x00a4->getPanePtr()->setAnimation((J2DAnmTransform*)mpAnmBase[0]);
    field_0x00b0 = param_0;
    field_0x00b4 = param_1;
    mpAnmBase[0]->setFrame(field_0x00b0);
    field_0x00a4->getPanePtr()->animationTransform();
    field_0x00b9 = 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::selectDataBaseMoveAnmInitSet(int param_0, int param_1) {
    nofralloc
#include "asm/d/file/d_file_select/selectDataBaseMoveAnmInitSet__14dFile_select_cFii.s"
}
#pragma pop
#endif

/* 80184D4C-80184E38 17F68C 00EC+00 2/2 0/0 0/0 .text selectDataBaseMoveAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
bool dFile_select_c::selectDataBaseMoveAnm() {
    if (field_0x00b0 != field_0x00b4) {
        if (field_0x00b0 < field_0x00b4) {
            field_0x00b0 += 2;

            if (field_0x00b0 > field_0x00b4)
                field_0x00b0 = field_0x00b4;

        } else {
            field_0x00b0 -= 2;

            if (field_0x00b0 < field_0x00b4)
                field_0x00b0 = field_0x00b4;

        }

        mpAnmBase[0]->setFrame(field_0x00b0);
        field_0x00a4->getPanePtr()->animationTransform();
        return false;
    } else {
        field_0x00b0 == 0x21 ? field_0x00b8 = 1 : field_0x00b8 = 0;
        field_0x00b9 = 0;

        field_0x00a4->getPanePtr()->setAnimation((J2DAnmTransform*)0);
        return true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::selectDataBaseMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/selectDataBaseMoveAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80453940-80453944 001F40 0004+00 38/38 0/0 0/0 .sdata2          @4611 */
SECTION_SDATA2 static f32 lit_4611 = 1.0f;

/* 80453944-80453948 001F44 0004+00 19/19 0/0 0/0 .sdata2          @4612 */
SECTION_SDATA2 static f32 lit_4612 = -1.0f;

/* 80184E38-80185040 17F778 0208+00 1/1 0/0 0/0 .text dataSelectInAnmSet__14dFile_select_cFv */
#ifdef NONMATCHING
void dFile_select_c::dataSelectInAnmSet() {
    setSaveData();
    char* card_ptr = &mpMemCard;
    OSTime date_ipl = mpSave->getPlayer().getPlayerStatusB().getDateIpl(); // guess

    // pdVar1 = (dSv_player_c *)dSv_save_c::getPlayer((dSv_save_c *)this_00);
    // pdVar2 = (dSv_player_status_b_c *)dSv_player_c::getPlayerStatusB(pdVar1);
    // uVar4 = dSv_player_status_b_c::getDateIpl(pdVar2);
    mSelectNum = 0;
    for (int i = 0; i < 3; i++) {
        if (field_0x025b[i] == 0) {
            // pdVar1 = (dSv_player_c *)dSv_save_c::getPlayer((dSv_save_c *)this_00);
            // pdVar2 = (dSv_player_status_b_c *)dSv_player_c::getPlayerStatusB(pdVar1);
            // uVar5 = dSv_player_status_b_c::getDateIpl(pdVar2);

            OSTime date_ipl2 = mpSave->getPlayer().getPlayerStatusB().getDateIpl();
            OSTime div_res = date_ipl2 / date_ipl;

            // wrong, fix
            if (div_res < date_ipl) {
                date_ipl = date_ipl2;
                mSelectNum = i;
            }
            // uVar6 = Runtime.PPCEABI.H::__div2i
            //                     ((int)((ulonglong)uVar5 >> 0x20),(int)uVar5,0,DAT_800000f8 >> 2);
            // uVar7 = Runtime.PPCEABI.H::__div2i
            //                     ((int)((ulonglong)uVar4 >> 0x20),(int)uVar4,0,DAT_800000f8 >> 2);
            // if (((uint)((ulonglong)uVar7 >> 0x20) ^ 0x80000000) <
            //     (uint)((uint)uVar7 < (uint)uVar6) + ((uint)((ulonglong)uVar6 >> 0x20) ^ 0x80000000)) {
            //     mSelectNum = (byte)iVar3;
            //     uVar4 = uVar5;
            // }
        }

        card_ptr += 0xa94;

        if (field_0x025b[i] == 0 && mDataNew[i] != 0) {
            field_0x0220[i]->setAlpha(0);
            field_0x022c[i]->setAlpha(0xFF);
        } else {
            field_0x0220[i]->setAlpha(0xFF);
            field_0x022c[i]->setAlpha(0);
        }

        field_0x0188[i]->setAlpha(0);
    }
    mpFileWarning->init();
    selectDataBaseMoveAnmInitSet(1,0x21);
    mDoAud_seStart(Z2SE_SY_FILE_MENU_SLIDE_IN,0,0,0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataSelectInAnmSet() {
    nofralloc
#include "asm/d/file/d_file_select/dataSelectInAnmSet__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80185040-80185230 17F980 01F0+00 1/0 0/0 0/0 .text            dataSelectIn__14dFile_select_cFv */
void dFile_select_c::dataSelectIn() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool selectDataBaseMove = selectDataBaseMoveAnm();

    bool errorMove = true;
    if (field_0x014a || field_0x014b) {
        errorMove = errorMoveAnm();
    }

    bool yesnoMenuMove = true;
    if (field_0x0108 || field_0x0281) {
        yesnoMenuMove = yesnoMenuMoveAnm();
    }

    bool nameMove = true;
    if (field_0x0128 || mFileSelCopyDlst.field_0x08) {
        nameMove = nameMoveAnm();
    }

    bool menuMove = true;
    if (field_0x0360 || field_0x0283) {
        menuMove = menuMoveAnm();
    }

    bool modoruTxtDisp = modoruTxtDispAnm();

    if (headerTxtChange == true && selectDataBaseMove == true && 
                                   errorMove == true && yesnoMenuMove == true && 
                                   nameMove == true && menuMove == true && 
                                   modoruTxtDisp == true) {
        for (int i = 0; i < 3; i++) {
            field_0x00bc[i]->reinit();
        }

        headerTxtSet(0x43,1,0);
        mLastSelectNum = mSelectNum;
        field_0x00bc[mSelectNum]->getPanePtr()->setAnimation((J2DAnmTransform*)mpAnmBase[0]);
        field_0x00e0[mSelectNum] = SelStartFrameTbl[mSelectNum];
        field_0x0188[mSelectNum]->alphaAnimeStart(0);
        ketteiTxtDispAnmInit(1);
        field_0x026f = 2;
    }
}

/* 80185230-801853C4 17FB70 0194+00 1/0 0/0 0/0 .text            dataSelectInit__14dFile_select_cFv
 */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::dataSelectInit() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool alphaAnime = true;
    bool ketteiTxtDisp = true;
    bool check = true;

    if (mSelectNum != 0xFF) {
        alphaAnime = field_0x0188[mSelectNum]->alphaAnime(g_fsHIO.field_0x0006,0,0xFF,1);
        ketteiTxtDisp = ketteiTxtDispAnm();

        if (field_0x00e0[mSelectNum] != SelEndFrameTbl[mSelectNum]) {
            field_0x00e0[mSelectNum] += 2;

            if (field_0x00e0[mSelectNum] > SelEndFrameTbl[mSelectNum])
                field_0x00e0[mSelectNum] = SelEndFrameTbl[mSelectNum];
             
            mpAnmBase[0]->setFrame(field_0x00e0[mSelectNum]);
            field_0x00bc[mSelectNum]->getPanePtr()->animationTransform();
            check = false;
        }
    }

    if (headerTxtChange == true && alphaAnime == true && ketteiTxtDisp == true && check == true) {
        if (mSelectNum != 0xFF) {
            field_0x00bc[mSelectNum]->getPanePtr()->setAnimation((J2DAnmTransform*)0);
            selFileCursorShow();    
        }

        field_0x026f = 3;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataSelectInit() {
    nofralloc
#include "asm/d/file/d_file_select/dataSelectInit__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 801853C4-80185508 17FD04 0144+00 1/0 0/0 0/0 .text            dataSelect__14dFile_select_cFv */
// handles switching between quest logs
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::dataSelect() {
    mStick->checkTrigger();

    // If A or Start was pressed
    if (mDoCPd_c::getTrigA(PAD_1) || mDoCPd_c::getTrigStart(PAD_1)) {
        dataSelectStart(); // run the quest log open process
    } else {
        if (mStick->checkUpTrigger()) {
            // if we're not on the top quest log
            if (mSelectNum != 0) {
                mDoAud_seStart(Z2SE_FILE_SELECT_CURSOR,0,0,0);
                mLastSelectNum = mSelectNum;
                mSelectNum--;
                dataSelectAnmSet(); // run the quest log selection animation
                field_0x026f = 4;
            }
        } else if (mStick->checkDownTrigger()) {
            // if we're not on the bottom quest log
            if (mSelectNum != 2) {
                mDoAud_seStart(Z2SE_FILE_SELECT_CURSOR,0,0,0);
                mLastSelectNum = mSelectNum;
                mSelectNum++;
                dataSelectAnmSet(); // run the quest log selection animation
                field_0x026f = 4;
            }
        } 
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataSelect() {
    nofralloc
#include "asm/d/file/d_file_select/dataSelect__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804506B0-804506B8 000130 0008+00 2/2 0/0 0/0 .sdata           YnSelStartFrameTbl */
SECTION_SDATA static u32 YnSelStartFrameTbl[2] = {
    0x000004E3, 
    0x000004D4,
};

/* 804506B8-804506C0 000138 0008+00 2/2 0/0 0/0 .sdata           YnSelEndFrameTbl */
SECTION_SDATA static u32 YnSelEndFrameTbl[2] = {
    0x000004D4, 
    0x000004E3,
};

/* 804506C0-804506C8 000140 0006+02 4/4 0/0 0/0 .sdata           msgTbl */
SECTION_SDATA static u16 msgTbl[3] = {
    0x0040,
    0x0041,
    0x0042,
};

/* 80453948-8045394C 001F48 0004+00 35/35 0/0 0/0 .sdata2          @4778 */
SECTION_SDATA2 static u8 lit_4778[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80185508-80185994 17FE48 048C+00 1/1 0/0 0/0 .text            dataSelectStart__14dFile_select_cFv
 */
#ifdef NONMATCHING
void dFile_select_c::dataSelectStart() {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataSelectStart() {
    nofralloc
#include "asm/d/file/d_file_select/dataSelectStart__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80185994-80185AAC 1802D4 0118+00 7/7 0/0 0/0 .text
 * selectDataMoveAnmInitSet__14dFile_select_cFii                */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::selectDataMoveAnmInitSet(int param_0, int param_1) {
    field_0x00bc[0]->getPanePtr()->setAnimation((J2DAnmTransform*)mpAnmBase[0]);
    field_0x00bc[1]->getPanePtr()->setAnimation((J2DAnmTransform*)mpAnmBase[0]);
    field_0x00bc[2]->getPanePtr()->setAnimation((J2DAnmTransform*)mpAnmBase[0]);
    mpPane->setAnimation((J2DAnmTransform*)mpAnmBase[0]);
    field_0x00e0[mSelectNum] = param_0;
    field_0x00ec = (s32*)param_1;
    mpAnmBase[0]->setFrame(field_0x00e0[mSelectNum]);
    field_0x00bc[0]->getPanePtr()->animationTransform();
    field_0x00bc[1]->getPanePtr()->animationTransform();
    field_0x00bc[2]->getPanePtr()->animationTransform();
    mpPane->animationTransform();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::selectDataMoveAnmInitSet(int param_0, int param_1) {
    nofralloc
#include "asm/d/file/d_file_select/selectDataMoveAnmInitSet__14dFile_select_cFii.s"
}
#pragma pop
#endif

/* 80185AAC-80185C2C 1803EC 0180+00 8/8 0/0 0/0 .text selectDataMoveAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
bool dFile_select_c::selectDataMoveAnm() {
    if (field_0x00e0[mSelectNum] != field_0x00ec) {
        if (field_0x00e0[mSelectNum] < field_0x00ec) {
            field_0x00e0[mSelectNum] += 2;

            if (field_0x00e0[mSelectNum] > field_0x00ec)
                field_0x00e0[mSelectNum] = field_0x00ec;

        } else {
            field_0x00e0[mSelectNum] -= 2;

            if (field_0x00e0[mSelectNum] < field_0x00ec)
                field_0x00e0[mSelectNum] = field_0x00ec;
        }

        mpAnmBase[0]->setFrame(field_0x00e0[mSelectNum]);

        for (int i = 0; i < 3; i++) {
            field_0x00bc[i]->getPanePtr()->animationTransform();
        }
        mpPane->animationTransform();
    }

    if (field_0x00e0[mSelectNum] == field_0x00ec) {
        for (int i = 0; i < 3; i++) {
            field_0x00bc[i]->getPanePtr()->setAnimation((J2DAnmTransform*)0);
        }
        mpPane->setAnimation((J2DAnmTransform*)0);
        return true;
    } else {
        return false;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::selectDataMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/selectDataMoveAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80185C2C-80185DE0 18056C 01B4+00 1/1 0/0 0/0 .text dataSelectAnmSet__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::dataSelectAnmSet() {
    if (mSelectNum != 0xff) {
        field_0x00bc[mSelectNum]->getPanePtr()->setAnimation((J2DAnmTransform*)mpAnmBase[0]);
        field_0x00e0[mSelectNum] = SelStartFrameTbl[mSelectNum];
        mpAnmBase[0]->setFrame(field_0x00e0[mSelectNum]);
        field_0x00bc[mSelectNum]->getPanePtr()->animationTransform();
        field_0x0188[mSelectNum]->alphaAnimeStart(0);
    }

    if (mLastSelectNum != 0xff) {
        selectWakuAlpahAnmInit(mLastSelectNum,0xff,0,g_fsHIO.field_0x0008);
        field_0x00bc[mLastSelectNum]->getPanePtr()->setAnimation((J2DAnmTransform*)mpAnmBase[1]); // wrong?
        field_0x00e0[mLastSelectNum] = SelEndFrameTbl[mLastSelectNum];
        mpAnmBase[1]->setFrame(field_0x00e0[mLastSelectNum]);
        field_0x00bc[mLastSelectNum]->getPanePtr()->animationTransform();
        field_0x0188[mLastSelectNum]->alphaAnimeStart(0);
        mpCursor1->setAlphaRate(0.0f);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataSelectAnmSet() {
    nofralloc
#include "asm/d/file/d_file_select/dataSelectAnmSet__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80185DE0-80186088 180720 02A8+00 1/0 0/0 0/0 .text dataSelectMoveAnime__14dFile_select_cFv */
#ifdef NONMATCHING
// still alot wrong
void dFile_select_c::dataSelectMoveAnime() {
    int iVar7 = 1;
    int iVar6 = 1;
    bool bVar1 = true;
    if (mLastSelectNum != 0xff) {
        field_0x0188[mLastSelectNum]->alphaAnime(g_fsHIO.field_0x0006,0xff,0,1);
        selectWakuAlpahAnm(mLastSelectNum);

        if (field_0x00e0[mLastSelectNum] != SelStartFrameTbl[mLastSelectNum]) {
            field_0x00e0[mLastSelectNum] = field_0x00e0[mLastSelectNum] - 2;
            
            if (field_0x00e0[mLastSelectNum] < SelStartFrameTbl[mLastSelectNum])
                field_0x00e0[mLastSelectNum] = SelStartFrameTbl[mLastSelectNum];
        
            mpAnmBase[1]->setFrame(field_0x00e0[mLastSelectNum]);
            field_0x00bc[mLastSelectNum]->getPanePtr()->animationTransform();
            bVar1 = false;
        }
    }

    int iVar5 = 1;
    bool bVar2 = true;

    if (mSelectNum != 0xff) {
        field_0x0188[mSelectNum]->alphaAnime(g_fsHIO.field_0x0006,0,0xff,1);

        if (field_0x00e0[mSelectNum] != SelEndFrameTbl[mSelectNum]) {
            field_0x00e0[mSelectNum] = field_0x00e0[mSelectNum] + 2;

            if (SelEndFrameTbl[mSelectNum] < field_0x00e0[mSelectNum])
                field_0x00e0[mSelectNum] = SelEndFrameTbl[mSelectNum];

            mpAnmBase[0]->setFrame(field_0x00e0[mSelectNum]);
            field_0x00bc[mSelectNum]->getPanePtr()->animationTransform();
            bVar2 = false;
        }
    }

    if (iVar7 == 1 && iVar6 == 1 && bVar1 && (iVar5 == 1 && !bVar2)) {
        if (mSelectNum != 0xff) {
            field_0x00bc[mSelectNum]->getPanePtr()->setAnimation((J2DAnmTransform*)0);
            selFileCursorShow();
        }

        if (mLastSelectNum != 0xff) {
            field_0x00bc[mLastSelectNum]->getPanePtr()->setAnimation((J2DAnmTransform*)0);
        }

        field_0x026f = 3;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataSelectMoveAnime() {
    nofralloc
#include "asm/d/file/d_file_select/dataSelectMoveAnime__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80186088-801864DC 1809C8 0454+00 2/2 0/0 0/0 .text            makeRecInfo__14dFile_select_cFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::makeRecInfo(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/makeRecInfo__14dFile_select_cFUc.s"
}
#pragma pop

/* 801864DC-80186638 180E1C 015C+00 1/0 0/0 0/0 .text selectDataOpenMove__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals (s32 -> float cast)
void dFile_select_c::selectDataOpenMove() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool selectDataMove = selectDataMoveAnm();
    bool menuMove = menuMoveAnm();
    bool modoruTxtDisp = modoruTxtDispAnm();
    bool selectWakuAlpah = selectWakuAlpahAnm(mSelectNum);

    if (headerTxtChange == true && selectDataMove == true && menuMove == true && 
        modoruTxtDisp == true && selectWakuAlpah == true) {
        mSelectMenuNum = 1;
        field_0x0340[mSelectMenuNum]->getPanePtr()->setAnimation(field_0x0328);
        field_0x0328->setFrame(MenuSelStartFrameTbl[mSelectMenuNum]);
        field_0x0340[mSelectMenuNum]->getPanePtr()->animationTransform();
        field_0x0340[mSelectMenuNum]->getPanePtr()->setAnimation((J2DAnmTransform*)0);
        menuCursorShow();
        field_0x026f = 8;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::selectDataOpenMove() {
    nofralloc
#include "asm/d/file/d_file_select/selectDataOpenMove__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80186638-801866C8 180F78 0090+00 1/0 0/0 0/0 .text selectDataNameMove__14dFile_select_cFv */
void dFile_select_c::selectDataNameMove() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool fileRecScale = fileRecScaleAnm2();
    bool nameMove = nameMoveAnm();
    bool modoruTxtDisp = modoruTxtDispAnm();

    if (headerTxtChange == true && fileRecScale == true && nameMove == true && modoruTxtDisp == true) {
        field_0x026f = 15;
    }
}

/* 801866C8-80186774 181008 00AC+00 1/0 0/0 0/0 .text selectDataOpenEraseMove__14dFile_select_cFv
 */
void dFile_select_c::selectDataOpenEraseMove() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool selectDataMove = selectDataMoveAnm();
    yesnoMenuMoveAnm();
    bool modoruTxtDisp = modoruTxtDispAnm();
    bool selectWakuAlpah = selectWakuAlpahAnm(mSelectNum);

    if (headerTxtChange == true && selectDataMove == true && modoruTxtDisp == true && selectWakuAlpah == true) {
        field_0x026e = 2;
        yesnoCursorShow();
        field_0x026f = 26;
    }
}

/* 80186774-801868EC 1810B4 0178+00 1/0 0/0 0/0 .text            menuSelect__14dFile_select_cFv */
// Handles selecting between copy / start / delete menus in quest log
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::menuSelect() {
    mStick->checkTrigger();

    // if a was pressed, do the menu selection process
    if (mDoCPd_c::getTrigA(PAD_1)) {
        menuSelectStart();
    } else {
        // if b was pressed, do the menu cancel process
        if (mDoCPd_c::getTrigB(PAD_1)) {
            menuSelectCansel();
        } else {
            if (mStick->checkRightTrigger()) {
                if (field_0x0258[mSelectNum] == 0 && mSelectMenuNum != 0) {
                    mDoAud_seStart(Z2SE_SY_MENU_CURSOR_COMMON,0,0,0);
                    mLastSelectMenuNum = mSelectMenuNum;
                    mSelectMenuNum--;
                    menuSelectAnmSet(); // run the menu selection animation
                    field_0x026f = 9;
                }
            } else if (mStick->checkLeftTrigger()) {
                if (field_0x0258[mSelectNum] == 0 && mSelectMenuNum != 2) {
                    mDoAud_seStart(Z2SE_SY_MENU_CURSOR_COMMON,0,0,0);
                    mLastSelectMenuNum = mSelectMenuNum;
                    mSelectMenuNum++;
                    menuSelectAnmSet(); // run the menu selection animation
                    field_0x026f = 9;
                }
            } 
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::menuSelect() {
    nofralloc
#include "asm/d/file/d_file_select/menuSelect__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 801868EC-80186A80 18122C 0194+00 1/1 0/0 0/0 .text            menuSelectStart__14dFile_select_cFv
 */
// Handles copy / start / delete actions depending on which menu is selected from menuSelect
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::menuSelectStart() {
    mDoAud_seStart(Z2SE_SY_CURSOR_OK,0,0,0);

    if (mSelectMenuNum == 1) {
        dComIfGs_setCardToMemory(&mpMemCard,mSelectNum);
        field_0x0270 = 1;
        field_0x026f = 46;
        dComIfGs_setDataNum(mSelectNum);
    }
    else if (mSelectMenuNum == 0) {
        mpCursor1->setAlphaRate(0.0f);
        yesnoMenuMoveAnmInitSet(0x473,0x47d);
        headerTxtSet(0x49, 0,0);
        field_0x026e = 1;
        field_0x026f = 12;
    }
    else if (mSelectMenuNum == 2) {
        field_0x026a = mSelectNum;
        menuMoveAnmInitSet(0x329,799);
        headerTxtSet(0x44,0,0);
        mpCursor1->setAlphaRate(0.0f);
        selectDataMoveAnmInitSet(SelOpenEndFrameTbl[mSelectNum],SelOpenStartFrameTbl[mSelectNum]);
        selectWakuAlpahAnmInit(mSelectNum,0,255,g_fsHIO.field_0x0008);
        copySelMoveAnmInitSet(0xd1f,0xd29);
        field_0x026e = 0;
        field_0x026f = 11;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::menuSelectStart() {
    nofralloc
#include "asm/d/file/d_file_select/menuSelectStart__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80186A80-80186B48 1813C0 00C8+00 1/1 0/0 0/0 .text menuSelectCansel__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::menuSelectCansel() {
    mDoAud_seStart(Z2SE_SY_CURSOR_CANCEL,0,0,0);
    int idx = mSelectNum;
    selectDataMoveAnmInitSet(SelOpenEndFrameTbl[idx],SelOpenStartFrameTbl[idx]);
    menuMoveAnmInitSet(0x329,799);
    modoruTxtDispAnmInit(0);
    headerTxtSet(0x43,1,0);
    mpCursor1->setAlphaRate(0.0);
    field_0x026f = 0xd;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::menuSelectCansel() {
    nofralloc
#include "asm/d/file/d_file_select/menuSelectCansel__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80186B48-80186C84 181488 013C+00 8/8 0/0 0/0 .text menuMoveAnmInitSet__14dFile_select_cFii */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::menuMoveAnmInitSet(int param_0, int param_1) {
    if (param_0 == 799) {
        field_0x0283 = true;

        for (int i = 0; i < 3; i++) {
            if (i == mSelectMenuNum) {
                static_cast<J2DTextBox*>((&mpPaneMgr2)[i]->getPanePtr())->setWhite(JUtility::TColor(255,255,255,255));
            } else {
                static_cast<J2DTextBox*>((&mpPaneMgr2)[i]->getPanePtr())->setWhite(JUtility::TColor(150,150,150,255));
            }
        }
    }

    field_0x0118->setAnimation(field_0x0328);
    field_0x0358 = param_0;
    field_0x035c = param_1;
    field_0x0328->setFrame(field_0x0358);
    field_0x0118->animationTransform();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::menuMoveAnmInitSet(int param_0, int param_1) {
    nofralloc
#include "asm/d/file/d_file_select/menuMoveAnmInitSet__14dFile_select_cFii.s"
}
#pragma pop
#endif

// Auto generated from the above function. Delete later
/* 80186C84-80186CAC 1815C4 0028+00 0/0 1/0 0/0 .text setWhite__10J2DTextBoxFQ28JUtility6TColor */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J2DTextBox::setWhite(JUtility::TColor param_0) {
extern "C" asm void setWhite__10J2DTextBoxFQ28JUtility6TColor() {
    nofralloc
#include "asm/d/file/d_file_select/setWhite__10J2DTextBoxFQ28JUtility6TColor.s"
}
#pragma pop

/* 80186CAC-80186E14 1815EC 0168+00 9/9 0/0 0/0 .text            menuMoveAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
bool dFile_select_c::menuMoveAnm() {
    if (field_0x0358 != field_0x035c) {
        if (field_0x0358 < field_0x035c){
            field_0x0358 += 2;

            if (field_0x0358 > field_0x035c)
                field_0x0358 = field_0x035c;
        } else {
            field_0x0358 -= 2;

            if (field_0x0358 < field_0x035c)
                field_0x0358 = field_0x035c;
        }    

        field_0x0328->setFrame(field_0x0358);
        field_0x0118->animationTransform();
        return false;
    } else {
        field_0x0118->setAnimation((J2DAnmTransform*)0);
        if (field_0x035c == 0x0329) {
            field_0x0360 = true;
            field_0x0283 = false;
        } else {
            field_0x0360 = false;

            if (mSelectMenuNum != 0xFF) {
                (&mpPaneAlpha1)[mSelectMenuNum]->setAlpha(0);
                (&mpPaneAlpha2)[mSelectMenuNum]->setAlpha(0);
                (&mpPaneAlpha3)[mSelectMenuNum]->setAlpha(0);
            }
        }

        return true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::menuMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/menuMoveAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80186E14-80186F98 181754 0184+00 1/1 0/0 0/0 .text menuSelectAnmSet__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::menuSelectAnmSet() {
    if (mSelectMenuNum != 0xFF) {
        (&field_0x0340)[mSelectMenuNum]->getPanePtr()->setAnimation(field_0x0328);
        field_0x034c[mSelectMenuNum] = MenuSelEndFrameTbl[mSelectMenuNum];
        field_0x0328->setFrame(field_0x034c[mSelectMenuNum]);
        (&field_0x0340)[mSelectMenuNum]->getPanePtr()->animationTransform();
    }

    if (mLastSelectMenuNum != 0xFF) {
        (&field_0x0340)[mLastSelectMenuNum]->getPanePtr()->setAnimation(field_0x032c);
        field_0x034c[mLastSelectMenuNum] = MenuSelStartFrameTbl[mLastSelectMenuNum];
        field_0x032c->setFrame(field_0x034c[mLastSelectMenuNum]);
        (&field_0x0340)[mLastSelectMenuNum]->getPanePtr()->animationTransform();
        menuWakuAlpahAnmInit(mLastSelectMenuNum,0xFF,0,g_fsHIO.field_0x0008);
        mpCursor1->setAlphaRate(0.0f);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::menuSelectAnmSet() {
    nofralloc
#include "asm/d/file/d_file_select/menuSelectAnmSet__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80186F98-8018721C 1818D8 0284+00 1/0 0/0 0/0 .text menuSelectMoveAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::menuSelectMoveAnm() {
    bool tmp1 = true;
    if (mSelectMenuNum != 0xFF && field_0x034c[mSelectMenuNum] != MenuSelStartFrameTbl[mSelectMenuNum]) {
        if (field_0x034c[mSelectMenuNum] > MenuSelStartFrameTbl[mSelectMenuNum]) {
            field_0x034c[mSelectMenuNum] -= 2;
            
            if (field_0x034c[mSelectMenuNum] < MenuSelStartFrameTbl[mSelectMenuNum])
                field_0x034c[mSelectMenuNum] = MenuSelStartFrameTbl[mSelectMenuNum];
        } else {
            field_0x034c[mSelectMenuNum] += 2;

            if (field_0x034c[mSelectMenuNum] > MenuSelStartFrameTbl[mSelectMenuNum])
                field_0x034c[mSelectMenuNum] = MenuSelStartFrameTbl[mSelectMenuNum];
        }

        field_0x0328->setFrame(field_0x034c[mSelectMenuNum]);
        (&field_0x0340)[mSelectMenuNum]->getPanePtr()->animationTransform();
        tmp1 = false;
    }   

  bool tmp2 = true;
  bool tmp3 = true;

  if (mLastSelectMenuNum != 0xFF) {
    if (field_0x034c[mLastSelectMenuNum] != MenuSelEndFrameTbl[mLastSelectMenuNum]) {
      if (field_0x034c[mLastSelectMenuNum] < MenuSelEndFrameTbl[mLastSelectMenuNum]) {
        field_0x034c[mLastSelectMenuNum] += 2;
             
        if (field_0x034c[mLastSelectMenuNum] > MenuSelEndFrameTbl[mLastSelectMenuNum])
            field_0x034c[mLastSelectMenuNum] = MenuSelEndFrameTbl[mLastSelectMenuNum];

      } else {
        field_0x034c[mLastSelectMenuNum] -= 2;
        
        if (field_0x034c[mLastSelectMenuNum] < MenuSelEndFrameTbl[mLastSelectMenuNum])
            field_0x034c[mLastSelectMenuNum] = MenuSelEndFrameTbl[mLastSelectMenuNum];
      }
      field_0x032c->setFrame(field_0x034c[mLastSelectMenuNum]);
      (&field_0x0340)[mLastSelectMenuNum]->getPanePtr()->animationTransform();
      tmp2 = false;
    }

    tmp3 = menuWakuAlpahAnm(mLastSelectMenuNum);
  }

  if (tmp1 == true && tmp2 == true && tmp3 == true) {
    if (mSelectMenuNum != 0xFF) {
      (&field_0x0340)[mSelectMenuNum]->getPanePtr()->setAnimation((J2DAnmTransform*)0);
      menuCursorShow();
    }

    if (mLastSelectMenuNum != 0xFF) {
      (&field_0x0340)[mLastSelectMenuNum]->getPanePtr()->setAnimation((J2DAnmTransform*)0);
    }

    field_0x026f = 8;
  }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::menuSelectMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/menuSelectMoveAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 8018721C-801872C4 181B5C 00A8+00 1/0 0/0 0/0 .text            ToNameMove__14dFile_select_cFv */
void dFile_select_c::ToNameMove() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool nameMove = nameMoveAnm();
    bool menuMove = menuMoveAnm();
    bool fileRecScale = fileRecScaleAnm();
    bool fileInfoScale = fileInfoScaleAnm();

    if (headerTxtChange == true && nameMove == true && menuMove == true && 
        (fileRecScale == true && fileInfoScale == true)) {
        field_0x026f = 15;
    }
}

/* 801872C4-80187384 181C04 00C0+00 1/0 0/0 0/0 .text            ToNameMove2__14dFile_select_cFv */
void dFile_select_c::ToNameMove2() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool nameMove = nameMoveAnm();
    bool errorMove = errorMoveAnm();
    bool yesnoMenuMove = yesnoMenuMoveAnm();
    bool ketteiTxtDisp = ketteiTxtDispAnm();
    bool returnTxtDisp = modoruTxtDispAnm();

    if (headerTxtChange == true && nameMove == true && errorMove == true && 
        (yesnoMenuMove == true && ketteiTxtDisp == true && returnTxtDisp == true)) {
        field_0x026f = 15;
    }
}

/* 80187384-801873BC 181CC4 0038+00 1/0 0/0 0/0 .text            nameInputWait__14dFile_select_cFv
 */
void dFile_select_c::nameInputWait() {
    mpName->showIcon();
    field_0x026f = 16;
}


/* 801873BC-801874F8 181CFC 013C+00 1/0 0/0 0/0 .text            nameInput__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::nameInput() {
    mpName->_move();
    if (mpName->getCurPos() == 0) {
        if (field_0x024c != 0) {
            modoruTxtChange(0);
        }
    } else if (field_0x024c == 0) {
        modoruTxtChange(1);
    }

    int inputEnd = mpName->isInputEnd();

    switch(mpName->isInputEnd()) {
    case 1:
        if (dComIfGs_getNoFile() == 1) {
            field_0x021e = 0;
            field_0x026f = 0;
            field_0x0271 = 0;
        } else {
            headerTxtSet(0x43,1,0);
            fileRecScaleAnmInitSet2(0.0f,1.0f);
            nameMoveAnmInitSet(0xd29,0xd1f);
            modoruTxtDispAnmInit(0);
            field_0x026f = 14;
        }
        break;
    case 2:
        dComIfGs_setPlayerName(mpName->getInputStrPtr());
        mpName->hideIcon();
        field_0x020a = 15;
        field_0x026f = 17;
            
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::nameInput() {
    nofralloc
#include "asm/d/file/d_file_select/nameInput__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 801874F8-8018759C 181E38 00A4+00 1/0 0/0 0/0 .text nameToDataSelectMove__14dFile_select_cFv */
void dFile_select_c::nameToDataSelectMove() {
    bool headerTxtChange =  headerTxtChangeAnm();
    bool fileResScal = fileRecScaleAnm2();
    bool nameMove = nameMoveAnm();
    bool modoruTxtDisp = modoruTxtDispAnm();

    if (headerTxtChange == true && fileResScal == true && nameMove == true && modoruTxtDisp == true) {
        modoruTxtChange(0);
        selFileCursorShow();
        field_0x026f = 3;
    }
}

/* ############################################################################################## */
/* 8045394C-80453950 001F4C 0004+00 4/4 0/0 0/0 .sdata2          @5472 */
SECTION_SDATA2 static f32 lit_5472 = 255.0f;

/* 80453950-80453958 001F50 0004+04 4/4 0/0 0/0 .sdata2          @5473 */
SECTION_SDATA2 static f32 lit_5473[1 + 1 /* padding */] = {
    15.0f,
    /* padding */
    0.0f,
};

/* 80453958-80453960 001F58 0008+00 4/4 0/0 0/0 .sdata2          @5475 */
SECTION_SDATA2 static f64 lit_5475 = 4503599627370496.0 /* cast u32 to float */;

/* 8018759C-801876A0 181EDC 0104+00 1/0 0/0 0/0 .text            nameInputFade__14dFile_select_cFv
 */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::nameInputFade() {
    char name[32];
    field_0x020a--;
    u8 alpha = (1.0f - (field_0x020a / 15.0f)) * 255.0f;
    field_0x2378->setAlpha(alpha);

    if (field_0x020a == 0) {
        headerTxtSet(900,1,1);
        dMeter2Info_getString(899,name,0);
        dComIfGs_setHorseName(name);
        mpName->setNextNameStr(dComIfGs_getHorseName());
        mpName->initial();
        field_0x020a = 15;
        field_0x026f = 18;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::nameInputFade() {
    nofralloc
#include "asm/d/file/d_file_select/nameInputFade__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 801876A0-8018774C 181FE0 00AC+00 1/0 0/0 0/0 .text            nameInput2Move__14dFile_select_cFv
 */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::nameInput2Move() {
    if (mDoRst::isReset() == 0) {
        field_0x020a--;

        u8 alpha = (field_0x020a / 15.0f) * 255.0f;
        field_0x2378->setAlpha(alpha);

        if (field_0x020a == 0) {
            mpName->showIcon();
            field_0x026f = 19;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::nameInput2Move() {
    nofralloc
#include "asm/d/file/d_file_select/nameInput2Move__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 8018774C-80187824 18208C 00D8+00 1/0 0/0 0/0 .text            nameInput2__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::nameInput2() {
    mpName->_move();
    if (mpName->getCurPos() == 0) {
        if (field_0x024c != 0) {
            modoruTxtChange(0);
        }
    } else if (field_0x024c == 0) {
        modoruTxtChange(1);
    }

    switch(mpName->isInputEnd()) {
    case 1:
        mpName->hideIcon();
        field_0x020a = 0xf;
        field_0x026f = 20;
        break;
    case 2:
        dComIfGs_setHorseName(mpName->getInputStrPtr());
        mSelectEnd = true;
        field_0x026f = 46;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::nameInput2() {
    nofralloc
#include "asm/d/file/d_file_select/nameInput2__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80187824-80187908 182164 00E4+00 1/0 0/0 0/0 .text backNameInputMove0__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::backNameInputMove0() {
    field_0x020a--;
    u8 alpha = (1.0f - (field_0x020a / 15.0f)) * 255.0f;
    field_0x2378->setAlpha(alpha);

    if (field_0x020a == 0) {
        headerTxtSet(901,1,1);
        mpName->setNextNameStr(dComIfGs_getPlayerName());
        mpName->initial();
        modoruTxtChange(1);
        field_0x020a = 15;
        field_0x026f = 21;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::backNameInputMove0() {
    nofralloc
#include "asm/d/file/d_file_select/backNameInputMove0__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80187908-801879B8 182248 00B0+00 1/0 0/0 0/0 .text backNameInputMove__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::backNameInputMove() {
    if (mDoRst::isReset() == 0) {
        field_0x020a--;

        u8 alpha = (field_0x020a / 15.0f) * 255.0f;
        field_0x2378->setAlpha(alpha);

        if (field_0x020a == 0) {
            modoruTxtChange(1);
            field_0x026f = 15;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::backNameInputMove() {
    nofralloc
#include "asm/d/file/d_file_select/backNameInputMove__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 801879B8-80187ADC 1822F8 0124+00 1/0 0/0 0/0 .text            ToCopyPaneMove__14dFile_select_cFv
 */
#ifdef NONMATCHING
// unfinished
void dFile_select_c::ToCopyPaneMove() {
    cPaneMgr* pPane;
    
    bool headerTxtChange = headerTxtChangeAnm();
    bool menuMove = menuMoveAnm();
    bool selectDataMove = selectDataMoveAnm();
    bool selectWakuAlpha = selectWakuAlpahAnm(mSelectNum);
    bool nameMove = nameMoveAnm();

    if (headerTxtChange == true && menuMove == true && selectDataMove == true && selectWakuAlpha == true && nameMove == true) {
        field_0x026b = 0;
        Vec vec = pPane->getGlobalVtxCenter();

    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::ToCopyPaneMove() {
    nofralloc
#include "asm/d/file/d_file_select/ToCopyPaneMove__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80187ADC-80187B44 18241C 0068+00 1/0 0/0 0/0 .text            ToErasePaneMove__14dFile_select_cFv
 */
void dFile_select_c::ToErasePaneMove() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool yesnoMenuMove = yesnoMenuMoveAnm();

    if (headerTxtChange == true && yesnoMenuMove == true) {
        yesnoCursorShow();
        field_0x026f = 26;
    }
}

/* 80187B44-80187BE8 182484 00A4+00 1/0 0/0 0/0 .text            backSelectMove__14dFile_select_cFv
 */
void dFile_select_c::backSelectMove() {
    bool headerTxtChange = headerTxtChangeAnm();
    bool selectDataMove = selectDataMoveAnm();
    bool menuMove = menuMoveAnm();
    bool modoruTxtDisp = modoruTxtDispAnm();

    if (headerTxtChange == true && selectDataMove == true && menuMove == true && modoruTxtDisp == true) {
        selFileCursorShow();
        mpFileSelect3d->drawOff();
        field_0x026f = 3;
    }
}

/* ############################################################################################## */
/* 80453960-80453964 001F60 0004+00 1/1 0/0 0/0 .sdata2          @5614 */
SECTION_SDATA2 static f32 lit_5614 = 99.0f;

/* 80453964-80453968 001F64 0004+00 1/1 0/0 0/0 .sdata2          @5615 */
SECTION_SDATA2 static f32 lit_5615 = 109.0f;

/* 80187BE8-80187DB8 182528 01D0+00 6/6 0/0 0/0 .text copySelMoveAnmInitSet__14dFile_select_cFii
 */
#ifdef NONMATCHING
// matches with literals
void dFile_select_c::copySelMoveAnmInitSet(int param_0, int param_1) {
    if (param_0 == 0xd1f) {
        field_0x02c0->setAlpha(0xff);
        field_0x02c8->setAlpha(0xff);
        field_0x02d0->setAlpha(0xff);
        field_0x02c4->setAlpha(0);
        field_0x02cc->setAlpha(0);
        field_0x02d4->setAlpha(0);

        field_0x02a4[0]->getPanePtr()->setAnimation(field_0x029c);
        field_0x029c->setFrame(99.0f);
        field_0x02a4[0]->getPanePtr()->animationTransform();
        field_0x02a4[0]->getPanePtr()->setAnimation((J2DAnmTransform*)0);

        field_0x02a4[1]->getPanePtr()->setAnimation(field_0x02a0);
        field_0x02a0->setFrame(109.0f);
        field_0x02a4[1]->getPanePtr()->animationTransform();
        field_0x02a4[1]->getPanePtr()->setAnimation((J2DAnmTransform*)0);
        
        setSaveDataForCopySel();
        mFileSelCopyDlst.field_0x08 = true;
    }

    field_0x011c->setAnimation(mpAnmBase[4]);
    field_0x0120 = param_0;
    field_0x0124 = param_1;
    mpAnmBase[4]->setFrame(field_0x0120);
    field_0x011c->animationTransform();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copySelMoveAnmInitSet(int param_0, int param_1) {
    nofralloc
#include "asm/d/file/d_file_select/copySelMoveAnmInitSet__14dFile_select_cFii.s"
}
#pragma pop
#endif

/* 80187DB8-80187ED4 1826F8 011C+00 1/1 0/0 0/0 .text setSaveDataForCopySel__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::setSaveDataForCopySel() {
    nofralloc
#include "asm/d/file/d_file_select/setSaveDataForCopySel__14dFile_select_cFv.s"
}
#pragma pop

/* 80187ED4-8018801C 182814 0148+00 1/0 0/0 0/0 .text copyDataToSelect__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyDataToSelect() {
    nofralloc
#include "asm/d/file/d_file_select/copyDataToSelect__14dFile_select_cFv.s"
}
#pragma pop

/* 8018801C-80188234 18295C 0218+00 1/1 0/0 0/0 .text copyDataToSelectStart__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyDataToSelectStart() {
    nofralloc
#include "asm/d/file/d_file_select/copyDataToSelectStart__14dFile_select_cFv.s"
}
#pragma pop

/* 80188234-8018832C 182B74 00F8+00 1/1 0/0 0/0 .text copyDataToSelectCansel__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyDataToSelectCansel() {
    nofralloc
#include "asm/d/file/d_file_select/copyDataToSelectCansel__14dFile_select_cFv.s"
}
#pragma pop

/* 8018832C-801884D0 182C6C 01A4+00 1/1 0/0 0/0 .text
 * copyDataToSelectMoveAnmSet__14dFile_select_cFv               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyDataToSelectMoveAnmSet() {
    nofralloc
#include "asm/d/file/d_file_select/copyDataToSelectMoveAnmSet__14dFile_select_cFv.s"
}
#pragma pop

/* 801884D0-80188834 182E10 0364+00 1/0 0/0 0/0 .text copyDataToSelectMoveAnm__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyDataToSelectMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/copyDataToSelectMoveAnm__14dFile_select_cFv.s"
}
#pragma pop

/* 80188834-80188878 183174 0044+00 1/1 0/0 0/0 .text
 * copySelectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copySelectWakuAlpahAnmInit(u8 param_0, u8 param_1, u8 param_2,
                                                    u8 param_3) {
    nofralloc
#include "asm/d/file/d_file_select/copySelectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc.s"
}
#pragma pop

/* 80188878-80188950 1831B8 00D8+00 1/1 0/0 0/0 .text copySelectWakuAlpahAnm__14dFile_select_cFUc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::copySelectWakuAlpahAnm(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/copySelectWakuAlpahAnm__14dFile_select_cFUc.s"
}
#pragma pop

/* 80188950-80188994 183290 0044+00 1/1 0/0 0/0 .text            getCptoNum__14dFile_select_cFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::getCptoNum(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/getCptoNum__14dFile_select_cFUc.s"
}
#pragma pop

/* 80188994-80188B54 1832D4 01C0+00 1/0 0/0 0/0 .text            copyToSelBack__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyToSelBack() {
    nofralloc
#include "asm/d/file/d_file_select/copyToSelBack__14dFile_select_cFv.s"
}
#pragma pop

/* 80188B54-80188BBC 183494 0068+00 1/0 0/0 0/0 .text copyToSelPaneMove__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyToSelPaneMove() {
    nofralloc
#include "asm/d/file/d_file_select/copyToSelPaneMove__14dFile_select_cFv.s"
}
#pragma pop

/* 80188BBC-80188D38 1834FC 017C+00 14/14 0/0 0/0 .text
 * yesnoMenuMoveAnmInitSet__14dFile_select_cFii                 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesnoMenuMoveAnmInitSet(int param_0, int param_1) {
    nofralloc
#include "asm/d/file/d_file_select/yesnoMenuMoveAnmInitSet__14dFile_select_cFii.s"
}
#pragma pop

/* 80188D38-80188ED0 183678 0198+00 15/15 0/0 0/0 .text yesnoMenuMoveAnm__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::yesnoMenuMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/yesnoMenuMoveAnm__14dFile_select_cFv.s"
}
#pragma pop

/* 80188ED0-8018912C 183810 025C+00 3/3 0/0 0/0 .text yesnoSelectMoveAnm__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesnoSelectMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/yesnoSelectMoveAnm__14dFile_select_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453968-8045396C 001F68 0004+00 6/6 0/0 0/0 .sdata2          @6069 */
SECTION_SDATA2 static f32 lit_6069 = 24.0f / 25.0f;

/* 8045396C-80453970 001F6C 0004+00 3/3 0/0 0/0 .sdata2          @6070 */
SECTION_SDATA2 static f32 lit_6070 = 21.0f / 25.0f;

/* 80453970-80453974 001F70 0004+00 3/3 0/0 0/0 .sdata2          @6071 */
SECTION_SDATA2 static f32 lit_6071 = 3.0f / 50.0f;

/* 8018912C-8018929C 183A6C 0170+00 9/9 0/0 0/0 .text            yesnoCursorShow__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesnoCursorShow() {
    nofralloc
#include "asm/d/file/d_file_select/yesnoCursorShow__14dFile_select_cFv.s"
}
#pragma pop

/* 8018929C-801893E4 183BDC 0148+00 1/0 0/0 0/0 .text            YesNoSelect__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::YesNoSelect() {
    nofralloc
#include "asm/d/file/d_file_select/YesNoSelect__14dFile_select_cFv.s"
}
#pragma pop

/* 801893E4-8018978C 183D24 03A8+00 1/1 0/0 0/0 .text yesNoSelectStart__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesNoSelectStart() {
    nofralloc
#include "asm/d/file/d_file_select/yesNoSelectStart__14dFile_select_cFv.s"
}
#pragma pop

/* 8018978C-80189904 1840CC 0178+00 3/3 0/0 0/0 .text yesnoSelectAnmSet__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesnoSelectAnmSet() {
    nofralloc
#include "asm/d/file/d_file_select/yesnoSelectAnmSet__14dFile_select_cFv.s"
}
#pragma pop

/* 80189904-80189A24 184244 0120+00 2/2 0/0 0/0 .text yesnoCancelAnmSet__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesnoCancelAnmSet() {
    nofralloc
#include "asm/d/file/d_file_select/yesnoCancelAnmSet__14dFile_select_cFv.s"
}
#pragma pop

/* 80189A24-80189BA8 184364 0184+00 1/0 0/0 0/0 .text            YesNoCancelMove__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::YesNoCancelMove() {
    nofralloc
#include "asm/d/file/d_file_select/YesNoCancelMove__14dFile_select_cFv.s"
}
#pragma pop

/* 80189BA8-80189C14 1844E8 006C+00 1/0 0/0 0/0 .text yesNoCursorMoveAnm__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesNoCursorMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/yesNoCursorMoveAnm__14dFile_select_cFv.s"
}
#pragma pop

/* 80189C14-80189E28 184554 0214+00 1/0 0/0 0/0 .text CmdExecPaneMove0__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::CmdExecPaneMove0() {
    nofralloc
#include "asm/d/file/d_file_select/CmdExecPaneMove0__14dFile_select_cFv.s"
}
#pragma pop

/* 80189E28-80189F68 184768 0140+00 1/0 0/0 0/0 .text            CommandExec__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::CommandExec() {
    nofralloc
#include "asm/d/file/d_file_select/CommandExec__14dFile_select_cFv.s"
}
#pragma pop

/* 80189F68-80189FFC 1848A8 0094+00 1/0 0/0 0/0 .text            DataEraseWait__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::DataEraseWait() {
    nofralloc
#include "asm/d/file/d_file_select/DataEraseWait__14dFile_select_cFv.s"
}
#pragma pop

/* 80189FFC-8018A194 18493C 0198+00 1/0 0/0 0/0 .text            DataEraseWait2__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::DataEraseWait2() {
    nofralloc
#include "asm/d/file/d_file_select/DataEraseWait2__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A194-8018A2DC 184AD4 0148+00 1/0 0/0 0/0 .text            ErasePaneMoveOk__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::ErasePaneMoveOk() {
    nofralloc
#include "asm/d/file/d_file_select/ErasePaneMoveOk__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A2DC-8018A3B0 184C1C 00D4+00 1/0 0/0 0/0 .text ErasePaneMoveOk2__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::ErasePaneMoveOk2() {
    nofralloc
#include "asm/d/file/d_file_select/ErasePaneMoveOk2__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A3B0-8018A444 184CF0 0094+00 1/0 0/0 0/0 .text eraseEndBackSelectWait__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::eraseEndBackSelectWait() {
    nofralloc
#include "asm/d/file/d_file_select/eraseEndBackSelectWait__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A444-8018A4D0 184D84 008C+00 1/0 0/0 0/0 .text eraseEndBackSelect__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::eraseEndBackSelect() {
    nofralloc
#include "asm/d/file/d_file_select/eraseEndBackSelect__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A4D0-8018A564 184E10 0094+00 1/0 0/0 0/0 .text            DataCopyWait__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::DataCopyWait() {
    nofralloc
#include "asm/d/file/d_file_select/DataCopyWait__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A564-8018A6F8 184EA4 0194+00 1/0 0/0 0/0 .text            DataCopyWait2__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::DataCopyWait2() {
    nofralloc
#include "asm/d/file/d_file_select/DataCopyWait2__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A6F8-8018A868 185038 0170+00 1/0 0/0 0/0 .text            copyPaneMoveOk__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyPaneMoveOk() {
    nofralloc
#include "asm/d/file/d_file_select/copyPaneMoveOk__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A868-8018A960 1851A8 00F8+00 1/0 0/0 0/0 .text            copyPaneMoveOk2__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::copyPaneMoveOk2() {
    nofralloc
#include "asm/d/file/d_file_select/copyPaneMoveOk2__14dFile_select_cFv.s"
}
#pragma pop

/* 8018A960-8018AAC4 1852A0 0164+00 1/0 0/0 0/0 .text ErrorMsgPaneMove__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::ErrorMsgPaneMove() {
    nofralloc
#include "asm/d/file/d_file_select/ErrorMsgPaneMove__14dFile_select_cFv.s"
}
#pragma pop

/* 8018AAC4-8018AC3C 185404 0178+00 1/0 0/0 0/0 .text backDatSelPaneMove__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::backDatSelPaneMove() {
    nofralloc
#include "asm/d/file/d_file_select/backDatSelPaneMove__14dFile_select_cFv.s"
}
#pragma pop

/* 8018AC3C-8018AD38 18557C 00FC+00 1/0 0/0 0/0 .text            backDatSelWait__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::backDatSelWait() {
    nofralloc
#include "asm/d/file/d_file_select/backDatSelWait__14dFile_select_cFv.s"
}
#pragma pop

/* 8018AD38-8018AD9C 185678 0064+00 1/0 0/0 0/0 .text            backDatSelWait2__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::backDatSelWait2() {
    nofralloc
#include "asm/d/file/d_file_select/backDatSelWait2__14dFile_select_cFv.s"
}
#pragma pop

/* 8018AD9C-8018ADA0 1856DC 0004+00 1/0 0/0 0/0 .text            nextModeWait__14dFile_select_cFv */
void dFile_select_c::nextModeWait() {
    /* empty function */
}

/* ############################################################################################## */
/* 80453974-80453978 001F74 0004+00 1/1 0/0 0/0 .sdata2          @6867 */
SECTION_SDATA2 static f32 lit_6867 = 24.0f;

/* 80453978-8045397C 001F78 0004+00 1/1 0/0 0/0 .sdata2          @6868 */
SECTION_SDATA2 static f32 lit_6868 = 20.0f;

/* 8045397C-80453980 001F7C 0004+00 1/1 0/0 0/0 .sdata2          @6869 */
SECTION_SDATA2 static f32 lit_6869 = 440.0f;

/* 80453980-80453984 001F80 0004+00 1/1 0/0 0/0 .sdata2          @6870 */
SECTION_SDATA2 static f32 lit_6870 = 198.0f;

/* 80453984-80453988 001F84 0004+00 1/1 0/0 0/0 .sdata2          @6871 */
SECTION_SDATA2 static f32 lit_6871 = 21.0f;

/* 80453988-8045398C 001F88 0004+00 3/3 0/0 0/0 .sdata2          @6872 */
SECTION_SDATA2 static f32 lit_6872 = 47.0f / 50.0f;

/* 8045398C-80453990 001F8C 0004+00 3/3 0/0 0/0 .sdata2          @6873 */
SECTION_SDATA2 static f32 lit_6873 = 3.0f / 100.0f;

/* 80453990-80453994 001F90 0004+00 3/3 0/0 0/0 .sdata2          @6874 */
SECTION_SDATA2 static f32 lit_6874 = 7.0f / 10.0f;

/* 80453994-80453998 001F94 0004+00 1/1 0/0 0/0 .sdata2          @6875 */
SECTION_SDATA2 static f32 lit_6875 = 238.0f;

/* 80453998-8045399C 001F98 0004+00 1/1 0/0 0/0 .sdata2          @6876 */
SECTION_SDATA2 static f32 lit_6876 = 43.0f;

/* 8045399C-804539A0 001F9C 0004+00 1/1 0/0 0/0 .sdata2          @6877 */
SECTION_SDATA2 static f32 lit_6877 = 712.0f;

/* 804539A0-804539A4 001FA0 0004+00 1/1 0/0 0/0 .sdata2          @6878 */
SECTION_SDATA2 static f32 lit_6878 = 130.0f;

/* 804539A4-804539A8 001FA4 0004+00 3/3 0/0 0/0 .sdata2          @6879 */
SECTION_SDATA2 static f32 lit_6879 = 608.0f;

/* 804539A8-804539AC 001FA8 0004+00 3/3 0/0 0/0 .sdata2          @6880 */
SECTION_SDATA2 static f32 lit_6880 = 448.0f;

/* 8018ADA0-8018BEE0 1856E0 1140+00 1/1 0/0 0/0 .text            screenSet__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::screenSet() {
    nofralloc
#include "asm/d/file/d_file_select/screenSet__14dFile_select_cFv.s"
}
#pragma pop

/* 8018BEE0-8018BF28 186820 0048+00 0/0 1/0 0/0 .text
 * setBlackWhite__10J2DPictureFQ28JUtility6TColorQ28JUtility6TColor */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool J2DPicture::setBlackWhite(JUtility::TColor param_0, JUtility::TColor param_1) {
    nofralloc
#include "asm/d/file/d_file_select/setBlackWhite__10J2DPictureFQ28JUtility6TColorQ28JUtility6TColor.s"
}
#pragma pop

/* 8018BF28-8018BF2C 186868 0004+00 0/0 4/0 0/0 .text
 * setAnimation__7J2DPaneFP19J2DAnmTextureSRTKey                */
// void J2DPane::setAnimation(J2DAnmTextureSRTKey* param_0) {
extern "C" void setAnimation__7J2DPaneFP19J2DAnmTextureSRTKey() {
    /* empty function */
}

/* 8018BF2C-8018C524 18686C 05F8+00 1/1 0/0 0/0 .text screenSetCopySel__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::screenSetCopySel() {
    nofralloc
#include "asm/d/file/d_file_select/screenSetCopySel__14dFile_select_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804506C8-804506CC 000148 0002+02 1/1 0/0 0/0 .sdata           l_msgNum2$7002 */
SECTION_SDATA static u8 l_msgNum2[2 + 2 /* padding */] = {
    0x08,
    0x07,
    /* padding */
    0x00,
    0x00,
};

/* 8018C524-8018C8F4 186E64 03D0+00 1/1 0/0 0/0 .text            screenSetYesNo__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::screenSetYesNo() {
    nofralloc
#include "asm/d/file/d_file_select/screenSetYesNo__14dFile_select_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804506CC-804506D0 00014C 0003+01 1/1 0/0 0/0 .sdata           l_msgNum$7082 */
SECTION_SDATA static u8 l_msgNum[3 + 1 /* padding */] = {
    0x57,
    0x58,
    0x56,
    /* padding */
    0x00,
};

/* 804539AC-804539B0 001FAC 0004+00 1/1 0/0 0/0 .sdata2          @7146 */
SECTION_SDATA2 static f32 lit_7146 = 799.0f;

/* 8018C8F4-8018CCD0 187234 03DC+00 1/1 0/0 0/0 .text            screenSet3Menu__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::screenSet3Menu() {
    nofralloc
#include "asm/d/file/d_file_select/screenSet3Menu__14dFile_select_cFv.s"
}
#pragma pop

/* 8018CCD0-8018CE38 187610 0168+00 1/1 0/0 0/0 .text            screenSetDetail__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::screenSetDetail() {
    nofralloc
#include "asm/d/file/d_file_select/screenSetDetail__14dFile_select_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804539B0-804539B4 001FB0 0004+00 1/1 0/0 0/0 .sdata2          @7201 */
SECTION_SDATA2 static f32 lit_7201 = 3000.0f;

/* 8018CE38-8018CF50 187778 0118+00 2/2 0/0 0/0 .text            setWakuAnm__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::setWakuAnm() {
    nofralloc
#include "asm/d/file/d_file_select/setWakuAnm__14dFile_select_cFv.s"
}
#pragma pop

/* 8018CF50-8018D044 187890 00F4+00 1/1 0/0 0/0 .text            displayInit__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::displayInit() {
    nofralloc
#include "asm/d/file/d_file_select/displayInit__14dFile_select_cFv.s"
}
#pragma pop

/* 8018D044-8018D0E4 187984 00A0+00 3/3 0/0 0/0 .text            setSaveData__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::setSaveData() {
    nofralloc
#include "asm/d/file/d_file_select/setSaveData__14dFile_select_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804506D0-804506D8 000150 0008+00 1/1 0/0 0/0 .sdata           fontsize$7230 */
static f32 fontsize[2] = {
    21.0f,
    27.0f
};

/* 804506D8-804506E0 000158 0008+00 1/1 0/0 0/0 .sdata           linespace$7231 */
static f32 linespace[2] = {
    21.0f,
    20.0f
};

/* 804506E0-804506E8 000160 0008+00 1/1 0/0 0/0 .sdata           charspace$7232 */
static f32 charspace[2] = {
    0.0f,
    0.0f
};

/* 8018D0E4-8018D25C 187A24 0178+00 20/20 0/0 0/0 .text headerTxtSet__14dFile_select_cFUsUcUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::headerTxtSet(u16 param_0, u8 param_1, u8 param_2) {
    nofralloc
#include "asm/d/file/d_file_select/headerTxtSet__14dFile_select_cFUsUcUc.s"
}
#pragma pop

/* 8018D25C-8018D344 187B9C 00E8+00 21/21 0/0 0/0 .text headerTxtChangeAnm__14dFile_select_cFv */
bool dFile_select_c::headerTxtChangeAnm() {
    if (field_0x021d != 0) {
        return true;
    } else {
        bool ret = false;

        bool alphaAnime1 = (&field_0x020c)[field_0x021c]->alphaAnime(g_fsHIO.field_0x0007,0xFF,0,0);
        bool alphaAnime2 = (&field_0x020c)[field_0x021c^1]->alphaAnime(g_fsHIO.field_0x0007,0,0xFF,0);
        int msgKeyWaitTimer = dMeter2Info_getMsgKeyWaitTimer();

        if (alphaAnime1 == true && alphaAnime2 == true && msgKeyWaitTimer == 0) {
            field_0x021c ^= 1;
            field_0x021d = 1;
            ret = true;
        }

        return ret;
    }
}

/* 8018D344-8018D3A0 187C84 005C+00 7/7 0/0 0/0 .text modoruTxtChange__14dFile_select_cFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::modoruTxtChange(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/modoruTxtChange__14dFile_select_cFUc.s"
}
#pragma pop

/* 8018D3A0-8018D41C 187CE0 007C+00 11/11 0/0 0/0 .text modoruTxtDispAnmInit__14dFile_select_cFUc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::modoruTxtDispAnmInit(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/modoruTxtDispAnmInit__14dFile_select_cFUc.s"
}
#pragma pop

/* 8018D41C-8018D4F8 187D5C 00DC+00 11/11 0/0 0/0 .text modoruTxtDispAnm__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::modoruTxtDispAnm() {
    nofralloc
#include "asm/d/file/d_file_select/modoruTxtDispAnm__14dFile_select_cFv.s"
}
#pragma pop

/* 8018D4F8-8018D574 187E38 007C+00 13/13 0/0 0/0 .text ketteiTxtDispAnmInit__14dFile_select_cFUc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::ketteiTxtDispAnmInit(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/ketteiTxtDispAnmInit__14dFile_select_cFUc.s"
}
#pragma pop

/* 8018D574-8018D650 187EB4 00DC+00 12/12 0/0 0/0 .text ketteiTxtDispAnm__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::ketteiTxtDispAnm() {
    nofralloc
#include "asm/d/file/d_file_select/ketteiTxtDispAnm__14dFile_select_cFv.s"
}
#pragma pop

/* 8018D650-8018D68C 187F90 003C+00 8/8 0/0 0/0 .text
 * selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::selectWakuAlpahAnmInit(u8 param_0, u8 param_1, u8 param_2, u8 param_3) {
    nofralloc
#include "asm/d/file/d_file_select/selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc.s"
}
#pragma pop

/* 8018D68C-8018D764 187FCC 00D8+00 8/8 0/0 0/0 .text selectWakuAlpahAnm__14dFile_select_cFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::selectWakuAlpahAnm(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/selectWakuAlpahAnm__14dFile_select_cFUc.s"
}
#pragma pop

/* 8018D764-8018D884 1880A4 0120+00 6/6 0/0 0/0 .text selFileCursorShow__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::selFileCursorShow() {
    nofralloc
#include "asm/d/file/d_file_select/selFileCursorShow__14dFile_select_cFv.s"
}
#pragma pop

/* 8018D884-8018D8C8 1881C4 0044+00 1/1 0/0 0/0 .text
 * menuWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc              */
void dFile_select_c::menuWakuAlpahAnmInit(u8 i_idx, u8 param_1, u8 param_2, u8 param_3) {
    (&mpPaneAlpha1)[i_idx]->alphaAnimeStart(0);
    (&mpPaneAlpha2)[i_idx]->alphaAnimeStart(0);
    (&mpPaneAlpha3)[i_idx]->alphaAnimeStart(0);
    (&field_0x0388)[i_idx] = param_1;
    (&field_0x038b)[i_idx] = param_2;
    (&field_0x038e)[i_idx] = param_3;
    (&mpPaneMgr2)[i_idx]->colorAnimeStart(0);
}

/* 8018D8C8-8018DA10 188208 0148+00 1/1 0/0 0/0 .text menuWakuAlpahAnm__14dFile_select_cFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::menuWakuAlpahAnm(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/menuWakuAlpahAnm__14dFile_select_cFUc.s"
}
#pragma pop

/* 8018DA10-8018DB80 188350 0170+00 4/4 0/0 0/0 .text            menuCursorShow__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::menuCursorShow() {
    nofralloc
#include "asm/d/file/d_file_select/menuCursorShow__14dFile_select_cFv.s"
}
#pragma pop

/* 8018DB80-8018DBCC 1884C0 004C+00 2/2 0/0 0/0 .text
 * yesnoWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesnoWakuAlpahAnmInit(u8 param_0, u8 param_1, u8 param_2, u8 param_3) {
    nofralloc
#include "asm/d/file/d_file_select/yesnoWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc.s"
}
#pragma pop

/* 8018DBCC-8018DD38 18850C 016C+00 4/4 0/0 0/0 .text yesnoWakuAlpahAnm__14dFile_select_cFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::yesnoWakuAlpahAnm(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/yesnoWakuAlpahAnm__14dFile_select_cFUc.s"
}
#pragma pop

/* 8018DD38-8018DEBC 188678 0184+00 0/0 1/1 0/0 .text            _draw__14dFile_select_cFv */
#ifdef NONMATCHING
void dFile_select_c::_draw() {
    if (!mHasDrawn) {
        dComIfGd_set2DOpa(&mFileSelectDlst);

        for (int i = 0; i < 3; i++) {
            mpFileInfo[i]->draw();
        }

        dComIfGd_set2DOpa(&mFileSelDeleteDlst);
        mpFileSelect3d.draw();

        if (mFileSelCopyDlst.field_0x08 != false) {
            dComIfGd_set2DOpa(&mFileSelCopyDlst);

            for (int i = 0; i < 2; i++) {
                mpFileInfo[i]->draw();
            }
        }

        if (field137_0x128 != false) {
            mpName.draw();
        }

        dComIfGd_set2DOpa(&mFileSel3mDlst);
        dComIfGd_set2DOpa(&mFileSelYesNoDlst);
        mpFileWarning.draw();
        dComIfGd_set2DOpa(mpCursor1);
        dComIfGd_set2DOpa(mpCursor2);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::_draw() {
// extern "C" asm void _draw__14dFile_select_cFv() {
    nofralloc
#include "asm/d/file/d_file_select/_draw__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 8018DEBC-8018DEF4 1887FC 0038+00 1/0 0/0 0/0 .text            draw__15dDlst_FileSel_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dDlst_FileSel_c::draw() {
    nofralloc
#include "asm/d/file/d_file_select/draw__15dDlst_FileSel_cFv.s"
}
#pragma pop

/* 8018DEF4-8018DFFC 188834 0108+00 1/0 0/0 0/0 .text            draw__17dDlst_FileSelDt_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dDlst_FileSelDt_c::draw() {
    nofralloc
#include "asm/d/file/d_file_select/draw__17dDlst_FileSelDt_cFv.s"
}
#pragma pop

/* 8018DFFC-8018E0C0 18893C 00C4+00 1/0 0/0 0/0 .text            draw__17dDlst_FileSelCp_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dDlst_FileSelCp_c::draw() {
    nofralloc
#include "asm/d/file/d_file_select/draw__17dDlst_FileSelCp_cFv.s"
}
#pragma pop

/* 8018E0C0-8018E0F8 188A00 0038+00 1/0 0/0 0/0 .text            draw__17dDlst_FileSelYn_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dDlst_FileSelYn_c::draw() {
    nofralloc
#include "asm/d/file/d_file_select/draw__17dDlst_FileSelYn_cFv.s"
}
#pragma pop

/* 8018E0F8-8018E130 188A38 0038+00 1/0 0/0 0/0 .text            draw__17dDlst_FileSel3m_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dDlst_FileSel3m_c::draw() {
    nofralloc
#include "asm/d/file/d_file_select/draw__17dDlst_FileSel3m_cFv.s"
}
#pragma pop

/* 8018E130-8018E1C0 188A70 0090+00 4/4 0/0 0/0 .text errorMoveAnmInitSet__14dFile_select_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::errorMoveAnmInitSet(int param_0, int param_1) {
    nofralloc
#include "asm/d/file/d_file_select/errorMoveAnmInitSet__14dFile_select_cFii.s"
}
#pragma pop

/* 8018E1C0-8018E2B4 188B00 00F4+00 5/5 0/0 0/0 .text            errorMoveAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
bool dFile_select_c::errorMoveAnm() {
    if (field_0x0130 != field_0x0134) {
        if (field_0x0130 < field_0x0134) {
            field_0x0130 +=2;

            if (field_0x0130 > field_0x0134)
                field_0x0130 = field_0x0134;
        } else {
            field_0x0130 -= 2;

            if (field_0x0130 < field_0x0134)
                field_0x0130 = field_0x0134;
        }

        mpAnmBase[3]->setFrame(field_0x0130);
        field_0x012c->animationTransform();
        return false;
    } else {
        field_0x012c->setAnimation((J2DAnmTransform*)0);
        field_0x0134 == 0xb2b ? field_0x014a = true : field_0x014a = false;
        field_0x014b = false;
        return true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::errorMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/errorMoveAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 8018E2B4-8018E4CC 188BF4 0218+00 1/1 0/0 0/0 .text            errDispInitSet__14dFile_select_cFii
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::errDispInitSet(int param_0, int param_1) {
    nofralloc
#include "asm/d/file/d_file_select/errDispInitSet__14dFile_select_cFii.s"
}
#pragma pop

/* 8018E4CC-8018E504 188E0C 0038+00 1/0 0/0 0/0 .text MemCardCheckMain__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardCheckMain() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardCheckMain__14dFile_select_cFv.s"
}
#pragma pop

/* 8018E504-8018E7C4 188E44 02C0+00 2/0 0/0 0/0 .text MemCardStatCheck__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardStatCheck() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardStatCheck__14dFile_select_cFv.s"
}
#pragma pop

/* 8018E7C4-8018E93C 189104 0178+00 1/0 0/0 0/0 .text            MemCardLoadWait__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardLoadWait() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardLoadWait__14dFile_select_cFv.s"
}
#pragma pop

/* 8018E93C-8018E9B0 18927C 0074+00 1/0 0/0 0/0 .text MemCardErrMsgWaitKey__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardErrMsgWaitKey() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardErrMsgWaitKey__14dFile_select_cFv.s"
}
#pragma pop

/* 8018E9B0-8018E9D4 1892F0 0024+00 1/0 0/0 0/0 .text noFileSpaceDispInit__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::noFileSpaceDispInit() {
    nofralloc
#include "asm/d/file/d_file_select/noFileSpaceDispInit__14dFile_select_cFv.s"
}
#pragma pop

/* 8018E9D4-8018EA3C 189314 0068+00 1/0 0/0 0/0 .text MemCardNoFileSpaceDisp__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardNoFileSpaceDisp() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardNoFileSpaceDisp__14dFile_select_cFv.s"
}
#pragma pop

/* 8018EA3C-8018EA90 18937C 0054+00 1/0 0/0 0/0 .text            iplSelDispInit__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::iplSelDispInit() {
    nofralloc
#include "asm/d/file/d_file_select/iplSelDispInit__14dFile_select_cFv.s"
}
#pragma pop

/* 8018EA90-8018EB10 1893D0 0080+00 1/0 0/0 0/0 .text MemCardGotoIPLSelectDisp__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardGotoIPLSelectDisp() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardGotoIPLSelectDisp__14dFile_select_cFv.s"
}
#pragma pop

/* 8018EB10-8018EBCC 189450 00BC+00 1/0 0/0 0/0 .text MemCardGotoIPLSelect__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardGotoIPLSelect() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardGotoIPLSelect__14dFile_select_cFv.s"
}
#pragma pop

/* 8018EBCC-8018EC4C 18950C 0080+00 1/0 0/0 0/0 .text            MemCardGotoIPL__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardGotoIPL() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardGotoIPL__14dFile_select_cFv.s"
}
#pragma pop

/* 8018EC4C-8018ECBC 18958C 0070+00 7/1 0/0 0/0 .text noSaveSelDispInit__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::noSaveSelDispInit() {
    nofralloc
#include "asm/d/file/d_file_select/noSaveSelDispInit__14dFile_select_cFv.s"
}
#pragma pop

/* 8018ECBC-8018ED80 1895FC 00C4+00 1/0 0/0 0/0 .text MemCardNoSaveSelDisp__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardNoSaveSelDisp() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardNoSaveSelDisp__14dFile_select_cFv.s"
}
#pragma pop

/* 8018ED80-8018EF5C 1896C0 01DC+00 1/0 0/0 0/0 .text
 * MemCardErrMsgWaitNoSaveSel__14dFile_select_cFv               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardErrMsgWaitNoSaveSel() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardErrMsgWaitNoSaveSel__14dFile_select_cFv.s"
}
#pragma pop

/* 8018EF5C-8018EFAC 18989C 0050+00 1/1 0/0 0/0 .text formatYesSelDispInitSet__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::formatYesSelDispInitSet() {
    nofralloc
#include "asm/d/file/d_file_select/formatYesSelDispInitSet__14dFile_select_cFv.s"
}
#pragma pop

/* 8018EFAC-8018EFFC 1898EC 0050+00 2/2 0/0 0/0 .text formatNoSelDispInitSet__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::formatNoSelDispInitSet() {
    nofralloc
#include "asm/d/file/d_file_select/formatNoSelDispInitSet__14dFile_select_cFv.s"
}
#pragma pop

/* 8018EFFC-8018F080 18993C 0084+00 1/0 0/0 0/0 .text MemCardFormatYesSelDisp__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardFormatYesSelDisp() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardFormatYesSelDisp__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F080-8018F128 1899C0 00A8+00 1/0 0/0 0/0 .text MemCardFormatNoSelDisp__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardFormatNoSelDisp() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardFormatNoSelDisp__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F128-8018F17C 189A68 0054+00 1/0 0/0 0/0 .text
 * MemCardErrMsgWaitFormatSel__14dFile_select_cFv               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardErrMsgWaitFormatSel() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardErrMsgWaitFormatSel__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F17C-8018F1CC 189ABC 0050+00 1/1 0/0 0/0 .text formatYesSel2DispInitSet__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::formatYesSel2DispInitSet() {
    nofralloc
#include "asm/d/file/d_file_select/formatYesSel2DispInitSet__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F1CC-8018F228 189B0C 005C+00 1/0 0/0 0/0 .text
 * MemCardErrMsgWaitFormatSel2__14dFile_select_cFv              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardErrMsgWaitFormatSel2() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardErrMsgWaitFormatSel2__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F228-8018F2A4 189B68 007C+00 1/0 0/0 0/0 .text MemCardFormatYesSel2Disp__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardFormatYesSel2Disp() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardFormatYesSel2Disp__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F2A4-8018F304 189BE4 0060+00 1/0 0/0 0/0 .text            MemCardFormat__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardFormat() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardFormat__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F304-8018F374 189C44 0070+00 1/0 0/0 0/0 .text MemCardFormatWait__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardFormatWait() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardFormatWait__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F374-8018F400 189CB4 008C+00 1/0 0/0 0/0 .text MemCardFormatCheck__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardFormatCheck() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardFormatCheck__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F400-8018F488 189D40 0088+00 1/0 0/0 0/0 .text MemCardMakeGameFileSel__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardMakeGameFileSel() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardMakeGameFileSel__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F488-8018F580 189DC8 00F8+00 1/0 0/0 0/0 .text
 * MemCardMakeGameFileSelDisp__14dFile_select_cFv               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardMakeGameFileSelDisp() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardMakeGameFileSelDisp__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F580-8018F5E0 189EC0 0060+00 1/0 0/0 0/0 .text MemCardMakeGameFile__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardMakeGameFile() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardMakeGameFile__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F5E0-8018F650 189F20 0070+00 1/0 0/0 0/0 .text MemCardMakeGameFileWait__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardMakeGameFileWait() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardMakeGameFileWait__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F650-8018F6DC 189F90 008C+00 1/0 0/0 0/0 .text MemCardMakeGameFileCheck__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardMakeGameFileCheck() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardMakeGameFileCheck__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F6DC-8018F8D8 18A01C 01FC+00 1/0 0/0 0/0 .text MemCardMsgWindowInitOpen__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardMsgWindowInitOpen() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardMsgWindowInitOpen__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F8D8-8018F974 18A218 009C+00 1/0 0/0 0/0 .text MemCardMsgWindowOpen__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardMsgWindowOpen() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardMsgWindowOpen__14dFile_select_cFv.s"
}
#pragma pop

/* 8018F974-8018FA2C 18A2B4 00B8+00 1/0 0/0 0/0 .text MemCardMsgWindowClose__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardMsgWindowClose() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardMsgWindowClose__14dFile_select_cFv.s"
}
#pragma pop

/* 8018FA2C-8018FB80 18A36C 0154+00 5/5 0/0 0/0 .text            errYesNoSelect__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::errYesNoSelect() {
    nofralloc
#include "asm/d/file/d_file_select/errYesNoSelect__14dFile_select_cFv.s"
}
#pragma pop

/* 8018FB80-8018FBF8 18A4C0 0078+00 1/1 0/0 0/0 .text            errCurMove__14dFile_select_cFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::errCurMove(u8 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/errCurMove__14dFile_select_cFUc.s"
}
#pragma pop

/* 8018FBF8-8018FC64 18A538 006C+00 1/0 0/0 0/0 .text
 * MemCardErrYesNoCursorMoveAnm__14dFile_select_cFv             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardErrYesNoCursorMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardErrYesNoCursorMoveAnm__14dFile_select_cFv.s"
}
#pragma pop

/* 8018FC64-8018FD30 18A5A4 00CC+00 9/9 0/0 0/0 .text            errorTxtSet__14dFile_select_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::errorTxtSet(u16 param_0) {
    nofralloc
#include "asm/d/file/d_file_select/errorTxtSet__14dFile_select_cFUs.s"
}
#pragma pop

/* 8018FD30-8018FE18 18A670 00E8+00 9/9 0/0 0/0 .text errorTxtChangeAnm__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::errorTxtChangeAnm() {
    nofralloc
#include "asm/d/file/d_file_select/errorTxtChangeAnm__14dFile_select_cFv.s"
}
#pragma pop

/* 8018FE18-8018FE64 18A758 004C+00 1/1 0/0 0/0 .text            fileRecScaleAnm__14dFile_select_cFv
 */
bool dFile_select_c::fileRecScaleAnm() {
    return field_0x00bc[mSelectNum]->scaleAnime(g_fsHIO.field_0x0005,field_0x00c8,field_0x00d4,0);
}

/* 8018FE64-8018FEF4 18A7A4 0090+00 2/2 0/0 0/0 .text fileRecScaleAnmInitSet2__14dFile_select_cFff
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::fileRecScaleAnmInitSet2(f32 param_0, f32 param_1) {
    nofralloc
#include "asm/d/file/d_file_select/fileRecScaleAnmInitSet2__14dFile_select_cFff.s"
}
#pragma pop

/* 8018FEF4-8018FF9C 18A834 00A8+00 2/2 0/0 0/0 .text fileRecScaleAnm2__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::fileRecScaleAnm2() {
    nofralloc
#include "asm/d/file/d_file_select/fileRecScaleAnm2__14dFile_select_cFv.s"
}
#pragma pop

/* 8018FF9C-80190074 18A8DC 00D8+00 1/1 0/0 0/0 .text fileInfoScaleAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
bool dFile_select_c::fileInfoScaleAnm() {
    bool ret;

    if (field_0x0110 != field_0x0114) {
        if (field_0x0110 < field_0x0114) {
            field_0x0110 += 2;

            if (field_0x0110 > field_0x0114)
                field_0x0110 = field_0x0114;
        } else {
            field_0x0110 -= 2;

            if (field_0x0110 < field_0x0114)
                field_0x0110 = field_0x0114;
        }

        mpAnmBase[6]->setFrame(field_0x0110);
        mpPane->animationTransform();
        ret = false;
    }

    if (field_0x0110 == field_0x0114) {
        mpPane->setAnimation((J2DAnmTransform*)0);
        ret = true;
    }

    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::fileInfoScaleAnm() {
    nofralloc
#include "asm/d/file/d_file_select/fileInfoScaleAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80190074-80190124 18A9B4 00B0+00 5/5 0/0 0/0 .text nameMoveAnmInitSet__14dFile_select_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::nameMoveAnmInitSet(int param_0, int param_1) {
    nofralloc
#include "asm/d/file/d_file_select/nameMoveAnmInitSet__14dFile_select_cFii.s"
}
#pragma pop

/* 80190124-80190208 18AA64 00E4+00 9/9 0/0 0/0 .text            nameMoveAnm__14dFile_select_cFv */
#ifdef NONMATCHING
// matches with literals
bool dFile_select_c::nameMoveAnm() {
    if (field_0x0120 != field_0x0124) {
        if (field_0x0120 < field_0x0124) {
            field_0x0120 += 2;

            if (field_0x0120 > field_0x0124) {
                field_0x0120 = field_0x0124;
            }
        } else {
            field_0x0120 -= 2;

            if (field_0x0120 < field_0x0124) {
                field_0x0120 = field_0x0124;
            }
        }
        mpAnmBase[4]->setFrame(field_0x0120);
        field_0x011c->animationTransform();
        return false;
    } else {
        field_0x011c->setAnimation((J2DAnmTransform*)0);

        if (field_0x0124 == 0xd1f) {
            field_0x0128 = false;
            mFileSelCopyDlst.field_0x08 = false;
        }
        return true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dFile_select_c::nameMoveAnm() {
    nofralloc
#include "asm/d/file/d_file_select/nameMoveAnm__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 80190208-80190254 18AB48 004C+00 1/0 0/0 0/0 .text MemCardSaveDataClear__14dFile_select_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::MemCardSaveDataClear() {
    nofralloc
#include "asm/d/file/d_file_select/MemCardSaveDataClear__14dFile_select_cFv.s"
}
#pragma pop

/* 80190254-801902B8 18AB94 0064+00 2/2 0/0 0/0 .text            setInitSaveData__14dFile_select_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::setInitSaveData() {
    nofralloc
#include "asm/d/file/d_file_select/setInitSaveData__14dFile_select_cFv.s"
}
#pragma pop

/* 801902B8-801902F0 18ABF8 0038+00 2/2 0/0 0/0 .text            dataSave__14dFile_select_cFv */
#ifndef NONMATCHING
void dFile_select_c::dataSave() {
    #if DEBUG
    mDoMemCd_saveNAND(&mpMemCard,0x1fbc,0);
    #else
    mDoMemCd_save(&mpMemCard,0x1fbc,0);
    #endif
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select_c::dataSave() {
    nofralloc
#include "asm/d/file/d_file_select/dataSave__14dFile_select_cFv.s"
}
#pragma pop
#endif

/* 801902F0-80190380 18AC30 0090+00 1/1 0/0 0/0 .text            __ct__16dFile_select3D_cFv */
// vtable data
#ifdef NONMATCHING
dFile_select3D_c::dFile_select3D_c() {
    mpHeap = NULL;
    mpModel = NULL;
    field_0x03b8.y = 0.0f;
    field_0x03b8.x = 0.0f;
    field_0x03b8.z = 1.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dFile_select3D_c::dFile_select3D_c() {
    nofralloc
#include "asm/d/file/d_file_select/__ct__16dFile_select3D_cFv.s"
}
#pragma pop
#endif

/* 80190380-801903DC 18ACC0 005C+00 1/0 0/0 0/0 .text            __dt__16dFile_select3D_cFv */
// vtable data
#ifdef NONMATCHING
dFile_select3D_c::~dFile_select3D_c() {
    freeHeap();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dFile_select3D_c::~dFile_select3D_c() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__16dFile_select3D_cFv.s"
}
#pragma pop
#endif

/* 801903DC-8019049C 18AD1C 00C0+00 1/1 0/0 0/0 .text            _create__16dFile_select3D_cFUcUc */
#ifdef NONMATCHING
// matches with literals
void dFile_select3D_c::_create(u8 i_mirrorIdx, u8 i_maskIdx) {
    JKRHeap* ppHeap;

    mpHeap = mDoExt_createSolidHeapFromGameToCurrent(&ppHeap,0x25800,32);
    field_0x03c4 = 0.0f;
    field_0x03c8 = 0.0f;
    mMirrorIdx = i_mirrorIdx;
    mMaskIdx = i_maskIdx;
    if (mMirrorIdx != 0) {
        createMirrorModel();
    }

    if (mMaskIdx != 0) {
        createMaskModel();
    }

    mpHeap->adjustSize();
    mDoExt_setCurrentHeap(ppHeap);

    if (mpModel) {
        dKy_tevstr_init(&mTevstr,0xFF,0xFF);
        set_mtx();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select3D_c::_create(u8 param_0, u8 param_1) {
    nofralloc
#include "asm/d/file/d_file_select/_create__16dFile_select3D_cFUcUc.s"
}
#pragma pop
#endif

/* 8019049C-801904A0 18ADDC 0004+00 1/1 0/0 0/0 .text            _delete__16dFile_select3D_cFv */
void dFile_select3D_c::_delete() {
    /* empty function */
}

/* 801904A0-801904E4 18ADE0 0044+00 2/2 0/0 0/0 .text            freeHeap__16dFile_select3D_cFv */
void dFile_select3D_c::freeHeap() {
    if (mpHeap) {
        mDoExt_destroySolidHeap(mpHeap);
        mpHeap = NULL;
        mpModel = NULL;
    }
}

/* ############################################################################################## */
/* 804539B4-804539B8 001FB4 0004+00 1/1 0/0 0/0 .sdata2          @8459 */
SECTION_SDATA2 static f32 lit_8459 = 720.0f;

/* 801904E4-801905A8 18AE24 00C4+00 1/1 0/0 0/0 .text            _move__16dFile_select3D_cFv */
void dFile_select3D_c::_move() {
    if (mpModel) {
        cXyz stack_20;
        Vec stack_8 = mPaneMgr->getGlobalVtxCenter(false, 0);
        toItem3Dpos(stack_8.x + field_0x03b8.x, stack_8.y + field_0x03b8.y, 720.0f, &stack_20);
        field_0x03a4.set(stack_20);
        field_0x03b0.set(0, 0, 0);
        animePlay();
        set_mtx();
    }
}

/* 801905A8-8019065C 18AEE8 00B4+00 1/1 0/0 0/0 .text            draw__16dFile_select3D_cFv */
void dFile_select3D_c::draw() {
    if (mpModel) {
        dComIfGd_setListItem3D();
        g_env_light.settingTevStruct(13, &field_0x03a4, &mTevstr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &mTevstr);
        animeEntry();
        mDoExt_modelUpdateDL(mpModel);
        dComIfGd_setList();
    }
}

/* 8019065C-8019095C 18AF9C 0300+00 2/2 0/0 0/0 .text setJ3D__16dFile_select3D_cFPCcPCcPCc */
#ifdef NONMATCHING
// double branch, regswap
void dFile_select3D_c::setJ3D(char const* param_0, char const* param_1, char const* param_2) {
    JKRArchive* archive = dComIfGp_getCollectResArchive();
    J3DModelData* modelData = (J3DModelData*)J3DModelLoaderDataBase::load(
        archive->getResource('BMD ', param_0), 0x51020010);
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        J3DMaterialAnm* local_48 = new J3DMaterialAnm();
        modelData->getMaterialNodePointer(i)->change();
        modelData->getMaterialNodePointer(i)->setMaterialAnm(local_48);
    }
    mpModel = new J3DModel(modelData, 0, 1);
    if (param_1) {
        J3DAnmTransform* pbck =
            (J3DAnmTransform*)J3DAnmLoaderDataBase::load(archive->getResource('BCK ', param_1));
        mBckAnm = new mDoExt_bckAnm();
        if (mBckAnm && !mBckAnm->init(pbck, 1, 2, 1.0f, 0, -1, false)) {
            return;
        }
    }
    if (param_2) {
        J3DAnmTevRegKey* pbrk =
            (J3DAnmTevRegKey*)J3DAnmLoaderDataBase::load(archive->getResource('BRK ', param_2));
        pbrk->searchUpdateMaterialID(modelData);
        mBrkAnm = new mDoExt_brkAnm();
        if (mBrkAnm && !mBrkAnm->init(modelData, pbrk, -1, 2, 1.0f, 0, -1)) {
            return;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select3D_c::setJ3D(char const* param_0, char const* param_1, char const* param_2) {
    nofralloc
#include "asm/d/file/d_file_select/setJ3D__16dFile_select3D_cFPCcPCcPCc.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804539B8-804539BC 001FB8 0004+00 1/1 0/0 0/0 .sdata2          @8608 */
SECTION_SDATA2 static f32 lit_8608 = 1.0f / 10.0f;

/* 8019095C-80190A14 18B29C 00B8+00 2/2 0/0 0/0 .text            set_mtx__16dFile_select3D_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select3D_c::set_mtx() {
    cXyz stack_8;
    f32 tmp = mPane->getScaleX();
    if (tmp <= 0.1f) {
        tmp = 0.0f;
    }
    stack_8.x = stack_8.y = stack_8.z = tmp * field_0x03b8.z;
    mDoMtx_stack_c::transS(field_0x03a4.x, field_0x03a4.y, field_0x03a4.z);
    mDoMtx_stack_c::XYZrotM(field_0x03b0.x, field_0x03b0.y, field_0x03b0.z);
    mpModel->setBaseScale(stack_8);
    mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select3D_c::set_mtx() {
    nofralloc
#include "asm/d/file/d_file_select/set_mtx__16dFile_select3D_cFv.s"
}
#pragma pop
#endif

/* 80190A14-80190B44 18B354 0130+00 1/1 0/0 0/0 .text            animePlay__16dFile_select3D_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select3D_c::animePlay() {
    if (mBrkAnm) {
        field_0x03c4 += 1.0f;
        if (field_0x03c4 >= mBrkAnm->getEndFrame()) {
            field_0x03c4 -= mBrkAnm->getEndFrame();
        }
        mBrkAnm->setFrame(field_0x03c4);
        mBrkAnm->play();
    }
    if (mBckAnm) {
        field_0x03c8 += 1.0f;
        if (field_0x03c8 >= mBckAnm->getEndFrame()) {
            field_0x03c8 -= mBckAnm->getEndFrame();
        }
        mBckAnm->setFrame(field_0x03c8);
        mBckAnm->play();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select3D_c::animePlay() {
    nofralloc
#include "asm/d/file/d_file_select/animePlay__16dFile_select3D_cFv.s"
}
#pragma pop
#endif

/* 80190B44-80190BA8 18B484 0064+00 1/1 0/0 0/0 .text            animeEntry__16dFile_select3D_cFv */
void dFile_select3D_c::animeEntry() {
    if (mBrkAnm) {
        mBrkAnm->entry(mpModel->getModelData());
    }

    if (mBckAnm) {
        mBckAnm->entry(mpModel->getModelData());
    }
}

/* ############################################################################################## */
/* 80394310-80394324 020970 0014+00 2/2 0/0 0/0 .rodata          m_kamen_offset_x$8678 */
const static f32 m_kamen_offset_x[5] = {
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f
};
COMPILER_STRIP_GATE(0x80394310, &m_kamen_offset_x);

/* 80394324-80394338 020984 0014+00 0/1 0/0 0/0 .rodata          m_kamen_offset_y$8679 */
#pragma push
#pragma force_active on
const static f32 m_kamen_offset_y[5] = {
    0.0f,
    0.0f, 
    0.0f,
    5.0f,
    5.0f
};
COMPILER_STRIP_GATE(0x80394324, &m_kamen_offset_y);
#pragma pop

/* 80394338-8039434C 020998 0014+00 0/1 0/0 0/0 .rodata          m_kamen_scale$8680 */
#pragma push
#pragma force_active on
const static f32 m_kamen_scale[5] = {
    2.0f, 
    2.0f,
    2.0f,
    1.6f,
    1.6f
};
COMPILER_STRIP_GATE(0x80394338, &m_kamen_scale);
#pragma pop

/* 80190BA8-80190D68 18B4E8 01C0+00 1/1 0/0 0/0 .text createMaskModel__16dFile_select3D_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select3D_c::createMaskModel() {
    field_0x03b8.x = m_kamen_offset_x[mMaskIdx];
    field_0x03b8.y = m_kamen_offset_y[mMaskIdx];
    field_0x03b8.z = m_kamen_scale[mMaskIdx];
    field_0x03a4.set(0.0f, 0.0f, 0.0f);
    field_0x03b0.set(0, 0, 0);
    mpModel = NULL;
    mBckAnm = NULL;
    mBrkAnm = NULL;
    if (mMaskIdx == 0) {
        return;
    }
    setJ3D("md_mask_UI.bmd", bck_name_8683[mMaskIdx - 1], brk_name_8684[mMaskIdx - 1]);
    switch (mMaskIdx) {
    case 1:
        mpModel->getModelData()->getMaterialNodePointer(0)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(1)->getShape()->hide();
    case 2:
        mpModel->getModelData()->getMaterialNodePointer(2)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(3)->getShape()->hide();
    case 3:
        mpModel->getModelData()->getMaterialNodePointer(6)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(7)->getShape()->hide();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select3D_c::createMaskModel() {
    nofralloc
#include "asm/d/file/d_file_select/createMaskModel__16dFile_select3D_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8039434C-80394360 0209AC 0014+00 0/1 0/0 0/0 .rodata          m_mirror_offset_x$8781 */
#pragma push
#pragma force_active on
const static f32 m_mirror_offset_x[5] = {
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f
};
COMPILER_STRIP_GATE(0x8039434C, &m_mirror_offset_x);
#pragma pop

/* 80394360-80394374 0209C0 0014+00 0/1 0/0 0/0 .rodata          m_mirror_offset_y$8782 */
#pragma push
#pragma force_active on
const static f32 m_mirror_offset_y[5] = {
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f
};
COMPILER_STRIP_GATE(0x80394360, &m_mirror_offset_y);
#pragma pop

/* 80394374-80394388 0209D4 0014+00 0/1 0/0 0/0 .rodata          m_mirror_scale$8783 */
#pragma push
#pragma force_active on
const static f32 m_mirror_scale[5] = {
    0.6f, 
    0.6f, 
    0.6f, 
    0.6f, 
    0.6f
};
COMPILER_STRIP_GATE(0x80394374, &m_mirror_scale);
#pragma pop

/* 80394388-80394388 0209E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80394812 = "kageri_mirrer_UI.bmd";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_80394827 = "";
#pragma pop

/* 80190D68-80190FE8 18B6A8 0280+00 1/1 0/0 0/0 .text createMirrorModel__16dFile_select3D_cFv */
#ifdef NONMATCHING
// matches with literals
void dFile_select3D_c::createMirrorModel() {
    field_0x03b8.x = m_mirror_offset_x[mMirrorIdx];
    field_0x03b8.y = m_mirror_offset_y[mMirrorIdx];
    field_0x03b8.z = m_mirror_scale[mMirrorIdx];
    field_0x03a4.set(0.0f, 0.0f, 0.0f);
    field_0x03b0.set(0, 0, 0);
    mpModel = NULL;
    mBckAnm = NULL;
    mBrkAnm = NULL;
    if (mMirrorIdx == 0) {
        return;
    }
    setJ3D("kageri_mirrer_UI.bmd", bck_name_8786[mMirrorIdx - 1], brk_name_8787[mMirrorIdx - 1]);
    switch (mMirrorIdx) {
    case 1:
        mpModel->getModelData()->getMaterialNodePointer(4)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(5)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(6)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(7)->getShape()->hide();
    case 2:
        mpModel->getModelData()->getMaterialNodePointer(8)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(9)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(10)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(11)->getShape()->hide();
    case 3:
        mpModel->getModelData()->getMaterialNodePointer(12)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(13)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(14)->getShape()->hide();
        mpModel->getModelData()->getMaterialNodePointer(15)->getShape()->hide();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select3D_c::createMirrorModel() {
    nofralloc
#include "asm/d/file/d_file_select/createMirrorModel__16dFile_select3D_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804539BC-804539C0 001FBC 0004+00 1/1 0/0 0/0 .sdata2          @8978 */
SECTION_SDATA2 static f32 lit_8978 = 2.0f;

/* 804539C0-804539C8 001FC0 0004+04 1/1 0/0 0/0 .sdata2          @8979 */
SECTION_SDATA2 static f32 lit_8979[1 + 1 /* padding */] = {
    -100.0f,
    /* padding */
    0.0f,
};

/* 804539C8-804539D0 001FC8 0008+00 1/1 0/0 0/0 .sdata2          @8980 */
SECTION_SDATA2 static f64 lit_8980 = 0.39269909262657166;

/* 804539D0-804539D4 001FD0 0004+00 1/1 0/0 0/0 .sdata2          @8981 */
SECTION_SDATA2 static f32 lit_8981 = 19.0f / 14.0f;

/* 80190FE8-801910D4 18B928 00EC+00 1/1 0/0 0/0 .text toItem3Dpos__16dFile_select3D_cFfffP4cXyz */
#ifdef NONMATCHING
// floating point hell
void dFile_select3D_c::toItem3Dpos(f32 param_0, f32 param_1, f32 param_2, cXyz* param_3) {
    f32 f28 = ((param_0 - mDoGph_gInf_c::getMinXF()) / mDoGph_gInf_c::getWidthF()) * 2.0f - 1.0f;
    f32 f29 = ((param_1 - -100.0f) / 448.0f) * 2.0f - 1.0f;
    Mtx stack_50;
    Mtx stack_20;
    calcViewMtx(&stack_50);
    cMtx_inverse(stack_50, stack_20);
    f32 f31 = tan(0.3926990926265717);
    cXyz stack_10((f28 * param_2) * (f31 * mDoGph_gInf_c::getAspect()), f31 * (f29 * -param_2),
                  -param_2);
    cMtx_multVec(stack_20, &stack_10, param_3);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select3D_c::toItem3Dpos(f32 param_0, f32 param_1, f32 param_2, cXyz* param_3) {
    nofralloc
#include "asm/d/file/d_file_select/toItem3Dpos__16dFile_select3D_cFfffP4cXyz.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804539D4-804539D8 001FD4 0004+00 1/1 0/0 0/0 .sdata2          @8993 */
SECTION_SDATA2 static f32 lit_8993 = -1000.0f;

/* 801910D4-80191130 18BA14 005C+00 1/1 0/0 0/0 .text calcViewMtx__16dFile_select3D_cFPA4_f */
#ifdef NONMATCHING
// matches with literals
void dFile_select3D_c::calcViewMtx(Mtx param_0) {
    cMtx_lookAt(param_0,&cXyz(0.0f,0.0f,-1000.0f),&cXyz::Zero,&cXyz(0.0f,1.0f,0.0f),0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFile_select3D_c::calcViewMtx(Mtx param_0) {
    nofralloc
#include "asm/d/file/d_file_select/calcViewMtx__16dFile_select3D_cFPA4_f.s"
}
#pragma pop
#endif

/* 80191130-80191134 18BA70 0004+00 1/0 0/0 0/0 .text
 * getTransform__15J2DAnmTransformCFUsP16J3DTransformInfo       */
void J2DAnmTransform::getTransform(u16 param_0, J3DTransformInfo* param_1) const {
    /* empty function */
}

/* 80191134-8019117C 18BA74 0048+00 1/0 0/0 0/0 .text            __dt__10JUTNameTabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm JUTNameTab::~JUTNameTab() {
extern "C" asm void __dt__10JUTNameTabFv() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__10JUTNameTabFv.s"
}
#pragma pop

/* 8019117C-801911F4 18BABC 0078+00 1/0 0/0 0/0 .text            __dt__17dDlst_FileSel3m_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dDlst_FileSel3m_c::~dDlst_FileSel3m_c() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__17dDlst_FileSel3m_cFv.s"
}
#pragma pop

/* 801911F4-8019126C 18BB34 0078+00 1/0 0/0 0/0 .text            __dt__17dDlst_FileSelYn_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dDlst_FileSelYn_c::~dDlst_FileSelYn_c() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__17dDlst_FileSelYn_cFv.s"
}
#pragma pop

/* 8019126C-801912E4 18BBAC 0078+00 1/0 0/0 0/0 .text            __dt__17dDlst_FileSelCp_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dDlst_FileSelCp_c::~dDlst_FileSelCp_c() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__17dDlst_FileSelCp_cFv.s"
}
#pragma pop

/* 801912E4-8019135C 18BC24 0078+00 1/0 0/0 0/0 .text            __dt__17dDlst_FileSelDt_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dDlst_FileSelDt_c::~dDlst_FileSelDt_c() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__17dDlst_FileSelDt_cFv.s"
}
#pragma pop

/* 8019135C-801913E0 18BC9C 0084+00 1/0 0/0 0/0 .text            __dt__15dDlst_FileSel_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dDlst_FileSel_c::~dDlst_FileSel_c() {
extern "C" asm void __dt__15dDlst_FileSel_cFv() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__15dDlst_FileSel_cFv.s"
}
#pragma pop

/* 801913E0-80191428 18BD20 0048+00 2/1 0/0 0/0 .text            __dt__9dFs_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dFs_HIO_c::~dFs_HIO_c() {
    nofralloc
#include "asm/d/file/d_file_select/__dt__9dFs_HIO_cFv.s"
}
#pragma pop

/* 80191428-80191B6C 18BD68 0744+00 0/0 1/0 0/0 .text            __sinit_d_file_select_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_file_select_cpp() {
    nofralloc
#include "asm/d/file/d_file_select/__sinit_d_file_select_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80191428, __sinit_d_file_select_cpp);
#pragma pop

/* 80191B6C-80191BAC 18C4AC 0040+00 0/0 1/0 0/0 .text
 * getString__12dMsgString_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dMsgString_c::getString(u32 param_0, J2DTextBox* param_1, J2DTextBox* param_2,
//                                  JUTFont* param_3, COutFont_c* param_4, u8 param_5) {
extern "C" asm void getString__12dMsgString_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc() {
    nofralloc
#include "asm/d/file/d_file_select/getString__12dMsgString_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc.s"
}
#pragma pop