/**
 * d_file_sel_info.cpp
 * File Select Screen File Info
 */

#define NO_INLINE_DLSTBASE_DRAW
#define DFILE_INFO_C_DUMMY_VIRTUAL

#include "d/file/d_file_sel_info.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "d/com/d_com_inf_game.h"
#include "d/meter/d_meter2_info.h"
#include "d/pane/d_pane_class.h"
#include "stdio.h"

/* 803BB498-803BB4A8 0185B8 000C+04 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80192434-801924A0 18CD74 006C+00 0/0 3/3 0/0 .text __ct__12dFile_info_cFP10JKRArchiveUc */
dFile_info_c::dFile_info_c(JKRArchive* i_archive, u8 param_1) {
    mArchive = i_archive;
    field_0x22 = param_1;
    mFileInfo.mBasePane = NULL;
    screenSet();
    field_0x20 = 0;
}

/* 801924A0-80192570 18CDE0 00D0+00 1/0 0/0 0/0 .text            __dt__12dFile_info_cFv */
dFile_info_c::~dFile_info_c() {
    delete mFileInfo.Scr;
    delete mDatBase;
    delete mNoDatBase;

    mDoExt_removeMesgFont();
}

/* 80192570-80192954 18CEB0 03E4+00 1/1 0/0 0/0 .text            screenSet__12dFile_info_cFv */
void dFile_info_c::screenSet() {
    mFileInfo.Scr = new J2DScreen();
    JUT_ASSERT(mFileInfo.Scr != 0);

    mFileInfo.Scr->setPriority("zelda_file_select_info_text.blo", 0x1100000, mArchive);
    mFileInfo.mFont = mDoExt_getMesgFont();
    mFileInfo.Scr->search('w_cp_ef1')->hide();
    mFileInfo.field_0x10 = mFileInfo.Scr->search('w_dat_i1');
    mDatBase = new CPaneMgrAlpha(mFileInfo.Scr, 'w_dat_i1', 2, NULL);
    mNoDatBase = new CPaneMgrAlpha(mFileInfo.Scr, 'w_nda_i1', 2, NULL);

    J2DTextBox* info_text[4];
    info_text[0] = (J2DTextBox*)mFileInfo.Scr->search('f_s_t_02');
    info_text[1] = (J2DTextBox*)mFileInfo.Scr->search('f_p_t_02');
    mFileInfo.Scr->search('w_s_t_01')->hide();
    mFileInfo.Scr->search('w_p_t_01')->hide();

    for (int i = 0; i < 2; i++) {
        info_text[i]->setFont(mFileInfo.mFont);
        info_text[i]->setString(0x20, "");
    }
    dMeter2Info_getString(0x3D0, info_text[0]->getStringPtr(), NULL);  // Save time
    dMeter2Info_getString(0x3D1, info_text[1]->getStringPtr(), NULL);  // Total play time

    info_text[0] = (J2DTextBox*)mFileInfo.Scr->search('f_name01');
    info_text[1] = (J2DTextBox*)mFileInfo.Scr->search('f_new_1');
    mFileInfo.Scr->search('w_name01')->hide();
    mFileInfo.Scr->search('w_new_1')->hide();

    info_text[2] = (J2DTextBox*)mFileInfo.Scr->search('w_time01');
    info_text[3] = (J2DTextBox*)mFileInfo.Scr->search('w_ptim01');

    for (int i = 0; i < 4; i++) {
        info_text[i]->setFont(mFileInfo.mFont);
        info_text[i]->setString(0x40, "");
    }
    mPlayerName = info_text[0]->getStringPtr();
    mSaveStatus = info_text[1]->getStringPtr();
    mSaveDate = info_text[2]->getStringPtr();
    mPlayTime = info_text[3]->getStringPtr();
}

/* 80192954-80192AA0 18D294 014C+00 0/0 3/3 0/0 .text setSaveData__12dFile_info_cFP10dSv_save_ciUc
 */
int dFile_info_c::setSaveData(dSv_save_c* i_savedata, BOOL i_validChksum, u8 i_dataNo) {
    if (i_validChksum) {
        char* player_name = i_savedata->getPlayer().getPlayerInfo().getLinkName();
        if (*player_name == 0) {
            if (field_0x22 == 1 && i_dataNo == dComIfGs_getDataNum()) {
                i_savedata->getPlayer().getPlayerStatusA().setLife(dComIfGs_getLife());
                setHeartCnt(i_savedata);
                i_savedata->getPlayer().getPlayerStatusA().setLife(12);
                strcpy(mPlayerName, dComIfGs_getPlayerName());
                strcpy(mSaveDate, "");
                strcpy(mPlayTime, "");
                dMeter2Info_getString(0x4D, mSaveStatus, NULL);  // New Quest Log
                return 2;
            } else {
                dMeter2Info_getString(0x4D, mSaveStatus, NULL);  // New Quest Log
                return 1;
            }
        } else {
            setHeartCnt(i_savedata);
            strcpy(mPlayerName, player_name);
            setSaveDate(i_savedata);
            setPlayTime(i_savedata);
            return 0;
        }
    } else {
        dMeter2Info_getString(0x51, mSaveStatus, NULL);  // This Quest Log is Corrupted
        return -1;
    }
}

/* 80192AA0-80192C08 18D3E0 0168+00 1/1 0/0 0/0 .text setHeartCnt__12dFile_info_cFP10dSv_save_c */
void dFile_info_c::setHeartCnt(dSv_save_c* i_savedata) {
    static u64 l_htag[] = {
        'hear_20', 'hear_21', 'hear_22', 'hear_23', 'hear_24', 'hear_25', 'hear_26',
        'hear_27', 'hear_28', 'hear_29', 'hear_30', 'hear_31', 'hear_32', 'hear_33',
        'hear_34', 'hear_35', 'hear_36', 'hear_37', 'hear_38', 'hear_39',
    };

    static const char* amariheartTex[] = {
        "tt_heart_00.bti",
        "tt_heart_00.bti",
        "tt_heart_00.bti",
        "tt_heart_00.bti",
    };

    u16 life = i_savedata->getPlayer().getPlayerStatusA().getLife();
    s32 count = (life & 0xFFFF) / 5;
    s32 quarter_count = life % 5;
    if (quarter_count != 0) {
        count++;
    }

    J2DPicture* heart_tex[20];
    for (int i = 0; i < 20; i++) {
        heart_tex[i] = (J2DPicture*)mFileInfo.Scr->search(l_htag[i]);

        if (i < i_savedata->getPlayer().getPlayerStatusA().getMaxLife() / 5) {
            heart_tex[i]->show();
            if (i < count) {
                if (quarter_count != 0 && i == count - 1) {
                    heart_tex[i]->changeTexture(amariheartTex[quarter_count - 1], 0);
                } else {
                    heart_tex[i]->changeTexture("tt_heart_00.bti", 0);
                }
            } else {
                heart_tex[i]->changeTexture("tt_heart_00.bti", 0);
            }
        } else {
            heart_tex[i]->hide();
        }
    }
}

/* 803BB570-803BB588 018690 0018+00 0/1 0/0 0/0 .data            fileWarningProc */
typedef void (dFile_info_c::*procFunc)();
static procFunc fileWarningProc[] = {&dFile_info_c::modeWait, &dFile_info_c::modeMove};

/* 80192C08-80192C70 18D548 0068+00 1/1 0/0 0/0 .text setSaveDate__12dFile_info_cFP10dSv_save_c */
void dFile_info_c::setSaveDate(dSv_save_c* i_savedata) {
    OSCalendarTime time;
    OSTicksToCalendarTime(i_savedata->getPlayer().getPlayerStatusB().getDateIpl(), &time);
    sprintf(mSaveDate, "%02d/%02d/%d %02d:%02d", time.month + 1, time.day_of_month, time.year,
            time.hours, time.minutes);
}

/* 80192C70-80192D58 18D5B0 00E8+00 1/1 0/0 0/0 .text setPlayTime__12dFile_info_cFP10dSv_save_c */
void dFile_info_c::setPlayTime(dSv_save_c* i_savedata) {
    s64 time = i_savedata->getPlayer().getPlayerInfo().getTotalTime() / (OS_BUS_CLOCK / 4);

    // 3599940 = 999:59 in seconds
    if (time >= 3599940) {
        sprintf(mPlayTime, "999:59");
    } else {
        u32 min = (time % 3600) / 60;
        u32 hours = time / 3600;
        sprintf(mPlayTime, "%d:%02d", hours, min);
    }
}

/* 80192D58-80192D5C 18D698 0004+00 1/0 0/0 0/0 .text            modeWait__12dFile_info_cFv */
void dFile_info_c::modeWait() {}

/* 80192D5C-80192D60 18D69C 0004+00 1/0 0/0 0/0 .text            modeMove__12dFile_info_cFv */
void dFile_info_c::modeMove() {}

/* 80192D60-80192D9C 18D6A0 003C+00 0/0 2/2 0/0 .text            _draw__12dFile_info_cFv */
void dFile_info_c::_draw() {
    dComIfGd_set2DOpa(&mFileInfo);
}

/* 80192D9C-80192E88 18D6DC 00EC+00 1/0 0/0 0/0 .text            draw__16dDlst_FileInfo_cFv */
void dDlst_FileInfo_c::draw() {
    Mtx m;
    J2DGrafContext* graf_ctx = dComIfGp_getCurrentGrafPort();

    if (mBasePane != NULL) {
        // fake match?
        MtxP glb_mtx = (MtxP)&mBasePane->getGlbMtx()[0][0];

        MTXScale(m, mBasePane->getWidth() / field_0x10->getWidth(),
                 mBasePane->getHeight() / field_0x10->getHeight(), 1.0f);
        MTXConcat(glb_mtx, m, glb_mtx);
        Scr->search('Nm_02')->setMtx(glb_mtx);
    }

    Scr->draw(0.0f, 0.0f, graf_ctx);
}
