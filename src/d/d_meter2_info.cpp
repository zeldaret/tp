#include "d/dolzel.h"

#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JMessage/JMessage.h"
#include "JSystem/JUtility/JUTFont.h"
#include "d/actor/d_a_npc.h"
#include "d/d_item_data.h"
#include "d/d_meter2.h"
#include "d/d_meter2_info.h"
#include "d/d_meter_map.h"
#include "d/d_msg_class.h"
#include "d/d_msg_object.h"

enum ITEMICON_RES_FILE_ID {
    ITEMICON_BTI_ARI_MESU_00=0x3,
    ITEMICON_BTI_ARI_OSU_00=0x4,
    ITEMICON_BTI_BATTA_MESU_00=0x5,
    ITEMICON_BTI_BATTA_OSU_00=0x6,
    ITEMICON_BTI_CHOCHO_MESU_00=0x7,
    ITEMICON_BTI_CHOCHO_OSU_00=0x8,
    ITEMICON_BTI_DANGOMUSHI_MESU_00=0x9,
    ITEMICON_BTI_DANGOMUSHI_OSU_00=0xA,
    ITEMICON_BTI_IM_BOM_MUSHI_48=0xB,
    ITEMICON_BTI_IM_BOM_NORMAL_48=0xC,
    ITEMICON_BTI_IM_BOM_SUICHU_48=0xD,
    ITEMICON_BTI_IM_BOTTLE=0xE,
    ITEMICON_BTI_IM_BOTTLE_HATCHINOKO=0xF,
    ITEMICON_BTI_IM_BOTTLE_MIMIZU=0x10,
    ITEMICON_BTI_IM_BOTTLE_NAKAMI=0x11,
    ITEMICON_BTI_IM_BOTTLE_NAKAMI_HALF=0x12,
    ITEMICON_BTI_IM_BOTTLE_NAKAMI_NAKAMI_SOUP=0x13,
    ITEMICON_BTI_IM_BOTTLE_POU=0x14,
    ITEMICON_BTI_IM_CHEESE_48=0x15,
    ITEMICON_BTI_IM_COPY_ROD_48=0x16,
    ITEMICON_BTI_IM_D_MKEY_3PARTS_MIX_48=0x17,
    ITEMICON_BTI_IM_FISHING_48=0x18,
    ITEMICON_BTI_IM_FISHING_HACHINOKO_48=0x19,
    ITEMICON_BTI_IM_FISHING_MIMIZU_48=0x1A,
    ITEMICON_BTI_IM_FISHING_SANGO_MIMIKAZARI=0x1B,
    ITEMICON_BTI_IM_FISHING_SANGO_MIMIKAZARI_HACHINOKO=0x1C,
    ITEMICON_BTI_IM_FISHING_SANGO_MIMIKAZARI_MIMIZU=0x1D,
    ITEMICON_BTI_IM_HONNY_48=0x1E,
    ITEMICON_BTI_IM_HOOKSHOT_48=0x1F,
    ITEMICON_BTI_IM_IRONBALL_48=0x20,
    ITEMICON_BTI_IM_ITEM_ICON_BOSS_KEY_48=0x21,
    ITEMICON_BTI_IM_KAKIOKI_48=0x22,
    ITEMICON_BTI_IM_KANTERA_OFF_48=0x23,
    ITEMICON_BTI_IM_KINOBOU_48=0x24,
    ITEMICON_BTI_IM_MAGNE_BOOTS_06=0x25,
    ITEMICON_BTI_IM_MUSUKO_48=0x26,
    ITEMICON_BTI_IM_NAVI_TRY_00_07=0x27,
    ITEMICON_BTI_IM_OBACHAN_48=0x28,
    ITEMICON_BTI_IM_PUMPKIN_48=0x29,
    ITEMICON_BTI_IM_SANGO_MIMIKAZARI_48=0x2A,
    ITEMICON_BTI_IM_SPPINER_48=0x2B,
    ITEMICON_BTI_IM_W_HOOKSHOT_48=0x2C,
    ITEMICON_BTI_IM_ZELDA_ITEM_ICON_RUPY_13=0x2D,
    ITEMICON_BTI_IM_ZELDA_ITEM_ICON_RUPY_L_13=0x2E,
    ITEMICON_BTI_KABUTO_MESU_00=0x2F,
    ITEMICON_BTI_KABUTO_OSU_00=0x30,
    ITEMICON_BTI_KAGERO_MESU_00=0x31,
    ITEMICON_BTI_KAGERO_OSU_00=0x32,
    ITEMICON_BTI_KAMAKIRI_MESU_00=0x33,
    ITEMICON_BTI_KAMAKIRI_OSU_00=0x34,
    ITEMICON_BTI_KATATUMURI_MESU_00=0x35,
    ITEMICON_BTI_KATATUMURI_OSU_00=0x36,
    ITEMICON_BTI_KUWAGATA_MESU_00=0x37,
    ITEMICON_BTI_KUWAGATA_OSU_00=0x38,
    ITEMICON_BTI_LETTER_=0x39,
    ITEMICON_BTI_NANAHUSHI_MESU_00=0x3A,
    ITEMICON_BTI_NANAHUSHI_OSU_00=0x3B,
    ITEMICON_BTI_NI_HAIRIANOTATE_48=0x3C,
    ITEMICON_BTI_NI_ITEM_ICON_MAKIMONO=0x3D,
    ITEMICON_BTI_NI_ITEM_ICON_POU=0x3E,
    ITEMICON_BTI_NI_KEY_SHINSHITU_48=0x3F,
    ITEMICON_BTI_NI_KINOTATE_48=0x40,
    ITEMICON_BTI_NI_MAGICARMOR_48=0x41,
    ITEMICON_BTI_NI_MASTERSWORD_48=0x42,
    ITEMICON_BTI_NI_MKEY_PARTS1_GET_47_56=0x43,
    ITEMICON_BTI_NI_MKEY_PARTS2_47_56=0x44,
    ITEMICON_BTI_NI_MKEY_PARTS2_GET_47_56=0x45,
    ITEMICON_BTI_NI_MKEY_PARTS3_GET_47_56=0x46,
    ITEMICON_BTI_NI_SAIFU1_48=0x47,
    ITEMICON_BTI_NI_SAIFU2_48=0x48,
    ITEMICON_BTI_NI_SAIFU3_48=0x49,
    ITEMICON_BTI_NI_YADUTU1_48=0x4A,
    ITEMICON_BTI_NI_YADUTU2_48=0x4B,
    ITEMICON_BTI_NI_YADUTU3_48=0x4C,
    ITEMICON_BTI_NI_ZOURANOFUKU_48=0x4D,
    ITEMICON_BTI_O_FISHING_LURE=0x4E,
    ITEMICON_BTI_O_GD_KOMONSHO=0x4F,
    ITEMICON_BTI_O_HEART_KAKERA_48=0x50,
    ITEMICON_BTI_O_HEART_UTUWA_48=0x51,
    ITEMICON_BTI_O_HIKARI_POD=0x52,
    ITEMICON_BTI_ST_ARROWS=0x53,
    ITEMICON_BTI_ST_BILL=0x54,
    ITEMICON_BTI_ST_BOMPOACH_LV1=0x55,
    ITEMICON_BTI_ST_BOMPOACH_LV2=0x56,
    ITEMICON_BTI_ST_COPY_ROD_B=0x57,
    ITEMICON_BTI_ST_FIGURE=0x58,
    ITEMICON_BTI_ST_HAWKEYE=0x59,
    ITEMICON_BTI_ST_LEN_LETTER=0x5A,
    ITEMICON_BTI_ST_PACHINKO=0x5B,
    ITEMICON_BTI_ST_PACHINKO_SEED=0x5C,
    ITEMICON_BTI_ST_PENDANT=0x5D,
    ITEMICON_BTI_TENTOMUSHI_MESU_00=0x5E,
    ITEMICON_BTI_TENTOMUSHI_OSU_00=0x5F,
    ITEMICON_BTI_TONBO_MESU_00=0x60,
    ITEMICON_BTI_TONBO_OSU_00=0x61,
    ITEMICON_BTI_TT_BOOMERANG_05=0x62,
    ITEMICON_BTI_TT_BOTTLE_48=0x63,
    ITEMICON_BTI_TT_BOTTLE_HALFMILK_48=0x64,
    ITEMICON_BTI_TT_BOTTLE_MILK_48=0x65,
    ITEMICON_BTI_TT_BOTTLE_OIL_48=0x66,
    ITEMICON_BTI_TT_BOTTLE_RECOVERY_48=0x67,
    ITEMICON_BTI_TT_BOTTLE_WATER_48=0x68,
    ITEMICON_BTI_TT_BOW_06=0x69,
    ITEMICON_BTI_TT_HOOK_SHOT_01=0x6A,
    ITEMICON_BTI_TT_ITUMONOFUKU_S3TC=0x6B,
    ITEMICON_BTI_TT_KANTERA_48=0x6C,
    ITEMICON_BTI_TT_KEY_BOSS_48=0x6D,
    ITEMICON_BTI_TT_KEY_NORMAL_48=0x6E,
    ITEMICON_BTI_TT_KMPS_48=0x6F,
    ITEMICON_BTI_TT_KOKIRINOKEN_S3_TC=0x70,
    ITEMICON_BTI_TT_MAP_48=0x71,
    ITEMICON_BTI_TT_SWORD_48=0x72,
    ITEMICON_BTI_TT_WOOD_SHIELD_48=0x73,
    ITEMICON_BTI_TTDELUNOTATE_S3_TC=0x74,
    ITEMICON_BTI_ZELDA_HEART_PARTS1_GET=0x75,
    ITEMICON_BTI_ZELDA_HEART_PARTS2_GET=0x76,
    ITEMICON_BTI_ZELDA_HEART_PARTS3_GET=0x77,
    ITEMICON_BTI_ZELDA_HEART_PARTS4_GET=0x78,
};

enum dMeter2_ItemType {
    ItemType_DEFAULT,
    ItemType_GREEN_RUPEE,
    ItemType_BLUE_RUPEE,
    ItemType_YELLOW_RUPEE,
    ItemType_RED_RUPEE,
    ItemType_PURPLE_RUPEE,
    ItemType_ORANGE_RUPEE,
    ItemType_SILVER_RUPEE,
    ItemType_EMPTY_BOTTLE,
    ItemType_RED_BOTTLE,
    ItemType_GREEN_BOTTLE,
    ItemType_BLUE_BOTTLE,
    ItemType_MILK_BOTTLE,
    ItemType_HALF_MILK_BOTTLE,
    ItemType_OIL_BOTTLE,
    ItemType_WATER_BOTTLE,
    ItemType_HOT_SPRING,
    ItemType_LV1_SOUP,
    ItemType_LV2_3_SOUP,
    ItemType_UGLY_SOUP,
    ItemType_CHUCHU_RED,
    ItemType_CHUCHU_BLUE,
    ItemType_CHUCHU_GREEN,
    ItemType_CHUCHU_YELLOW,
    ItemType_CHUCHU_PURPLE,
    ItemType_CHUCHU_RARE,
    ItemType_CHUCHU_BLACK,
    ItemType_POU_FIRE,
    ItemType_FAIRY,
    ItemType_BEE_CHILD,
    ItemType_WORM,
    ItemType_DROP_BOTTLE,
    ItemType_BOMB_ARROW = 33,
    ItemType_HAWK_ARROW,
};

/* 8021BDDC-8021BE20 21671C 0044+00 1/1 0/0 0/0 .text            __ct__13dMeter2Info_cFv */
dMeter2Info_c::dMeter2Info_c() {
    init();
    mTempBits = 0;
}

dMeter2Info_c::~dMeter2Info_c() {}

/* 8021BE68-8021C0E0 2167A8 0278+00 1/1 1/1 0/0 .text            init__13dMeter2Info_cFv */
void dMeter2Info_c::init() {
    mMsgResource = NULL;
    mStageMsgResource = NULL;
    mMsgUnitResource = NULL;
    mMeterClass = NULL;
    mMeterMap = NULL;
    mMenuWindowClass = NULL;

    for (int i = 0; i < 4; i++) {
        mMeterItemPanePtr[i] = NULL;
    }

    unk_0x8 = 0;
    mSub2DStatus = 0;
    mHorseLifeCount = 0;
    mMsgKeyWaitTimer = 0;
    unk_0x98 = 0;
    mWindowStatus = 0;
    unk_0xba = 0;

    unk_0x54 = 0.0f;
    unk_0x58 = 0.0f;
    unk_0x5c = 0.0f;
    unk_0x60 = 1.0f;
    unk_0x64 = 30.0f;
    unk_0x68 = 304.0f;
    unk_0x6c = 224.0f;

    m2DWidth = 608.0f;
    m2DHeight = 448.0f;
    m2DPosH = 0.0f;
    m2DPosV = 0.0f;
    unk_0x80 = 0.0f;

    mTimeMs = 0;
    mMsgTimeMs = 0;

    mNowCount = 0;
    mMaxCount = 0;

    mShopTalkFlag = false;
    mMapStatus = 0;
    mMapKeyDirection = 0;
    mBlinkButton = 0;
    mOilGaugeBackUp = 0;

    allUseButton();
    resetDirectUseItem();
    resetGameStatus();
    resetTouchKeyCheck();
    resetWindowAccept();

    mMeterString = 0;
    mFloatingFlowID = 0xFFFF;
    mFloatingMessageID = 0xFFFF;
    mFloatingMessageTimer = 0;
    mFloatingMessageWakuVisible = 0;

    resetWarpStatus();
    resetPauseStatus();
    mGameOverType = 0;
    mInsectSelectType = 0xFF;

    setWarpInfo("", cXyz(0.0f, 0.0f, 0.0f), 0, 0, 0, 0);

    for (int i = 0; i < 4; i++) {
        changeWater(i + SLOT_11);
    }

    for (int i = 0; i < 4; i++) {
        mSaveSelItemIdx[i] = 0;
        mSaveMixItemIdx[i] = 0;
        mSaveSelItemIdxMG[i] = 0;
        mSaveMixItemIdxMG[i] = 0;
    }

    mSaveBombNum = 0;
    mSaveArrowNum = 0;
    mSaveBowItem = 0;
    mSaveBombItem = 0;
    mSaveBombNumMG = 0;
    mSaveArrowNumMG = 0;
    mSaveBowItemMG = 0;
    mSaveBombItemMG = 0;

    mRentalBombBagIdx = 0xFF;
    mMiniGameItemSetFlag = 0;
    mMiniGameCount = 0;

    setSaveStageName("");

    setCollectCursorPosXY(0, 0);
    mTableMapRegionNo = 0xFF;
    mGoldWolfMapType = 0;
    mScopeZoomPointer = 0;
    mItemExplainWindowStatus = 0;
    mLifeGaugeSE = 0;
    mMapDrugFlag = false;

    for (int i = 0; i < 3; i++) {
        if (dComIfGs_isLightDropGetFlag(i)) {
            mLightDropGetFlag[i] = 0xFF;
        } else {
            mLightDropGetFlag[i] = 0;
        }
    }
}


/* 8021C0E0-8021C11C 216A20 003C+00 0/0 1/1 2/2 .text setFloatingMessage__13dMeter2Info_cFUssb */
int dMeter2Info_c::setFloatingMessage(u16 i_msgID, s16 i_msgTimer, bool i_wakuVisible) {
    if (dComIfGp_event_runCheck()) {
        return 0;
    }

    mFloatingFlowID = 0xFFFF;
    mFloatingMessageID = i_msgID;
    mFloatingMessageTimer = i_msgTimer;
    mFloatingMessageWakuVisible = i_wakuVisible;
    return 1;
}

/* 8021C11C-8021C1DC 216A5C 00C0+00 0/0 0/0 1/1 .text setFloatingFlow__13dMeter2Info_cFUssb */
int dMeter2Info_c::setFloatingFlow(u16 i_flowID, s16 i_msgTimer, bool i_wakuVisible) {
    if (dComIfGp_event_runCheck()) {
        return 0;
    }

    mFloatingFlowID = i_flowID;

    dMsgFlow_c flow;
    flow.init(NULL, i_flowID, 0, NULL);
    flow.doFlow(NULL, NULL, 0);

    mFloatingFlowID = 0xFFFF;
    mFloatingMessageID = flow.getMsgNo();
    mFloatingMessageTimer = i_msgTimer;
    mFloatingMessageWakuVisible = i_wakuVisible;
    return 1;
}

/* 8021C1DC-8021C1F0 216B1C 0014+00 0/0 4/4 0/0 .text isFloatingMessageVisible__13dMeter2Info_cFv
 */
bool dMeter2Info_c::isFloatingMessageVisible() {
    if (mFloatingMessageTimer > 0) {
        return true;
    }

    return false;
}

/* 8021C1F0-8021C218 216B30 0028+00 0/0 1/1 0/0 .text decFloatingMessageTimer__13dMeter2Info_cFv
 */
s16 dMeter2Info_c::decFloatingMessageTimer() {
    if (mFloatingMessageTimer > 0) {
        mFloatingMessageTimer--;
    } else {
        mFloatingMessageTimer = 0;
    }

    return mFloatingMessageTimer;
}

/* 8021C218-8021C238 216B58 0020+00 0/0 3/3 0/0 .text resetFloatingMessage__13dMeter2Info_cFv */
void dMeter2Info_c::resetFloatingMessage() {
    mFloatingFlowID = 0xFFFF;
    mFloatingMessageID = 0xFFFF;
    mFloatingMessageTimer = 0;
    mFloatingMessageWakuVisible = false;
}

/* 8021C238-8021C250 216B78 0018+00 0/0 2/2 0/0 .text decMsgKeyWaitTimer__13dMeter2Info_cFv */
void dMeter2Info_c::decMsgKeyWaitTimer() {
    if (mMsgKeyWaitTimer > 0) {
        mMsgKeyWaitTimer--;
    }
}

/* 8021C250-8021C370 216B90 0120+00 0/0 16/16 0/0 .text
 * getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c             */
void dMeter2Info_c::getString(u32 i_stringID, char* o_string, JMSMesgEntry_c* i_msgEntry) {
    strcpy(o_string, "");

    u8* msgRes;
    if (mMsgResource == NULL) {
        msgRes = (u8*)JKRGetTypeResource('ROOT', "zel_00.bmg", dComIfGp_getMsgDtArchive(0));
        if (msgRes == NULL) {
            return;
        }
    } else {
        msgRes = (u8*)mMsgResource;
    }

    JMSMesgInfo_c* bmg_inf = (JMSMesgInfo_c*)(msgRes + sizeof(bmg_header_t));
    u8* bmg_data = (u8*)bmg_inf + bmg_inf->header.size + sizeof(bmg_section_t);  // pointer to start of message data

    char* string_ptr = NULL;
    for (u16 i = 0; i < bmg_inf->entry_num; i++) {
        u8* entry = ((u8*)bmg_inf + (i * sizeof(JMSMesgEntry_c)));

        // check if i_stringID equals the message entry "Message ID"
        if (i_stringID == *(u16*)(entry + 0x14)) {
            string_ptr = (char*)(bmg_data + *(u32*)(entry + 0x10));  // use entry "String Offset" to get string pointer
            strcpy(o_string, string_ptr);

            if (i_msgEntry != NULL) {
                memcpy(i_msgEntry, entry + 0x10, sizeof(JMSMesgEntry_c));
            }

            return;
        }
    }

    if (mMsgResource == NULL) {
        dComIfGp_getMsgDtArchive(0)->removeResourceAll();
    }
}

/* 8021C370-8021C544 216CB0 01D4+00 0/0 1/1 0/0 .text
 * getStringKana__13dMeter2Info_cFUlPcP14JMSMesgEntry_c         */
void dMeter2Info_c::getStringKana(u32 i_stringID, char* o_string, JMSMesgEntry_c* i_msgEntry) {
    strcpy(o_string, "");

    u8* msgRes;
    if (mMsgResource == NULL) {
        msgRes = (u8*)JKRGetTypeResource('ROOT', "zel_00.bmg", dComIfGp_getMsgDtArchive(0));
        if (msgRes == NULL) {
            return;
        }
    } else {
        msgRes = (u8*)mMsgResource;
    }

    JMSMesgInfo_c* bmg_inf = (JMSMesgInfo_c*)(msgRes + sizeof(bmg_header_t));
    u8* bmg_data = (u8*)bmg_inf + bmg_inf->header.size;
    u8* string_data = bmg_data + sizeof(bmg_section_t);

    char* string_ptr = NULL;
    for (u16 i = 0; i < bmg_inf->entry_num; i++) {
        // check if i_stringID equals the message entry "Message ID"
        if (i_stringID == bmg_inf->entries[i].message_id) {
            string_ptr = (char*)(string_data + bmg_inf->entries[i].string_offset);  // use entry "String Offset" to get string pointer

            int var_r29 = 0;
            int sp14 = 0;
            int sp10 = 0;
            while (var_r29 < 0x200) {
                if ((u8)string_ptr[var_r29] == 0x1A) {
                    if ((u8)string_ptr[var_r29 + 2] == 0xFF && (u8)string_ptr[var_r29 + 3] == 0 && (u8)string_ptr[var_r29 + 4] == 2) {
                        sp10 = string_ptr[var_r29 + 1] - 6;
                        sp14 = string_ptr[var_r29 + 5] * 2;

                        for (int spC = 0; spC < sp10; spC++) {
                            *o_string = string_ptr[var_r29 + spC + 6];
                            o_string++;
                        }
                    }                    

                    var_r29 += string_ptr[var_r29 + 1];
                    continue;
                }

                if (sp14 > 0) {
                    sp14--;
                } else {
                    *o_string = string_ptr[var_r29];
                    o_string++;
                }

                if (string_ptr[var_r29] == '\0') {
                    break;
                }

                var_r29++;
            }

            if (i_msgEntry != NULL) {
                memcpy(i_msgEntry, &bmg_inf->entries[i], sizeof(JMSMesgEntry_c));
            }

            return;
        }
    }

    if (mMsgResource == NULL) {
        dComIfGp_getMsgDtArchive(0)->removeResourceAll();
    }
}

/* 8021C544-8021C6A4 216E84 0160+00 0/0 32/32 1/1 .text
 * getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c        */
void dMeter2Info_c::getStringKanji(u32 i_stringID, char* o_string, JMSMesgEntry_c* i_msgEntry) {
    strcpy(o_string, "");

    u8* msgRes;
    if (mMsgResource == NULL) {
        msgRes = (u8*)JKRGetTypeResource('ROOT', "zel_00.bmg", dComIfGp_getMsgDtArchive(0));
        if (msgRes == NULL) {
            return;
        }
    } else {
        msgRes = (u8*)mMsgResource;
    }

    JMSMesgInfo_c* bmg_inf = (JMSMesgInfo_c*)(msgRes + sizeof(bmg_header_t));
    u8* bmg_data = (u8*)bmg_inf + bmg_inf->header.size;
    u8* string_data = bmg_data + sizeof(bmg_section_t);

    char* string_ptr = NULL;
    for (u16 i = 0; i < bmg_inf->entry_num; i++) {
        // check if i_stringID equals the message entry "Message ID"
        if (i_stringID == bmg_inf->entries[i].message_id) {
            string_ptr = (char*)(string_data + bmg_inf->entries[i].string_offset);  // use entry "String Offset" to get string pointer

            int var_r29 = 0;
            while (var_r29 < 0x200) {
                if ((u8)string_ptr[var_r29] == 0x1A) {
                    var_r29 += string_ptr[var_r29 + 1];
                    continue;
                }

                *o_string = string_ptr[var_r29];
                o_string++;

                if (string_ptr[var_r29] == '\0') {
                    break;
                }

                var_r29++;
            }

            if (i_msgEntry != NULL) {
                memcpy(i_msgEntry, &bmg_inf->entries[i], 0x14);
            }

            return;
        }
    }

    if (mMsgResource == NULL) {
        dComIfGp_getMsgDtArchive(0)->removeResourceAll();
    }
}

/* 8021C6A4-8021C7F4 216FE4 0150+00 0/0 1/1 0/0 .text
 * getStringLength__13dMeter2Info_cFP10J2DTextBoxPc             */
f32 dMeter2Info_c::getStringLength(J2DTextBox* i_textbox, char* i_string) {
    f32 str_width = 0.0f;
    f32 str_len = 0.0f;

    JUTFont* font = i_textbox->getFont();
    char* string = i_string;

    f32 charSpace = i_textbox->getCharSpace();
    J2DTextBox::TFontSize fontSize;
    i_textbox->getFontSize(fontSize);

    for (; *string != 0; string++) {
        if (*string == '\n') {
            if (str_len < str_width) {
                str_len = str_width;
            }
            str_width = 0.0f;
        } else {
            int c = (u8)*string;
            str_width += charSpace + (fontSize.mSizeX * ((f32)font->getWidth(c) / (f32)font->getCellWidth()));
        }
    }

    if (str_len < str_width) {
        str_len = str_width;
    }

    return str_len;
}

/* 8021C7FC-8021C934 21713C 0138+00 0/0 3/3 0/0 .text
 * getStringLength__13dMeter2Info_cFP7JUTFontffPc               */
f32 dMeter2Info_c::getStringLength(JUTFont* i_font, f32 param_2, f32 param_3, char* i_string) {
    f32 str_width = 0.0f;
    f32 str_len = 0.0f;

    for (char* string = i_string; *string != '\0'; string++) {
        if (*string == '\n') {
            if (str_len < str_width) {
                str_len = str_width;
            }
            str_width = 0.0f;
        } else {
            int c = (u8)*string;
            str_width += param_3 + param_2 * ((f32)i_font->getWidth(c) / (f32)i_font->getCellWidth());
        }
    }

    if (str_len < str_width) {
        str_len = str_width;
    }

    return str_len;
}

/* 8021C934-8021C950 217274 001C+00 0/0 2/2 0/0 .text            onDirectUseItem__13dMeter2Info_cFi
 */
void dMeter2Info_c::onDirectUseItem(int param_0) {
    mDirectUseItem |= (u8)(1 << param_0);
}

/* 8021C950-8021C970 217290 0020+00 0/0 4/4 0/0 .text            isDirectUseItem__13dMeter2Info_cFi */
BOOL dMeter2Info_c::isDirectUseItem(int param_0) {
    return (mDirectUseItem & (u8)(1 << param_0)) ? TRUE : FALSE;
}

/* 80430188-80430280 05CEA8 00F8+00 4/4 267/267 70/70 .bss             g_meter2_info */
dMeter2Info_c g_meter2_info;

/* 8021C970-8021C9DC 2172B0 006C+00 0/0 0/0 5/5 .text            setMeterString__13dMeter2Info_cFl */
int dMeter2Info_c::setMeterString(s32 i_string) {
    if (mMeterString != 0) {
        return 0;
    }

    if (i_string == 0) {
        return 0;
    }

    if (dMeter2Info_getMeterClass() != NULL &&
        (dMeter2Info_getMeterClass()->getSubContents() == 0 ||
         (dMeter2Info_getMeterClass()->getSubContents() == 5 &&
          dMeter2Info_getMeterClass()->getSubContentsStringType() == 0)))
    {
        mMeterString = i_string;
        return 1;
    }

    return 0;
}

/* 8021C9DC-8021CA04 21731C 0028+00 1/1 3/3 0/0 .text            resetWarpStatus__13dMeter2Info_cFv */
void dMeter2Info_c::resetWarpStatus() {
    if (mWarpStatus == 2) {
        dComIfGs_resetLastWarpAcceptStage();
    }

    mWarpStatus = 0;
}

/* 8021CA04-8021CA70 217344 006C+00 0/0 2/2 3/3 .text            warpInProc__13dMeter2Info_cFv */
void dMeter2Info_c::warpInProc() {
    dComIfGs_setWarpMarkFlag(0);
    dComIfGs_resetLastWarpAcceptStage();

    if (dComIfGs_getItem(SLOT_18, true) != fpcNm_ITEM_LV7_DUNGEON_EXIT) {
        dComIfGs_setItem(SLOT_18, fpcNm_ITEM_DUNGEON_EXIT);
    }
}

/* 8021CA70-8021CC00 2173B0 0190+00 0/0 1/1 0/0 .text            warpOutProc__13dMeter2Info_cFv */
void dMeter2Info_c::warpOutProc() {
    dComIfGs_setLastWarpAcceptStage(dStage_stagInfo_GetSaveTbl(dComIfGp_getStageStagInfo()));

    cXyz pos(dComIfGs_getRestartRoomPos());
    csXyz angle(0, dComIfGs_getRestartRoomAngleY(), 0);

    s8 room_no = dComIfGs_getRestartRoomNo();
    if (strcmp(dComIfGp_getStartStageName(), "D_MN01") == 0) {
        s32 index = -1;
        if (room_no == 0) {
            index = 1;
        } else if (room_no == 5) {
            index = 2;
        } else if (room_no == 6) {
            index = 2;
        } else if (room_no == 9) {
            index = 4;
        }

        if (index != -1) {
            daNpcF_getPlayerInfoFromPlayerList(index, room_no, pos, angle);
        }
    } else if (!strcmp(dComIfGp_getStartStageName(), "D_MN07") && room_no == 0) {
        daNpcF_getPlayerInfoFromPlayerList(5, room_no, pos, angle);
    }

    dComIfGs_setWarpItemData(dComIfGp_getStartStageName(), pos, angle.y, room_no, 0, 1);
    dComIfGs_setItem(SLOT_18, fpcNm_ITEM_DUNGEON_BACK);
}

/* 8021CC00-8021CC0C 217540 000C+00 0/0 1/1 1/1 .text            resetMeterString__13dMeter2Info_cFv
 */
void dMeter2Info_c::resetMeterString() {
    mMeterString = 0;
}

/* 8021CC0C-8021CC80 21754C 0074+00 1/1 1/1 0/0 .text
 * setWarpInfo__13dMeter2Info_cFPCcRC4cXyzsUcUcUc               */
void dMeter2Info_c::setWarpInfo(const char* i_stageName, const cXyz& i_position, s16 i_angle,
                                u8 i_roomNo, u8 param_4, u8 i_warpPlayerNo) {
    strcpy(mWarpInfo.mStageName, i_stageName);
    mWarpInfo.mPosition = i_position;
    mWarpInfo.mAngle = (s16)i_angle;
    mWarpInfo.mRoomNo = (u8)i_roomNo;
    mWarpInfo.unk_0x17 = (u8)param_4;
    mWarpInfo.mPlayerNo = (u8)i_warpPlayerNo;
}

/* 8021CC80-8021CF08 2175C0 0288+00 2/2 0/0 0/0 .text            getItemType__13dMeter2Info_cFUc */
u8 dMeter2Info_c::getItemType(u8 i_itemNo) {
    u8 type;
    switch (i_itemNo) {
    case fpcNm_ITEM_GREEN_RUPEE:
        type = ItemType_GREEN_RUPEE;
        break;
    case fpcNm_ITEM_BLUE_RUPEE:
        type = ItemType_BLUE_RUPEE;
        break;
    case fpcNm_ITEM_YELLOW_RUPEE:
        type = ItemType_YELLOW_RUPEE;
        break;
    case fpcNm_ITEM_RED_RUPEE:
        type = ItemType_RED_RUPEE;
        break;
    case fpcNm_ITEM_PURPLE_RUPEE:
    case fpcNm_ITEM_LINKS_SAVINGS:
        type = ItemType_PURPLE_RUPEE;
        break;
    case fpcNm_ITEM_ORANGE_RUPEE:
        type = ItemType_ORANGE_RUPEE;
        break;
    case fpcNm_ITEM_SILVER_RUPEE:
        type = ItemType_SILVER_RUPEE;
        break;
    case fpcNm_ITEM_EMPTY_BOTTLE:
        type = ItemType_EMPTY_BOTTLE;
        break;
    case fpcNm_ITEM_RED_BOTTLE:
    case fpcNm_ITEM_RED_BOTTLE_2:
        type = ItemType_RED_BOTTLE;
        break;
    case fpcNm_ITEM_GREEN_BOTTLE:
        type = ItemType_GREEN_BOTTLE;
        break;
    case fpcNm_ITEM_BLUE_BOTTLE:
        type = ItemType_BLUE_BOTTLE;
        break;
    case fpcNm_ITEM_MILK_BOTTLE:
        type = ItemType_MILK_BOTTLE;
        break;
    case fpcNm_ITEM_HALF_MILK_BOTTLE:
        type = ItemType_HALF_MILK_BOTTLE;
        break;
    case fpcNm_ITEM_OIL_BOTTLE:
    case fpcNm_ITEM_OIL_BOTTLE_2:
    case fpcNm_ITEM_OIL_BOTTLE3:
        type = ItemType_OIL_BOTTLE;
        break;
    case fpcNm_ITEM_WATER_BOTTLE:
        type = ItemType_WATER_BOTTLE;
        break;
    case fpcNm_ITEM_HOT_SPRING:
    case fpcNm_ITEM_HOT_SPRING_2:
        type = ItemType_HOT_SPRING;
        break;
    case fpcNm_ITEM_LV1_SOUP:
        type = ItemType_LV1_SOUP;
        break;
    case fpcNm_ITEM_LV2_SOUP:
    case fpcNm_ITEM_LV3_SOUP:
        type = ItemType_LV2_3_SOUP;
        break;
    case fpcNm_ITEM_UGLY_SOUP:
        type = ItemType_UGLY_SOUP;
        break;
    case fpcNm_ITEM_CHUCHU_RED:
        type = ItemType_CHUCHU_RED;
        break;
    case fpcNm_ITEM_CHUCHU_BLUE:
        type = ItemType_CHUCHU_BLUE;
        break;
    case fpcNm_ITEM_CHUCHU_GREEN:
        type = ItemType_CHUCHU_GREEN;
        break;
    case fpcNm_ITEM_CHUCHU_YELLOW:
        type = ItemType_CHUCHU_YELLOW;
        break;
    case fpcNm_ITEM_CHUCHU_PURPLE:
        type = ItemType_CHUCHU_PURPLE;
        break;
    case fpcNm_ITEM_CHUCHU_RARE:
        type = ItemType_CHUCHU_RARE;
        break;
    case fpcNm_ITEM_CHUCHU_BLACK:
        type = ItemType_CHUCHU_BLACK;
        break;
    case fpcNm_ITEM_POU_FIRE1:
    case fpcNm_ITEM_POU_FIRE2:
    case fpcNm_ITEM_POU_FIRE3:
    case fpcNm_ITEM_POU_FIRE4:
        type = ItemType_POU_FIRE;
        break;
    case fpcNm_ITEM_FAIRY:
        type = ItemType_FAIRY;
        break;
    case fpcNm_ITEM_BEE_CHILD:
    case fpcNm_ITEM_SHOP_BEE_CHILD:
        type = ItemType_BEE_CHILD;
        break;
    case fpcNm_ITEM_WORM:
        type = ItemType_WORM;
        break;
    case fpcNm_ITEM_FAIRY_DROP:
    case fpcNm_ITEM_DROP_BOTTLE:
        type = ItemType_DROP_BOTTLE;
        break;
    case fpcNm_ITEM_BOMB_ARROW:
        type = ItemType_BOMB_ARROW;
        break;
    case fpcNm_ITEM_HAWK_ARROW:
        type = ItemType_HAWK_ARROW;
        break;
    default:
        type = 0;
        break;
    }

    return type;
}

/* 8021CF08-8021D36C 217848 0464+00 0/0 9/9 0/0 .text
 * readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
 */
int dMeter2Info_c::readItemTexture(u8 i_itemNo, void* i_texBuf1, J2DPicture* i_pic1, void* i_texBuf2,
                                   J2DPicture* i_pic2, void* i_texBuf3, J2DPicture* i_pic3,
                                   void* i_texBuf4, J2DPicture* i_pic4, int param_9) {
    u8 itemType = getItemType(i_itemNo);
    int tex_num = 0;

    if (i_texBuf1 != NULL) {
        if ((i_itemNo == fpcNm_ITEM_KANTERA && dComIfGs_getOil() == 0) || i_itemNo == fpcNm_ITEM_KANTERA2) {
            u32 size = JKRReadIdxResource(i_texBuf1, 0xC00, ITEMICON_BTI_IM_KANTERA_OFF_48, dComIfGp_getItemIconArchive());
            JUT_ASSERT(1166, size != 0);
        } else if (i_itemNo == fpcNm_ITEM_COPY_ROD && !daPy_getPlayerActorClass()->checkCopyRodTopUse() && param_9 == -1) {
            u32 size = JKRReadIdxResource(i_texBuf1, 0xC00, ITEMICON_BTI_ST_COPY_ROD_B, dComIfGp_getItemIconArchive());
            JUT_ASSERT(1173, size != 0);
        } else if ((itemType == ItemType_POU_FIRE || itemType == ItemType_FAIRY || itemType == ItemType_BEE_CHILD || itemType == ItemType_WORM) && i_texBuf3 == NULL) {
            u32 size = JKRReadIdxResource(i_texBuf1, 0xC00, get2ndTexture(itemType), dComIfGp_getItemIconArchive());
            JUT_ASSERT(1222, size != 0);
        } else {
            u32 size;
            if (param_9 >= 0) {
                size = JKRReadIdxResource(i_texBuf1, 0xC00, param_9, dComIfGp_getItemIconArchive());
            } else {
                size = JKRReadIdxResource(i_texBuf1, 0xC00, dItem_data::getTexture(i_itemNo), dComIfGp_getItemIconArchive());
            }

            JUT_ASSERT(1238, size != 0);
        }

        DCStoreRangeNoSync(i_texBuf1, 0xC00);
        if (i_pic1 != NULL) {
            if ((itemType == ItemType_POU_FIRE || itemType == ItemType_FAIRY || itemType == ItemType_BEE_CHILD || itemType == ItemType_WORM) && i_texBuf3 == NULL) {
                set2ndColor(itemType, i_pic1);
            } else {
                set1stColor(itemType, i_pic1);
            }

            const ResTIMG* img = i_pic1->changeTexture((ResTIMG*)i_texBuf1, 0);
            JUT_ASSERT(1284, img != 0);
        }

        tex_num++;

        if (i_texBuf2 != NULL && get2ndTexture(itemType) > 0) {
            if ((itemType == ItemType_POU_FIRE || itemType == ItemType_FAIRY || itemType == ItemType_BEE_CHILD || itemType == ItemType_WORM) && i_texBuf3 == NULL) {
                u32 size = JKRReadIdxResource(i_texBuf2, 0xC00, get3rdTexture(itemType), dComIfGp_getItemIconArchive());
                JUT_ASSERT(1327, size != 0);

                DCStoreRangeNoSync(i_texBuf2, 0xC00);
                if (i_pic2 != NULL) {
                    set3rdColor(itemType, i_pic2);
                    const ResTIMG* img = i_pic2->changeTexture((ResTIMG*)i_texBuf2, 0);
                    JUT_ASSERT(1333, img != 0);
                }

                tex_num++;
            } else {
                u32 size = JKRReadIdxResource(i_texBuf2, 0xC00, get2ndTexture(itemType), dComIfGp_getItemIconArchive());
                JUT_ASSERT(1342, size != 0);

                DCStoreRangeNoSync(i_texBuf2, 0xC00);
                if (i_pic2 != NULL) {
                    set2ndColor(itemType, i_pic2);
                    const ResTIMG* img = i_pic2->changeTexture((ResTIMG*)i_texBuf2, 0);
                    JUT_ASSERT(1348, img != 0);
                }

                tex_num++;

                if (i_texBuf3 != NULL && get3rdTexture(itemType) > 0) {
                    u32 size = JKRReadIdxResource(i_texBuf3, 0xC00, get3rdTexture(itemType), dComIfGp_getItemIconArchive());
                    JUT_ASSERT(1358, size != 0);

                    DCStoreRangeNoSync(i_texBuf3, 0xC00);
                    if (i_pic3 != NULL) {
                        set3rdColor(itemType, i_pic3);
                        const ResTIMG* img = i_pic3->changeTexture((ResTIMG*)i_texBuf3, 0);
                        JUT_ASSERT(1364, img != 0);
                    }

                    tex_num++;

                    if (i_texBuf4 != NULL && get4thTexture(itemType) > 0) {
                        u32 size = JKRReadIdxResource(i_texBuf4, 0xC00, get4thTexture(itemType), dComIfGp_getItemIconArchive());
                        JUT_ASSERT(1374, size != 0);

                        DCStoreRangeNoSync(i_texBuf4, 0xC00);
                        if (i_pic4 != NULL) {
                            set4thColor(itemType, i_pic4);
                            const ResTIMG* img = i_pic4->changeTexture((ResTIMG*)i_texBuf4, 0);
                            JUT_ASSERT(1380, img != 0);
                        }

                        tex_num++;
                    }
                }
            }
        }
    }

    return tex_num;
}

/* 8021D36C-8021D44C 217CAC 00E0+00 0/0 2/2 0/0 .text
 * setItemColor__13dMeter2Info_cFUcP10J2DPictureP10J2DPictureP10J2DPictureP10J2DPicture */
void dMeter2Info_c::setItemColor(u8 i_itemNo, J2DPicture* i_pic1, J2DPicture* i_pic2,
                                 J2DPicture* i_pic3, J2DPicture* i_pic4) {
    u8 itemType = getItemType(i_itemNo);
    if (i_pic1 != NULL) {
        set1stColor(itemType, i_pic1);
        if (i_pic2 != NULL) {
            if ((itemType == ItemType_POU_FIRE || itemType == ItemType_FAIRY || itemType == ItemType_BEE_CHILD || itemType == ItemType_WORM) &&
                i_pic3 == NULL)
            {
                set3rdColor(itemType, i_pic2);
            } else {
                set2ndColor(itemType, i_pic2);
                if (i_pic3 != NULL) {
                    set3rdColor(itemType, i_pic3);
                    if (i_pic4 != NULL) {
                        set4thColor(itemType, i_pic4);
                    }
                }
            }
        }
    }
}

/* 8021D44C-8021D4B8 217D8C 006C+00 2/1 0/0 0/0 .text            get2ndTexture__13dMeter2Info_cFUc
 */
s16 dMeter2Info_c::get2ndTexture(u8 i_itemType) {
    switch (i_itemType) {
    case ItemType_GREEN_RUPEE:
    case ItemType_BLUE_RUPEE:
    case ItemType_YELLOW_RUPEE:
    case ItemType_RED_RUPEE:
    case ItemType_PURPLE_RUPEE:
    case ItemType_ORANGE_RUPEE:
    case ItemType_SILVER_RUPEE:
        return ITEMICON_BTI_IM_ZELDA_ITEM_ICON_RUPY_L_13;
    case ItemType_EMPTY_BOTTLE:
    case ItemType_RED_BOTTLE:
    case ItemType_GREEN_BOTTLE:
    case ItemType_BLUE_BOTTLE:
    case ItemType_MILK_BOTTLE:
    case ItemType_HALF_MILK_BOTTLE:
    case ItemType_OIL_BOTTLE:
    case ItemType_WATER_BOTTLE:
    case ItemType_HOT_SPRING:
    case ItemType_LV1_SOUP:
    case ItemType_LV2_3_SOUP:
    case ItemType_UGLY_SOUP:
    case ItemType_CHUCHU_RED:
    case ItemType_CHUCHU_BLUE:
    case ItemType_CHUCHU_GREEN:
    case ItemType_CHUCHU_YELLOW:
    case ItemType_CHUCHU_PURPLE:
    case ItemType_CHUCHU_RARE:
    case ItemType_CHUCHU_BLACK:
    case ItemType_DROP_BOTTLE:
        return ITEMICON_BTI_IM_BOTTLE;
    case ItemType_POU_FIRE:
        return ITEMICON_BTI_IM_BOTTLE_POU;
    case ItemType_FAIRY:
        return ITEMICON_BTI_IM_NAVI_TRY_00_07;
    case ItemType_BEE_CHILD:
        return ITEMICON_BTI_IM_BOTTLE_HATCHINOKO;
    case ItemType_WORM:
        return ITEMICON_BTI_IM_BOTTLE_MIMIZU;
    case ItemType_BOMB_ARROW:
    case ItemType_HAWK_ARROW:
    case 35:
        return ITEMICON_BTI_TT_BOW_06;
    case 36:
        return ITEMICON_BTI_IM_SANGO_MIMIKAZARI_48;
    default:
    case 32:
        return -1;
    }
}

/* 8021D4B8-8021D4FC 217DF8 0044+00 1/1 0/0 0/0 .text            get3rdTexture__13dMeter2Info_cFUc
 */
s16 dMeter2Info_c::get3rdTexture(u8 i_itemType) {
    switch (i_itemType) {
    case ItemType_GREEN_RUPEE:
    case ItemType_BLUE_RUPEE:
    case ItemType_YELLOW_RUPEE:
    case ItemType_RED_RUPEE:
    case ItemType_PURPLE_RUPEE:
    case ItemType_ORANGE_RUPEE:
    case ItemType_SILVER_RUPEE:
        return ITEMICON_BTI_IM_ZELDA_ITEM_ICON_RUPY_L_13;
    case ItemType_POU_FIRE:
    case ItemType_FAIRY:
    case ItemType_BEE_CHILD:
    case ItemType_WORM:
        return ITEMICON_BTI_IM_BOTTLE;
    default:
        return -1;
    }
}

/* 8021D4FC-8021D524 217E3C 0028+00 1/1 0/0 0/0 .text            get4thTexture__13dMeter2Info_cFUc
 */
s16 dMeter2Info_c::get4thTexture(u8 i_itemType) {
    switch (i_itemType) {
    case ItemType_GREEN_RUPEE:
    case ItemType_BLUE_RUPEE:
    case ItemType_YELLOW_RUPEE:
    case ItemType_RED_RUPEE:
    case ItemType_PURPLE_RUPEE:
    case ItemType_ORANGE_RUPEE:
    case ItemType_SILVER_RUPEE:
        return ITEMICON_BTI_IM_ZELDA_ITEM_ICON_RUPY_L_13;
    default:
        return -1;
    }
}

/* 8021D524-8021D644 217E64 0120+00 2/2 0/0 0/0 .text set1stColor__13dMeter2Info_cFUcP10J2DPicture
 */
void dMeter2Info_c::set1stColor(u8 i_itemType, J2DPicture* i_pic) {
    static GXColor const black_color[37] = {
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x60, 0x00, 0x00}, {0x00, 0x00, 0xC0, 0x00},
        {0xA0, 0x60, 0x00, 0x00}, {0xA0, 0x00, 0x00, 0x00}, {0x40, 0x00, 0x60, 0x00},
        {0xE0, 0x00, 0x00, 0x00}, {0x40, 0x40, 0x40, 0x00}, {0x6E, 0x6E, 0x64, 0x00},
        {0x32, 0x00, 0x00, 0x00}, {0x00, 0x7F, 0x00, 0x00}, {0x00, 0x00, 0x7F, 0x00},
        {0xAF, 0x9B, 0x6E, 0x00}, {0xAA, 0x9B, 0x6E, 0x00}, {0x55, 0x37, 0x14, 0x00},
        {0x6E, 0x6E, 0x6E, 0x00}, {0x6E, 0x6E, 0x6E, 0x00}, {0xFF, 0x58, 0x00, 0x00},
        {0x6C, 0x3E, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x32, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x7F, 0x00}, {0x00, 0x7F, 0x00, 0x00}, {0x55, 0x37, 0x14, 0x00},
        {0x00, 0x00, 0x22, 0x00}, {0x2B, 0x18, 0x22, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x46, 0x46, 0x41, 0x00}, {0x46, 0x46, 0x41, 0x00}, {0x46, 0x46, 0x41, 0x00},
        {0x46, 0x46, 0x41, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00},
    };

    static GXColor const white_color[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0x60, 0xFF, 0x00, 0xFF}, {0x00, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0x00, 0xFF}, {0xFF, 0x80, 0x80, 0xFF}, {0xBE, 0x40, 0xFF, 0xFF},
        {0xFF, 0xC0, 0x00, 0xFF}, {0xC0, 0xC0, 0xC0, 0xFF}, {0xF5, 0xF5, 0xFF, 0xFF},
        {0xFF, 0xD2, 0xAA, 0xFF}, {0xEF, 0xF5, 0xC9, 0xFF}, {0xB0, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xF0, 0xFF}, {0xFF, 0xFF, 0xF0, 0xFF}, {0xFF, 0xFF, 0xD7, 0xFF},
        {0xF5, 0xF5, 0xFF, 0xFF}, {0xF5, 0xF5, 0xFF, 0xFF}, {0xFF, 0xFF, 0xC2, 0xFF},
        {0xFF, 0x9D, 0x00, 0xFF}, {0xC8, 0xC8, 0xC8, 0xFF}, {0xFF, 0xD2, 0xAA, 0xFF},
        {0xB0, 0xFF, 0xFF, 0xFF}, {0xEF, 0xF5, 0xC9, 0xFF}, {0xFF, 0xFF, 0xD7, 0xFF},
        {0xD7, 0xCF, 0xF5, 0xFF}, {0xFF, 0xFF, 0x33, 0xFF}, {0xC8, 0xC8, 0xC8, 0xFF},
        {0xF5, 0xF5, 0xFF, 0xFF}, {0xF5, 0xF5, 0xFF, 0xFF}, {0xF5, 0xF5, 0xFF, 0xFF},
        {0xF5, 0xF5, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    static GXColor const vertex_color_lu[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0x00},
        {0xFF, 0x78, 0xAF, 0xFF}, {0x5C, 0xB4, 0x16, 0xFF}, {0xA4, 0xFF, 0x00, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0x00, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0x78, 0xAF, 0xFF},
        {0xA4, 0xFF, 0x00, 0xFF}, {0x5C, 0xB4, 0x16, 0xFF}, {0xFF, 0xFF, 0x00, 0xFF},
        {0xC9, 0xB4, 0xFF, 0xFF}, {0x3C, 0x0A, 0x00, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0x00}, {0xFF, 0xFF, 0xFF, 0x00}, {0xFF, 0xFF, 0xFF, 0x00},
        {0xFF, 0xFF, 0xFF, 0x00}, {0xFF, 0xA0, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    static GXColor const vertex_color_ru[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0x00},
        {0xFF, 0xFF, 0x73, 0xFF}, {0xFF, 0xFF, 0x2A, 0xFF}, {0x98, 0xFF, 0x00, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0x73, 0xFF},
        {0x98, 0xFF, 0x00, 0xFF}, {0xFF, 0xFF, 0x2A, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0x39, 0xFF}, {0xFF, 0xFF, 0x00, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0x00}, {0xFF, 0xFF, 0xFF, 0x00}, {0xFF, 0xFF, 0xFF, 0x00},
        {0xFF, 0xFF, 0xFF, 0x00}, {0xFF, 0xA0, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    static GXColor const vertex_color_ld[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0x78, 0x6E, 0x3C, 0xFF},
        {0xFF, 0x00, 0x00, 0xFF}, {0x3C, 0x32, 0x50, 0xFF}, {0x00, 0x00, 0x74, 0xFF},
        {0xFA, 0xC8, 0x9B, 0xFF}, {0xFA, 0xC8, 0x9B, 0xFF}, {0x46, 0x87, 0x00, 0xFF},
        {0x5A, 0xB4, 0xB4, 0xFF}, {0x5A, 0xB4, 0xB4, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0x00, 0x00, 0x00, 0xFF}, {0xFF, 0x00, 0x00, 0xFF},
        {0x00, 0x00, 0x74, 0xFF}, {0x3C, 0x32, 0x50, 0xFF}, {0x46, 0x87, 0x00, 0xFF},
        {0x3C, 0x32, 0x50, 0x49}, {0xFF, 0xFF, 0x00, 0xFF}, {0x00, 0x00, 0x00, 0xFF},
        {0x00, 0x00, 0x00, 0xFF}, {0x00, 0x00, 0x00, 0xFF}, {0x00, 0x00, 0x00, 0xFF},
        {0x00, 0x00, 0x00, 0xFF}, {0xE0, 0x00, 0xE0, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    static GXColor const vertex_color_rd[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0x78, 0x6E, 0x3C, 0xFF},
        {0xFF, 0x96, 0x00, 0xFF}, {0x55, 0x42, 0x00, 0xFF}, {0x61, 0x48, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xAA, 0xFF}, {0xFF, 0xFF, 0xAA, 0xFF}, {0xAF, 0x91, 0x23, 0xFF},
        {0xE6, 0xFA, 0xFF, 0xFF}, {0xE6, 0xFA, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0x00, 0x00, 0x00, 0xFF}, {0xFF, 0x96, 0x00, 0xFF},
        {0x61, 0x48, 0xFF, 0xFF}, {0x55, 0x42, 0x00, 0xFF}, {0xAF, 0x91, 0x23, 0xFF},
        {0x3C, 0x09, 0x4E, 0xFF}, {0xBA, 0x98, 0x00, 0xFF}, {0x00, 0x00, 0x00, 0xFF},
        {0x00, 0x00, 0x00, 0xFF}, {0x00, 0x00, 0x00, 0xFF}, {0x00, 0x00, 0x00, 0xFF},
        {0x00, 0x00, 0x00, 0xFF}, {0xE0, 0x00, 0xE0, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    i_pic->setBlackWhite(*(JUtility::TColor*)&black_color[i_itemType],
                           *(JUtility::TColor*)&white_color[i_itemType]);
    i_pic->setCornerColor(*(JUtility::TColor*)&vertex_color_lu[i_itemType],
                            *(JUtility::TColor*)&vertex_color_ru[i_itemType],
                            *(JUtility::TColor*)&vertex_color_ld[i_itemType],
                            *(JUtility::TColor*)&vertex_color_rd[i_itemType]);
}

/* 8021D644-8021D764 217F84 0120+00 2/2 0/0 0/0 .text set2ndColor__13dMeter2Info_cFUcP10J2DPicture
 */
void dMeter2Info_c::set2ndColor(u8 i_itemType, J2DPicture* i_pic) {
    static GXColor const black_color[37] = {
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x86, 0xD4, 0x00}, {0xE6, 0x1E, 0xFF, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00}, {0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00},
    };

    static GXColor const white_color[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xF5, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xC8, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    static GXColor const vertex_color_lu[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0x00, 0x00, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    static GXColor const vertex_color_ru[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0x00, 0xFF, 0xFF, 0x58}, {0xFF, 0xFF, 0xFF, 0x58}, {0xFF, 0xFF, 0xFF, 0x58},
        {0xFF, 0xFF, 0xFF, 0x58}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    static GXColor const vertex_color_ld[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    static GXColor const vertex_color_rd[37] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xCD, 0xFF, 0xFF, 0xFF}, {0xCD, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF},
    };

    i_pic->setBlackWhite(*(JUtility::TColor*)&black_color[i_itemType],
                           *(JUtility::TColor*)&white_color[i_itemType]);
    i_pic->setCornerColor(*(JUtility::TColor*)&vertex_color_lu[i_itemType],
                            *(JUtility::TColor*)&vertex_color_ru[i_itemType],
                            *(JUtility::TColor*)&vertex_color_ld[i_itemType],
                            *(JUtility::TColor*)&vertex_color_rd[i_itemType]);
}

/* 8021D764-8021DB64 2180A4 0400+00 2/2 0/0 0/0 .text set3rdColor__13dMeter2Info_cFUcP10J2DPicture
 */
void dMeter2Info_c::set3rdColor(u8 i_itemType, J2DPicture* i_pic) {
    if (i_itemType == ItemType_POU_FIRE) {
        i_pic->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                               JUtility::TColor(0xff, 0xff, 0xff, 0xff));
        i_pic->setCornerColor(
            JUtility::TColor(0xff, 0xff, 0xff, 0xff), JUtility::TColor(0xff, 0xff, 0xff, 0xff),
            JUtility::TColor(0xff, 0xff, 0xff, 0xff), JUtility::TColor(0xff, 0xff, 0xff, 0xff));
    } else if (i_itemType == ItemType_FAIRY || i_itemType == ItemType_BEE_CHILD || i_itemType == ItemType_WORM) {
        i_pic->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                               JUtility::TColor(0xff, 0xff, 0xff, 0xff));
        i_pic->setCornerColor(
            JUtility::TColor(0xff, 0xff, 0xff, 0xff), JUtility::TColor(0xff, 0xff, 0xff, 0xff),
            JUtility::TColor(0xff, 0xff, 0xff, 0xff), JUtility::TColor(0xcd, 0xff, 0xff, 0xff));
    } else {
        i_pic->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                               JUtility::TColor(0xff, 0xff, 0xff, 0xff));
        i_pic->setCornerColor(
            JUtility::TColor(0xff, 0xff, 0xff, 0xff), JUtility::TColor(0xff, 0xff, 0xff, 0xff),
            JUtility::TColor(0xff, 0xff, 0xff, 0xff), JUtility::TColor(0xff, 0xff, 0xff, 0xff));
    }
}

/* 8021DB64-8021DCC4 2184A4 0160+00 2/2 0/0 0/0 .text set4thColor__13dMeter2Info_cFUcP10J2DPicture
 */
void dMeter2Info_c::set4thColor(u8 i_itemType, J2DPicture* i_pic) {
    i_pic->setBlackWhite(JUtility::TColor(0, 0, 0, 0), JUtility::TColor(0xff, 0xff, 0xff, 0xff));
    i_pic->setCornerColor(
        JUtility::TColor(0xff, 0xff, 0xff, 0xff), JUtility::TColor(0xff, 0xff, 0xff, 0xff),
        JUtility::TColor(0xff, 0xff, 0xff, 0xff), JUtility::TColor(0xff, 0xff, 0xff, 0xff));
}

/* 8021DCC4-8021DCE0 218604 001C+00 0/0 2/2 0/0 .text setHotSpringTimer__13dMeter2Info_cFUc */
void dMeter2Info_c::setHotSpringTimer(u8 i_slotNo) {
    int i_bottleIdx = i_slotNo - 11;
    JUT_ASSERT(2699, i_bottleIdx >= 0 && i_bottleIdx <= dSv_player_item_c::BOTTLE_MAX);

    mHotSpringTimer[i_bottleIdx] = 900;
}

/* 8021DCE0-8021DD5C 218620 007C+00 0/0 1/1 0/0 .text decHotSpringTimer__13dMeter2Info_cFv */
void dMeter2Info_c::decHotSpringTimer() {
    for (int i = 0; i < 4; i++) {
        if (mHotSpringTimer[i] != 0) {
            mHotSpringTimer[i]--;
            if (mHotSpringTimer[i] == 0) {
                changeWater(i + SLOT_11);
            }
        }
    }
}

/* 8021DD5C-8021DE18 21869C 00BC+00 2/2 1/1 0/0 .text            changeWater__13dMeter2Info_cFUc */
void dMeter2Info_c::changeWater(u8 i_slotNo) {
    int i_bottleIdx = i_slotNo - SLOT_11;
    JUT_ASSERT(2739, i_bottleIdx >= 0 && i_bottleIdx <= dSv_player_item_c::BOTTLE_MAX);

    mHotSpringTimer[i_bottleIdx] = 0;

    if (dComIfGs_getItem(i_slotNo, true) == fpcNm_ITEM_HOT_SPRING) {
        dComIfGs_setItem(i_slotNo, fpcNm_ITEM_WATER_BOTTLE);

        for (int i = 0; i < 3; i++) {
            if (i_slotNo == dComIfGs_getSelectItemIndex(i)) {
                dComIfGp_setSelectItem(i);
            }
        }
    }
}

/* 8021DE18-8021E0C4 218758 02AC+00 0/0 3/3 3/3 .text            setMiniGameItem__13dMeter2Info_cFUc
 */
void dMeter2Info_c::setMiniGameItem(u8 i_minigameFlag) {
    bool item_set = false;
    if (mMiniGameItemSetFlag != 0) {
        item_set = true;
    }

    if (mRentalBombBagIdx == 0xFF) {
        u8 setRentBagIdx = false;

        for (int bagIdx = 0; bagIdx < 3; bagIdx++) {
            if (!setRentBagIdx && dComIfGs_getItem((u8)(bagIdx + SLOT_15), true) == fpcNm_ITEM_NONE) {
                mRentalBombBagIdx = bagIdx;
                setRentBagIdx = true;
            }
        }

        if (!setRentBagIdx) {
            mRentalBombBagIdx = 2;
        }
    }

    mMiniGameItemSetFlag = i_minigameFlag;

    for (int i = 0; i < 2; i++) {
        mSaveMixItemIdx[i] = dComIfGs_getMixItemIndex(i);
        mSaveSelItemIdx[i] = dComIfGs_getSelectItemIndex(i);
    }

    mSaveBombNum = dComIfGs_getBombNum(mRentalBombBagIdx);
    mSaveArrowNum = dComIfGs_getArrowNum();
    mSaveBowItem = dComIfGs_getItem(SLOT_4, false);
    mSaveBombItem = dComIfGs_getItem((u8)(mRentalBombBagIdx + SLOT_15), false);

    if (item_set) {
        for (int i = 0; i < 2; i++) {
            dComIfGs_setMixItemIndex(i, mSaveMixItemIdxMG[i]);
            dComIfGs_setSelectItemIndex(i, mSaveSelItemIdxMG[i]);
        }
        dComIfGs_setItem(SLOT_4, mSaveBowItemMG);
        dComIfGp_setItem(SLOT_4, mSaveBowItemMG);
        dComIfGs_setItem((u8)(mRentalBombBagIdx + SLOT_15), mSaveBombItemMG);
        dComIfGp_setItem((u8)(mRentalBombBagIdx + SLOT_15), mSaveBombItemMG);
        dComIfGs_setBombNum(mRentalBombBagIdx, mSaveBombNumMG);
        dComIfGs_setArrowNum(mSaveArrowNumMG);
    }

    dComIfGs_setItem((u8)(mRentalBombBagIdx + SLOT_15), fpcNm_ITEM_NORMAL_BOMB);
    dComIfGp_setItem((u8)(mRentalBombBagIdx + SLOT_15), fpcNm_ITEM_NORMAL_BOMB);

    if (mMiniGameItemSetFlag != 3) {
        dComIfGs_setItem(SLOT_4, fpcNm_ITEM_BOW);
        dComIfGp_setItem(SLOT_4, fpcNm_ITEM_BOW);
        dComIfGs_setMixItemIndex(SELECT_ITEM_Y, 0xFF);
        dComIfGs_setSelectItemIndex(SELECT_ITEM_Y, 0xFF);
        dComIfGs_setMixItemIndex(SELECT_ITEM_X, SLOT_4);
        dComIfGs_setSelectItemIndex(SELECT_ITEM_X, (u8)(mRentalBombBagIdx + SLOT_15));
    }

    if (!item_set) {
        dComIfGs_setBombNum(mRentalBombBagIdx, 30);
        dComIfGs_setArrowNum(dComIfGs_getArrowMax());
    }
}

/* 8021E0C4-8021E268 218A04 01A4+00 0/0 3/3 4/4 .text resetMiniGameItem__13dMeter2Info_cFb */
void dMeter2Info_c::resetMiniGameItem(bool i_saveItem) {
    if (mMiniGameItemSetFlag != 0) {
        if (i_saveItem) {
            for (int i = 0; i < 2; i++) {
                mSaveMixItemIdxMG[i] = dComIfGs_getMixItemIndex(i);
                mSaveSelItemIdxMG[i] = dComIfGs_getSelectItemIndex(i);
            }

            mSaveBombNumMG = dComIfGs_getBombNum(mRentalBombBagIdx);
            mSaveArrowNumMG = dComIfGs_getArrowNum();
            mSaveBowItemMG = dComIfGs_getItem(SLOT_4, false);
            mSaveBombItemMG = dComIfGs_getItem((u8)(mRentalBombBagIdx + SLOT_15), false);
        }

        for (int i = 0; i < 2; i++) {
            dComIfGs_setMixItemIndex(i, mSaveMixItemIdx[i]);
            dComIfGs_setSelectItemIndex(i, mSaveSelItemIdx[i]);
        }

        dComIfGs_setItem(SLOT_4, mSaveBowItem);
        dComIfGp_setItem(SLOT_4, mSaveBowItem);

        dComIfGs_setItem((u8)(mRentalBombBagIdx + SLOT_15), mSaveBombItem);
        dComIfGp_setItem((u8)(mRentalBombBagIdx + SLOT_15), mSaveBombItem);

        dComIfGs_setBombNum(mRentalBombBagIdx, mSaveBombNum);
        dComIfGs_setArrowNum(mSaveArrowNum);

        if (!i_saveItem) {
            mMiniGameItemSetFlag = 0;
            mRentalBombBagIdx = 0xFF;
        }
    }
}

/* 8021E268-8021E290 218BA8 0028+00 0/0 0/0 5/5 .text setMiniGameCount__13dMeter2Info_cFSc */
void dMeter2Info_c::setMiniGameCount(s8 i_count) {
    if (i_count < -99) {
        i_count = -99;
    }
    if (i_count > 99) {
        i_count = 99;
    }

    mMiniGameCount = i_count;
}

/* 8021E290-8021E2B4 218BD0 0024+00 1/1 2/2 0/0 .text setSaveStageName__13dMeter2Info_cFPCc */
void dMeter2Info_c::setSaveStageName(const char* i_stageName) {
    strcpy(mSaveStageName, i_stageName);
}

/* 8021E2B4-8021E2C8 218BF4 0014+00 0/0 0/0 1/1 .text            dMeter2Info_getNowLifeGauge__Fv */
s16 dMeter2Info_getNowLifeGauge() {
    return dMeter2Info_getMeterClass()->getNowLifeGauge();
}

/* 8021E2C8-8021E2DC 218C08 0014+00 0/0 11/11 3/3 .text dMeter2Info_getNumberTextureName__Fi */
const char* dMeter2Info_getNumberTextureName(int i_num) {
    static const char* tex_name[10] = {
        "im_font_number_32_32_ganshinkyo_0_02.bti", "im_font_number_32_32_ganshinkyo_1_02.bti",
        "im_font_number_32_32_ganshinkyo_2_02.bti", "im_font_number_32_32_ganshinkyo_3_02.bti",
        "im_font_number_32_32_ganshinkyo_4_03.bti", "im_font_number_32_32_ganshinkyo_5_02.bti",
        "im_font_number_32_32_ganshinkyo_6_02.bti", "im_font_number_32_32_ganshinkyo_7_02.bti",
        "im_font_number_32_32_ganshinkyo_8_02.bti", "im_font_number_32_32_ganshinkyo_9_02.bti",
    };

    JUT_ASSERT(2986, i_num >= 0 && i_num <= 9);
    return tex_name[i_num];
}

const char* dMeter2Info_getPlusTextureName() {
    static const char* tex_name = "im_plus_metal_24ｘ24_00.bti";
    return tex_name;
}

/* 8021E308-8021E4B0 218C48 01A8+00 0/0 3/3 0/0 .text dMeter2Info_getPixel__FffffffPC7ResTIMG */
bool dMeter2Info_getPixel(f32 i_posX, f32 i_posY, f32 param_2, f32 param_3, f32 i_sizeX,
                          f32 i_sizeY, ResTIMG const* i_resTimg) {
    f32 temp_f31 = i_posX - param_2;
    f32 temp_f30 = i_posY - param_3;

    if (temp_f31 < 0.0f || temp_f31 >= (u32)i_sizeX || temp_f30 < 0.0f || temp_f30 >= (u32)i_sizeY) {
        return 0;
    }

    JUT_ASSERT(3060, i_resTimg->format == GX_TF_C8 && i_resTimg->indexTexture && i_resTimg->colorFormat == GX_TL_RGB5A3);

    u32 timg_width = i_resTimg->width;
    u32 s = (temp_f31 * (f32)timg_width) / i_sizeX;
    u32 t = (temp_f30 * (f32)i_resTimg->height) / i_sizeY;

    JUT_ASSERT(3065, s < i_resTimg->width && t < i_resTimg->height);

    u32 sp1C = (t & ~3) * ((timg_width + 7) & ~7) + ((s & ~7) * 4 + (s & 7)) + (t & 3) * 8;
    u8* pixel = (u8*)((u32)i_resTimg + (i_resTimg->imageOffset + sp1C));

    JUT_ASSERT(3074, *pixel < i_resTimg->numColors);

    u16* palette_p = (u16*)((u32)i_resTimg + i_resTimg->paletteOffset);
    u16 var_r24 = (u16)palette_p[*pixel];
    if (var_r24 & 0x8000) {
        return 1;
    }

    return var_r24 & 0x7000;
}

/* 8021E4B0-8021E530 218DF0 0080+00 0/0 2/2 1/1 .text            dMeter2Info_setCloth__FUcb */
void dMeter2Info_setCloth(u8 i_clothId, bool i_offItemBit) {
    switch (i_clothId) {
    case fpcNm_ITEM_WEAR_CASUAL:
    case fpcNm_ITEM_WEAR_KOKIRI:
    case fpcNm_ITEM_ARMOR:
    case fpcNm_ITEM_WEAR_ZORA:
        break;
    default:
        OS_REPORT("cloth item id error!! ==> %d\n", i_clothId);
        i_clothId = fpcNm_ITEM_WEAR_CASUAL;
        i_offItemBit = false;
    }

    if (i_offItemBit && dComIfGs_getSelectEquipClothes() != fpcNm_ITEM_NONE) {
        dComIfGs_offItemFirstBit(dComIfGs_getSelectEquipClothes());
    }

    dComIfGs_setSelectEquipClothes(i_clothId);
    dComIfGp_setSelectEquipClothes(i_clothId);
}

/* 8021E530-8021E5D4 218E70 00A4+00 0/0 3/3 3/3 .text            dMeter2Info_setSword__FUcb */
void dMeter2Info_setSword(u8 i_itemId, bool i_offItemBit) {
    switch (i_itemId) {
    case fpcNm_ITEM_NONE:
    case fpcNm_ITEM_WOOD_STICK:
    case fpcNm_ITEM_SWORD:
    case fpcNm_ITEM_MASTER_SWORD:
    case fpcNm_ITEM_LIGHT_SWORD:
        break;
    default:
        OS_REPORT("sword item id error!! ==> %d\n", i_itemId);
        i_itemId = fpcNm_ITEM_NONE;
        i_offItemBit = false;
    }

    if (i_offItemBit && dComIfGs_getSelectEquipSword() != 0xFF) {
        dComIfGs_offItemFirstBit(dComIfGs_getSelectEquipSword());
    }

    dComIfGs_setSelectEquipSword(i_itemId);
    dComIfGp_setSelectEquipSword(i_itemId);
}

/* 8021E5D4-8021E660 218F14 008C+00 0/0 3/3 0/0 .text            dMeter2Info_setShield__FUcb */
void dMeter2Info_setShield(u8 i_itemId, bool i_offItemBit) {
    switch (i_itemId) {
    case fpcNm_ITEM_NONE:
    case fpcNm_ITEM_WOOD_SHIELD:
    case fpcNm_ITEM_SHIELD:
    case fpcNm_ITEM_HYLIA_SHIELD:
        break;
    default:
        OS_REPORT("shield item id error!! ==> %d\n", i_itemId);
        i_itemId = fpcNm_ITEM_NONE;
        i_offItemBit = false;
    }

    if (i_offItemBit && dComIfGs_getSelectEquipShield() != 0xFF) {
        dComIfGs_offItemFirstBit(dComIfGs_getSelectEquipShield());
    }

    dComIfGs_setSelectEquipShield(i_itemId);
    dComIfGp_setSelectEquipShield(i_itemId);
}

/* 8021E660-8021E668 218FA0 0008+00 0/0 1/1 0/0 .text            dMeter2Info_is2DActiveTouchArea__Fv
 */
bool dMeter2Info_is2DActiveTouchArea() {
    return false;
}

/* 8021E668-8021E688 218FA8 0020+00 0/0 1/1 0/0 .text            dMeter2Info_isMapOpenCheck__Fv */
bool dMeter2Info_isMapOpenCheck() {
    return dMeter2Info_getMeterMapClass()->isMapOpenCheck();
}

/* 8021E688-8021E6E4 218FC8 005C+00 0/0 2/2 0/0 .text            dMeter2Info_isItemOpenCheck__Fv */
bool dMeter2Info_isItemOpenCheck() {
    if (daPy_getPlayerActorClass()->checkCanoeSlider() || daPy_getPlayerActorClass()->getSumouMode() || dMeter2Info_isSub2DStatus(1)) {
        return false;
    }

    return true;
}

/* 803BF81C-803BFA1C 01C93C 0200+00 3/3 6/6 0/0 .data            letter_data__12dMenu_Letter */
dMenu_LetterData dMenu_Letter::letter_data[64] = {
    {0x09C5, 0x0A29, 0x0A8D, 0x010B}, {0x09C6, 0x0A2A, 0x0A8E, 0x0237},
    {0x09C7, 0x0A2B, 0x0A8F, 0x0236}, {0x09C8, 0x0A2C, 0x0A90, 0x0037},
    {0x09C9, 0x0A2D, 0x0A91, 0x0039}, {0x09CA, 0x0A2E, 0x0A92, 0x0067},
    {0x09CB, 0x0A2F, 0x0A93, 0x0109}, {0x09CC, 0x0A30, 0x0A94, 0x004D},
    {0x09CD, 0x0A31, 0x0A95, 0x0119}, {0x09CE, 0x0A32, 0x0A96, 0x0108},
    {0x09CF, 0x0A33, 0x0A97, 0x010C}, {0x09D4, 0x0A38, 0x0A9E, 0x010C},
    {0x09D1, 0x0A35, 0x0A9B, 0x00B6}, {0x09D2, 0x0A36, 0x0A9C, 0x0067},
    {0x09D5, 0x0A39, 0x0AA0, 0x031C}, {0x09D6, 0x0A3A, 0x0AA1, 0x010A},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0000, 0x0000}, {0x0000, 0x0000, 0x0000, 0x0000},
};

/* 8021E6E4-8021E754 219024 0070+00 1/1 2/2 0/0 .text            dMeter2Info_getRecieveLetterNum__Fv
 */
u8 dMeter2Info_getRecieveLetterNum() {
    u8 letterNum = 0;

    for (int i = 0; i < 0x40; i++) {
        if (dComIfGs_isLetterGetFlag(i)) {
            letterNum++;
        }
    }

    return letterNum;
}

/* 8021E754-8021E804 219094 00B0+00 0/0 4/4 2/2 .text            dMeter2Info_getNewLetterNum__Fv */
u8 dMeter2Info_getNewLetterNum() {
    u8 letterNum = 0;

    for (int i = 0; i < 0x40; i++) {
        if (!dComIfGs_isLetterGetFlag(i) && dMenu_Letter::getLetterName(i) != 0) {
            u16 letterEvent = dMenu_Letter::getLetterEventFlag(i);
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[letterEvent])) {
                letterNum++;
            }
        }
    }

    return letterNum;
}

/* 8021E804-8021E8DC 219144 00D8+00 0/0 1/1 0/0 .text            dMeter2Info_setNewLetterSender__Fv
 */
int dMeter2Info_setNewLetterSender() {
    u8 check = 0;

    for (int i = 0; i < 0x40; i++) {
        if (!dComIfGs_isLetterGetFlag(i) && dMenu_Letter::getLetterName(i) != 0) {
            u16 letterEvent = dMenu_Letter::getLetterEventFlag(i);
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[letterEvent])) {
                if (check == 0) {
                    u16 letterName = dMenu_Letter::getLetterName(i);
                    dMsgObject_c::setLetterNameID(letterName);
                } else {
                    dMsgObject_c::setLetterNameID(0);
                    return 0;
                }
                check++;
            }
        }
    }

    return 0;
}

/* 8021E8DC-8021E9D0 21921C 00F4+00 0/0 1/1 0/0 .text            dMeter2Info_recieveLetter__Fv */
int dMeter2Info_recieveLetter() {
    int rv = FALSE;
    u8 letterNum = dMeter2Info_getRecieveLetterNum();

    for (int i = 0; i < 64; i++) {
        if (!dComIfGs_isLetterGetFlag(i) && dMenu_Letter::getLetterName(i) != 0) {
            u16 eventFlag = dMenu_Letter::getLetterEventFlag(i);
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[eventFlag])) {
                dComIfGs_onLetterGetFlag(i);

                if (dComIfGs_getGetNumber(letterNum) == 0) {
                    dComIfGs_setGetNumber(letterNum, i + 1);
                } else {
                    for (int j = 0; j < 0x40; j++) {
                        OS_REPORT("letter info =====> %d, %d\n", j, dComIfGs_getGetNumber(j) - 1);
                    }

                    JUT_ASSERT(3552, 0);
                }

                letterNum++;
                rv = TRUE;
            }
        }
    }

    return rv;
}

/* 8021E9D0-8021E9D4 219310 0004+00 0/0 33/33 0/0 .text            dMeter2Info_set2DVibration__Fv */
void dMeter2Info_set2DVibration() {}

/* 8021E9D4-8021E9D8 219314 0004+00 0/0 12/12 0/0 .text            dMeter2Info_set2DVibrationM__Fv
 */
void dMeter2Info_set2DVibrationM() {}
