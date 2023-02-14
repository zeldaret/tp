/**
 * f_pc_profile_lst.cpp
 * Global Profile List
 */

#include "rel/f_pc/f_pc_profile_lst/f_pc_profile_lst.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "f_pc/f_pc_leaf.h"

extern "C" extern void* g_profile_ALINK[12 + 9 /* padding */];
extern "C" extern void* g_profile_NO_CHG_ROOM[12];
extern "C" extern void* g_profile_ITEM[12];
extern "C" extern void* g_profile_CAMERA[17];
extern "C" extern void* g_profile_CAMERA2[17 + 6 /* padding */];
extern "C" extern void* g_profile_ENVSE[10 + 1 /* padding */];
extern "C" extern void* g_profile_GAMEOVER[10];
extern "C" extern void* g_profile_KANKYO[10];
extern "C" extern void* g_profile_KYEFF[10 + 1 /* padding */];
extern "C" extern void* g_profile_KYEFF2[10 + 1 /* padding */];
extern "C" extern void* g_profile_KY_THUNDER[10 + 1 /* padding */];
extern "C" extern void* g_profile_MENUWINDOW[10 + 6 /* padding */];
extern "C" extern void* g_profile_METER2[10];
extern "C" extern void* g_profile_MSG_OBJECT[10];
extern "C" extern void* g_profile_OVERLAP0[10];
extern "C" extern void* g_profile_OVERLAP1[10];
extern "C" extern void* g_profile_OVERLAP6[10];
extern "C" extern void* g_profile_OVERLAP7[10];
extern "C" extern void* g_profile_OVERLAP8[10];
extern "C" extern void* g_profile_OVERLAP9[10];
extern "C" extern void* g_profile_OVERLAP10[10];
extern "C" extern void* g_profile_OVERLAP11[10 + 1 /* padding */];
extern "C" extern void* g_profile_OVERLAP2[10];
extern "C" extern void* g_profile_OVERLAP3[10];
extern "C" extern void* g_profile_LOGO_SCENE[10];
extern "C" extern void* g_profile_MENU_SCENE[10];
extern "C" extern void* g_profile_NAME_SCENE[10];
extern "C" extern void* g_profile_NAMEEX_SCENE[10];
extern "C" extern void* g_profile_PLAY_SCENE[10];
extern "C" extern void* g_profile_OPENING_SCENE[10];
extern "C" extern void* g_profile_ROOM_SCENE[10];
extern "C" extern void* g_profile_WARNING_SCENE[10];
extern "C" extern void* g_profile_WARNING2_SCENE[10];
extern "C" extern void* g_profile_TIMER[10];
extern "C" extern void* g_profile_WMARK[10 + 1 /* padding */];
extern "C" extern void* g_profile_WPILLAR[10 + 1 /* padding */];
extern "C" extern void* g_profile_ANDSW[12];
extern "C" extern void* g_profile_BG[13];
extern "C" extern void* g_profile_BG_OBJ[12];
extern "C" extern void* g_profile_DMIDNA[12];
extern "C" extern void* g_profile_DBDOOR[12];
extern "C" extern void* g_profile_KNOB20[12];
extern "C" extern void* g_profile_DOOR20[12];
extern "C" extern void* g_profile_SPIRAL_DOOR[12];
extern "C" extern void* g_profile_DSHUTTER[13];
extern "C" extern void* g_profile_EP[12];
extern "C" extern void* g_profile_HITOBJ[12];
extern "C" extern void* g_profile_KYTAG00[12];
extern "C" extern void* g_profile_KYTAG04[12];
extern "C" extern void* g_profile_KYTAG17[12];
extern "C" extern void* g_profile_OBJ_BEF[12];
extern "C" extern void* g_profile_Obj_BurnBox[12];
extern "C" extern void* g_profile_Obj_Carry[12];
extern "C" extern void* g_profile_OBJ_ITO[12];
extern "C" extern void* g_profile_Obj_Movebox[12];
extern "C" extern void* g_profile_Obj_Swpush[12];
extern "C" extern void* g_profile_Obj_Timer[12];
extern "C" extern void* g_profile_PATH_LINE[13];
extern "C" extern void* g_profile_SCENE_EXIT[13];
extern "C" extern void* g_profile_SET_BG_OBJ[12];
extern "C" extern void* g_profile_SWHIT0[12];
extern "C" extern void* g_profile_TAG_ALLMATO[12];
extern "C" extern void* g_profile_TAG_CAMERA[12];
extern "C" extern void* g_profile_TAG_CHKPOINT[12];
extern "C" extern void* g_profile_TAG_EVENT[12];
extern "C" extern void* g_profile_TAG_EVT[12];
extern "C" extern void* g_profile_TAG_EVTAREA[12];
extern "C" extern void* g_profile_TAG_EVTMSG[12];
extern "C" extern void* g_profile_TAG_HOWL[12];
extern "C" extern void* g_profile_TAG_KMSG[12];
extern "C" extern void* g_profile_TAG_LANTERN[12];
extern "C" extern void* g_profile_Tag_Mist[12];
extern "C" extern void* g_profile_TAG_MSG[12];
extern "C" extern void* g_profile_TAG_PUSH[12];
extern "C" extern void* g_profile_TAG_TELOP[12];
extern "C" extern void* g_profile_TBOX[12];
extern "C" extern void* g_profile_TBOX2[12];
extern "C" extern void* g_profile_VRBOX[12];
extern "C" extern void* g_profile_VRBOX2[12];
extern "C" extern void* g_profile_ARROW[12];
extern "C" extern void* g_profile_BOOMERANG[12];
extern "C" extern void* g_profile_CROD[12];
extern "C" extern void* g_profile_DEMO00[12];
extern "C" extern void* g_profile_DISAPPEAR[12];
extern "C" extern void* g_profile_MG_ROD[12];
extern "C" extern void* g_profile_MIDNA[12];
extern "C" extern void* g_profile_NBOMB[12];
extern "C" extern void* g_profile_Obj_LifeContainer[12];
extern "C" extern void* g_profile_Obj_Yousei[12];
extern "C" extern void* g_profile_SPINNER[12];
extern "C" extern void* g_profile_SUSPEND[12];
extern "C" extern void* g_profile_Tag_Attp[12];
extern "C" extern void* g_profile_ALLDIE[12];
extern "C" extern void* g_profile_ANDSW2[12];
extern "C" extern void* g_profile_BD[12];
extern "C" extern void* g_profile_CANOE[12];
extern "C" extern void* g_profile_CSTAF[12];
extern "C" extern void* g_profile_Demo_Item[12];
extern "C" extern void* g_profile_L1BOSS_DOOR[12];
extern "C" extern void* g_profile_E_DN[12];
extern "C" extern void* g_profile_E_FM[12];
extern "C" extern void* g_profile_E_GA[12];
extern "C" extern void* g_profile_E_HB[12];
extern "C" extern void* g_profile_E_NEST[12];
extern "C" extern void* g_profile_E_RD[12];
extern "C" extern void* g_profile_ECONT[12];
extern "C" extern void* g_profile_FR[12];
extern "C" extern void* g_profile_GRASS[12];
extern "C" extern void* g_profile_KYTAG05[12];
extern "C" extern void* g_profile_KYTAG10[12];
extern "C" extern void* g_profile_KYTAG11[12];
extern "C" extern void* g_profile_KYTAG14[12];
extern "C" extern void* g_profile_MG_FISH[12];
extern "C" extern void* g_profile_NPC_BESU[12];
extern "C" extern void* g_profile_NPC_FAIRY_SEIREI[12];
extern "C" extern void* g_profile_NPC_FISH[12];
extern "C" extern void* g_profile_NPC_HENNA[12];
extern "C" extern void* g_profile_NPC_KAKASHI[12];
extern "C" extern void* g_profile_NPC_KKRI[12];
extern "C" extern void* g_profile_NPC_KOLIN[12];
extern "C" extern void* g_profile_NPC_MARO[12];
extern "C" extern void* g_profile_NPC_TARO[12];
extern "C" extern void* g_profile_NPC_TKJ[12];
extern "C" extern void* g_profile_Obj_BHASHI[12];
extern "C" extern void* g_profile_Obj_BkDoor[12];
extern "C" extern void* g_profile_Obj_BossWarp[12];
extern "C" extern void* g_profile_Obj_Cboard[12];
extern "C" extern void* g_profile_Obj_Digpl[12];
extern "C" extern void* g_profile_Obj_Eff[12];
extern "C" extern void* g_profile_OBJ_FMOBJ[12];
extern "C" extern void* g_profile_Obj_GpTaru[12];
extern "C" extern void* g_profile_Obj_HHASHI[12];
extern "C" extern void* g_profile_OBJ_KANBAN2[12];
extern "C" extern void* g_profile_OBJ_KBACKET[12];
extern "C" extern void* g_profile_Obj_KkrGate[12];
extern "C" extern void* g_profile_Obj_KLift00[12];
extern "C" extern void* g_profile_Tag_KtOnFire[12];
extern "C" extern void* g_profile_Obj_Ladder[12];
extern "C" extern void* g_profile_Obj_Lv2Candle[12];
extern "C" extern void* g_profile_Obj_MagneArm[12];
extern "C" extern void* g_profile_Obj_MetalBox[12];
extern "C" extern void* g_profile_Obj_MGate[12];
extern "C" extern void* g_profile_Obj_NamePlate[12];
extern "C" extern void* g_profile_Obj_OnCloth[12];
extern "C" extern void* g_profile_Obj_RopeBridge[12];
extern "C" extern void* g_profile_Obj_SwallShutter[12];
extern "C" extern void* g_profile_OBJ_STICK[12];
extern "C" extern void* g_profile_Obj_StoneMark[12];
extern "C" extern void* g_profile_Obj_Swpropeller[12];
extern "C" extern void* g_profile_Obj_Swpush5[12];
extern "C" extern void* g_profile_Obj_Yobikusa[12];
extern "C" extern void* g_profile_SCENE_EXIT2[12];
extern "C" extern void* g_profile_ShopItem[12];
extern "C" extern void* g_profile_SQ[12];
extern "C" extern void* g_profile_SWC00[12];
extern "C" extern void* g_profile_Tag_CstaSw[12];
extern "C" extern void* g_profile_Tag_AJnot[12];
extern "C" extern void* g_profile_Tag_AttackItem[12];
extern "C" extern void* g_profile_Tag_Gstart[12];
extern "C" extern void* g_profile_Tag_Hinit[12];
extern "C" extern void* g_profile_Tag_Hjump[12];
extern "C" extern void* g_profile_Tag_Hstop[12];
extern "C" extern void* g_profile_Tag_Lv2PrChk[12];
extern "C" extern void* g_profile_Tag_Magne[12];
extern "C" extern void* g_profile_Tag_Mhint[12];
extern "C" extern void* g_profile_Tag_Mstop[12];
extern "C" extern void* g_profile_Tag_Spring[12];
extern "C" extern void* g_profile_Tag_Statue[12];
extern "C" extern void* g_profile_Ykgr[12];
extern "C" extern void* g_profile_DR[12];
extern "C" extern void* g_profile_L7lowDr[12];
extern "C" extern void* g_profile_L7ODR[12];
extern "C" extern void* g_profile_B_BH[12];
extern "C" extern void* g_profile_B_BQ[12];
extern "C" extern void* g_profile_B_DR[12];
extern "C" extern void* g_profile_B_DRE[12];
extern "C" extern void* g_profile_B_DS[12];
extern "C" extern void* g_profile_B_GG[12];
extern "C" extern void* g_profile_B_GM[12];
extern "C" extern void* g_profile_B_GND[12];
extern "C" extern void* g_profile_B_GO[12];
extern "C" extern void* g_profile_B_GOS[12];
extern "C" extern void* g_profile_B_MGN[12];
extern "C" extern void* g_profile_B_OB[12];
extern "C" extern void* g_profile_B_OH[12];
extern "C" extern void* g_profile_B_OH2[12];
extern "C" extern void* g_profile_B_TN[12];
extern "C" extern void* g_profile_B_YO[12];
extern "C" extern void* g_profile_B_YOI[12];
extern "C" extern void* g_profile_B_ZANT[12];
extern "C" extern void* g_profile_B_ZANTM[12];
extern "C" extern void* g_profile_B_ZANTZ[12];
extern "C" extern void* g_profile_B_ZANTS[12];
extern "C" extern void* g_profile_BALLOON2D[12];
extern "C" extern void* g_profile_BULLET[12];
extern "C" extern void* g_profile_COACH2D[12];
extern "C" extern void* g_profile_COACH_FIRE[12];
extern "C" extern void* g_profile_COW[12];
extern "C" extern void* g_profile_CSTATUE[12];
extern "C" extern void* g_profile_DO[12];
extern "C" extern void* g_profile_BOSS_DOOR[12];
extern "C" extern void* g_profile_L5BOSS_DOOR[12];
extern "C" extern void* g_profile_L1MBOSS_DOOR[12];
extern "C" extern void* g_profile_PushDoor[12];
extern "C" extern void* g_profile_E_AI[12];
extern "C" extern void* g_profile_E_ARROW[12];
extern "C" extern void* g_profile_E_BA[12];
extern "C" extern void* g_profile_E_BEE[12];
extern "C" extern void* g_profile_E_BG[12];
extern "C" extern void* g_profile_E_BI[12];
extern "C" extern void* g_profile_E_BI_LEAF[12];
extern "C" extern void* g_profile_E_BS[12];
extern "C" extern void* g_profile_E_BU[12];
extern "C" extern void* g_profile_E_BUG[12];
extern "C" extern void* g_profile_E_CR[12];
extern "C" extern void* g_profile_E_CR_EGG[12];
extern "C" extern void* g_profile_E_DB[12];
extern "C" extern void* g_profile_E_DB_LEAF[12];
extern "C" extern void* g_profile_E_DD[12];
extern "C" extern void* g_profile_E_DF[12];
extern "C" extern void* g_profile_E_DK[12];
extern "C" extern void* g_profile_E_DT[12];
extern "C" extern void* g_profile_E_FB[12];
extern "C" extern void* g_profile_E_FK[12];
extern "C" extern void* g_profile_E_FS[12];
extern "C" extern void* g_profile_E_FZ[12];
extern "C" extern void* g_profile_E_GB[12];
extern "C" extern void* g_profile_E_GE[12];
extern "C" extern void* g_profile_E_GI[12];
extern "C" extern void* g_profile_E_GM[12];
extern "C" extern void* g_profile_E_GOB[12];
extern "C" extern void* g_profile_E_GS[12];
extern "C" extern void* g_profile_E_HB_LEAF[12];
extern "C" extern void* g_profile_E_HM[12];
extern "C" extern void* g_profile_E_HP[12];
extern "C" extern void* g_profile_E_HZ[12];
extern "C" extern void* g_profile_E_HZELDA[12];
extern "C" extern void* g_profile_E_IS[12];
extern "C" extern void* g_profile_E_KG[12];
extern "C" extern void* g_profile_E_KK[12];
extern "C" extern void* g_profile_E_KR[12];
extern "C" extern void* g_profile_E_MB[12];
extern "C" extern void* g_profile_E_MD[12];
extern "C" extern void* g_profile_E_MF[12];
extern "C" extern void* g_profile_E_MK[12];
extern "C" extern void* g_profile_E_MK_BO[12];
extern "C" extern void* g_profile_E_MM[12];
extern "C" extern void* g_profile_E_MM_MT[12];
extern "C" extern void* g_profile_E_MS[12];
extern "C" extern void* g_profile_E_NZ[12];
extern "C" extern void* g_profile_E_OC[12];
extern "C" extern void* g_profile_E_OctBg[12];
extern "C" extern void* g_profile_E_OT[12];
extern "C" extern void* g_profile_E_PH[12];
extern "C" extern void* g_profile_E_PM[12];
extern "C" extern void* g_profile_E_PO[12];
extern "C" extern void* g_profile_E_PZ[12];
extern "C" extern void* g_profile_E_RB[12];
extern "C" extern void* g_profile_E_RDB[12];
extern "C" extern void* g_profile_E_RDY[12];
extern "C" extern void* g_profile_E_S1[12];
extern "C" extern void* g_profile_E_SB[12];
extern "C" extern void* g_profile_E_SF[12];
extern "C" extern void* g_profile_E_SG[12];
extern "C" extern void* g_profile_E_SH[12];
extern "C" extern void* g_profile_E_SM[12];
extern "C" extern void* g_profile_E_SM2[12];
extern "C" extern void* g_profile_E_ST[12];
extern "C" extern void* g_profile_E_ST_LINE[12];
extern "C" extern void* g_profile_E_SW[12];
extern "C" extern void* g_profile_E_TH[12];
extern "C" extern void* g_profile_E_TH_BALL[12];
extern "C" extern void* g_profile_E_TK[12];
extern "C" extern void* g_profile_E_TK2[12];
extern "C" extern void* g_profile_E_TK_BALL[12];
extern "C" extern void* g_profile_E_TT[12];
extern "C" extern void* g_profile_E_VT[12];
extern "C" extern void* g_profile_E_WAP[12];
extern "C" extern void* g_profile_E_WB[12];
extern "C" extern void* g_profile_E_WS[12];
extern "C" extern void* g_profile_E_WW[12];
extern "C" extern void* g_profile_E_YC[12];
extern "C" extern void* g_profile_E_YD[12];
extern "C" extern void* g_profile_E_YD_LEAF[12];
extern "C" extern void* g_profile_E_YG[12];
extern "C" extern void* g_profile_E_YH[12];
extern "C" extern void* g_profile_E_YK[12];
extern "C" extern void* g_profile_E_YM[12];
extern "C" extern void* g_profile_E_YM_TAG[12];
extern "C" extern void* g_profile_E_YMB[12];
extern "C" extern void* g_profile_E_YR[12];
extern "C" extern void* g_profile_E_ZH[12];
extern "C" extern void* g_profile_E_ZM[12];
extern "C" extern void* g_profile_E_ZS[12];
extern "C" extern void* g_profile_FORMATION_MNG[12];
extern "C" extern void* g_profile_GUARD_MNG[12];
extern "C" extern void* g_profile_HORSE[12];
extern "C" extern void* g_profile_HOZELDA[12];
extern "C" extern void* g_profile_Izumi_Gate[12];
extern "C" extern void* g_profile_KAGO[12];
extern "C" extern void* g_profile_KYTAG01[12];
extern "C" extern void* g_profile_KYTAG02[12];
extern "C" extern void* g_profile_KYTAG03[12];
extern "C" extern void* g_profile_KYTAG06[12];
extern "C" extern void* g_profile_KYTAG07[12];
extern "C" extern void* g_profile_KYTAG08[12];
extern "C" extern void* g_profile_KYTAG09[12];
extern "C" extern void* g_profile_KYTAG12[12];
extern "C" extern void* g_profile_KYTAG13[12];
extern "C" extern void* g_profile_KYTAG15[12];
extern "C" extern void* g_profile_KYTAG16[12];
extern "C" extern void* g_profile_MANT[12];
extern "C" extern void* g_profile_FSHOP[12];
extern "C" extern void* g_profile_MIRROR[12];
extern "C" extern void* g_profile_MOVIE_PLAYER[12];
extern "C" extern void* g_profile_MYNA[12];
extern "C" extern void* g_profile_NI[12];
extern "C" extern void* g_profile_NPC_ARU[12];
extern "C" extern void* g_profile_NPC_ASH[12];
extern "C" extern void* g_profile_NPC_ASHB[12];
extern "C" extern void* g_profile_NPC_BANS[12];
extern "C" extern void* g_profile_NPC_BLUENS[12];
extern "C" extern void* g_profile_NPC_BOU[12];
extern "C" extern void* g_profile_NPC_BOU_S[12];
extern "C" extern void* g_profile_NPC_CD3[12];
extern "C" extern void* g_profile_NPC_CHAT[12];
extern "C" extern void* g_profile_NPC_CHIN[12];
extern "C" extern void* g_profile_NPC_CLERKA[12];
extern "C" extern void* g_profile_NPC_CLERKB[12];
extern "C" extern void* g_profile_NPC_CLERKT[12];
extern "C" extern void* g_profile_NPC_COACH[12];
extern "C" extern void* g_profile_NPC_DF[12];
extern "C" extern void* g_profile_NPC_DOC[12];
extern "C" extern void* g_profile_NPC_DOORBOY[12];
extern "C" extern void* g_profile_NPC_DRSOL[12];
extern "C" extern void* g_profile_NPC_DU[12];
extern "C" extern void* g_profile_NPC_FAIRY[12];
extern "C" extern void* g_profile_NPC_FGUARD[12];
extern "C" extern void* g_profile_NPC_GND[12];
extern "C" extern void* g_profile_NPC_GRA[12];
extern "C" extern void* g_profile_NPC_GRC[12];
extern "C" extern void* g_profile_NPC_GRD[12];
extern "C" extern void* g_profile_NPC_GRM[12];
extern "C" extern void* g_profile_NPC_GRMC[12];
extern "C" extern void* g_profile_NPC_GRO[12];
extern "C" extern void* g_profile_NPC_GRR[12];
extern "C" extern void* g_profile_NPC_GRS[12];
extern "C" extern void* g_profile_NPC_GRZ[12];
extern "C" extern void* g_profile_NPC_GUARD[12];
extern "C" extern void* g_profile_NPC_GWOLF[12];
extern "C" extern void* g_profile_NPC_HANJO[12];
extern "C" extern void* g_profile_NPC_HENNA0[12];
extern "C" extern void* g_profile_NPC_HOZ[12];
extern "C" extern void* g_profile_NPC_IMPAL[12];
extern "C" extern void* g_profile_NPC_INKO[12];
extern "C" extern void* g_profile_NPC_INS[12];
extern "C" extern void* g_profile_NPC_JAGAR[12];
extern "C" extern void* g_profile_NPC_KASIHANA[12];
extern "C" extern void* g_profile_NPC_KASIKYU[12];
extern "C" extern void* g_profile_NPC_KASIMICH[12];
extern "C" extern void* g_profile_NPC_KDK[12];
extern "C" extern void* g_profile_NPC_KN[12];
extern "C" extern void* g_profile_NPC_KNJ[12];
extern "C" extern void* g_profile_NPC_KOLINB[12];
extern "C" extern void* g_profile_NPC_KS[12];
extern "C" extern void* g_profile_NPC_KYURY[12];
extern "C" extern void* g_profile_NPC_LEN[12];
extern "C" extern void* g_profile_NPC_LF[12];
extern "C" extern void* g_profile_NPC_LUD[12];
extern "C" extern void* g_profile_NPC_MIDP[12];
extern "C" extern void* g_profile_NPC_MK[12];
extern "C" extern void* g_profile_NPC_MOI[12];
extern "C" extern void* g_profile_NPC_MOIR[12];
extern "C" extern void* g_profile_MYNA2[12];
extern "C" extern void* g_profile_NPC_NE[12];
extern "C" extern void* g_profile_NPC_P2[12];
extern "C" extern void* g_profile_NPC_PACHI_BESU[12];
extern "C" extern void* g_profile_NPC_PACHI_MARO[12];
extern "C" extern void* g_profile_NPC_PACHI_TARO[12];
extern "C" extern void* g_profile_NPC_PASSER[12];
extern "C" extern void* g_profile_NPC_PASSER2[12];
extern "C" extern void* g_profile_NPC_POST[12];
extern "C" extern void* g_profile_NPC_POUYA[12];
extern "C" extern void* g_profile_NPC_PRAYER[12];
extern "C" extern void* g_profile_NPC_RACA[12];
extern "C" extern void* g_profile_NPC_RAFREL[12];
extern "C" extern void* g_profile_NPC_SARU[12];
extern "C" extern void* g_profile_NPC_SEIB[12];
extern "C" extern void* g_profile_NPC_SEIC[12];
extern "C" extern void* g_profile_NPC_SEID[12];
extern "C" extern void* g_profile_NPC_SEIRA[12];
extern "C" extern void* g_profile_NPC_SERA2[12];
extern "C" extern void* g_profile_NPC_SEIREI[12];
extern "C" extern void* g_profile_NPC_SHAD[12];
extern "C" extern void* g_profile_NPC_SHAMAN[12];
extern "C" extern void* g_profile_NPC_SHOE[12];
extern "C" extern void* g_profile_NPC_SHOP0[12];
extern "C" extern void* g_profile_NPC_SMARO[12];
extern "C" extern void* g_profile_NPC_SOLA[12];
extern "C" extern void* g_profile_NPC_SOLDIERa[12];
extern "C" extern void* g_profile_NPC_SOLDIERb[12];
extern "C" extern void* g_profile_NPC_SQ[12];
extern "C" extern void* g_profile_NPC_THE[12];
extern "C" extern void* g_profile_NPC_THEB[12];
extern "C" extern void* g_profile_NPC_TK[12];
extern "C" extern void* g_profile_NPC_TKC[12];
extern "C" extern void* g_profile_NPC_TKJ2[12];
extern "C" extern void* g_profile_NPC_TKS[12];
extern "C" extern void* g_profile_NPC_TOBY[12];
extern "C" extern void* g_profile_NPC_TR[12];
extern "C" extern void* g_profile_NPC_URI[12];
extern "C" extern void* g_profile_NPC_WORM[12];
extern "C" extern void* g_profile_NPC_WRESTLER[12];
extern "C" extern void* g_profile_NPC_YAMID[12];
extern "C" extern void* g_profile_NPC_YAMIS[12];
extern "C" extern void* g_profile_NPC_YAMIT[12];
extern "C" extern void* g_profile_NPC_YELIA[12];
extern "C" extern void* g_profile_NPC_YKM[12];
extern "C" extern void* g_profile_NPC_YKW[12];
extern "C" extern void* g_profile_NPC_ZANB[12];
extern "C" extern void* g_profile_NPC_ZANT[12];
extern "C" extern void* g_profile_NPC_ZELR[12];
extern "C" extern void* g_profile_NPC_ZELRO[12];
extern "C" extern void* g_profile_NPC_ZELDA[12];
extern "C" extern void* g_profile_NPC_ZRA[12];
extern "C" extern void* g_profile_NPC_ZRC[12];
extern "C" extern void* g_profile_NPC_ZRZ[12];
extern "C" extern void* g_profile_Obj_Lv5Key[12];
extern "C" extern void* g_profile_Obj_Turara[12];
extern "C" extern void* g_profile_Obj_TvCdlst[12];
extern "C" extern void* g_profile_Obj_Ytaihou[12];
extern "C" extern void* g_profile_Obj_AmiShutter[12];
extern "C" extern void* g_profile_Obj_Ari[12];
extern "C" extern void* g_profile_OBJ_AUTOMATA[12];
extern "C" extern void* g_profile_Obj_Avalanche[12];
extern "C" extern void* g_profile_OBJ_BALLOON[12];
extern "C" extern void* g_profile_Obj_BarDesk[12];
extern "C" extern void* g_profile_Obj_Batta[12];
extern "C" extern void* g_profile_Obj_BBox[12];
extern "C" extern void* g_profile_OBJ_BED[12];
extern "C" extern void* g_profile_Obj_Bemos[12];
extern "C" extern void* g_profile_Obj_Bhbridge[12];
extern "C" extern void* g_profile_Obj_BkLeaf[12];
extern "C" extern void* g_profile_BkyRock[12];
extern "C" extern void* g_profile_Obj_BmWindow[12];
extern "C" extern void* g_profile_Obj_BoomShutter[12];
extern "C" extern void* g_profile_Obj_Bombf[12];
extern "C" extern void* g_profile_OBJ_BOUMATO[12];
extern "C" extern void* g_profile_OBJ_BRG[12];
extern "C" extern void* g_profile_Obj_BsGate[12];
extern "C" extern void* g_profile_Obj_awaPlar[12];
extern "C" extern void* g_profile_Obj_CatDoor[12];
extern "C" extern void* g_profile_OBJ_CB[12];
extern "C" extern void* g_profile_Obj_ChainBlock[12];
extern "C" extern void* g_profile_Obj_Cdoor[12];
extern "C" extern void* g_profile_Obj_Chandelier[12];
extern "C" extern void* g_profile_Obj_Chest[12];
extern "C" extern void* g_profile_Obj_Cho[12];
extern "C" extern void* g_profile_Obj_Cowdoor[12];
extern "C" extern void* g_profile_Obj_Crope[12];
extern "C" extern void* g_profile_Obj_CRVFENCE[12];
extern "C" extern void* g_profile_Obj_CRVGATE[12];
extern "C" extern void* g_profile_Obj_CRVHAHEN[12];
extern "C" extern void* g_profile_Obj_CRVLH_DW[12];
extern "C" extern void* g_profile_Obj_CRVLH_UP[12];
extern "C" extern void* g_profile_Obj_CRVSTEEL[12];
extern "C" extern void* g_profile_Obj_Crystal[12];
extern "C" extern void* g_profile_Obj_ChainWall[12];
extern "C" extern void* g_profile_Obj_DamCps[12];
extern "C" extern void* g_profile_Obj_Dan[12];
extern "C" extern void* g_profile_Obj_Digholl[12];
extern "C" extern void* g_profile_Obj_DigSnow[12];
extern "C" extern void* g_profile_Obj_Elevator[12];
extern "C" extern void* g_profile_Obj_Drop[12];
extern "C" extern void* g_profile_Obj_DUST[12];
extern "C" extern void* g_profile_Obj_E_CREATE[12];
extern "C" extern void* g_profile_Obj_FallObj[12];
extern "C" extern void* g_profile_Obj_Fan[12];
extern "C" extern void* g_profile_Obj_Fchain[12];
extern "C" extern void* g_profile_Obj_FireWood[12];
extern "C" extern void* g_profile_Obj_FireWood2[12];
extern "C" extern void* g_profile_Obj_FirePillar[12];
extern "C" extern void* g_profile_Obj_FirePillar2[12];
extern "C" extern void* g_profile_Obj_Flag[12];
extern "C" extern void* g_profile_Obj_Flag2[12];
extern "C" extern void* g_profile_Obj_Flag3[12];
extern "C" extern void* g_profile_OBJ_FOOD[12];
extern "C" extern void* g_profile_OBJ_FW[12];
extern "C" extern void* g_profile_OBJ_GADGET[12];
extern "C" extern void* g_profile_Obj_GanonWall[12];
extern "C" extern void* g_profile_Obj_GanonWall2[12];
extern "C" extern void* g_profile_OBJ_GB[12];
extern "C" extern void* g_profile_Obj_Geyser[12];
extern "C" extern void* g_profile_Obj_glowSphere[12];
extern "C" extern void* g_profile_OBJ_GM[12];
extern "C" extern void* g_profile_Obj_GoGate[12];
extern "C" extern void* g_profile_Obj_GOMIKABE[12];
extern "C" extern void* g_profile_OBJ_GRA[12];
extern "C" extern void* g_profile_GRA_WALL[12];
extern "C" extern void* g_profile_Obj_GraRock[12];
extern "C" extern void* g_profile_Obj_GraveStone[12];
extern "C" extern void* g_profile_GRDWATER[12];
extern "C" extern void* g_profile_Obj_GrzRock[12];
extern "C" extern void* g_profile_Obj_H_Saku[12];
extern "C" extern void* g_profile_Obj_HBarrel[12];
extern "C" extern void* g_profile_Obj_HFtr[12];
extern "C" extern void* g_profile_Obj_MHasu[12];
extern "C" extern void* g_profile_Obj_Hata[12];
extern "C" extern void* g_profile_OBJ_HB[12];
extern "C" extern void* g_profile_Obj_HBombkoya[12];
extern "C" extern void* g_profile_Obj_HeavySw[12];
extern "C" extern void* g_profile_Obj_Hfuta[12];
extern "C" extern void* g_profile_Obj_HsTarget[12];
extern "C" extern void* g_profile_Obj_Ice_l[12];
extern "C" extern void* g_profile_Obj_Ice_s[12];
extern "C" extern void* g_profile_Obj_IceBlock[12];
extern "C" extern void* g_profile_Obj_IceLeaf[12];
extern "C" extern void* g_profile_OBJ_IHASI[12];
extern "C" extern void* g_profile_Obj_Ikada[12];
extern "C" extern void* g_profile_Obj_InoBone[12];
extern "C" extern void* g_profile_Obj_ITA[12];
extern "C" extern void* g_profile_OBJ_ITAMATO[12];
extern "C" extern void* g_profile_Obj_Kabuto[12];
extern "C" extern void* g_profile_Obj_Kag[12];
extern "C" extern void* g_profile_OBJ_KAGE[12];
extern "C" extern void* g_profile_OBJ_KAGO[12];
extern "C" extern void* g_profile_Obj_Kaisou[12];
extern "C" extern void* g_profile_Obj_Kam[12];
extern "C" extern void* g_profile_Obj_Kantera[12];
extern "C" extern void* g_profile_Obj_Kat[12];
extern "C" extern void* g_profile_Obj_KazeNeko[12];
extern "C" extern void* g_profile_OBJ_KBOX[12];
extern "C" extern void* g_profile_OBJ_KEY[12];
extern "C" extern void* g_profile_OBJ_KEYHOLE[12];
extern "C" extern void* g_profile_OBJ_KI[12];
extern "C" extern void* g_profile_Obj_KiPot[12];
extern "C" extern void* g_profile_OBJ_KITA[12];
extern "C" extern void* g_profile_Obj_KJgjs[12];
extern "C" extern void* g_profile_Obj_KKanban[12];
extern "C" extern void* g_profile_KN_BULLET[12];
extern "C" extern void* g_profile_Obj_Kshutter[12];
extern "C" extern void* g_profile_Obj_Kuw[12];
extern "C" extern void* g_profile_Obj_KWheel00[12];
extern "C" extern void* g_profile_Obj_KWheel01[12];
extern "C" extern void* g_profile_Obj_KznkArm[12];
extern "C" extern void* g_profile_Obj_Laundry[12];
extern "C" extern void* g_profile_Obj_LndRope[12];
extern "C" extern void* g_profile_OBJ_LBOX[12];
extern "C" extern void* g_profile_OBJ_LP[12];
extern "C" extern void* g_profile_Obj_Lv1Cdl00[12];
extern "C" extern void* g_profile_Obj_Lv1Cdl01[12];
extern "C" extern void* g_profile_Obj_Lv3Candle[12];
extern "C" extern void* g_profile_Obj_Lv3Water[12];
extern "C" extern void* g_profile_Obj_Lv3Water2[12];
extern "C" extern void* g_profile_OBJ_LV3WATERB[12];
extern "C" extern void* g_profile_Obj_Lv3R10Saka[12];
extern "C" extern void* g_profile_Obj_WaterEff[12];
extern "C" extern void* g_profile_Tag_Lv4CandleDm[12];
extern "C" extern void* g_profile_Tag_Lv4Candle[12];
extern "C" extern void* g_profile_Obj_Lv4EdShutter[12];
extern "C" extern void* g_profile_Obj_Lv4Gate[12];
extern "C" extern void* g_profile_Obj_Lv4HsTarget[12];
extern "C" extern void* g_profile_Obj_Lv4PoGate[12];
extern "C" extern void* g_profile_Obj_Lv4RailWall[12];
extern "C" extern void* g_profile_Obj_Lv4SlideWall[12];
extern "C" extern void* g_profile_Obj_Lv4Bridge[12];
extern "C" extern void* g_profile_Obj_Lv4Chan[12];
extern "C" extern void* g_profile_Obj_Lv4DigSand[12];
extern "C" extern void* g_profile_Obj_Lv4Floor[12];
extern "C" extern void* g_profile_Obj_Lv4Gear[12];
extern "C" extern void* g_profile_Obj_PRElvtr[12];
extern "C" extern void* g_profile_Obj_Lv4PRwall[12];
extern "C" extern void* g_profile_Obj_Lv4Sand[12];
extern "C" extern void* g_profile_Obj_Lv5FBoard[12];
extern "C" extern void* g_profile_Obj_IceWall[12];
extern "C" extern void* g_profile_Obj_Lv5SwIce[12];
extern "C" extern void* g_profile_Obj_Ychndlr[12];
extern "C" extern void* g_profile_Obj_YIblltray[12];
extern "C" extern void* g_profile_Obj_Lv6ChgGate[12];
extern "C" extern void* g_profile_Obj_Lv6FuriTrap[12];
extern "C" extern void* g_profile_Obj_Lv6Lblock[12];
extern "C" extern void* g_profile_Obj_Lv6SwGate[12];
extern "C" extern void* g_profile_Obj_Lv6SzGate[12];
extern "C" extern void* g_profile_Obj_Lv6Tenbin[12];
extern "C" extern void* g_profile_Obj_Lv6TogeRoll[12];
extern "C" extern void* g_profile_Obj_Lv6TogeTrap[12];
extern "C" extern void* g_profile_Obj_Lv6bemos[12];
extern "C" extern void* g_profile_Obj_Lv6bemos2[12];
extern "C" extern void* g_profile_Obj_Lv6EGate[12];
extern "C" extern void* g_profile_Obj_Lv6ElevtA[12];
extern "C" extern void* g_profile_Obj_Lv6SwTurn[12];
extern "C" extern void* g_profile_Obj_Lv7BsGate[12];
extern "C" extern void* g_profile_Obj_Lv7PropY[12];
extern "C" extern void* g_profile_Obj_Lv7Bridge[12];
extern "C" extern void* g_profile_Obj_Lv8KekkaiTrap[12];
extern "C" extern void* g_profile_Obj_Lv8Lift[12];
extern "C" extern void* g_profile_Obj_Lv8OptiLift[12];
extern "C" extern void* g_profile_Obj_Lv8UdFloor[12];
extern "C" extern void* g_profile_Obj_Lv9SwShutter[12];
extern "C" extern void* g_profile_Obj_MagLift[12];
extern "C" extern void* g_profile_Obj_MagLiftRot[12];
extern "C" extern void* g_profile_OBJ_MAKI[12];
extern "C" extern void* g_profile_Obj_MasterSword[12];
extern "C" extern void* g_profile_Obj_Mato[12];
extern "C" extern void* g_profile_Obj_MHole[12];
extern "C" extern void* g_profile_OBJ_MIE[12];
extern "C" extern void* g_profile_Obj_Mirror6Pole[12];
extern "C" extern void* g_profile_Obj_MirrorChain[12];
extern "C" extern void* g_profile_Obj_MirrorSand[12];
extern "C" extern void* g_profile_Obj_MirrorScrew[12];
extern "C" extern void* g_profile_Obj_MirrorTable[12];
extern "C" extern void* g_profile_OBJ_MSIMA[12];
extern "C" extern void* g_profile_Obj_MvStair[12];
extern "C" extern void* g_profile_OBJ_MYOGAN[12];
extern "C" extern void* g_profile_Obj_Nagaisu[12];
extern "C" extern void* g_profile_Obj_Nan[12];
extern "C" extern void* g_profile_OBJ_NDOOR[12];
extern "C" extern void* g_profile_OBJ_NOUGU[12];
extern "C" extern void* g_profile_OCTHASHI[12];
extern "C" extern void* g_profile_OBJ_OILTUBO[12];
extern "C" extern void* g_profile_Obj_Onsen[12];
extern "C" extern void* g_profile_OBJ_ONSEN_FIRE[12];
extern "C" extern void* g_profile_Obj_OnsenTaru[12];
extern "C" extern void* g_profile_Obj_PushDoor[12];
extern "C" extern void* g_profile_Obj_PDtile[12];
extern "C" extern void* g_profile_Obj_PDwall[12];
extern "C" extern void* g_profile_Obj_Picture[12];
extern "C" extern void* g_profile_Obj_Pillar[12];
extern "C" extern void* g_profile_OBJ_PLEAF[12];
extern "C" extern void* g_profile_Obj_poCandle[12];
extern "C" extern void* g_profile_Obj_poFire[12];
extern "C" extern void* g_profile_Obj_poTbox[12];
extern "C" extern void* g_profile_Obj_Prop[12];
extern "C" extern void* g_profile_OBJ_PUMPKIN[12];
extern "C" extern void* g_profile_Obj_RCircle[12];
extern "C" extern void* g_profile_Obj_RfHole[12];
extern "C" extern void* g_profile_Obj_RiderGate[12];
extern "C" extern void* g_profile_Obj_RIVERROCK[12];
extern "C" extern void* g_profile_OBJ_ROCK[12];
extern "C" extern void* g_profile_Obj_RotBridge[12];
extern "C" extern void* g_profile_Obj_RotTrap[12];
extern "C" extern void* g_profile_OBJ_ROTEN[12];
extern "C" extern void* g_profile_Obj_RotStair[12];
extern "C" extern void* g_profile_OBJ_RW[12];
extern "C" extern void* g_profile_Obj_Saidan[12];
extern "C" extern void* g_profile_Obj_Sakuita[12];
extern "C" extern void* g_profile_Obj_ItaRope[12];
extern "C" extern void* g_profile_Obj_SCannon[12];
extern "C" extern void* g_profile_Obj_SCannonCrs[12];
extern "C" extern void* g_profile_Obj_SCannonTen[12];
extern "C" extern void* g_profile_OBJ_SEKIDOOR[12];
extern "C" extern void* g_profile_OBJ_SEKIZO[12];
extern "C" extern void* g_profile_OBJ_SEKIZOA[12];
extern "C" extern void* g_profile_Obj_Shield[12];
extern "C" extern void* g_profile_Obj_SM_DOOR[12];
extern "C" extern void* g_profile_Obj_SmallKey[12];
extern "C" extern void* g_profile_Obj_SmgDoor[12];
extern "C" extern void* g_profile_Obj_Smoke[12];
extern "C" extern void* g_profile_OBJ_SMTILE[12];
extern "C" extern void* g_profile_Obj_SmWStone[12];
extern "C" extern void* g_profile_Tag_SnowEff[12];
extern "C" extern void* g_profile_Obj_SnowSoup[12];
extern "C" extern void* g_profile_OBJ_SO[12];
extern "C" extern void* g_profile_Obj_SpinLift[12];
extern "C" extern void* g_profile_OBJ_SSDRINK[12];
extern "C" extern void* g_profile_OBJ_SSITEM[12];
extern "C" extern void* g_profile_Obj_StairBlock[12];
extern "C" extern void* g_profile_Obj_Stone[12];
extern "C" extern void* g_profile_Obj_Stopper[12];
extern "C" extern void* g_profile_Obj_Stopper2[12];
extern "C" extern void* g_profile_OBJ_SUISYA[12];
extern "C" extern void* g_profile_OBJ_SW[12];
extern "C" extern void* g_profile_Obj_SwBallA[12];
extern "C" extern void* g_profile_Obj_SwBallB[12];
extern "C" extern void* g_profile_Obj_SwBallC[12];
extern "C" extern void* g_profile_Obj_SwLight[12];
extern "C" extern void* g_profile_Obj_SwChain[12];
extern "C" extern void* g_profile_Obj_SwHang[12];
extern "C" extern void* g_profile_Obj_Sword[12];
extern "C" extern void* g_profile_Obj_Swpush2[12];
extern "C" extern void* g_profile_Obj_SwSpinner[12];
extern "C" extern void* g_profile_Obj_SwTurn[12];
extern "C" extern void* g_profile_Obj_SyRock[12];
extern "C" extern void* g_profile_Obj_SZbridge[12];
extern "C" extern void* g_profile_Obj_TaFence[12];
extern "C" extern void* g_profile_Obj_Table[12];
extern "C" extern void* g_profile_Obj_TakaraDai[12];
extern "C" extern void* g_profile_OBJ_TATIGI[12];
extern "C" extern void* g_profile_Obj_Ten[12];
extern "C" extern void* g_profile_Obj_TestCube[12];
extern "C" extern void* g_profile_Obj_Gake[12];
extern "C" extern void* g_profile_Obj_THASHI[12];
extern "C" extern void* g_profile_Obj_TDoor[12];
extern "C" extern void* g_profile_Obj_TimeFire[12];
extern "C" extern void* g_profile_OBJ_TKS[12];
extern "C" extern void* g_profile_Obj_TMoon[12];
extern "C" extern void* g_profile_Obj_ToaruMaki[12];
extern "C" extern void* g_profile_OBJ_TOBY[12];
extern "C" extern void* g_profile_Obj_TobyHouse[12];
extern "C" extern void* g_profile_Obj_TogeTrap[12];
extern "C" extern void* g_profile_Obj_Tombo[12];
extern "C" extern void* g_profile_Obj_Tornado[12];
extern "C" extern void* g_profile_Obj_Tornado2[12];
extern "C" extern void* g_profile_OBJ_TP[12];
extern "C" extern void* g_profile_TREESH[12];
extern "C" extern void* g_profile_Obj_TwGate[12];
extern "C" extern void* g_profile_OBJ_UDOOR[12];
extern "C" extern void* g_profile_OBJ_USAKU[12];
extern "C" extern void* g_profile_Obj_VolcGnd[12];
extern "C" extern void* g_profile_Obj_VolcanicBall[12];
extern "C" extern void* g_profile_Obj_VolcanicBomb[12];
extern "C" extern void* g_profile_Obj_KakarikoBrg[12];
extern "C" extern void* g_profile_Obj_OrdinBrg[12];
extern "C" extern void* g_profile_Obj_WtGate[12];
extern "C" extern void* g_profile_Obj_WaterPillar[12];
extern "C" extern void* g_profile_Obj_WaterFall[12];
extern "C" extern void* g_profile_Obj_Wchain[12];
extern "C" extern void* g_profile_Obj_WdStick[12];
extern "C" extern void* g_profile_OBJ_WEB0[12];
extern "C" extern void* g_profile_OBJ_WEB1[12];
extern "C" extern void* g_profile_Obj_WellCover[12];
extern "C" extern void* g_profile_OBJ_WFLAG[12];
extern "C" extern void* g_profile_Obj_WindStone[12];
extern "C" extern void* g_profile_Obj_Window[12];
extern "C" extern void* g_profile_Obj_WoodPendulum[12];
extern "C" extern void* g_profile_Obj_WoodStatue[12];
extern "C" extern void* g_profile_Obj_WoodenSword[12];
extern "C" extern void* g_profile_OBJ_YBAG[12];
extern "C" extern void* g_profile_OBJ_YSTONE[12];
extern "C" extern void* g_profile_Obj_ZoraCloth[12];
extern "C" extern void* g_profile_Obj_ZDoor[12];
extern "C" extern void* g_profile_Obj_zrTurara[12];
extern "C" extern void* g_profile_Obj_zrTuraraRc[12];
extern "C" extern void* g_profile_ZRA_MARK[12];
extern "C" extern void* g_profile_OBJ_ZRAFREEZE[12];
extern "C" extern void* g_profile_Obj_ZraRock[12];
extern "C" extern void* g_profile_PASSER_MNG[12];
extern "C" extern void* g_profile_PERU[12];
extern "C" extern void* g_profile_PPolamp[12];
extern "C" extern void* g_profile_SKIP2D[12];
extern "C" extern void* g_profile_START_AND_GOAL[12];
extern "C" extern void* g_profile_SwBall[12];
extern "C" extern void* g_profile_SwLBall[12];
extern "C" extern void* g_profile_SwTime[12];
extern "C" extern void* g_profile_Tag_Lv6Gate[12];
extern "C" extern void* g_profile_Tag_Lv7Gate[12];
extern "C" extern void* g_profile_Tag_Lv8Gate[12];
extern "C" extern void* g_profile_Tag_TWGate[12];
extern "C" extern void* g_profile_Tag_Arena[12];
extern "C" extern void* g_profile_Tag_Assist[12];
extern "C" extern void* g_profile_TAG_BTLITM[12];
extern "C" extern void* g_profile_Tag_ChgRestart[12];
extern "C" extern void* g_profile_TAG_CSW[12];
extern "C" extern void* g_profile_Tag_Escape[12];
extern "C" extern void* g_profile_Tag_FWall[12];
extern "C" extern void* g_profile_TAG_GRA[12];
extern "C" extern void* g_profile_TAG_GUARD[12];
extern "C" extern void* g_profile_Tag_Instruction[12];
extern "C" extern void* g_profile_Tag_KagoFall[12];
extern "C" extern void* g_profile_Tag_LightBall[12];
extern "C" extern void* g_profile_TAG_LV5SOUP[12];
extern "C" extern void* g_profile_Tag_Lv6CstaSw[12];
extern "C" extern void* g_profile_Tag_Mmsg[12];
extern "C" extern void* g_profile_Tag_Mwait[12];
extern "C" extern void* g_profile_TAG_MYNA2[12];
extern "C" extern void* g_profile_TAG_MNLIGHT[12];
extern "C" extern void* g_profile_TAG_PATI[12];
extern "C" extern void* g_profile_Tag_poFire[12];
extern "C" extern void* g_profile_TAG_QS[12];
extern "C" extern void* g_profile_Tag_RetRoom[12];
extern "C" extern void* g_profile_Tag_RiverBack[12];
extern "C" extern void* g_profile_Tag_RmbitSw[12];
extern "C" extern void* g_profile_Tag_Schedule[12];
extern "C" extern void* g_profile_Tag_SetBall[12];
extern "C" extern void* g_profile_Tag_Restart[12];
extern "C" extern void* g_profile_TAG_SHOPCAM[12];
extern "C" extern void* g_profile_TAG_SHOPITM[12];
extern "C" extern void* g_profile_Tag_SmkEmt[12];
extern "C" extern void* g_profile_Tag_Spinner[12];
extern "C" extern void* g_profile_Tag_Sppath[12];
extern "C" extern void* g_profile_TAG_SSDRINK[12];
extern "C" extern void* g_profile_Tag_Stream[12];
extern "C" extern void* g_profile_Tag_TheBHint[12];
extern "C" extern void* g_profile_Tag_WaraHowl[12];
extern "C" extern void* g_profile_Tag_WatchGe[12];
extern "C" extern void* g_profile_Tag_WaterFall[12];
extern "C" extern void* g_profile_Tag_Wljump[12];
extern "C" extern void* g_profile_TAG_YAMI[12];
extern "C" extern void* g_profile_TALK[12];
extern "C" extern void* g_profile_TBOX_SW[12];
extern "C" extern void* g_profile_TITLE[12];
extern "C" extern void* g_profile_WarpBug[12];

//
// Declarations:
//

/* ############################################################################################## */
/* 80456C84-804578E8 -00001 0C64+00 1/1 0/0 0/0 .data            g_fpcPfLst_ProfileList */
SECTION_DATA static process_profile_definition* g_fpcPfLst_ProfileList[793] = {
    (process_profile_definition*)&g_profile_OVERLAP0,
    (process_profile_definition*)&g_profile_OVERLAP1,
    (process_profile_definition*)&g_profile_OVERLAP3,
    (process_profile_definition*)&g_profile_OVERLAP6,
    (process_profile_definition*)&g_profile_OVERLAP7,
    (process_profile_definition*)&g_profile_OVERLAP8,
    (process_profile_definition*)&g_profile_OVERLAP9,
    (process_profile_definition*)&g_profile_OVERLAP10,
    (process_profile_definition*)&g_profile_OVERLAP11,
    (process_profile_definition*)&g_profile_LOGO_SCENE,
    (process_profile_definition*)&g_profile_MENU_SCENE,
    (process_profile_definition*)&g_profile_PLAY_SCENE,
    (process_profile_definition*)&g_profile_OPENING_SCENE,
    (process_profile_definition*)&g_profile_NAME_SCENE,
    (process_profile_definition*)&g_profile_NAMEEX_SCENE,
    (process_profile_definition*)&g_profile_WARNING_SCENE,
    (process_profile_definition*)&g_profile_WARNING2_SCENE,
    (process_profile_definition*)&g_profile_OVERLAP2,
    (process_profile_definition*)&g_profile_ROOM_SCENE,
    (process_profile_definition*)&g_profile_KANKYO,
    (process_profile_definition*)&g_profile_ALLDIE,
    (process_profile_definition*)&g_profile_ENVSE,
    (process_profile_definition*)&g_profile_Obj_Swpush,
    (process_profile_definition*)&g_profile_Obj_Swpush2,
    (process_profile_definition*)&g_profile_Obj_Swpush5,
    (process_profile_definition*)&g_profile_Tag_Gstart,
    (process_profile_definition*)&g_profile_NO_CHG_ROOM,
    (process_profile_definition*)&g_profile_Obj_Lv6ElevtA,
    (process_profile_definition*)&g_profile_OBJ_SO,
    (process_profile_definition*)&g_profile_Obj_Movebox,
    (process_profile_definition*)&g_profile_Obj_SwTurn,
    (process_profile_definition*)&g_profile_Obj_Lv6SwTurn,
    (process_profile_definition*)&g_profile_OBJ_SEKIZOA,
    (process_profile_definition*)&g_profile_OBJ_GRA,
    (process_profile_definition*)&g_profile_TAG_GRA,
    (process_profile_definition*)&g_profile_TAG_YAMI,
    (process_profile_definition*)&g_profile_Obj_Ladder,
    (process_profile_definition*)&g_profile_OBJ_BEF,
    (process_profile_definition*)&g_profile_OBJ_FMOBJ,
    (process_profile_definition*)&g_profile_OBJ_LBOX,
    (process_profile_definition*)&g_profile_OBJ_WEB0,
    (process_profile_definition*)&g_profile_OBJ_WEB1,
    (process_profile_definition*)&g_profile_OBJ_CB,
    (process_profile_definition*)&g_profile_OBJ_MAKI,
    (process_profile_definition*)&g_profile_OBJ_BRG,
    (process_profile_definition*)&g_profile_OBJ_GB,
    (process_profile_definition*)&g_profile_OBJ_GM,
    (process_profile_definition*)&g_profile_OBJ_TOBY,
    (process_profile_definition*)&g_profile_OBJ_TP,
    (process_profile_definition*)&g_profile_TREESH,
    (process_profile_definition*)&g_profile_Obj_ZDoor,
    (process_profile_definition*)&g_profile_Obj_Pillar,
    (process_profile_definition*)&g_profile_Obj_Cdoor,
    (process_profile_definition*)&g_profile_GRDWATER,
    (process_profile_definition*)&g_profile_Obj_RotBridge,
    (process_profile_definition*)&g_profile_Obj_MagLift,
    (process_profile_definition*)&g_profile_Obj_MagLiftRot,
    (process_profile_definition*)&g_profile_Obj_Lv1Cdl00,
    (process_profile_definition*)&g_profile_Obj_Lv1Cdl01,
    (process_profile_definition*)&g_profile_Obj_TvCdlst,
    (process_profile_definition*)&g_profile_Obj_HsTarget,
    (process_profile_definition*)&g_profile_Obj_HeavySw,
    (process_profile_definition*)&g_profile_Obj_GoGate,
    (process_profile_definition*)&g_profile_Obj_TaFence,
    (process_profile_definition*)&g_profile_Obj_Saidan,
    (process_profile_definition*)&g_profile_Obj_SpinLift,
    (process_profile_definition*)&g_profile_Obj_BmWindow,
    (process_profile_definition*)&g_profile_Obj_RfHole,
    (process_profile_definition*)&g_profile_Obj_WaterPillar,
    (process_profile_definition*)&g_profile_Obj_SyRock,
    (process_profile_definition*)&g_profile_Obj_BsGate,
    (process_profile_definition*)&g_profile_Obj_AmiShutter,
    (process_profile_definition*)&g_profile_Obj_WtGate,
    (process_profile_definition*)&g_profile_Obj_Lv2Candle,
    (process_profile_definition*)&g_profile_Obj_TogeTrap,
    (process_profile_definition*)&g_profile_Obj_RotTrap,
    (process_profile_definition*)&g_profile_Obj_SwallShutter,
    (process_profile_definition*)&g_profile_Obj_IceWall,
    (process_profile_definition*)&g_profile_Obj_Lv5SwIce,
    (process_profile_definition*)&g_profile_Obj_Lv5FBoard,
    (process_profile_definition*)&g_profile_Obj_Turara,
    (process_profile_definition*)&g_profile_Obj_TwGate,
    (process_profile_definition*)&g_profile_Obj_Digholl,
    (process_profile_definition*)&g_profile_Obj_Digpl,
    (process_profile_definition*)&g_profile_Obj_TestCube,
    (process_profile_definition*)&g_profile_Obj_Kshutter,
    (process_profile_definition*)&g_profile_NPC_COACH,
    (process_profile_definition*)&g_profile_NPC_THEB,
    (process_profile_definition*)&g_profile_COACH_FIRE,
    (process_profile_definition*)&g_profile_COACH2D,
    (process_profile_definition*)&g_profile_BALLOON2D,
    (process_profile_definition*)&g_profile_SKIP2D,
    (process_profile_definition*)&g_profile_Obj_MvStair,
    (process_profile_definition*)&g_profile_Obj_Cowdoor,
    (process_profile_definition*)&g_profile_Obj_Swpropeller,
    (process_profile_definition*)&g_profile_Obj_BoomShutter,
    (process_profile_definition*)&g_profile_NPC_KS,
    (process_profile_definition*)&g_profile_Obj_Hfuta,
    (process_profile_definition*)&g_profile_Obj_BkDoor,
    (process_profile_definition*)&g_profile_Obj_Cboard,
    (process_profile_definition*)&g_profile_Obj_MGate,
    (process_profile_definition*)&g_profile_Obj_Ikada,
    (process_profile_definition*)&g_profile_Obj_Ice_l,
    (process_profile_definition*)&g_profile_Obj_Ice_s,
    (process_profile_definition*)&g_profile_Obj_E_CREATE,
    (process_profile_definition*)&g_profile_Obj_Bhbridge,
    (process_profile_definition*)&g_profile_Obj_Kaisou,
    (process_profile_definition*)&g_profile_Obj_HHASHI,
    (process_profile_definition*)&g_profile_Obj_BHASHI,
    (process_profile_definition*)&g_profile_OCTHASHI,
    (process_profile_definition*)&g_profile_Obj_THASHI,
    (process_profile_definition*)&g_profile_Obj_CRVGATE,
    (process_profile_definition*)&g_profile_Obj_CRVFENCE,
    (process_profile_definition*)&g_profile_Obj_CRVHAHEN,
    (process_profile_definition*)&g_profile_Obj_CRVSTEEL,
    (process_profile_definition*)&g_profile_Obj_CRVLH_UP,
    (process_profile_definition*)&g_profile_Obj_CRVLH_DW,
    (process_profile_definition*)&g_profile_Obj_RIVERROCK,
    (process_profile_definition*)&g_profile_Obj_DUST,
    (process_profile_definition*)&g_profile_Obj_ITA,
    (process_profile_definition*)&g_profile_Obj_Window,
    (process_profile_definition*)&g_profile_Obj_MetalBox,
    (process_profile_definition*)&g_profile_Obj_BBox,
    (process_profile_definition*)&g_profile_OBJ_MSIMA,
    (process_profile_definition*)&g_profile_OBJ_MYOGAN,
    (process_profile_definition*)&g_profile_B_ZANTS,
    (process_profile_definition*)&g_profile_Obj_ChainBlock,
    (process_profile_definition*)&g_profile_Obj_ChainWall,
    (process_profile_definition*)&g_profile_Obj_KkrGate,
    (process_profile_definition*)&g_profile_Obj_RiderGate,
    (process_profile_definition*)&g_profile_Obj_Onsen,
    (process_profile_definition*)&g_profile_Obj_Chest,
    (process_profile_definition*)&g_profile_Obj_Bemos,
    (process_profile_definition*)&g_profile_Obj_RopeBridge,
    (process_profile_definition*)&g_profile_Obj_WellCover,
    (process_profile_definition*)&g_profile_Obj_GraveStone,
    (process_profile_definition*)&g_profile_Obj_ZraRock,
    (process_profile_definition*)&g_profile_Obj_GraRock,
    (process_profile_definition*)&g_profile_Obj_GrzRock,
    (process_profile_definition*)&g_profile_GRA_WALL,
    (process_profile_definition*)&g_profile_OBJ_ONSEN_FIRE,
    (process_profile_definition*)&g_profile_Obj_Lv6bemos,
    (process_profile_definition*)&g_profile_Obj_Lv6bemos2,
    (process_profile_definition*)&g_profile_Obj_BarDesk,
    (process_profile_definition*)&g_profile_Obj_DigSnow,
    (process_profile_definition*)&g_profile_Obj_Ytaihou,
    (process_profile_definition*)&g_profile_Obj_Elevator,
    (process_profile_definition*)&g_profile_Obj_Lv6TogeRoll,
    (process_profile_definition*)&g_profile_Obj_Lv6TogeTrap,
    (process_profile_definition*)&g_profile_Obj_Lv6Tenbin,
    (process_profile_definition*)&g_profile_Obj_Lv6SwGate,
    (process_profile_definition*)&g_profile_Obj_Lv6Lblock,
    (process_profile_definition*)&g_profile_Obj_Lv6ChgGate,
    (process_profile_definition*)&g_profile_Obj_Lv6FuriTrap,
    (process_profile_definition*)&g_profile_Obj_Lv6SzGate,
    (process_profile_definition*)&g_profile_Obj_Lv4EdShutter,
    (process_profile_definition*)&g_profile_Obj_Lv4Gate,
    (process_profile_definition*)&g_profile_Obj_Lv4PoGate,
    (process_profile_definition*)&g_profile_Obj_Lv4SlideWall,
    (process_profile_definition*)&g_profile_Obj_Lv4HsTarget,
    (process_profile_definition*)&g_profile_Obj_Lv7PropY,
    (process_profile_definition*)&g_profile_Obj_Lv7BsGate,
    (process_profile_definition*)&g_profile_Obj_Lv8OptiLift,
    (process_profile_definition*)&g_profile_Obj_Lv8KekkaiTrap,
    (process_profile_definition*)&g_profile_Obj_Lv8Lift,
    (process_profile_definition*)&g_profile_Obj_Lv8UdFloor,
    (process_profile_definition*)&g_profile_Obj_Lv9SwShutter,
    (process_profile_definition*)&g_profile_Obj_TobyHouse,
    (process_profile_definition*)&g_profile_Obj_poCandle,
    (process_profile_definition*)&g_profile_Obj_Lv4DigSand,
    (process_profile_definition*)&g_profile_Obj_FallObj,
    (process_profile_definition*)&g_profile_Obj_SmgDoor,
    (process_profile_definition*)&g_profile_Obj_SwLight,
    (process_profile_definition*)&g_profile_Obj_Avalanche,
    (process_profile_definition*)&g_profile_Obj_MirrorScrew,
    (process_profile_definition*)&g_profile_Obj_MirrorSand,
    (process_profile_definition*)&g_profile_Obj_MirrorTable,
    (process_profile_definition*)&g_profile_Obj_MirrorChain,
    (process_profile_definition*)&g_profile_Obj_Mirror6Pole,
    (process_profile_definition*)&g_profile_Obj_SwSpinner,
    (process_profile_definition*)&g_profile_Obj_TDoor,
    (process_profile_definition*)&g_profile_Obj_Lv7Bridge,
    (process_profile_definition*)&g_profile_Obj_zrTurara,
    (process_profile_definition*)&g_profile_Obj_TakaraDai,
    (process_profile_definition*)&g_profile_Obj_Table,
    (process_profile_definition*)&g_profile_Obj_CatDoor,
    (process_profile_definition*)&g_profile_Obj_Gake,
    (process_profile_definition*)&g_profile_CSTAF,
    (process_profile_definition*)&g_profile_Obj_Lv4RailWall,
    (process_profile_definition*)&g_profile_Obj_Lv4Sand,
    (process_profile_definition*)&g_profile_Obj_PushDoor,
    (process_profile_definition*)&g_profile_PushDoor,
    (process_profile_definition*)&g_profile_Obj_GanonWall2,
    (process_profile_definition*)&g_profile_Obj_Lv4Bridge,
    (process_profile_definition*)&g_profile_Obj_Lv4Floor,
    (process_profile_definition*)&g_profile_Tag_Spinner,
    (process_profile_definition*)&g_profile_Obj_SwHang,
    (process_profile_definition*)&g_profile_Obj_RotStair,
    (process_profile_definition*)&g_profile_Obj_MagneArm,
    (process_profile_definition*)&g_profile_Obj_KWheel00,
    (process_profile_definition*)&g_profile_Obj_KWheel01,
    (process_profile_definition*)&g_profile_Obj_Ychndlr,
    (process_profile_definition*)&g_profile_Obj_PRElvtr,
    (process_profile_definition*)&g_profile_Obj_MHasu,
    (process_profile_definition*)&g_profile_Obj_YIblltray,
    (process_profile_definition*)&g_profile_Obj_Lv6EGate,
    (process_profile_definition*)&g_profile_Obj_PDtile,
    (process_profile_definition*)&g_profile_Obj_PDwall,
    (process_profile_definition*)&g_profile_Obj_Lv4PRwall,
    (process_profile_definition*)&g_profile_Obj_KLift00,
    (process_profile_definition*)&g_profile_B_OH,
    (process_profile_definition*)&g_profile_Obj_Lv4Chan,
    (process_profile_definition*)&g_profile_Obj_Lv3R10Saka,
    (process_profile_definition*)&g_profile_Obj_Lv3Water,
    (process_profile_definition*)&g_profile_Obj_Lv3Water2,
    (process_profile_definition*)&g_profile_OBJ_LV3WATERB,
    (process_profile_definition*)&g_profile_Obj_HBombkoya,
    (process_profile_definition*)&g_profile_Obj_SZbridge,
    (process_profile_definition*)&g_profile_Obj_KakarikoBrg,
    (process_profile_definition*)&g_profile_Obj_OrdinBrg,
    (process_profile_definition*)&g_profile_Obj_BurnBox,
    (process_profile_definition*)&g_profile_Obj_KJgjs,
    (process_profile_definition*)&g_profile_OBJ_IHASI,
    (process_profile_definition*)&g_profile_Obj_IceBlock,
    (process_profile_definition*)&g_profile_Obj_VolcanicBall,
    (process_profile_definition*)&g_profile_Obj_VolcanicBomb,
    (process_profile_definition*)&g_profile_Obj_VolcGnd,
    (process_profile_definition*)&g_profile_Obj_KKanban,
    (process_profile_definition*)&g_profile_E_PH,
    (process_profile_definition*)&g_profile_NPC_ZRA,
    (process_profile_definition*)&g_profile_Obj_Chandelier,
    (process_profile_definition*)&g_profile_Obj_Stopper2,
    (process_profile_definition*)&g_profile_DOOR20,
    (process_profile_definition*)&g_profile_Tag_Hinit,
    (process_profile_definition*)&g_profile_Tag_Hjump,
    (process_profile_definition*)&g_profile_Tag_AJnot,
    (process_profile_definition*)&g_profile_Tag_Hstop,
    (process_profile_definition*)&g_profile_CANOE,
    (process_profile_definition*)&g_profile_HORSE,
    (process_profile_definition*)&g_profile_E_WB,
    (process_profile_definition*)&g_profile_OBJ_ITO,
    (process_profile_definition*)&g_profile_OBJ_SW,
    (process_profile_definition*)&g_profile_SPINNER,
    (process_profile_definition*)&g_profile_B_OB,
    (process_profile_definition*)&g_profile_KAGO,
    (process_profile_definition*)&g_profile_E_YC,
    (process_profile_definition*)&g_profile_B_DS,
    (process_profile_definition*)&g_profile_B_DR,
    (process_profile_definition*)&g_profile_B_ZANTZ,
    (process_profile_definition*)&g_profile_B_ZANT,
    (process_profile_definition*)&g_profile_B_ZANTM,
    (process_profile_definition*)&g_profile_TBOX,
    (process_profile_definition*)&g_profile_TBOX2,
    (process_profile_definition*)&g_profile_ALINK,
    (process_profile_definition*)&g_profile_BOOMERANG,
    (process_profile_definition*)&g_profile_MIDNA,
    (process_profile_definition*)&g_profile_NPC_TK,
    (process_profile_definition*)&g_profile_NPC_WORM,
    (process_profile_definition*)&g_profile_PPolamp,
    (process_profile_definition*)&g_profile_BkyRock,
    (process_profile_definition*)&g_profile_HITOBJ,
    (process_profile_definition*)&g_profile_EP,
    (process_profile_definition*)&g_profile_COW,
    (process_profile_definition*)&g_profile_PERU,
    (process_profile_definition*)&g_profile_NI,
    (process_profile_definition*)&g_profile_NPC_TKJ2,
    (process_profile_definition*)&g_profile_SQ,
    (process_profile_definition*)&g_profile_NPC_SQ,
    (process_profile_definition*)&g_profile_DO,
    (process_profile_definition*)&g_profile_NPC_NE,
    (process_profile_definition*)&g_profile_NPC_TR,
    (process_profile_definition*)&g_profile_NPC_LF,
    (process_profile_definition*)&g_profile_OBJ_FOOD,
    (process_profile_definition*)&g_profile_OBJ_KI,
    (process_profile_definition*)&g_profile_OBJ_KITA,
    (process_profile_definition*)&g_profile_OBJ_KEY,
    (process_profile_definition*)&g_profile_OBJ_KEYHOLE,
    (process_profile_definition*)&g_profile_Obj_Lv5Key,
    (process_profile_definition*)&g_profile_OBJ_LP,
    (process_profile_definition*)&g_profile_OBJ_TATIGI,
    (process_profile_definition*)&g_profile_OBJ_ROCK,
    (process_profile_definition*)&g_profile_OBJ_WFLAG,
    (process_profile_definition*)&g_profile_OBJ_KAGE,
    (process_profile_definition*)&g_profile_OBJ_KANBAN2,
    (process_profile_definition*)&g_profile_OBJ_BALLOON,
    (process_profile_definition*)&g_profile_OBJ_SUISYA,
    (process_profile_definition*)&g_profile_OBJ_OILTUBO,
    (process_profile_definition*)&g_profile_OBJ_ROTEN,
    (process_profile_definition*)&g_profile_OBJ_SSDRINK,
    (process_profile_definition*)&g_profile_OBJ_SSITEM,
    (process_profile_definition*)&g_profile_TAG_SSDRINK,
    (process_profile_definition*)&g_profile_TAG_BTLITM,
    (process_profile_definition*)&g_profile_TAG_LV5SOUP,
    (process_profile_definition*)&g_profile_TAG_MNLIGHT,
    (process_profile_definition*)&g_profile_TAG_SHOPCAM,
    (process_profile_definition*)&g_profile_TAG_SHOPITM,
    (process_profile_definition*)&g_profile_OBJ_NDOOR,
    (process_profile_definition*)&g_profile_OBJ_UDOOR,
    (process_profile_definition*)&g_profile_OBJ_USAKU,
    (process_profile_definition*)&g_profile_Obj_SM_DOOR,
    (process_profile_definition*)&g_profile_OBJ_BED,
    (process_profile_definition*)&g_profile_OBJ_BOUMATO,
    (process_profile_definition*)&g_profile_OBJ_ITAMATO,
    (process_profile_definition*)&g_profile_OBJ_NOUGU,
    (process_profile_definition*)&g_profile_OBJ_STICK,
    (process_profile_definition*)&g_profile_OBJ_MIE,
    (process_profile_definition*)&g_profile_OBJ_SEKIDOOR,
    (process_profile_definition*)&g_profile_OBJ_SEKIZO,
    (process_profile_definition*)&g_profile_OBJ_SMTILE,
    (process_profile_definition*)&g_profile_NPC_FISH,
    (process_profile_definition*)&g_profile_MG_FISH,
    (process_profile_definition*)&g_profile_FSHOP,
    (process_profile_definition*)&g_profile_NPC_DU,
    (process_profile_definition*)&g_profile_DISAPPEAR,
    (process_profile_definition*)&g_profile_Obj_Mato,
    (process_profile_definition*)&g_profile_Obj_Flag,
    (process_profile_definition*)&g_profile_Obj_Flag2,
    (process_profile_definition*)&g_profile_Obj_Flag3,
    (process_profile_definition*)&g_profile_Obj_GOMIKABE,
    (process_profile_definition*)&g_profile_Obj_Yousei,
    (process_profile_definition*)&g_profile_Obj_Kabuto,
    (process_profile_definition*)&g_profile_Obj_Cho,
    (process_profile_definition*)&g_profile_Obj_Kuw,
    (process_profile_definition*)&g_profile_Obj_Nan,
    (process_profile_definition*)&g_profile_Obj_Dan,
    (process_profile_definition*)&g_profile_Obj_Kam,
    (process_profile_definition*)&g_profile_Obj_Ten,
    (process_profile_definition*)&g_profile_Obj_Ari,
    (process_profile_definition*)&g_profile_Obj_Kag,
    (process_profile_definition*)&g_profile_Obj_Batta,
    (process_profile_definition*)&g_profile_Obj_Tombo,
    (process_profile_definition*)&g_profile_Obj_Kat,
    (process_profile_definition*)&g_profile_Obj_H_Saku,
    (process_profile_definition*)&g_profile_Obj_Yobikusa,
    (process_profile_definition*)&g_profile_Obj_KazeNeko,
    (process_profile_definition*)&g_profile_Obj_KznkArm,
    (process_profile_definition*)&g_profile_Obj_NamePlate,
    (process_profile_definition*)&g_profile_Obj_OnCloth,
    (process_profile_definition*)&g_profile_Obj_LndRope,
    (process_profile_definition*)&g_profile_Obj_ItaRope,
    (process_profile_definition*)&g_profile_Obj_Sakuita,
    (process_profile_definition*)&g_profile_Obj_Laundry,
    (process_profile_definition*)&g_profile_WarpBug,
    (process_profile_definition*)&g_profile_Izumi_Gate,
    (process_profile_definition*)&g_profile_Obj_Fchain,
    (process_profile_definition*)&g_profile_Obj_Wchain,
    (process_profile_definition*)&g_profile_Tag_Attp,
    (process_profile_definition*)&g_profile_Obj_Tornado,
    (process_profile_definition*)&g_profile_Obj_Tornado2,
    (process_profile_definition*)&g_profile_Obj_FirePillar,
    (process_profile_definition*)&g_profile_Obj_FirePillar2,
    (process_profile_definition*)&g_profile_Obj_InoBone,
    (process_profile_definition*)&g_profile_Obj_Stopper,
    (process_profile_definition*)&g_profile_Obj_MHole,
    (process_profile_definition*)&g_profile_Tag_Magne,
    (process_profile_definition*)&g_profile_Obj_BossWarp,
    (process_profile_definition*)&g_profile_Obj_WoodPendulum,
    (process_profile_definition*)&g_profile_Obj_WdStick,
    (process_profile_definition*)&g_profile_Obj_StairBlock,
    (process_profile_definition*)&g_profile_Obj_Geyser,
    (process_profile_definition*)&g_profile_Tag_KtOnFire,
    (process_profile_definition*)&g_profile_Obj_FireWood,
    (process_profile_definition*)&g_profile_Obj_FireWood2,
    (process_profile_definition*)&g_profile_Obj_GpTaru,
    (process_profile_definition*)&g_profile_Obj_OnsenTaru,
    (process_profile_definition*)&g_profile_Obj_KiPot,
    (process_profile_definition*)&g_profile_TBOX_SW,
    (process_profile_definition*)&g_profile_Obj_SwChain,
    (process_profile_definition*)&g_profile_Obj_WoodenSword,
    (process_profile_definition*)&g_profile_Obj_StoneMark,
    (process_profile_definition*)&g_profile_Obj_Lv3Candle,
    (process_profile_definition*)&g_profile_Tag_Lv4Candle,
    (process_profile_definition*)&g_profile_Tag_Lv4CandleDm,
    (process_profile_definition*)&g_profile_Obj_DamCps,
    (process_profile_definition*)&g_profile_Obj_Smoke,
    (process_profile_definition*)&g_profile_Obj_WaterFall,
    (process_profile_definition*)&g_profile_Obj_ZoraCloth,
    (process_profile_definition*)&g_profile_Obj_poFire,
    (process_profile_definition*)&g_profile_Tag_poFire,
    (process_profile_definition*)&g_profile_Obj_glowSphere,
    (process_profile_definition*)&g_profile_Tag_LightBall,
    (process_profile_definition*)&g_profile_SwLBall,
    (process_profile_definition*)&g_profile_SwBall,
    (process_profile_definition*)&g_profile_Obj_WaterEff,
    (process_profile_definition*)&g_profile_Tag_RiverBack,
    (process_profile_definition*)&g_profile_Tag_KagoFall,
    (process_profile_definition*)&g_profile_Tag_Lv2PrChk,
    (process_profile_definition*)&g_profile_Obj_Lv4Gear,
    (process_profile_definition*)&g_profile_Obj_MasterSword,
    (process_profile_definition*)&g_profile_Obj_WoodStatue,
    (process_profile_definition*)&g_profile_Obj_Fan,
    (process_profile_definition*)&g_profile_Obj_IceLeaf,
    (process_profile_definition*)&g_profile_Obj_zrTuraraRc,
    (process_profile_definition*)&g_profile_Tag_RetRoom,
    (process_profile_definition*)&g_profile_Obj_WindStone,
    (process_profile_definition*)&g_profile_Tag_WaraHowl,
    (process_profile_definition*)&g_profile_Obj_SCannon,
    (process_profile_definition*)&g_profile_Obj_SmWStone,
    (process_profile_definition*)&g_profile_Obj_SCannonCrs,
    (process_profile_definition*)&g_profile_Tag_SnowEff,
    (process_profile_definition*)&g_profile_Tag_CstaSw,
    (process_profile_definition*)&g_profile_Tag_Lv6CstaSw,
    (process_profile_definition*)&g_profile_Obj_awaPlar,
    (process_profile_definition*)&g_profile_Obj_poTbox,
    (process_profile_definition*)&g_profile_Obj_TimeFire,
    (process_profile_definition*)&g_profile_Obj_TMoon,
    (process_profile_definition*)&g_profile_Obj_GanonWall,
    (process_profile_definition*)&g_profile_Obj_Prop,
    (process_profile_definition*)&g_profile_CSTATUE,
    (process_profile_definition*)&g_profile_Obj_SwBallA,
    (process_profile_definition*)&g_profile_Obj_SwBallB,
    (process_profile_definition*)&g_profile_Obj_SnowSoup,
    (process_profile_definition*)&g_profile_Obj_Nagaisu,
    (process_profile_definition*)&g_profile_Obj_RCircle,
    (process_profile_definition*)&g_profile_Obj_Picture,
    (process_profile_definition*)&g_profile_Tag_SetBall,
    (process_profile_definition*)&g_profile_Tag_SmkEmt,
    (process_profile_definition*)&g_profile_SwTime,
    (process_profile_definition*)&g_profile_Obj_HFtr,
    (process_profile_definition*)&g_profile_Obj_HBarrel,
    (process_profile_definition*)&g_profile_Obj_Crystal,
    (process_profile_definition*)&g_profile_Obj_SCannonTen,
    (process_profile_definition*)&g_profile_Obj_SwBallC,
    (process_profile_definition*)&g_profile_SCENE_EXIT2,
    (process_profile_definition*)&g_profile_Obj_Hata,
    (process_profile_definition*)&g_profile_Obj_ToaruMaki,
    (process_profile_definition*)&g_profile_Tag_AttackItem,
    (process_profile_definition*)&g_profile_Tag_RmbitSw,
    (process_profile_definition*)&g_profile_Obj_Sword,
    (process_profile_definition*)&g_profile_Tag_Spring,
    (process_profile_definition*)&g_profile_Tag_Statue,
    (process_profile_definition*)&g_profile_E_AI,
    (process_profile_definition*)&g_profile_E_GS,
    (process_profile_definition*)&g_profile_E_GOB,
    (process_profile_definition*)&g_profile_E_DD,
    (process_profile_definition*)&g_profile_E_DN,
    (process_profile_definition*)&g_profile_E_S1,
    (process_profile_definition*)&g_profile_E_MF,
    (process_profile_definition*)&g_profile_E_SG,
    (process_profile_definition*)&g_profile_E_BS,
    (process_profile_definition*)&g_profile_E_SF,
    (process_profile_definition*)&g_profile_E_SH,
    (process_profile_definition*)&g_profile_E_DF,
    (process_profile_definition*)&g_profile_E_GM,
    (process_profile_definition*)&g_profile_E_MD,
    (process_profile_definition*)&g_profile_E_SM,
    (process_profile_definition*)&g_profile_E_SM2,
    (process_profile_definition*)&g_profile_E_ST,
    (process_profile_definition*)&g_profile_E_ST_LINE,
    (process_profile_definition*)&g_profile_E_SB,
    (process_profile_definition*)&g_profile_E_TH,
    (process_profile_definition*)&g_profile_E_CR,
    (process_profile_definition*)&g_profile_E_CR_EGG,
    (process_profile_definition*)&g_profile_E_DB,
    (process_profile_definition*)&g_profile_E_DB_LEAF,
    (process_profile_definition*)&g_profile_E_GA,
    (process_profile_definition*)&g_profile_E_GB,
    (process_profile_definition*)&g_profile_E_HB,
    (process_profile_definition*)&g_profile_E_HB_LEAF,
    (process_profile_definition*)&g_profile_E_HZELDA,
    (process_profile_definition*)&g_profile_E_YD,
    (process_profile_definition*)&g_profile_E_YH,
    (process_profile_definition*)&g_profile_E_YD_LEAF,
    (process_profile_definition*)&g_profile_E_HM,
    (process_profile_definition*)&g_profile_E_TK,
    (process_profile_definition*)&g_profile_E_TK2,
    (process_profile_definition*)&g_profile_E_TK_BALL,
    (process_profile_definition*)&g_profile_E_RB,
    (process_profile_definition*)&g_profile_E_RD,
    (process_profile_definition*)&g_profile_E_RDB,
    (process_profile_definition*)&g_profile_E_RDY,
    (process_profile_definition*)&g_profile_E_FM,
    (process_profile_definition*)&g_profile_E_FS,
    (process_profile_definition*)&g_profile_E_PM,
    (process_profile_definition*)&g_profile_E_PO,
    (process_profile_definition*)&g_profile_E_MB,
    (process_profile_definition*)&g_profile_E_MK,
    (process_profile_definition*)&g_profile_E_MM,
    (process_profile_definition*)&g_profile_E_FZ,
    (process_profile_definition*)&g_profile_E_ZS,
    (process_profile_definition*)&g_profile_E_KK,
    (process_profile_definition*)&g_profile_E_HP,
    (process_profile_definition*)&g_profile_E_ZH,
    (process_profile_definition*)&g_profile_E_ZM,
    (process_profile_definition*)&g_profile_E_PZ,
    (process_profile_definition*)&g_profile_E_FB,
    (process_profile_definition*)&g_profile_E_FK,
    (process_profile_definition*)&g_profile_E_MS,
    (process_profile_definition*)&g_profile_E_NEST,
    (process_profile_definition*)&g_profile_E_NZ,
    (process_profile_definition*)&g_profile_E_BA,
    (process_profile_definition*)&g_profile_E_BU,
    (process_profile_definition*)&g_profile_E_BUG,
    (process_profile_definition*)&g_profile_E_BEE,
    (process_profile_definition*)&g_profile_E_IS,
    (process_profile_definition*)&g_profile_E_KG,
    (process_profile_definition*)&g_profile_E_KR,
    (process_profile_definition*)&g_profile_E_SW,
    (process_profile_definition*)&g_profile_E_GE,
    (process_profile_definition*)&g_profile_Tag_WatchGe,
    (process_profile_definition*)&g_profile_E_YM,
    (process_profile_definition*)&g_profile_E_YM_TAG,
    (process_profile_definition*)&g_profile_E_YMB,
    (process_profile_definition*)&g_profile_Tag_FWall,
    (process_profile_definition*)&g_profile_Tag_WaterFall,
    (process_profile_definition*)&g_profile_E_YK,
    (process_profile_definition*)&g_profile_E_YR,
    (process_profile_definition*)&g_profile_E_YG,
    (process_profile_definition*)&g_profile_E_HZ,
    (process_profile_definition*)&g_profile_E_WS,
    (process_profile_definition*)&g_profile_E_OC,
    (process_profile_definition*)&g_profile_E_OT,
    (process_profile_definition*)&g_profile_E_DT,
    (process_profile_definition*)&g_profile_E_BG,
    (process_profile_definition*)&g_profile_E_OctBg,
    (process_profile_definition*)&g_profile_DR,
    (process_profile_definition*)&g_profile_L7lowDr,
    (process_profile_definition*)&g_profile_L7ODR,
    (process_profile_definition*)&g_profile_E_TT,
    (process_profile_definition*)&g_profile_E_DK,
    (process_profile_definition*)&g_profile_E_VT,
    (process_profile_definition*)&g_profile_E_WW,
    (process_profile_definition*)&g_profile_E_GI,
    (process_profile_definition*)&g_profile_B_BH,
    (process_profile_definition*)&g_profile_B_BQ,
    (process_profile_definition*)&g_profile_B_GM,
    (process_profile_definition*)&g_profile_B_GND,
    (process_profile_definition*)&g_profile_B_GO,
    (process_profile_definition*)&g_profile_B_OH2,
    (process_profile_definition*)&g_profile_B_YO,
    (process_profile_definition*)&g_profile_B_YOI,
    (process_profile_definition*)&g_profile_B_TN,
    (process_profile_definition*)&g_profile_B_GG,
    (process_profile_definition*)&g_profile_B_DRE,
    (process_profile_definition*)&g_profile_B_MGN,
    (process_profile_definition*)&g_profile_E_WAP,
    (process_profile_definition*)&g_profile_ITEM,
    (process_profile_definition*)&g_profile_Obj_SmallKey,
    (process_profile_definition*)&g_profile_Obj_Kantera,
    (process_profile_definition*)&g_profile_Obj_LifeContainer,
    (process_profile_definition*)&g_profile_Obj_Shield,
    (process_profile_definition*)&g_profile_Demo_Item,
    (process_profile_definition*)&g_profile_ShopItem,
    (process_profile_definition*)&g_profile_Obj_Drop,
    (process_profile_definition*)&g_profile_OBJ_RW,
    (process_profile_definition*)&g_profile_NBOMB,
    (process_profile_definition*)&g_profile_TAG_CSW,
    (process_profile_definition*)&g_profile_TAG_QS,
    (process_profile_definition*)&g_profile_HOZELDA,
    (process_profile_definition*)&g_profile_SWC00,
    (process_profile_definition*)&g_profile_KNOB20,
    (process_profile_definition*)&g_profile_DBDOOR,
    (process_profile_definition*)&g_profile_BOSS_DOOR,
    (process_profile_definition*)&g_profile_L1BOSS_DOOR,
    (process_profile_definition*)&g_profile_L1MBOSS_DOOR,
    (process_profile_definition*)&g_profile_L5BOSS_DOOR,
    (process_profile_definition*)&g_profile_DSHUTTER,
    (process_profile_definition*)&g_profile_SPIRAL_DOOR,
    (process_profile_definition*)&g_profile_Tag_ChgRestart,
    (process_profile_definition*)&g_profile_Tag_Restart,
    (process_profile_definition*)&g_profile_ANDSW,
    (process_profile_definition*)&g_profile_ANDSW2,
    (process_profile_definition*)&g_profile_MYNA,
    (process_profile_definition*)&g_profile_NPC_GND,
    (process_profile_definition*)&g_profile_NPC_GRA,
    (process_profile_definition*)&g_profile_NPC_GRC,
    (process_profile_definition*)&g_profile_NPC_GRD,
    (process_profile_definition*)&g_profile_NPC_GRM,
    (process_profile_definition*)&g_profile_NPC_GRMC,
    (process_profile_definition*)&g_profile_NPC_GRO,
    (process_profile_definition*)&g_profile_NPC_GRR,
    (process_profile_definition*)&g_profile_NPC_GRS,
    (process_profile_definition*)&g_profile_NPC_GRZ,
    (process_profile_definition*)&g_profile_NPC_YAMID,
    (process_profile_definition*)&g_profile_NPC_YAMIT,
    (process_profile_definition*)&g_profile_NPC_YAMIS,
    (process_profile_definition*)&g_profile_NPC_BLUENS,
    (process_profile_definition*)&g_profile_NPC_KAKASHI,
    (process_profile_definition*)&g_profile_NPC_KDK,
    (process_profile_definition*)&g_profile_NPC_ARU,
    (process_profile_definition*)&g_profile_NPC_BANS,
    (process_profile_definition*)&g_profile_NPC_BESU,
    (process_profile_definition*)&g_profile_NPC_BOU,
    (process_profile_definition*)&g_profile_NPC_BOU_S,
    (process_profile_definition*)&g_profile_NPC_CLERKA,
    (process_profile_definition*)&g_profile_NPC_CLERKB,
    (process_profile_definition*)&g_profile_NPC_CLERKT,
    (process_profile_definition*)&g_profile_NPC_WRESTLER,
    (process_profile_definition*)&g_profile_Tag_Arena,
    (process_profile_definition*)&g_profile_Tag_Instruction,
    (process_profile_definition*)&g_profile_NPC_DOC,
    (process_profile_definition*)&g_profile_NPC_GWOLF,
    (process_profile_definition*)&g_profile_NPC_LEN,
    (process_profile_definition*)&g_profile_NPC_LUD,
    (process_profile_definition*)&g_profile_NPC_FAIRY_SEIREI,
    (process_profile_definition*)&g_profile_NPC_FAIRY,
    (process_profile_definition*)&g_profile_NPC_HANJO,
    (process_profile_definition*)&g_profile_NPC_HENNA,
    (process_profile_definition*)&g_profile_NPC_HENNA0,
    (process_profile_definition*)&g_profile_NPC_HOZ,
    (process_profile_definition*)&g_profile_NPC_JAGAR,
    (process_profile_definition*)&g_profile_NPC_KKRI,
    (process_profile_definition*)&g_profile_NPC_KN,
    (process_profile_definition*)&g_profile_KN_BULLET,
    (process_profile_definition*)&g_profile_NPC_KNJ,
    (process_profile_definition*)&g_profile_NPC_KOLIN,
    (process_profile_definition*)&g_profile_NPC_KOLINB,
    (process_profile_definition*)&g_profile_NPC_KYURY,
    (process_profile_definition*)&g_profile_NPC_MARO,
    (process_profile_definition*)&g_profile_NPC_MIDP,
    (process_profile_definition*)&g_profile_NPC_MOI,
    (process_profile_definition*)&g_profile_NPC_RACA,
    (process_profile_definition*)&g_profile_NPC_SARU,
    (process_profile_definition*)&g_profile_NPC_SEIB,
    (process_profile_definition*)&g_profile_NPC_SEIC,
    (process_profile_definition*)&g_profile_NPC_SEID,
    (process_profile_definition*)&g_profile_NPC_SEIRA,
    (process_profile_definition*)&g_profile_NPC_SERA2,
    (process_profile_definition*)&g_profile_NPC_SEIREI,
    (process_profile_definition*)&g_profile_NPC_SHAMAN,
    (process_profile_definition*)&g_profile_NPC_SMARO,
    (process_profile_definition*)&g_profile_NPC_SOLA,
    (process_profile_definition*)&g_profile_NPC_TARO,
    (process_profile_definition*)&g_profile_NPC_PACHI_BESU,
    (process_profile_definition*)&g_profile_NPC_PACHI_TARO,
    (process_profile_definition*)&g_profile_NPC_PACHI_MARO,
    (process_profile_definition*)&g_profile_TAG_PATI,
    (process_profile_definition*)&g_profile_NPC_THE,
    (process_profile_definition*)&g_profile_NPC_TKJ,
    (process_profile_definition*)&g_profile_NPC_TKS,
    (process_profile_definition*)&g_profile_NPC_TKC,
    (process_profile_definition*)&g_profile_OBJ_TKS,
    (process_profile_definition*)&g_profile_NPC_TOBY,
    (process_profile_definition*)&g_profile_NPC_URI,
    (process_profile_definition*)&g_profile_NPC_YELIA,
    (process_profile_definition*)&g_profile_NPC_YKM,
    (process_profile_definition*)&g_profile_NPC_YKW,
    (process_profile_definition*)&g_profile_NPC_ZANB,
    (process_profile_definition*)&g_profile_NPC_ZANT,
    (process_profile_definition*)&g_profile_NPC_ZELDA,
    (process_profile_definition*)&g_profile_NPC_ZELR,
    (process_profile_definition*)&g_profile_NPC_ZELRO,
    (process_profile_definition*)&g_profile_OBJ_ZRAFREEZE,
    (process_profile_definition*)&g_profile_NPC_ZRC,
    (process_profile_definition*)&g_profile_NPC_ZRZ,
    (process_profile_definition*)&g_profile_ZRA_MARK,
    (process_profile_definition*)&g_profile_MYNA2,
    (process_profile_definition*)&g_profile_TAG_MYNA2,
    (process_profile_definition*)&g_profile_NPC_CD3,
    (process_profile_definition*)&g_profile_Tag_Schedule,
    (process_profile_definition*)&g_profile_Tag_Escape,
    (process_profile_definition*)&g_profile_NPC_CHAT,
    (process_profile_definition*)&g_profile_NPC_SOLDIERa,
    (process_profile_definition*)&g_profile_NPC_SOLDIERb,
    (process_profile_definition*)&g_profile_PASSER_MNG,
    (process_profile_definition*)&g_profile_NPC_PASSER,
    (process_profile_definition*)&g_profile_NPC_PASSER2,
    (process_profile_definition*)&g_profile_NPC_POST,
    (process_profile_definition*)&g_profile_NPC_POUYA,
    (process_profile_definition*)&g_profile_FORMATION_MNG,
    (process_profile_definition*)&g_profile_NPC_FGUARD,
    (process_profile_definition*)&g_profile_GUARD_MNG,
    (process_profile_definition*)&g_profile_TAG_GUARD,
    (process_profile_definition*)&g_profile_NPC_GUARD,
    (process_profile_definition*)&g_profile_NPC_ASH,
    (process_profile_definition*)&g_profile_NPC_ASHB,
    (process_profile_definition*)&g_profile_NPC_SHAD,
    (process_profile_definition*)&g_profile_NPC_RAFREL,
    (process_profile_definition*)&g_profile_NPC_MOIR,
    (process_profile_definition*)&g_profile_NPC_IMPAL,
    (process_profile_definition*)&g_profile_NPC_SHOE,
    (process_profile_definition*)&g_profile_NPC_DOORBOY,
    (process_profile_definition*)&g_profile_NPC_PRAYER,
    (process_profile_definition*)&g_profile_NPC_KASIHANA,
    (process_profile_definition*)&g_profile_NPC_KASIKYU,
    (process_profile_definition*)&g_profile_NPC_KASIMICH,
    (process_profile_definition*)&g_profile_NPC_DRSOL,
    (process_profile_definition*)&g_profile_NPC_CHIN,
    (process_profile_definition*)&g_profile_NPC_INS,
    (process_profile_definition*)&g_profile_NPC_SHOP0,
    (process_profile_definition*)&g_profile_NPC_MK,
    (process_profile_definition*)&g_profile_NPC_P2,
    (process_profile_definition*)&g_profile_KYTAG00,
    (process_profile_definition*)&g_profile_KYTAG01,
    (process_profile_definition*)&g_profile_KYTAG02,
    (process_profile_definition*)&g_profile_KYTAG03,
    (process_profile_definition*)&g_profile_KYTAG04,
    (process_profile_definition*)&g_profile_KYTAG05,
    (process_profile_definition*)&g_profile_KYTAG06,
    (process_profile_definition*)&g_profile_KYTAG07,
    (process_profile_definition*)&g_profile_KYTAG08,
    (process_profile_definition*)&g_profile_KYTAG09,
    (process_profile_definition*)&g_profile_KYTAG10,
    (process_profile_definition*)&g_profile_KYTAG11,
    (process_profile_definition*)&g_profile_KYTAG12,
    (process_profile_definition*)&g_profile_KYTAG13,
    (process_profile_definition*)&g_profile_KYTAG14,
    (process_profile_definition*)&g_profile_KYTAG15,
    (process_profile_definition*)&g_profile_KYTAG16,
    (process_profile_definition*)&g_profile_KYTAG17,
    (process_profile_definition*)&g_profile_Ykgr,
    (process_profile_definition*)&g_profile_TALK,
    (process_profile_definition*)&g_profile_Obj_Crope,
    (process_profile_definition*)&g_profile_Obj_Bombf,
    (process_profile_definition*)&g_profile_Obj_BkLeaf,
    (process_profile_definition*)&g_profile_Tag_Mhint,
    (process_profile_definition*)&g_profile_Tag_Mmsg,
    (process_profile_definition*)&g_profile_Tag_Mwait,
    (process_profile_definition*)&g_profile_Tag_Mstop,
    (process_profile_definition*)&g_profile_Tag_Stream,
    (process_profile_definition*)&g_profile_Tag_Sppath,
    (process_profile_definition*)&g_profile_Tag_Wljump,
    (process_profile_definition*)&g_profile_Tag_TWGate,
    (process_profile_definition*)&g_profile_Tag_Lv6Gate,
    (process_profile_definition*)&g_profile_Tag_Lv7Gate,
    (process_profile_definition*)&g_profile_Tag_Lv8Gate,
    (process_profile_definition*)&g_profile_Tag_TheBHint,
    (process_profile_definition*)&g_profile_Tag_Assist,
    (process_profile_definition*)&g_profile_DEMO00,
    (process_profile_definition*)&g_profile_TAG_CAMERA,
    (process_profile_definition*)&g_profile_TAG_CHKPOINT,
    (process_profile_definition*)&g_profile_TAG_EVENT,
    (process_profile_definition*)&g_profile_TAG_EVT,
    (process_profile_definition*)&g_profile_TAG_TELOP,
    (process_profile_definition*)&g_profile_TAG_HOWL,
    (process_profile_definition*)&g_profile_TAG_MSG,
    (process_profile_definition*)&g_profile_TAG_LANTERN,
    (process_profile_definition*)&g_profile_Tag_Mist,
    (process_profile_definition*)&g_profile_DMIDNA,
    (process_profile_definition*)&g_profile_KY_THUNDER,
    (process_profile_definition*)&g_profile_VRBOX,
    (process_profile_definition*)&g_profile_VRBOX2,
    (process_profile_definition*)&g_profile_BG,
    (process_profile_definition*)&g_profile_SET_BG_OBJ,
    (process_profile_definition*)&g_profile_BG_OBJ,
    (process_profile_definition*)&g_profile_MIRROR,
    (process_profile_definition*)&g_profile_MOVIE_PLAYER,
    (process_profile_definition*)&g_profile_TITLE,
    (process_profile_definition*)&g_profile_FR,
    (process_profile_definition*)&g_profile_ECONT,
    (process_profile_definition*)&g_profile_MG_ROD,
    (process_profile_definition*)&g_profile_E_ARROW,
    (process_profile_definition*)&g_profile_BULLET,
    (process_profile_definition*)&g_profile_SWHIT0,
    (process_profile_definition*)&g_profile_E_TH_BALL,
    (process_profile_definition*)&g_profile_TAG_EVTAREA,
    (process_profile_definition*)&g_profile_TAG_EVTMSG,
    (process_profile_definition*)&g_profile_TAG_KMSG,
    (process_profile_definition*)&g_profile_TAG_PUSH,
    (process_profile_definition*)&g_profile_E_MK_BO,
    (process_profile_definition*)&g_profile_E_MM_MT,
    (process_profile_definition*)&g_profile_OBJ_KBOX,
    (process_profile_definition*)&g_profile_OBJ_FW,
    (process_profile_definition*)&g_profile_B_GOS,
    (process_profile_definition*)&g_profile_OBJ_YSTONE,
    (process_profile_definition*)&g_profile_MANT,
    (process_profile_definition*)&g_profile_CROD,
    (process_profile_definition*)&g_profile_OBJ_PLEAF,
    (process_profile_definition*)&g_profile_OBJ_KBACKET,
    (process_profile_definition*)&g_profile_OBJ_YBAG,
    (process_profile_definition*)&g_profile_OBJ_PUMPKIN,
    (process_profile_definition*)&g_profile_OBJ_AUTOMATA,
    (process_profile_definition*)&g_profile_OBJ_GADGET,
    (process_profile_definition*)&g_profile_OBJ_KAGO,
    (process_profile_definition*)&g_profile_Obj_Carry,
    (process_profile_definition*)&g_profile_Obj_Stone,
    (process_profile_definition*)&g_profile_OBJ_HB,
    (process_profile_definition*)&g_profile_NPC_INKO,
    (process_profile_definition*)&g_profile_BD,
    (process_profile_definition*)&g_profile_Obj_Eff,
    (process_profile_definition*)&g_profile_WPILLAR,
    (process_profile_definition*)&g_profile_WMARK,
    (process_profile_definition*)&g_profile_E_BI,
    (process_profile_definition*)&g_profile_E_BI_LEAF,
    (process_profile_definition*)&g_profile_START_AND_GOAL,
    (process_profile_definition*)&g_profile_NPC_DF,
    (process_profile_definition*)&g_profile_ARROW,
    (process_profile_definition*)&g_profile_PATH_LINE,
    (process_profile_definition*)&g_profile_TAG_ALLMATO,
    (process_profile_definition*)&g_profile_Obj_Timer,
    (process_profile_definition*)&g_profile_SCENE_EXIT,
    (process_profile_definition*)&g_profile_CAMERA,
    (process_profile_definition*)&g_profile_CAMERA2,
    (process_profile_definition*)&g_profile_SUSPEND,
    (process_profile_definition*)&g_profile_GRASS,
    (process_profile_definition*)&g_profile_KYEFF,
    (process_profile_definition*)&g_profile_KYEFF2,
    (process_profile_definition*)&g_profile_MSG_OBJECT,
    (process_profile_definition*)&g_profile_MENUWINDOW,
    (process_profile_definition*)&g_profile_TIMER,
    (process_profile_definition*)&g_profile_METER2,
    (process_profile_definition*)&g_profile_GAMEOVER,
};

/* 80456C58-80456C6C 000078 0014+00 0/0 1/1 0/0 .text            ModuleProlog */
extern "C" void ModuleProlog() {
    g_fpcPf_ProfileList_p = g_fpcPfLst_ProfileList;
}

/* 80456C6C-80456C7C 00008C 0010+00 0/0 1/1 0/0 .text            ModuleEpilog */
extern "C" void ModuleEpilog() {
    g_fpcPf_ProfileList_p = NULL;
}
