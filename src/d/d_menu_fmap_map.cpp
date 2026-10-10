#include "d/dolzel.h" // IWYU pragma: keep

#include "JSystem/JHostIO/JORFile.h"
#include "JSystem/JHostIO/JORServer.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_debug_viewer.h"
#include "d/d_menu_fmap_map.h"
#include "m_Do/m_Do_graphic.h"
#include <cstring>

#if DEBUG
#define HIO_PRM_RES_READ_CLASS dMfm_HIO_prm_res_dst_s
#else
#define HIO_PRM_RES_READ_CLASS dMfm_HIO_prm_res_src_s
#endif

static u8 twoValueLineInterpolation(u8 i_value1, u8 i_value2, f32 i_param) {
    return (u8)((f32)i_value1 + i_param * ((f32)i_value2 - (f32)i_value1));
}

static void twoColorLineInterporation(GXColor const& i_color1, GXColor const& i_color2,
                                      f32 i_param, GXColor& o_color) {
    o_color.r = twoValueLineInterpolation(i_color1.r, i_color2.r, i_param);
    o_color.g = twoValueLineInterpolation(i_color1.g, i_color2.g, i_param);
    o_color.b = twoValueLineInterpolation(i_color1.b, i_color2.b, i_param);
    o_color.a = twoValueLineInterpolation(i_color1.a, i_color2.a, i_param);
}

void renderingFmap_c::init(u8* param_0, u16 i_texWidth, u16 i_texHeight, u16 param_3, u16 param_4) {
    field_0x4 = param_0;
    mTexWidth = i_texWidth;
    mTexHeight = i_texHeight;
    field_0x20 = param_3;
    field_0x22 = param_4;
    mPosX = 0.0f;
    mPosZ = 0.0f;
    mDrawEnable = false;
}

void renderingFmap_c::entry(dMenu_Fmap_world_data_c* i_worldData, int i_startStageNo,
                            f32 i_posX, f32 i_posY, f32 i_scale) {
    mpWorldData = i_worldData;
    mStartStageNo = i_startStageNo;
    mPosX = i_posX;
    mPosZ = i_posY;
    mCmPerTexel = i_scale;
    field_0x8 = mCmPerTexel * field_0x20 * mDoGph_gInf_c::getScale();
    field_0xc = mCmPerTexel * field_0x22;
    dComIfGd_setCopy2D(this);
}

bool renderingFmap_c::isSwitchSpecialOff(int i_swbit) {
    return !strcmp(dComIfGp_getStartStageName(), "F_SP121") && i_swbit == 0xb2;
}

bool renderingFmap_c::isSwitch(dDrawPath_c::group_class const* i_group) {
    if (i_group->mSwbit == 0xff) {
        return true;
    }

#if DEBUG
    if (dMfm_HIO_prm_res_dst_s::m_other.field_0x00_dbg != 0) {
        return dMfm_HIO_prm_res_dst_s::m_other.field_0x01_dbg != 0;
    }
#endif

    if (i_group->field_0x1 == 0) {
        if (isSwitchSpecialOff(i_group->mSwbit)) {
            return true;
        }
    } else {
        if (isSwitchSpecialOff(i_group->mSwbit)) {
            return false;
        }
    }

    if (mRegionNo == dComIfGp_getNowLevel() && mStageNo == mStartStageNo) {
        if (i_group->field_0x1 == 0) {
            return !dComIfGs_isSwitch(i_group->mSwbit, mRoomNo);
        } else {
            return dComIfGs_isSwitch(i_group->mSwbit, mRoomNo) != FALSE;
        }
    } else {
        if (i_group->mSwbit < 0x80) {
            if (i_group->field_0x1 != 0) {
                return dComIfGs_isStageSwitch(mSaveTableNo, i_group->mSwbit) != false;
            } else {
                return dComIfGs_isStageSwitch(mSaveTableNo, i_group->mSwbit) == false;
            }
        } else {
            return i_group->field_0x1 == 0;
        }
    }
}

int renderingFmap_c::getPointStagePathInnerNo(dMenu_Fmap_region_data_c* i_regionData,
                                               f32 i_offsetX, f32 i_offsetY, int i_stageNo,
                                               int* o_stageNo, int* o_roomNo) {
    f32 f31 = mPosX + i_offsetX * mCmPerTexel;
    f32 f30 = mPosZ + i_offsetY * mCmPerTexel;
    int result = i_regionData->getPointStagePathInnerNo(f31, f30, i_stageNo, o_stageNo, o_roomNo);
#if DEBUG
    if (o_stageNo) {
        dDbVw_Report(48, 72, "stNo%d", *o_stageNo);
    }
    if (o_roomNo) {
        dDbVw_Report(48, 84, "rmNo%d", *o_roomNo);
    }
#endif
    return result;
}

dMfm_prm_res_s* dMfm_HIO_prm_res_dst_s::m_res;
dMfm_HIO_c* dMfm_HIO_c::mMySelfPointer;

#if DEBUG

dMfm_prm_res_s* dMfm_HIO_c::m_res_src_p;

const dMfm_HIO_c::list_s dMfm_HIO_c::l_listData[101] = {
    // "Resource[palette]
    {0x9, "", "リソース[パレット]", NULL, 1.0f, 1.0f, 0.0f},
    // "Resource palette"
    {0x7, "", "＊＊＊リソース パレット＊＊＊", NULL, 1.0f, 1.0f, 0.0f},
    // "Background"
    {0xc, "", "・背景", &m_prm_hio.palette[0], 1.0f, 1.0f, 0.0f},

    // "Arrival room"
    {0x7, "", "■到達部屋■", NULL, 1.0f, 1.0f, 0.0f},
    // "Floor 1"
    {0xc, "■到達部屋■", "・床1", &m_prm_hio.palette[1], 1.0f, 1.0f, 0.0f},
    // "Floor 2"
    {0xc, "■到達部屋■", "・床2", &m_prm_hio.palette[2], 1.0f, 1.0f, 0.0f},
    // "Black <Abyss>"
    {0xc, "■到達部屋■", "・黒<奈落>", &m_prm_hio.palette[3], 1.0f, 1.0f, 0.0f},
    // "No entry allowed <No entry allowed>"
    {0xc, "■到達部屋■", "・入禁<進入禁止>", &m_prm_hio.palette[4], 1.0f, 1.0f, 0.0f},
    // "Water"
    {0xc, "■到達部屋■", "・水", &m_prm_hio.palette[5], 1.0f, 1.0f, 0.0f},
    // "Line (not included in region color)"
    {0xc, "■到達部屋■", "・ライン<領域色には含まれません>", &m_prm_hio.palette[6], 1.0f, 1.0f, 0.0f},
    // "Poison"
    {0xc, "■到達部屋■", "・毒", &m_prm_hio.palette[7], 1.0f, 1.0f, 0.0f},
    // "Flame"
    {0xc, "■到達部屋■", "・炎", &m_prm_hio.palette[8], 1.0f, 1.0f, 0.0f},

    // "Rooms with players"
    {0x7, "", "■プレイヤー在籍部屋■", NULL, 1.0f, 1.0f, 0.0f},
    // "Floor 1"
    {0xc, "■プレイヤー在籍部屋■", "・床1", &m_prm_hio.palette[9], 1.0f, 1.0f, 0.0f},
    // "Floor 2"
    {0xc, "■プレイヤー在籍部屋■", "・床2", &m_prm_hio.palette[10], 1.0f, 1.0f, 0.0f},
    // "Black <Abyss>"
    {0xc, "■プレイヤー在籍部屋■", "・黒<奈落>", &m_prm_hio.palette[11], 1.0f, 1.0f, 0.0f},
    // "No entry allowed <No entry allowed>"
    {0xc, "■プレイヤー在籍部屋■", "・入禁<進入禁止>", &m_prm_hio.palette[12], 1.0f, 1.0f, 0.0f},
    // "Water"
    {0xc, "■プレイヤー在籍部屋■", "・水", &m_prm_hio.palette[13], 1.0f, 1.0f, 0.0f},
    // "Line <Not included in region color>"
    {0xc, "■プレイヤー在籍部屋■", "・ライン<領域色には含まれません>", &m_prm_hio.palette[14], 1.0f, 1.0f, 0.0f},
    // "Poison"
    {0xc, "■プレイヤー在籍部屋■", "・毒", &m_prm_hio.palette[15], 1.0f, 1.0f, 0.0f},
    // "Flame"
    {0xc, "■プレイヤー在籍部屋■", "・炎", &m_prm_hio.palette[16], 1.0f, 1.0f, 0.0f},

    // "Selected position <not actually used to ensure capacity>"
    {0x7, "", "■選択位置■<容量確保のため実際には使用されません>", NULL, 1.0f, 1.0f, 0.0f},
    // "Floor 1"
    {0xc, "■選択位置■", "・床1", &m_prm_hio.palette[17], 1.0f, 1.0f, 0.0f},
    // "Floor 2"
    {0xc, "■選択位置■", "・床2", &m_prm_hio.palette[18], 1.0f, 1.0f, 0.0f},
    // "Black <Abyss>"
    {0xc, "■選択位置■", "・黒<奈落>", &m_prm_hio.palette[19], 1.0f, 1.0f, 0.0f},
    // "No entry allowed <No entry allowed>"
    {0xc, "■選択位置■", "・入禁<進入禁止>", &m_prm_hio.palette[20], 1.0f, 1.0f, 0.0f},
    // "Water"
    {0xc, "■選択位置■", "・水", &m_prm_hio.palette[21], 1.0f, 1.0f, 0.0f},
    // "Line <Not included in region color>"
    {0xc, "■選択位置■", "・ライン<領域色には含まれません>", &m_prm_hio.palette[22], 1.0f, 1.0f, 0.0f},
    // "Poison"
    {0xc, "■選択位置■", "・毒", &m_prm_hio.palette[23], 1.0f, 1.0f, 0.0f},
    // "Flame"
    {0xc, "■選択位置■", "・炎", &m_prm_hio.palette[24], 1.0f, 1.0f, 0.0f},

    // "Night stalker barrier <not actually used to ensure capacity>"
    {0x7, "", "■ﾅｲﾄｽﾄｰｶｰ結界■<容量確保のため実際には使用されません>", NULL, 1.0f, 1.0f, 0.0f},
    // "NS1"
    {0xc, "■ﾅｲﾄｽﾄｰｶｰ結界■", "・NS1", &m_prm_hio.palette[25], 1.0f, 1.0f, 0.0f},
    // "NS2"
    {0xc, "■ﾅｲﾄｽﾄｰｶｰ結界■", "・NS2", &m_prm_hio.palette[26], 1.0f, 1.0f, 0.0f},

    {0xa, "", "", NULL, 1.0f, 1.0f, 0.0f},

    // "Resource [Other]"
    {0x9, "", "リソース[他]", NULL, 1.0f, 1.0f, 0.0f},

    // "***Items other than resource palette"
    {0x7, "", "＊＊＊リソース パレット以外＊＊＊", NULL, 1.0f, 1.0f, 0.0f},
    // "Night stalker barrier"
    {0x7, "", "■ナイトストーカー結界■", NULL, 1.0f, 1.0f, 0.0f},
    // "Barrier 1" "Period"
    {0x1, "■ナイトストーカー結界1", "周期",  &m_prm_hio.colors.field_0x90, 0.0f, 360.0f, 0.0f},
    // "Thickness"
    {0x0, "■ナイトストーカー結界1", "太さ", &m_prm_hio.colors.field_0x94, 0.0f, 255.0f, 0.0f},
    // "00"
    {0xb, "■ナイトストーカー結界1", "00", &m_prm_hio.colors.field_0x00, 1.0f, 1.0f, 0.0f},
    // "01"
    {0xb, "■ナイトストーカー結界1", "01", &m_prm_hio.colors.field_0x04, 1.0f, 1.0f, 0.0f},
    // "Barrier 2" "Period"
    {0x1, "■ナイトストーカー結界2", "周期", &m_prm_hio.colors.field_0x92, 0.0f, 360.0f, 0.0f},
    // "Thickness"
    {0x0, "■ナイトストーカー結界2", "太さ", &m_prm_hio.colors.field_0x95, 0.0f, 255.0f, 0.0f},
    // "0"
    {0xb, "■ナイトストーカー結界2", "0", &m_prm_hio.colors.field_0x08, 1.0f, 1.0f, 0.0f},
    // "1"
    {0xb, "■ナイトストーカー結界2", "1", &m_prm_hio.colors.field_0x0c, 1.0f, 1.0f, 0.0f},

    // "Arrival room: Flashing 1"
    {0x7, "", "■到達部屋 点滅1■", NULL, 1.0f, 1.0f, 0.0f},
    // "Floor 1"
    {0xb, "■到達部屋 点滅1■", "・床1", &m_prm_hio.colors.field_0x50[0], 1.0f, 1.0f, 0.0f},
    // "Floor 2"
    {0xb, "■到達部屋 点滅1■", "・床2", &m_prm_hio.colors.field_0x50[1], 1.0f, 1.0f, 0.0f},
    // "Black <Abyss>"
    {0xb, "■到達部屋 点滅1■", "・黒<奈落>", &m_prm_hio.colors.field_0x50[2], 1.0f, 1.0f, 0.0f},
    // "No entry allowed <No entry allowed>"
    {0xb, "■到達部屋 点滅1■", "・入禁<進入禁止>", &m_prm_hio.colors.field_0x50[3], 1.0f, 1.0f, 0.0f},
    // "Water"
    {0xb, "■到達部屋 点滅1■", "・水", &m_prm_hio.colors.field_0x50[4], 1.0f, 1.0f, 0.0f},
    // "Line <Not included in region color>"
    {0xb, "■到達部屋 点滅1■", "・ライン<領域色には含まれません>", &m_prm_hio.colors.field_0x50[5], 1.0f, 1.0f, 0.0f},
    // "Poison"
    {0xb, "■到達部屋 点滅1■", "・毒", &m_prm_hio.colors.field_0x50[6], 1.0f, 1.0f, 0.0f},
    // "Flame"
    {0xb, "■到達部屋 点滅1■", "・炎", &m_prm_hio.colors.field_0x50[7], 1.0f, 1.0f, 0.0f},

    // "Arrival room: Flashing 2"
    {0x7, "■到達部屋 点滅2■", "■到達部屋 点滅2■", NULL, 1.0f, 1.0f, 0.0f},
    // "Floor 1"
    {0xb, "■到達部屋 点滅2■", "・床1", &m_prm_hio.colors.field_0x70[0], 1.0f, 1.0f, 0.0f},
    // "Floor 2"
    {0xb, "■到達部屋 点滅2■", "・床2", &m_prm_hio.colors.field_0x70[1], 1.0f, 1.0f, 0.0f},
    // "Black <Abyss>"
    {0xb, "■到達部屋 点滅2■", "・黒<奈落>", &m_prm_hio.colors.field_0x70[2], 1.0f, 1.0f, 0.0f},
    // "No entry allowed <No entry allowed>"
    {0xb, "■到達部屋 点滅2■", "・入禁<進入禁止>", &m_prm_hio.colors.field_0x70[3], 1.0f, 1.0f, 0.0f},
    // "Water"
    {0xb, "■到達部屋 点滅2■", "・水", &m_prm_hio.colors.field_0x70[4], 1.0f, 1.0f, 0.0f},
    // "Line <Not included in region color>"
    {0xb, "■到達部屋 点滅2■", "・ライン<領域色には含まれません>", &m_prm_hio.colors.field_0x70[5], 1.0f, 1.0f, 0.0f},
    // "Poison"
    {0xb, "■到達部屋 点滅2■", "・毒", &m_prm_hio.colors.field_0x70[6], 1.0f, 1.0f, 0.0f},
    // "Flame"
    {0xb, "■到達部屋 点滅2■", "・炎", &m_prm_hio.colors.field_0x70[7], 1.0f, 1.0f, 0.0f},

    // "Room with player present: Flashing 1"
    {0x7, "", "■プレイヤー在籍部屋 点滅1■", NULL, 1.0f, 1.0f, 0.0f},
    // "Floor 1"
    {0xb, "■プレイヤー在籍部屋 点滅1■", "・床1", &m_prm_hio.colors.field_0x10[0], 1.0f, 1.0f, 0.0f},
    // "Floor 2"
    {0xb, "■プレイヤー在籍部屋 点滅1■", "・床2", &m_prm_hio.colors.field_0x10[1], 1.0f, 1.0f, 0.0f},
    // "Black <Abyss>"
    {0xb, "■プレイヤー在籍部屋 点滅1■", "・黒<奈落>", &m_prm_hio.colors.field_0x10[2], 1.0f, 1.0f, 0.0f},
    // "No entry allowed <No entry allowed>"
    {0xb, "■プレイヤー在籍部屋 点滅1■", "・入禁<進入禁止>", &m_prm_hio.colors.field_0x10[3], 1.0f, 1.0f, 0.0f},
    // "Water"
    {0xb, "■プレイヤー在籍部屋 点滅1■", "・水", &m_prm_hio.colors.field_0x10[4], 1.0f, 1.0f, 0.0f},
    // "Line <Not included in region color>"
    {0xb, "■プレイヤー在籍部屋 点滅1■", "・ライン<領域色には含まれません>", &m_prm_hio.colors.field_0x10[5], 1.0f, 1.0f, 0.0f},
    // "Poison"
    {0xb, "■プレイヤー在籍部屋 点滅1■", "・毒", &m_prm_hio.colors.field_0x10[6], 1.0f, 1.0f, 0.0f},
    // "Flame"
    {0xb, "■プレイヤー在籍部屋 点滅1■", "・炎", &m_prm_hio.colors.field_0x10[7], 1.0f, 1.0f, 0.0f},

    // "Room with player present: Flashing 1"
    {0x7, "", "■プレイヤー在籍部屋 点滅2■", NULL, 1.0f, 1.0f, 0.0f},
    // "Floor 1"
    {0xb, "■プレイヤー在籍部屋 点滅2■", "・床1", &m_prm_hio.colors.field_0x30[0], 1.0f, 1.0f, 0.0f},
    // "Floor 2"
    {0xb, "■プレイヤー在籍部屋 点滅2■", "・床2", &m_prm_hio.colors.field_0x30[1], 1.0f, 1.0f, 0.0f},
    // "Black <Abyss>"
    {0xb, "■プレイヤー在籍部屋 点滅2■", "・黒<奈落>", &m_prm_hio.colors.field_0x30[2], 1.0f, 1.0f, 0.0f},
    // "No entry allowed <No entry allowed>"
    {0xb, "■プレイヤー在籍部屋 点滅2■", "・入禁<進入禁止>", &m_prm_hio.colors.field_0x30[3], 1.0f, 1.0f, 0.0f},
    // "Water"
    {0xb, "■プレイヤー在籍部屋 点滅2■", "・水", &m_prm_hio.colors.field_0x30[4], 1.0f, 1.0f, 0.0f},
    // "Line <Not included in region color>"
    {0xb, "■プレイヤー在籍部屋 点滅2■", "・ライン<領域色には含まれません>", &m_prm_hio.colors.field_0x30[5], 1.0f, 1.0f, 0.0f},
    // "Poison"
    {0xb, "■プレイヤー在籍部屋 点滅2■", "・毒", &m_prm_hio.colors.field_0x30[6], 1.0f, 1.0f, 0.0f},
    // "Flame"
    {0xb, "■プレイヤー在籍部屋 点滅2■", "・炎", &m_prm_hio.colors.field_0x30[7], 1.0f, 1.0f, 0.0f},

    {0xa, "", "", NULL, 1.0f, 1.0f, 0.0f},

    // "Non-resource items"
    {0x15, "", "■■リソース以外■■", NULL, 1.0f, 1.0f, 0.0f},
    // "Forced terrain switching ON/OFF"
    {0x15, "", "■スイッチ地形の強制ONOFF■\r\n", NULL, 1.0f, 1.0f, 0.0f},
    // "Enabled when ON"
    {0x12, "", "・ONで有効", &m_prm_hio.field_0x102.field_0x00_dbg, 1.0f, 1.0f, 0.0f},
    // "Display when ON, hide when OFF"
    {0x12, "", "・ONで表示,OFFで非表示", &m_prm_hio.field_0x102.field_0x01_dbg, 1.0f, 1.0f, 0.0f},
    // "Line at stage check area"
    {0x15, "", "■ステージチェックエリアのライン■", NULL, 1.0f, 1.0f, 0.0f},
    // "Valid"
    {0x12, "", "有効", &m_prm_hio.field_0x102.field_0x04_dbg, 1.0f, 1.0f, 0.0f},
    {0xf, "", "", &m_prm_hio.field_0x102.field_0x02_dbg, 0.0f, 255.0f, 0.0f},
    // "Line thickness"
    {0x15, "", "■ラインの太さ■", NULL, 1.0f, 1.0f, 0.0f},
    // "Valid"
    {0x12, "", "有効", &m_prm_hio.field_0x102.field_0x05_dbg, 1.0f, 1.0f, 0.0f},

    // "Applied to entire region"
    {0x15, "", "・リージョン全体時", NULL, 1.0f, 1.0f, 0.0f},
    // "Decorations"
    {0xe, "", "装飾", &m_prm_hio.field_0x102.field_0x06_dbg, 0.0f, 255.0f, 0.0f},
    // "Terrain"
    {0xe, "", "地形", &m_prm_hio.field_0x102.field_0x07_dbg, 0.0f, 255.0f, 0.0f},
    // "Outer frame"
    {0xe, "", "外枠", &m_prm_hio.field_0x102.field_0x08_dbg, 0.0f, 255.0f, 0.0f},

    // "Region when enlarged"
    {0x15, "", "・リージョン拡大時", NULL, 1.0f, 1.0f, 0.0f},
    // "Decorations"
    {0xe, "", "装飾", &m_prm_hio.field_0x102.field_0x09_dbg, 0.0f, 255.0f, 0.0f},
    // "Terrain"
    {0xe, "", "地形", &m_prm_hio.field_0x102.field_0x0a_dbg, 0.0f, 255.0f, 0.0f},
    // "Outer frame"
    {0xe, "", "外枠", &m_prm_hio.field_0x102.field_0x0b_dbg, 0.0f, 255.0f, 0.0f},
    // "Line thickness"
    {0x15, "", "■ラインの太さ■", NULL, 1.0f, 1.0f, 0.0f},
    // "Valid"
    {0x12, "", "有効", &m_prm_hio.field_0x102.field_0x01, 1.0f, 1.0f, 0.0f},
};

dMfm_HIO_c g_mfmHIO;

dMfm_HIO_c::dMfm_HIO_c() {
    mMySelfPointer = this;
    field_0xc.set(l_list);
    field_0x18 = 0;
}

void dMfm_HIO_c::genMessage(JORMContext* mctx) {
    // "Field map/Path map: Adjustment parameters
    mctx->genLabel("フィールドマップ パスマップ 調整項目", 0);
    // "Initialization"
    mctx->genButton("初期化", 0x4000005);
    // "Export text file (HOSTIO order)"
    mctx->genButton("HOSTIO順テキストファイル書き出し", 0x4000006);
    // "Export text (binary order)"
    mctx->genButton("バイナリ順テキスト書き出し", 0x4000007);
    // "Export binary file"
    mctx->genButton("バイナリファイル書き出し", 0x4000008);
    // "Read binary file"
    mctx->genButton("バイナリファイル読み込み", 0x4000009);
    // "Binary dump"
    mctx->genButton("バイナリダンプ", 0x400000a);
    // "Adjustment items not included in resources"
    mctx->genLabel("■■リソースに入らない調整項目■■", 0);
    field_0xc.gen(mctx);
}

void dMfm_HIO_c::listenPropertyEvent(const JORPropertyEvent* property) {
    JORReflexible::listenPropertyEvent(property);
    if (field_0x18) {
        return;
    }
    if (!dMfm_HIO_prm_res_dst_s::m_res) {
        field_0x18 = 1;
        // "Please use with the field map open" / "Warning!"
        JORMessageBox("フィールドマップを開けた状態で操作して下さい","注意！",0x10);
        field_0x18 = 0;
        return;
    }

    dMenu_Fmap_room_data_c* roomData;
    dMenu_Fmap_stage_arc_data_c* stageArc;
    JORFile file;
    JORMContext* mctx;
    switch (reinterpret_cast<u32>(property->id)) {
    case 0x4000002: {
        int i = 0;
        if (!field_0x8) {
            return;
        }
        dMenu_Fmap_world_data_c* worldData = field_0x8->getWorldData();
        if (!worldData) {
            return;
        }
        for (dMenu_Fmap_region_data_c* regionData = worldData->getMenuFmapRegionTop(); regionData; regionData = regionData->getNextData()) {
            int j = 0;
            for (dMenu_Fmap_stage_data_c* stageData = regionData->getMenuFmapStageDataTop(); stageData; stageData = stageData->getNextData()) {
                stageArc = stageData->getStageArc();
                if (stageArc) {
                    OSReport("R<%2d>S<%2d> SaveTable<%2d>ArriveSaveTable<%2d>\n", i, j, stageArc->getSaveTableNo(), stageArc->getVisitedRoomSaveTableNo());
                }
                roomData = stageData->getFmapRoomDataTop();
                for (int k = 0; roomData; k++) {
                    roomData = roomData->getNextData();
                }
                j++;
            }
            i++;
        }
        break;
    }
    case 0x4000006:
        writeHostioTextFile(NULL);
        break;
    case 0x4000007:
        writeBinaryTextFile(NULL);
        break;
    case 0x4000008:
        writeBinaryFile(NULL);
        break;
    case 0x4000009:
        readBinaryFile(NULL);
        mctx = attachJORMContext(8);
        mctx->startUpdateNode(this);
        field_0xc.update(mctx);
        mctx->endUpdateNode();
        releaseJORMContext(mctx);
        break;
    case 0x4000005:
        field_0xc.copySrcToHio();
        mctx = attachJORMContext(8);
        mctx->startUpdateNode(this);
        field_0xc.update(mctx);
        mctx->endUpdateNode();
        releaseJORMContext(mctx);
        break;
    case 0x400000a:
        binaryDump(dMfm_HIO_prm_res_dst_s::m_res, 366);
        break;
    }
    field_0xc.copyHioToDst();
}

dMfm_HIO_data_s dMfm_HIO_c::m_prm_hio;

void dMfm_HIO_list_c::copySrcToHio() {
    if (dMfm_HIO_c::m_res_src_p != 0) {
        dMpath_RGBA_c color;
        for (int i = 0; i < 27; i++) {
            color.setRGB5A3_palDt(dMfm_HIO_c::m_res_src_p->palette_data[i]);
            dMfm_HIO_c::m_prm_hio.palette[i] = color.getGXColor();
        }
        cLib_memCpy(&dMfm_HIO_c::m_prm_hio.colors,
                    &dMfm_HIO_c::m_res_src_p->colors,
                    sizeof(dMfm_prm_res_colors_s));
        cLib_memCpy(&dMfm_HIO_c::m_prm_hio.field_0x102,
                    &dMfm_HIO_prm_res_dst_s::m_other, sizeof(dMfm_HIO_prm_res_dst_s));
    }
}

void dMfm_HIO_list_c::copyHioToDst() {
    if (dMfm_HIO_c::m_res_src_p != 0) {
        dMpath_RGB5A3_palDt_c color;
        for (int i = 0; i < ARRAY_SIZE(dMfm_HIO_c::m_prm_hio.palette); i++) {
            color.setGXColor(dMfm_HIO_c::m_prm_hio.palette[i]);
            dMfm_HIO_prm_res_dst_s::m_res->palette_data[i] = color.getRGB5A3_palDt_s();
        }
        cLib_memCpy(&dMfm_HIO_c::m_res_src_p->colors, &dMfm_HIO_c::m_prm_hio.colors,
                    sizeof(dMfm_prm_res_colors_s));
        cLib_memCpy(&dMfm_HIO_prm_res_dst_s::m_other, &dMfm_HIO_c::m_prm_hio.field_0x102,
                    sizeof(dMfm_HIO_prm_res_dst_s));
    }
}

void dMfm_HIO_list_c::copyBufToHio(const char* param_0) {
    dMfm_prm_res_s* res = dMfm_HIO_prm_res_dst_s::m_res;
    cLib_memCpy(res, param_0, 0x16e);
    dMpath_RGBA_c adStack_20;
    for (int i = 0; i < ARRAY_SIZE(res->palette_data); i++) {
        adStack_20.setRGB5A3_palDt(res->palette_data[i]);
        dMfm_HIO_c::m_prm_hio.palette[i] = adStack_20.getGXColor();
    }
    cLib_memCpy(&dMfm_HIO_c::m_prm_hio.colors, &res->colors, sizeof(dMfm_prm_res_colors_s));
}

#endif

dMfm_HIO_prm_res_dst_s dMfm_HIO_prm_res_dst_s::m_other;

dMenu_FmapMap_c* dMenu_FmapMap_c::mMySelfPointer;

void renderingFmap_c::preDrawPath() {
    mEye.x = mPosX;
    mEye.y = mPosZ;
    mEye.z = -5000.0f;
    mCenter.x = mPosX;
    mCenter.y = mPosZ;
    mCenter.z = 5000.0f;
    mUp.x = 0.0f;
    mUp.y = -1.0f;
    mUp.z = 0.0f;
    mDoMtx_lookAt(mViewMtx, &mEye, &mCenter, &mUp, 0);
    
    GXLoadPosMtxImm(mViewMtx, GX_PNMTX0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);
    GXSetMisc(GX_MT_XF_FLUSH, 8);
}

const dMfm_HIO_prm_res_src_s dMfm_HIO_prm_res_src_s::m_other = {
#if DEBUG
    {0, 0x1}, 0xc, 0, 0, 0, 0, 0x6, 0, 0x6, 0xc,
#endif
     0x1e,
};

#if DEBUG
const dMpath_HIO_n::list_s dMfm_HIO_c::l_list = {l_listData, ARRAY_SIZE(l_listData)};
#endif

bool renderingFmap_c::isDrawPath() {
    return true;
}

bool renderingFmap_c::isDrawRoom() {
    bool result = ((mRegionNo == dComIfGp_getNowLevel() && mStageNo == mStartStageNo
            && mRoomNo == dComIfGp_roomControl_getStayNo())
        || mpRoomData->isArrival());
    return (bool)result;
}

void renderingFmap_c::postDrawPath() {
    GXSetMisc(GX_MT_XF_FLUSH, 0);
    mDoMtx_lookAt(mViewMtx, &mEye, &mCenter, &mUp, 0);
    GXLoadPosMtxImm(mViewMtx, GX_PNMTX0);
}

void renderingFmap_c::postRenderingMap() {
    dRenderingFDAmap_c::postRenderingMap();
    mDrawEnable = true;
}

void renderingFmap_c::roomSetteing() {
    mRegionOffsetX = mpRegionData->getRegionOffsetX();
    mRegionOffsetZ = mpRegionData->getRegionOffsetZ();
    mStageOffsetX = mRegionOffsetX + mpStageData->getOffsetX();
    mStageOffsetZ = mRegionOffsetZ + mpStageData->getOffsetZ();
    f32 offset_x = mStageOffsetX;
    f32 offset_z = mStageOffsetZ;

    Vec eye;
    eye.x = mPosX - offset_x;
    eye.y = mPosZ - offset_z;
    eye.z = mEye.z;
    Vec center;
    center.x = eye.x;
    center.y = eye.y;
    center.z = mCenter.z;

    Mtx viewMtx;
    mDoMtx_lookAt(viewMtx, &eye, &center, &mUp, 0);
    GXLoadPosMtxImm(viewMtx, GX_PNMTX0);
}

dDrawPath_c::room_class* renderingFmap_c::getFirstRoomPointer() {
    dDrawPath_c::room_class* room = NULL;
    getFirstRegion();

    if (mpRoomData != NULL) {
        if (mpFmapData != NULL) {
            room = mpFmapData->getMapPath();
        }

        while (mpRoomData != NULL && (room == NULL || !isDrawRoom())) {
            if (mpFmapData != NULL) {
                room = getNextRoomPointer();
            }
        }

        if (room != NULL) {
            roomSetteing();
        }
    }

    return room;
}

void renderingFmap_c::getFirstRegion() {
    mpStageData = NULL;
    mpRegionData = mpWorldData->getMenuFmapRegionTop();
    if (mpRegionData != NULL) {
        mRegionNo = mpRegionData->getRegionNo();
        mRegionIndex = 0;
        getFirstStage();
    }
}

void renderingFmap_c::getFirstStage() {
    mpRoomData = NULL;
    mpStageData = mpRegionData->getMenuFmapStageDataTop();
    if (mpStageData != NULL) {
        mpStageArc = mpStageData->getStageArc();
        mSaveTableNo = mpStageArc->getSaveTableNo();
        mVisitedRoomSaveTableNo = mpStageArc->getVisitedRoomSaveTableNo();
        mStageNo = 0;
        getFirstRoom();
    }
}

void renderingFmap_c::getFirstRoom() {
    mpFmapData = NULL;
    mpRoomData = mpStageData->getFmapRoomDataTop();
    if (mpRoomData != NULL) {
        mRoomIndex = 0;
        mRoomNo = mpRoomData->getRoomNo();
        mpFmapData = mpRoomData->getFmapData();
    }
}

bool renderingFmap_c::getNextRoom() {
    bool ret = false;
    mpRoomData = mpRoomData->getNextData();
    if (mpRoomData == NULL) {
        ret = getNextStage();
    } else {
        mRoomIndex++;
        mpFmapData = mpRoomData->getFmapData();
        mRoomNo = mpRoomData->getRoomNo();
    }
    return ret;
}

bool renderingFmap_c::getNextStage() {
    bool ret = false;
    mpStageData = mpStageData->getNextData();
    if (mpStageData == NULL) {
        ret = getNextRegion();
    } else {
        mStageNo++;
        mpStageArc = mpStageData->getStageArc();
        mSaveTableNo = mpStageArc->getSaveTableNo();
        mVisitedRoomSaveTableNo = mpStageArc->getVisitedRoomSaveTableNo();
        getFirstRoom();
    }
    return ret;
}

bool renderingFmap_c::getNextRegion() {
    bool ret = false;
    mpRegionData = mpRegionData->getNextData();
    if (mpRegionData == NULL) {
        ret = true;
    } else {
        mRegionIndex++;
        mRegionNo = mpRegionData->getRegionNo();
        getFirstStage();
    }
    return ret;
}

dDrawPath_c::room_class* renderingFmap_c::getNextRoomPointer() {
    room_class* room = NULL;

    bool nextRoomRv;
    do {
        room = NULL;
        nextRoomRv = getNextRoom();
        if (nextRoomRv != 0) {
            return NULL;
        }
        if (mpRoomData != NULL) {
            room = mpFmapData->getMapPath();
        }
    } while (mpRoomData != NULL && (room == NULL || !isDrawRoom()));

    if (room != NULL) {
        roomSetteing();
    }

    return room;
}

void dMenu_FmapMap_c::setFmapPaletteColor(renderingFmap_c::palette_e i_palette, u8 i_r,
                                          u8 i_g, u8 i_b, u8 i_a) {
    int color_val;
    JUT_ASSERT(1835, m_palette != NULL);
    if (i_a >= 0xe0) {
        color_val = ((i_r & 0xf8) << 7) | ((i_g & 0xf8) << 2) | ((i_b & 0xf8) >> 3) | (1 << 15);
    } else {
        color_val = ((i_r & 0xf0) << 4) | (i_g & 0xf0) | ((i_b & 0xf0) >> 4) | ((i_a & 0xe0) << 7);
    }
    dMpath_RGB5A3_s color;
    color.color = color_val;

    dMpath_RGB5A3_palDt_s* palette_entry = &m_palette[i_palette];
    palette_entry->field_0x0 = color;
    palette_entry->field_0x2 = color;
    palette_entry->field_0x4 = color;
    palette_entry->field_0x6 = color;
    DCStoreRange(&m_palette[i_palette], 8);
}

void dMenu_FmapMap_c::setFmapPaletteColor(renderingFmap_c::palette_e i_palette,
                                          GXColor const& i_color) {
    setFmapPaletteColor(i_palette, i_color.r, i_color.g, i_color.b, i_color.a);
}

bool dMenu_FmapMap_c::isFlashRoomNoCheck(int i_roomNo) const {
    JUT_ASSERT(1874, mp_roomList != NULL);
    JUT_ASSERT(1875, m_roomListNumber != NULL);
    bool ret = false;
    u8* ptr = mp_roomList;
    for (int i = 0; i < m_roomListNumber; i++) {
        if (*ptr == i_roomNo) {
            ret = true;
            break;
        }
        ptr++;
    }
    return ret;
}

#if DEBUG
u8 l_data[0x16e] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0x00, 0x81, 0x00, 0x81, 0x00, 0x81, 0x00,
    0xA2, 0x08, 0xA2, 0x08, 0xA2, 0x08, 0xA2, 0x08, 0x80, 0x00, 0x80, 0x00, 0x80, 0x00, 0x80, 0x00,
    0x9C, 0xE7, 0x9C, 0xE7, 0x9C, 0xE7, 0x9C, 0xE7, 0x81, 0x10, 0x81, 0x10, 0x81, 0x10, 0x81, 0x10,
    0xA2, 0x08, 0xA2, 0x08, 0xA2, 0x08, 0xA2, 0x08, 0x98, 0x10, 0x98, 0x10, 0x98, 0x10, 0x98, 0x10,
    0x98, 0x00, 0x98, 0x00, 0x98, 0x00, 0x98, 0x00, 0x82, 0x00, 0x82, 0x00, 0x82, 0x00, 0x82, 0x00,
    0xC3, 0xF0, 0xC3, 0xF0, 0xC3, 0xF0, 0xC3, 0xF0, 0x80, 0x00, 0x80, 0x00, 0x80, 0x00, 0x80, 0x00,
    0x9C, 0xE7, 0x9C, 0xE7, 0x9C, 0xE7, 0x9C, 0xE7, 0x82, 0x1F, 0x82, 0x1F, 0x82, 0x1F, 0x82, 0x1F,
    0xC3, 0xF0, 0xC3, 0xF0, 0xC3, 0xF0, 0xC3, 0xF0, 0xB0, 0x1F, 0xB0, 0x1F, 0xB0, 0x1F, 0xB0, 0x1F,
    0xB0, 0x00, 0xB0, 0x00, 0xB0, 0x00, 0xB0, 0x00, 0x81, 0x00, 0x81, 0x00, 0x81, 0x00, 0x81, 0x00,
    0xC3, 0xF0, 0xC3, 0xF0, 0xC3, 0xF0, 0xC3, 0xF0, 0x80, 0x00, 0x80, 0x00, 0x80, 0x00, 0x80, 0x00,
    0x9C, 0xE7, 0x9C, 0xE7, 0x9C, 0xE7, 0x9C, 0xE7, 0x82, 0x1F, 0x82, 0x1F, 0x82, 0x1F, 0x82, 0x1F,
    0x9D, 0xC7, 0x9D, 0xC7, 0x9D, 0xC7, 0x9D, 0xC7, 0xB0, 0x1F, 0xB0, 0x1F, 0xB0, 0x1F, 0xB0, 0x1F,
    0xB0, 0x00, 0xB0, 0x00, 0xB0, 0x00, 0xB0, 0x00, 0xC4, 0x16, 0xC4, 0x16, 0xC4, 0x16, 0xC4, 0x16,
    0xEC, 0x14, 0xEC, 0x14, 0xEC, 0x14, 0xEC, 0x14, 0x40, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0x40, 0xFF,
    0xFF, 0x00, 0x80, 0xFF, 0x80, 0x00, 0xFF, 0xFF, 0x00, 0x80, 0x00, 0xFF, 0x80, 0xFF, 0x80, 0xFF,
    0x00, 0x00, 0x00, 0xFF, 0x3F, 0x3F, 0x3F, 0xFF, 0x00, 0x80, 0xFF, 0xFF, 0x80, 0xFF, 0x80, 0xFF,
    0x60, 0x00, 0xFF, 0xFF, 0x60, 0x00, 0x00, 0xFF, 0x00, 0x80, 0x00, 0xFF, 0x80, 0xFF, 0x80, 0xFF,
    0x00, 0x00, 0x00, 0xFF, 0x3F, 0x3F, 0x3F, 0xFF, 0x00, 0x80, 0xFF, 0xFF, 0x20, 0x40, 0x20, 0xFF,
    0x60, 0x00, 0xFF, 0xFF, 0x60, 0x00, 0x00, 0xFF, 0x00, 0x40, 0x00, 0xFF, 0x40, 0x80, 0x40, 0xFF,
    0x00, 0x00, 0x00, 0xFF, 0x3F, 0x3F, 0x3F, 0xFF, 0x00, 0x40, 0x80, 0xFF, 0x40, 0x80, 0x40, 0xFF,
    0x30, 0x00, 0x80, 0xFF, 0x30, 0x00, 0x00, 0xFF, 0x00, 0x40, 0x00, 0xFF, 0x40, 0x80, 0x40, 0xFF,
    0x00, 0x00, 0x00, 0xFF, 0x3F, 0x3F, 0x3F, 0xFF, 0x00, 0x40, 0x80, 0xFF, 0x20, 0x40, 0x20, 0xFF,
    0x30, 0x00, 0x80, 0xFF, 0x30, 0x00, 0x00, 0xFF, 0x00, 0x3C, 0x00, 0x1E, 0x12, 0x06,
};
#endif

void dMenu_FmapMap_c::setPointColor(f32 i_param) {
    static const palette_e palNo[8] = {
        PALETTE_11,
        PALETTE_12,
        PALETTE_13,
        PALETTE_14,
        PALETTE_15,
        PALETTE_16,
        PALETTE_17,
        PALETTE_18,
    };
    
    GXColor color;
    if (mFlash && mRegionCursor == dComIfGp_getNowLevel() && mStartStageNo == mStageCursor) {
        for (int i = 0; i < 8; i++) {
            twoColorLineInterporation(m_res->colors.field_0x10[i], m_res->colors.field_0x30[i], i_param, color);
            setFmapPaletteColor(palNo[i], color);
        }
    } else {
        for (int i = 0; i < 8; i++) {
            twoColorLineInterporation(m_res->colors.field_0x50[i], m_res->colors.field_0x70[i], i_param, color);
            setFmapPaletteColor(palNo[i], color);
        }
    }
}

dMenu_FmapMap_c::dMenu_FmapMap_c() {
    mResTIMG = NULL;
    mMapImage_p = NULL;
    m_res = NULL;
    m_palette = NULL;
    field_0xcc = 0;
    mZoomRate = 0.0f;
    mLineNo = 0;
    mFlash = false;
    mLastFlash = false;
    mStageCursor = 0;
    mLastStageCursor = 0;
    mRegionCursor = 0;
    mFlashTimer = 0;
    mp_roomList = NULL;
    m_roomListNumber = 0;
#if DEBUG
    dMfm_HIO_prm_res_dst_s::m_res = NULL;
    mMySelfPointer = this;
#endif
}


dMenu_FmapMap_c::~dMenu_FmapMap_c() {
    _delete();
#if DEBUG
    dMfm_HIO_prm_res_dst_s::m_res = NULL;
    mMySelfPointer = NULL;
#endif
}

void dMenu_FmapMap_c::_create(u16 i_texWidth, u16 i_texHeight, u16 param_2, u16 param_3, void* i_res) {
    JUT_ASSERT(2110, i_res != NULL);

    m_res = (dMfm_prm_res_s*)i_res;
    JUT_ASSERT(2118, m_res != NULL);

    m_palette = m_res->palette_data;
    JUT_ASSERT(2120, m_palette != NULL);

#if DEBUG
    dMfm_HIO_prm_res_dst_s::m_res = m_res;

    cLib_memCpy(&dMfm_HIO_prm_res_dst_s::m_other, &dMfm_HIO_prm_res_src_s::m_other,
                sizeof(dMfm_HIO_prm_res_dst_s::m_other));
    dMfm_HIO_c::m_res_src_p = m_res;

    g_mfmHIO.field_0xc.copySrcToHio();
    g_mfmHIO.field_0xc.copyHioToDst();

    JORMContext* ctx = attachJORMContext(5);
    ctx->invalidNode(&g_mfmHIO, 3);
    releaseJORMContext(ctx);
#endif

    field_0xcc = 0x6c;
    mFlash = false;
    mStageCursor = 0;
    mLastStageCursor = -1;
    mLastFlash = mFlash;
    mFlashTimer = 0;
    setTexture(i_texWidth, i_texHeight, param_2, param_3);

#if DEBUG
    g_mfmHIO.field_0x8 = this;
    mpWorldData = NULL;
#endif
}

void dMenu_FmapMap_c::_delete() {
    if (mResTIMG != NULL) {
        delete mResTIMG;
        mResTIMG = NULL;
    }
    if (mMapImage_p != NULL) {
        delete[] mMapImage_p;
        mMapImage_p = NULL;
    }

#if DEBUG
    g_mfmHIO.field_0x8 = NULL;
    mpWorldData = NULL;
    dMfm_HIO_c::m_res_src_p = NULL;
#endif
}

static inline f32 getRateWithFrameCount(int param_0) {
    return (f32)(g_Counter.mCounter0 % param_0) / (f32)param_0;
}

void dMenu_FmapMap_c::draw() {
    { int unused; }

    f32 f30 = 0.0f;
    if (mFlashTimer < HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2) {
        f30 =
            (int)(HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2 - mFlashTimer) /
            (f32)(int)(HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2);
    } else {
        f30 =
            (int)(mFlashTimer - HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2) /
            (f32)(int)(HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2);
    }
    setPointColor(1.0f - f30);

    GXColor color;
    f32 f31;
    f31 = getRateWithFrameCount(m_res->colors.field_0x90);
    f31 = cM_ssin(f31 * 0x10000 - 0x8000) * 0.5f + 0.5f;
    twoColorLineInterporation(m_res->colors.field_0x00, m_res->colors.field_0x04, f31, color);
    setFmapPaletteColor(PALETTE_19, color);

    f31 = getRateWithFrameCount(m_res->colors.field_0x92);
    f31 = cM_ssin(f31 * 0x10000 - 0x8000) * 0.5f + 0.5f;
    twoColorLineInterporation(m_res->colors.field_0x08, m_res->colors.field_0x0c, f31, color);
    setFmapPaletteColor(PALETTE_1A, color);

    renderingMap();
}

void dMenu_FmapMap_c::rendering(dDrawPath_c::line_class const* i_line) {
    if (i_line->field_0x1 == 4) {
        for (mLineNo = 0; mLineNo < 2; mLineNo++) {
            renderingDecoration(i_line);
        }
    } else {
        dDrawPath_c::rendering(i_line);
    }
}

int dMenu_FmapMap_c::getLineWidth(int param_0) {
    static u8 const l_lineWidthPatData[5] = {0, 6, 12, 0, 0};
    static u8 const l_lineWidthPatData2[5] = {0, 0, 6, 0, 0};

    int rv = 0;

#if DEBUG
    if (dMfm_HIO_prm_res_dst_s::m_other.field_0x04_dbg && param_0 == 3) {
        rv = dMfm_HIO_prm_res_dst_s::m_other.field_0x02_dbg;
        return rv;
    } else
#endif
    {
        if (param_0 == 4) {
            switch (mLineNo) {
            case 0:
                // Bug? This value is immediately overwritten -
                // the author most likely forgot to add a break statement
                rv = m_res->colors.field_0x94;
            case 1:
                rv = m_res->colors.field_0x95;
                break;
            }

            if (mZoomRate > 1.0f) {
                rv = (int)((f32)rv * (mZoomRate - 1.0f));
            } else {
                rv = 0;
            }
            return rv;
        } else if (mZoomRate > 1.5f) {
            rv = l_lineWidthPatData[param_0];
        } else {
            rv = l_lineWidthPatData2[param_0];
        }

#if DEBUG
        if (dMfm_HIO_prm_res_dst_s::m_other.field_0x05_dbg != 0) {
            if (mZoomRate > 1.5f) {
                switch (param_0) {
                case 0:
                    rv = dMfm_HIO_prm_res_dst_s::m_other.field_0x09_dbg;
                    break;
                case 1:
                    rv = dMfm_HIO_prm_res_dst_s::m_other.field_0x0a_dbg;
                    break;
                case 2:
                    rv = dMfm_HIO_prm_res_dst_s::m_other.field_0x0b_dbg;
                    break;
                }
            } else {
                switch (param_0) {
                case 0:
                    rv = dMfm_HIO_prm_res_dst_s::m_other.field_0x06_dbg;
                    break;
                case 1:
                    rv = dMfm_HIO_prm_res_dst_s::m_other.field_0x07_dbg;
                    break;
                case 2:
                    rv = dMfm_HIO_prm_res_dst_s::m_other.field_0x08_dbg;
                    break;
                }
            }
        }
#endif
    }

    return rv;
}

 bool dMenu_FmapMap_c::isDrawType(int param_0) {
#if DEBUG
    if (dMfm_HIO_prm_res_dst_s::m_other.field_0x01) {
        return false;
    }
#endif
    return (param_0 & 0x40) == 0;
}

void dMenu_FmapMap_c::setFlashOn(int i_regionNo, int i_stageNo, u8* i_rooms, int i_roomCount) {
    UNUSED(i_rooms); // maybe fake?
    UNUSED(i_roomCount); // maybe fake?
    mLastFlash = mFlash;
    mFlash = true;
    mRegionCursor = i_regionNo;
    mStageCursor = (u8)i_stageNo;
    mp_roomList = i_rooms;
    m_roomListNumber = i_roomCount;

#if DEBUG
    dDbVw_Report(0x30, 0x60, "%d, %p", m_roomListNumber, mp_roomList);
    u8* room = i_rooms;
    for (int i = 0; i < m_roomListNumber; i++) {
        dDbVw_Report(0x30, 12 * (i + 9), "%d", *room);
        room++;
    }
#endif
}

const GXColor* dMenu_FmapMap_c::getLineColor(int param_0, int param_1) {
    static GXColor black = {0, 0, 0, 0};
    static const GXColor borderColor0 = {0x64, 0, 0, 0};
    static const GXColor borderColor1 = {0x68, 0, 0, 0};

    GXColor* color = &black;
    if (param_1 == 4) {
        // force stack pointer into r31 instead of r1 on debug, fixes a bunch of other stuff too
        int dummy;

        switch (mLineNo) {
        case 0:
            return &borderColor0;
        case 1:
            return &borderColor1;
        }
    } else {
        *color = *getColor(param_0);
    }

    return color;
}

const GXColor* dMenu_FmapMap_c::getBackColor() const {
    static const GXColor l_mapBaseColor = {0, 0, 0, 0};
    return &l_mapBaseColor;
}

const GXColor* dMenu_FmapMap_c::getColor(int param_0) {
    static const GXColor l_dungeon_onColor[9] = {
        {0x04, 0, 0, 0},
        {0x08, 0, 0, 0},
        {0x0C, 0, 0, 0},
        {0x00, 0, 0, 0},
        {0x10, 0, 0, 0},
        {0x14, 0, 0, 0},
        {0x18, 0, 0, 0},
        {0x1C, 0, 0, 0},
        {0x20, 0, 0, 0},
    };
    static const GXColor l_dungeon_stayColor[9] = {
        {0x24, 0, 0, 0},
        {0x28, 0, 0, 0},
        {0x2C, 0, 0, 0},
        {0x00, 0, 0, 0},
        {0x30, 0, 0, 0},
        {0x34, 0, 0, 0},
        {0x38, 0, 0, 0},
        {0x3C, 0, 0, 0},
        {0x40, 0, 0, 0},
    };
    static const GXColor l_dungeon_pointColor[9] = {
        {0x44, 0, 0, 0},
        {0x48, 0, 0, 0},
        {0x4C, 0, 0, 0},
        {0x00, 0, 0, 0},
        {0x50, 0, 0, 0},
        {0x54, 0, 0, 0},
        {0x58, 0, 0, 0},
        {0x5C, 0, 0, 0},
        {0x60, 0, 0, 0},
    };

    const GXColor* list = l_dungeon_onColor;
    if (mFlash && mRegionCursor == getNowDrawRegionNo() && mStageNo == mStageCursor) {
        if (mp_roomList == NULL) {
            list = l_dungeon_pointColor;
        } else if (isFlashRoomNoCheck(mRoomNo)) {
            list = l_dungeon_pointColor;
        } else if (getNowDrawRegionNo() == dComIfGp_getNowLevel() && mStageNo == mStartStageNo) {
            list = l_dungeon_stayColor;
        }
    } else {
        if (getNowDrawRegionNo() == dComIfGp_getNowLevel() && mStageNo == mStartStageNo) {
            list = l_dungeon_stayColor;
        }
    }

    return &list[param_0];
}

void dMenu_FmapMap_c::setTexture(u16 i_width, u16 i_height, u16 param_2, u16 param_3) {
    mMapImage_p = NULL;
    mResTIMG = NULL;
    int size = GXGetTexBufferSize(i_width, i_height, GX_TF_C8, 0, 0);
    mMapImage_p = new (0x20) u8[size];
    JUT_ASSERT(2612, mMapImage_p != NULL);
    init(mMapImage_p, i_width, i_height, param_2, param_3);
    mResTIMG = new (0x20) ResTIMG();
    JUT_ASSERT(2626, mResTIMG != NULL);
    makeResTIMG(mResTIMG, i_width, i_height, mMapImage_p, (u8*)m_palette, 0x1b);
}

void dMenu_FmapMap_c::setRendering(dMenu_Fmap_world_data_c* i_worldData, int i_startStageNo,
                                   f32 i_posX, f32 i_posY, f32 i_scale, f32 i_zoomRate) {
#if DEBUG
    f32 var_f31 = 0.0f;
    if (mFlashTimer < HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2) {
        int dummy; // force stack pointer into r31 instead of r1 on debug

        var_f31 = (f32)(HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2 - mFlashTimer) /
                (f32)(HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2);
    } else {
        var_f31 = (f32)(mFlashTimer - HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2) /
                (f32)(HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration / 2);
    }
    dDbVw_Report(60, 60, "%10.3f", 1.0f - var_f31);
#endif

    JUT_ASSERT(2672, i_worldData != NULL);

    mZoomRate = i_zoomRate;
#if DEBUG
    mpWorldData = i_worldData;
#endif

    if (mFlash != mLastFlash || mStageCursor != mLastStageCursor) {
        mFlashTimer = HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration;
        mLastFlash = mFlash;
        mLastStageCursor = mStageCursor;
    } else {
        if (mFlashTimer != 0) {
            mFlashTimer--;
        } else {
            mFlashTimer = HIO_PRM_RES_READ_CLASS::m_other.mFlashDuration;
        }
    }

    entry(i_worldData, i_startStageNo, i_posX, i_posY, i_scale);
}
