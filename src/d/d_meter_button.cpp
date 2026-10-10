/**
 * d_meter_button.cpp
 * UI Button handling
 */

#include "d/dolzel.h" // IWYU pragma: keep

#include "d/d_meter_button.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "d/actor/d_a_player.h"
#include "d/d_meter2.h"
#include "d/d_meter2_draw.h"
#include "d/d_meter2_info.h"
#include "d/d_meter_HIO.h"
#include "d/d_msg_object.h"
#include "d/d_msg_out_font.h"
#include "d/d_msg_string.h"
#include "d/d_pane_class.h"
#include <cstring>

#if VERSION == VERSION_GCN_JPN
#define STR_BUF_LEN 528
#else
#define STR_BUF_LEN 512
#endif

dMeterButton_c::dMeterButton_c() {
    _create();
}

dMeterButton_c::~dMeterButton_c() {
    _delete();
}

int dMeterButton_c::_create() {
    OS_REPORT("dMeterButton_c::_create\n");
    screenInitButton();
    screenInitText();
    return cPhs_COMPLEATE_e;
}

int dMeterButton_c::_execute(u32 i_flags, bool i_drawA, bool i_drawB, bool i_drawR, bool i_drawZ,
                             bool i_draw3D, bool i_drawC, bool i_drawS, bool i_drawX, bool i_drawY,
                             bool i_drawNun, bool i_drawRemo, bool i_drawRemo2, bool i_drawAR,
                             bool i_draw3DB, bool i_drawNURE, bool i_drawReel, bool i_drawReel2,
                             bool i_drawAB, bool i_drawTate, bool i_drawNunZ, bool i_drawNunC,
                             bool i_drawBin) {
    updateButton();
    updateText(i_flags);
    field_0x4b0 = 0;

    if (dComIfGs_isTmpBit((u16)dSv_event_tmp_flag_c::tempBitLabels[49]) &&
        !dMsgObject_isTalkNowCheck())
    {
        i_flags &= ~0x4000;
    }

    bool draw_a = alphaAnimeButtonA(i_flags, i_drawA);
    bool draw_b = alphaAnimeButtonB(i_flags, i_drawB);
    bool draw_r = alphaAnimeButtonR(i_flags, i_drawR);
    bool draw_z = alphaAnimeButtonZ(i_flags, i_drawZ);
    bool draw_3d = alphaAnimeButton3D(i_flags, i_draw3D);
    bool draw_c = alphaAnimeButtonC(i_flags, i_drawC);
    bool draw_s = alphaAnimeButtonS(i_flags, i_drawS);
    bool draw_x = alphaAnimeButtonX(i_flags, i_drawX);
    bool draw_y = alphaAnimeButtonY(i_flags, i_drawY);
    bool draw_nun = alphaAnimeButtonNun(i_flags, i_drawNun);
    bool draw_remo = alphaAnimeButtonRemo(i_flags, i_drawRemo);
    bool draw_remo2 = alphaAnimeButtonRemo2(i_flags, i_drawRemo2);
    bool draw_ar = alphaAnimeButtonAR(i_flags, i_drawAR);
    bool draw_3db = alphaAnimeButton3DB(i_flags, i_draw3DB);
    bool draw_nure = alphaAnimeButtonNURE(i_flags, i_drawNURE);
    bool draw_reel = alphaAnimeButtonReel(i_flags, i_drawReel);
    bool draw_reel2 = alphaAnimeButtonReel2(i_flags, i_drawReel2);
    bool draw_ab = alphaAnimeButtonAB(i_flags, i_drawAB);
    bool draw_tate = alphaAnimeButtonTate(i_flags, i_drawTate);
    bool draw_nunZ = alphaAnimeButtonNunZ(i_flags, i_drawNunZ);
    bool draw_nunC = alphaAnimeButtonNunC(i_flags, i_drawNunC);
    bool draw_bin = alphaAnimeButtonBin(i_flags, i_drawBin);
    pikariCheck();

    for (int i = 0; i < BUTTON_NUM; i++) {
        if (mButtonTimers[i] > 0) {
            mButtonTimers[i]--;
        }
    }

    for (int i = 0; i < 2; i++) {
#if PLATFORM_WII
#endif
        {
            if ((draw_a && field_0x4be[i] == BUTTON_A_e) ||
                (draw_b && field_0x4be[i] == BUTTON_B_e) ||
                (draw_r && field_0x4be[i] == BUTTON_R_e) ||
                (draw_z && field_0x4be[i] == BUTTON_Z_e) ||
                (draw_3d && field_0x4be[i] == BUTTON_3D_e) ||
                (draw_c && field_0x4be[i] == BUTTON_C_e) ||
                (draw_s && field_0x4be[i] == BUTTON_S_e) ||
                (draw_x && field_0x4be[i] == BUTTON_X_e) ||
                (draw_y && field_0x4be[i] == BUTTON_Y_e) ||
                (draw_nun && field_0x4be[i] == BUTTON_NUN_e) ||
                (draw_remo && field_0x4be[i] == BUTTON_REMO_e) ||
                (draw_remo2 && field_0x4be[i] == BUTTON_REMO2_e) ||
                (draw_ar && field_0x4be[i] == BUTTON_AR_e) ||
                (draw_3db && field_0x4be[i] == BUTTON_3DB_e) ||
                (draw_nure && field_0x4be[i] == BUTTON_NURE_e) ||
                (draw_reel && field_0x4be[i] == BUTTON_REEL_e) ||
                (draw_reel2 && field_0x4be[i] == BUTTON_REEL2_e) ||
                (draw_ab && field_0x4be[i] == BUTTON_AB_e) ||
                (draw_tate && field_0x4be[i] == BUTTON_TATE_e) ||
                (draw_nunZ && field_0x4be[i] == BUTTON_NUNZ_e) ||
                (draw_nunC && field_0x4be[i] == BUTTON_NUNC_e) ||
                (draw_bin && field_0x4be[i] == BUTTON_BIN_e))
            {
#if PLATFORM_WII
                if (field_0x4be[i] == BUTTON_3D_e && dComIfGp_is3DSetFlag(0x8)) {
                    setAlphaButtonOAnimeMin(i);
                } else
#endif
                {
                    setAlphaButtonOAnimeMax(i);
                }
            } else {
                setAlphaButtonOAnimeMin(i);
            }
        }
    }

    if (field_0x4d9 != 0xFF && ((draw_a && field_0x4be[field_0x4d9] == BUTTON_A_e) ||
                                (draw_b && field_0x4be[field_0x4d9] == BUTTON_B_e) ||
                                (draw_r && field_0x4be[field_0x4d9] == BUTTON_R_e) ||
                                (draw_z && field_0x4be[field_0x4d9] == BUTTON_Z_e) ||
                                (draw_3d && field_0x4be[field_0x4d9] == BUTTON_3D_e) ||
                                (draw_c && field_0x4be[field_0x4d9] == BUTTON_C_e) ||
                                (draw_s && field_0x4be[field_0x4d9] == BUTTON_S_e) ||
                                (draw_x && field_0x4be[field_0x4d9] == BUTTON_X_e) ||
                                (draw_y && field_0x4be[field_0x4d9] == BUTTON_Y_e) ||
                                (draw_nun && field_0x4be[field_0x4d9] == BUTTON_NUN_e) ||
                                (draw_remo && field_0x4be[field_0x4d9] == BUTTON_REMO_e) ||
                                (draw_remo2 && field_0x4be[field_0x4d9] == BUTTON_REMO2_e) ||
                                (draw_ar && field_0x4be[field_0x4d9] == BUTTON_AR_e) ||
                                (draw_3db && field_0x4be[field_0x4d9] == BUTTON_3DB_e) ||
                                (draw_nure && field_0x4be[field_0x4d9] == BUTTON_NURE_e) ||
                                (draw_reel && field_0x4be[field_0x4d9] == BUTTON_REEL_e) ||
                                (draw_reel2 && field_0x4be[field_0x4d9] == BUTTON_REEL2_e) ||
                                (draw_ab && field_0x4be[field_0x4d9] == BUTTON_AB_e) ||
                                (draw_tate && field_0x4be[field_0x4d9] == BUTTON_TATE_e) ||
                                (draw_nunZ && field_0x4be[field_0x4d9] == BUTTON_NUNZ_e) ||
                                (draw_nunC && field_0x4be[field_0x4d9] == BUTTON_NUNC_e) ||
                                (draw_bin && field_0x4be[field_0x4d9] == BUTTON_BIN_e)))
    {
        setAlphaIconAnimeMax();
    } else {
        setAlphaIconAnimeMin();
    }

    if (i_draw3D) {
        u8 dir_3D = dComIfGp_get3DDirection();

        if (dir_3D & DIR_LEFT_e) {
            if (!mpButtonScreen->search(MULTI_CHAR('yaji_l_n'))->isVisible()) {
                mpButtonScreen->search(MULTI_CHAR('yaji_l_n'))->show();
            }
        } else {
            if (mpButtonScreen->search(MULTI_CHAR('yaji_l_n'))->isVisible() == true) {
                mpButtonScreen->search(MULTI_CHAR('yaji_l_n'))->hide();
            }
        }

        if (dir_3D & DIR_UP_e) {
            if (!mpButtonScreen->search(MULTI_CHAR('yaji_u_n'))->isVisible()) {
                mpButtonScreen->search(MULTI_CHAR('yaji_u_n'))->show();
            }
        } else {
            if (mpButtonScreen->search(MULTI_CHAR('yaji_u_n'))->isVisible() == true) {
                mpButtonScreen->search(MULTI_CHAR('yaji_u_n'))->hide();
            }
        }

        if (dir_3D & DIR_DOWN_e) {
            if (!mpButtonScreen->search(MULTI_CHAR('yaji_d_n'))->isVisible()) {
                mpButtonScreen->search(MULTI_CHAR('yaji_d_n'))->show();
            }
        } else {
            if (mpButtonScreen->search(MULTI_CHAR('yaji_d_n'))->isVisible() == true) {
                mpButtonScreen->search(MULTI_CHAR('yaji_d_n'))->hide();
            }
        }

        if (dir_3D & DIR_RIGHT_e) {
            if (!mpButtonScreen->search(MULTI_CHAR('yaji_r_n'))->isVisible()) {
                mpButtonScreen->search(MULTI_CHAR('yaji_r_n'))->show();
            }
        } else {
            if (mpButtonScreen->search(MULTI_CHAR('yaji_r_n'))->isVisible() == true) {
                mpButtonScreen->search(MULTI_CHAR('yaji_r_n'))->hide();
            }
        }

#if PLATFORM_WII
        if (dComIfGp_is3DSetFlag(0x8)) {
            if (dir_3D & DIR_LEFT_e) {
                if (!field_0x00c->search(MULTI_CHAR('yaji_l_n'))->isVisible()) {
                    field_0x00c->search(MULTI_CHAR('yaji_l_n'))->show();
                }
            } else {
                if (field_0x00c->search(MULTI_CHAR('yaji_l_n'))->isVisible() == true) {
                    field_0x00c->search(MULTI_CHAR('yaji_l_n'))->hide();
                }
            }

            if (dir_3D & DIR_UP_e) {
                if (!field_0x00c->search(MULTI_CHAR('yaji_u_n'))->isVisible()) {
                    field_0x00c->search(MULTI_CHAR('yaji_u_n'))->show();
                }
            } else {
                if (field_0x00c->search(MULTI_CHAR('yaji_u_n'))->isVisible() == true) {
                    field_0x00c->search(MULTI_CHAR('yaji_u_n'))->hide();
                }
            }

            if (dir_3D & DIR_DOWN_e) {
                if (!field_0x00c->search(MULTI_CHAR('yaji_d_n'))->isVisible()) {
                    field_0x00c->search(MULTI_CHAR('yaji_d_n'))->show();
                }
            } else {
                if (field_0x00c->search(MULTI_CHAR('yaji_d_n'))->isVisible() == true) {
                    field_0x00c->search(MULTI_CHAR('yaji_d_n'))->hide();
                }
            }

            if (dir_3D & DIR_RIGHT_e) {
                if (!field_0x00c->search(MULTI_CHAR('yaji_r_n'))->isVisible()) {
                    field_0x00c->search(MULTI_CHAR('yaji_r_n'))->show();
                }
            } else {
                if (field_0x00c->search(MULTI_CHAR('yaji_r_n'))->isVisible() == true) {
                    field_0x00c->search(MULTI_CHAR('yaji_r_n'))->hide();
                }
            }
        }
#endif
    }

#if PLATFORM_WII
    if (i_drawC) {
        u8 dir_c = dComIfGp_getCStickDirection();

        if (dir_c == DIR_UP_e) {
            if (!mpMidona->isVisible()) {
                mpMidona->show();
            }
        } else {
            if (mpMidona->isVisible() == true) {
                mpMidona->hide();
            }
        }

        if (dir_c & DIR_LEFT_e) {
            field_0x4da[1] = 1;
        } else {
            field_0x4da[1] = 0;
        }

        if (dir_c & DIR_UP_e) {
            field_0x4da[0] = 1;
        } else {
            field_0x4da[0] = 0;
        }

        if (dir_c & DIR_DOWN_e) {
            field_0x4da[2] = 1;
        } else {
            field_0x4da[2] = 0;
        }

        if (dir_c & DIR_RIGHT_e) {
            field_0x4da[3] = 1;
        } else {
            field_0x4da[3] = 0;
        }
    }

    if (i_drawNun) {
        u8 dir_nun = dComIfGp_getNunDirection();

        if (dir_nun == 0) {
            mpButtonScreen->search(MULTI_CHAR('ny_mae_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_kai_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_lr_n'))->show();
            mpButtonScreen->search(MULTI_CHAR('ny_ud_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_taten'))->hide();
        } else if (dir_nun == 1) {
            mpButtonScreen->search(MULTI_CHAR('ny_mae_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_kai_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_lr_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_ud_n'))->show();
            mpButtonScreen->search(MULTI_CHAR('ny_taten'))->hide();
        } else if (dir_nun == 2) {
            mpButtonScreen->search(MULTI_CHAR('ny_mae_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_kai_n'))->show();
            mpButtonScreen->search(MULTI_CHAR('ny_lr_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_ud_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_taten'))->hide();
        } else if (dir_nun == 3) {
            mpButtonScreen->search(MULTI_CHAR('ny_mae_n'))->show();
            mpButtonScreen->search(MULTI_CHAR('ny_kai_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_lr_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_ud_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_taten'))->hide();
        } else if (dir_nun == 5) {
            mpButtonScreen->search(MULTI_CHAR('ny_mae_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_kai_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_lr_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_ud_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_taten'))->show();
        } else {
            mpButtonScreen->search(MULTI_CHAR('ny_mae_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_kai_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_lr_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_ud_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ny_taten'))->hide();
        }
    }

    if (i_drawRemo) {
        u8 dir_rc = dComIfGp_getRemoConDirection();

        if (dir_rc == 3) {
            mpButtonScreen->search(MULTI_CHAR('ry_awase'))->show();
            mpButtonScreen->search(MULTI_CHAR('ry_kaite'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_taosu'))->hide();
            mpButtonScreen->search(MULTI_CHAR('tski_n'))->hide();
        } else if (dir_rc == 2) {
            mpButtonScreen->search(MULTI_CHAR('ry_awase'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_kaite'))->show();
            mpButtonScreen->search(MULTI_CHAR('ry_taosu'))->hide();
            mpButtonScreen->search(MULTI_CHAR('tski_n'))->hide();
        } else if (dir_rc == 4) {
            mpButtonScreen->search(MULTI_CHAR('ry_awase'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_kaite'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_taosu'))->show();
            mpButtonScreen->search(MULTI_CHAR('tski_n'))->hide();
        } else if (dir_rc == 1) {
            mpButtonScreen->search(MULTI_CHAR('ry_awase'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_kaite'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_taosu'))->hide();
            mpButtonScreen->search(MULTI_CHAR('tski_n'))->show();
        } else {
            mpButtonScreen->search(MULTI_CHAR('ry_awase'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_kaite'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_taosu'))->hide();
            mpButtonScreen->search(MULTI_CHAR('tski_n'))->hide();
        }
    }

    if (i_drawAR) {
        u8 dir_rc = dComIfGp_getRemoConDirection();

        if (dir_rc == 3) {
            mpButtonScreen->search(MULTI_CHAR('rytasy_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_tate1'))->show();
        } else if (dir_rc == 1) {
            mpButtonScreen->search(MULTI_CHAR('rytasy_n'))->show();
            mpButtonScreen->search(MULTI_CHAR('ry_tate1'))->hide();
        } else {
            mpButtonScreen->search(MULTI_CHAR('rytasy_n'))->hide();
            mpButtonScreen->search(MULTI_CHAR('ry_tate1'))->hide();
        }
    }
#else
    if (i_drawC) {
        u8 dir_c = dComIfGp_getCStickDirection();

        if (dir_c & DIR_LEFT_e) {
            if (!mpButtonScreen->search(MULTI_CHAR('yaji_ln'))->isVisible()) {
                mpButtonScreen->search(MULTI_CHAR('yaji_ln'))->show();
            }
        } else {
            if (mpButtonScreen->search(MULTI_CHAR('yaji_ln'))->isVisible() == true) {
                mpButtonScreen->search(MULTI_CHAR('yaji_ln'))->hide();
            }
        }

        if (dir_c & DIR_UP_e) {
            if (!mpButtonScreen->search(MULTI_CHAR('yaji_un'))->isVisible()) {
                mpButtonScreen->search(MULTI_CHAR('yaji_un'))->show();
            }
        } else {
            if (mpButtonScreen->search(MULTI_CHAR('yaji_un'))->isVisible() == true) {
                mpButtonScreen->search(MULTI_CHAR('yaji_un'))->hide();
            }
        }

        if (dir_c & DIR_DOWN_e) {
            if (!mpButtonScreen->search(MULTI_CHAR('yaji_dn'))->isVisible()) {
                mpButtonScreen->search(MULTI_CHAR('yaji_dn'))->show();
            }
        } else if (mpButtonScreen->search(MULTI_CHAR('yaji_dn'))->isVisible() == true) {
            mpButtonScreen->search(MULTI_CHAR('yaji_dn'))->hide();
        }

        if (dir_c & DIR_RIGHT_e) {
            if (!mpButtonScreen->search(MULTI_CHAR('yaji_rn'))->isVisible()) {
                mpButtonScreen->search(MULTI_CHAR('yaji_rn'))->show();
            }
        } else if (mpButtonScreen->search(MULTI_CHAR('yaji_rn'))->isVisible() == true) {
            mpButtonScreen->search(MULTI_CHAR('yaji_rn'))->hide();
        }
    }
#endif

    for (int i = 0; i < 2; i++) {
        if (field_0x2f4[i] != 0.0f) {
            field_0x2fc[i] = field_0x2f4[i];
        } else {
            cLib_addCalc2(&field_0x2fc[i], field_0x2f4[i], 1.0f, 10.0f);

            if (std::fabs(field_0x2fc[i] - field_0x2f4[i]) < 0.1f) {
                field_0x2fc[i] = field_0x2f4[i];
            }
        }

        trans_button(i, field_0x2fc[i]);
    }

    return 1;
}

void dMeterButton_c::draw() {
    J2DGrafContext* graf_ctx = dComIfGp_getCurrentGrafPort();
    graf_ctx->setup2D();

    mpButtonScreen->draw(0.0f, 0.0f, graf_ctx);
    if (field_0x00c != NULL) {
        field_0x00c->draw(0.0f, 0.0f, graf_ctx);
    }

    if (dMeter2Info_isFloatingMessageWakuVisible()) {
        mpScreen->draw(0.0f, 0.0f, graf_ctx);
    }

    if (mMsgID != 0xFFFF) {
        char tmp_buf[STR_BUF_LEN];
        strcpy(tmp_buf, static_cast<J2DTextBox*>(mpTm_c[0]->getPanePtr())->getStringPtr());
        mpTextScreen->draw(0.0f, 0.0f, graf_ctx);

#if VERSION == VERSION_GCN_JPN
        mpString_c->getString(mMsgID, static_cast<J2DTextBox*>(mpTm_c[0]->getPanePtr()), NULL, NULL,
                              NULL, 12);
#else
        mpString_c->getString(mMsgID, static_cast<J2DTextBox*>(mpTm_c[0]->getPanePtr()), NULL, NULL,
                              NULL, 8);
#endif
        mpString_c->drawOutFont(static_cast<J2DTextBox*>(mpTm_c[0]->getPanePtr()), -1.0f);
        strcpy(static_cast<J2DTextBox*>(mpTm_c[0]->getPanePtr())->getStringPtr(), tmp_buf);
    }

    for (int i = 0; i < 2; i++) {
        bool var_r22 = false;
        bool var_r23 = false;

        if (field_0x4be[i] == BUTTON_A_e && dComIfGp_isDoSetFlag(4)) {
            var_r23 = true;

            if (field_0x4b8[i] == 0 && field_0x4bc[i] == 0) {
                field_0x2e8[i] = 18.0f - g_drawHIO.mEmpButton.mPikariRepeatHitAnimSpeed;
            }

            s16 temp_r6 = g_drawHIO.mEmpButton.mRepeatHitFrameNum;
            s16 temp_r6_2 = g_drawHIO.mEmpButton.mRepeatHitFrameNum / 2;
            field_0x4b8[i]++;

            if (field_0x4b8[i] >= temp_r6) {
                field_0x4b8[i] = 0;

                if (field_0x4bc[i] == 0) {
                    field_0x4bc[i] = 1;
                } else {
                    field_0x4bc[i] = 0;
                }
            }

            f32 var_f31;
            if (temp_r6_2 < field_0x4b8[i]) {
                var_f31 = (f32)field_0x4b8[i] / (f32)temp_r6_2;
            } else {
                var_f31 = (f32)(temp_r6 - field_0x4b8[i]) / (f32)temp_r6_2;
            }

            //TODO: possible fakematch for Wii
            f32 var_f30;
#if PLATFORM_WII
            var_f30 = (g_drawHIO.mEmpButton.mRepeatHitScale - 1.0f) * var_f31;
            var_f30 = 1.0f + var_f30;
#else
            var_f30 = (g_drawHIO.mEmpButton.mRepeatHitScale - 1.0f) * var_f31 + 1.0f;
#endif
            mpButtonA->scale(mButtonAScale * var_f30, mButtonAScale * var_f30);
        } else if ((field_0x4be[i] == BUTTON_A_e &&
                    (dComIfGp_getDoStatus() == BUTTON_STATUS_LISTEN ||
                     dComIfGp_getDoStatus() == BUTTON_STATUS_PUSH ||
                     dComIfGp_getDoStatus() == BUTTON_STATUS_RESIST) &&
                    dMeter2Info_isBlinkButton(1)) ||
                   (field_0x4be[i] == BUTTON_B_e &&
                    dComIfGp_getAStatus() == BUTTON_STATUS_SHIELD_ATTACK &&
                    dMeter2Info_isBlinkButton(2)))
        {
            var_r22 = true;
            if (field_0x2e8[i] <= 0.0f) {
                field_0x2e8[i] = 18.0f - g_drawHIO.mEmpButton.mPikariListenAnimSpeed;
            }
        }

        if (field_0x2e8[i] > 0.0f) {
            bool var_r3 = false;
            Vec vtx;

            if (field_0x4be[i] == BUTTON_A_e) {
                vtx = mpButtonA->getGlobalVtxCenter(false, 0);
                var_r3 = true;
            } else if (field_0x4be[i] == BUTTON_B_e) {
                vtx = mpButtonB->getGlobalVtxCenter(false, 0);
                var_r3 = true;
            } else if (field_0x4be[i] == BUTTON_R_e) {
#if PLATFORM_GCN || PLATFORM_SHIELD
                vtx = mpButtonR->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_Z_e) {
#if PLATFORM_GCN || PLATFORM_SHIELD
                vtx = mpButtonZ->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_3D_e) {
                vtx = mpButton3D->getGlobalVtxCenter(false, 0);
#if PLATFORM_WII
                if (dComIfGp_is3DSetFlag(0x8)) {
                    var_r3 = false;
                } else {
                    var_r3 = true;
                }
#else
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_C_e) {
                vtx = mpButtonC->getGlobalVtxCenter(false, 0);
                var_r3 = true;
            } else if (field_0x4be[i] == BUTTON_S_e) {
                vtx = mpButtonS->getGlobalVtxCenter(false, 0);
                var_r3 = true;
            } else if (field_0x4be[i] == BUTTON_X_e) {
#if PLATFORM_GCN || PLATFORM_SHIELD
                vtx = mpButtonX->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_Y_e) {
#if PLATFORM_GCN || PLATFORM_SHIELD
                vtx = mpButtonY->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_NUN_e) {
#if PLATFORM_WII
                vtx = mpButtonNun->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_REMO_e) {
#if PLATFORM_WII
                vtx = mpButtonRemo->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_REMO2_e) {
#if PLATFORM_WII
                vtx = mpButtonRemo2->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_AR_e) {
#if PLATFORM_WII
                vtx = mpButtonAR->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_3DB_e) {
#if PLATFORM_GCN || PLATFORM_SHIELD
                vtx = mpButton3DB->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_NURE_e) {
#if PLATFORM_WII
                vtx = mpButtonNURE->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_REEL_e) {
#if PLATFORM_WII
                vtx = mpButtonReel->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_REEL2_e) {
#if PLATFORM_WII
                vtx = mpButtonReel2->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_AB_e) {
#if PLATFORM_WII
                vtx = mpButtonAB->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_TATE_e) {
#if PLATFORM_WII
                vtx = mpButtonTate->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_NUNZ_e) {
#if PLATFORM_WII
                vtx = mpButtonNunZ->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_NUNC_e) {
#if PLATFORM_WII
                vtx = mpButtonNunC->getGlobalVtxCenter(false, 0);
                var_r3 = true;
#endif
            } else if (field_0x4be[i] == BUTTON_BIN_e) {
                vtx = mpButtonBin->getGlobalVtxCenter(false, 0);
                var_r3 = true;
            }

#if PLATFORM_WII
            f32 var_f1 = (0.5f * (mDoGph_gInf_c::getMinXF() + mDoGph_gInf_c::getMaxX()));
            vtx.x = var_f1 + mDoGph_gInf_c::getInvScale() * (vtx.x - var_f1);
#endif

            if (var_r3) {
                if (var_r22) {
                    if (field_0x2e8[i] == 18.0f) {
                        mDoAud_seStart(Z2SE_SY_HINT_BUTTON_BLINK, NULL, 0, 0);
                    }

                    if (daPy_getPlayerActorClass()->getSumouMode()) {
                        dMeter2Info_getMeterClass()->getMeterDrawPtr()->drawPikari(
                            vtx.x, vtx.y, &field_0x2e8[i], 1.8f,
                            g_drawHIO.mEmpButton.mPikariListenFrontOuter,
                            g_drawHIO.mEmpButton.mPikariListenFrontInner,
                            g_drawHIO.mEmpButton.mPikariListenBackOuter,
                            g_drawHIO.mEmpButton.mPikariListenBackInner,
                            g_drawHIO.mEmpButton.mPikariListenAnimSpeed, 3);
                    } else {
                        dMeter2Info_getMeterClass()->getMeterDrawPtr()->drawPikari(
                            vtx.x, vtx.y, &field_0x2e8[i],
                            g_drawHIO.mEmpButton.mPikariListenScale,
                            g_drawHIO.mEmpButton.mPikariListenFrontOuter,
                            g_drawHIO.mEmpButton.mPikariListenFrontInner,
                            g_drawHIO.mEmpButton.mPikariListenBackOuter,
                            g_drawHIO.mEmpButton.mPikariListenBackInner,
                            g_drawHIO.mEmpButton.mPikariListenAnimSpeed, 3);
                    }
                } else if (var_r23) {
                    dMeter2Info_getMeterClass()->getMeterDrawPtr()->drawPikari(
                        vtx.x, vtx.y, &field_0x2e8[i],
                        g_drawHIO.mEmpButton.mPikariRepeatHitScale,
                        g_drawHIO.mEmpButton.mPikariRepeatHitFrontOuter,
                        g_drawHIO.mEmpButton.mPikariRepeatHitFrontInner,
                        g_drawHIO.mEmpButton.mPikariRepeatHitBackOuter,
                        g_drawHIO.mEmpButton.mPikariRepeatHitBackInner,
                        g_drawHIO.mEmpButton.mPikariRepeatHitAnimSpeed, 0);
                } else if (isFastSet(i)) {
                    dMeter2Info_getMeterClass()->getMeterDrawPtr()->drawPikari(
                        vtx.x, vtx.y, &field_0x2e8[i], g_drawHIO.mEmpButton.mPikariFastScale,
                        g_drawHIO.mEmpButton.mPikariFastFrontOuter,
                        g_drawHIO.mEmpButton.mPikariFastFrontInner,
                        g_drawHIO.mEmpButton.mPikariFastBackOuter,
                        g_drawHIO.mEmpButton.mPikariFastBackInner,
                        g_drawHIO.mEmpButton.mPikariFastAnimSpeed, 0);
                } else {
                    dMeter2Info_getMeterClass()->getMeterDrawPtr()->drawPikari(
                        vtx.x, vtx.y, &field_0x2e8[i], g_drawHIO.mEmpButton.mPikariScale,
                        g_drawHIO.mEmpButton.mPikariFrontOuter,
                        g_drawHIO.mEmpButton.mPikariFrontInner,
                        g_drawHIO.mEmpButton.mPikariBackOuter,
                        g_drawHIO.mEmpButton.mPikariBackInner,
                        g_drawHIO.mEmpButton.mPikariAnimSpeed, 0);
                }
            }
        }
    }

    dMeter2Info_resetBlinkButton();
}

int dMeterButton_c::_delete() {
    dMeter2Info_resetFloatingMessage();

    if ((!dMsgObject_isFukidashiCheck() && !dMsgObject_getMsgObjectClass()->isMidonaTalkWait()) ||
        dMsgObject_getMsgObjectClass()->isPlaceMessage() ||
        dMsgObject_getMsgObjectClass()->isHowlMessage() ||
        dMsgObject_getMsgObjectClass()->isBossMessage() ||
        dMsgObject_getMsgObjectClass()->isBookMessage() ||
        dMsgObject_getMsgObjectClass()->isStaffMessage() ||
        dMsgObject_getMsgObjectClass()->isKanbanMessage() ||
        dMsgObject_getMsgObjectClass()->getFukiKind() == 0x11)
    {
        dComIfGp_getMsgArchive(1)->removeResourceAll();
        dComIfGp_getMsgCommonArchive()->removeResourceAll();
    } else if (dMsgObject_getMsgObjectClass()->isGetItemMessage()) {
        dComIfGp_getMsgArchive(1)->removeResourceAll();
    }

    mpHeap->free(mpFishingTex);
    mpFishingTex = NULL;

    delete mpButtonScreen;
    mpButtonScreen = NULL;

    if (field_0x00c != NULL) {
        delete field_0x00c;
        field_0x00c = NULL;
    }

    delete mpParent;
    mpParent = NULL;

    delete mpButtonA;
    mpButtonA = NULL;

    delete mpButtonB;
    mpButtonB = NULL;

    if (mpButtonR != NULL) {
        delete mpButtonR;
        mpButtonR = NULL;
    }

    if (mpButtonZ != NULL) {
        delete mpButtonZ;
        mpButtonZ = NULL;
    }

    if (mpMidona != NULL) {
        delete mpMidona;
        mpMidona = NULL;
    }

    for (int i = 0; i < 4; i++) {
        if (field_0x0fc[i] != NULL) {
            delete field_0x0fc[i];
            field_0x0fc[i] = NULL;
        }
    }

    delete mpButton3D;
    mpButton3D = NULL;

    delete mpButtonC;
    mpButtonC = NULL;

    delete mpButtonS;
    mpButtonS = NULL;

    if (mpButtonX != NULL) {
        delete mpButtonX;
        mpButtonX = NULL;
    }

    if (mpButtonY != NULL) {
        delete mpButtonY;
        mpButtonY = NULL;
    }

    if (mpButtonNun != NULL) {
        delete mpButtonNun;
        mpButtonNun = NULL;
    }

    if (mpButtonRemo != NULL) {
        delete mpButtonRemo;
        mpButtonRemo = NULL;
    }

    if (mpButtonRemo2 != NULL) {
        delete mpButtonRemo2;
        mpButtonRemo2 = NULL;
    }

    if (mpButtonAR != NULL) {
        delete mpButtonAR;
        mpButtonAR = NULL;
    }

    if (mpButton3DB != NULL) {
        delete mpButton3DB;
        mpButton3DB = NULL;
    }

    if (mpButtonNURE != NULL) {
        delete mpButtonNURE;
        mpButtonNURE = NULL;
    }

    if (mpButtonReel != NULL) {
        delete mpButtonReel;
        mpButtonReel = NULL;
    }

    if (mpButtonReel2 != NULL) {
        delete mpButtonReel2;
        mpButtonReel2 = NULL;
    }

    if (mpButtonAB != NULL) {
        delete mpButtonAB;
        mpButtonAB = NULL;
    }

    if (mpButtonTate != NULL) {
        delete mpButtonTate;
        mpButtonTate = NULL;
    }

    if (mpButtonNunZ != NULL) {
        delete mpButtonNunZ;
        mpButtonNunZ = NULL;
    }

    if (mpButtonNunC != NULL) {
        delete mpButtonNunC;
        mpButtonNunC = NULL;
    }

    if (mpButtonBin != NULL) {
        delete mpButtonBin;
        mpButtonBin = NULL;
    }

    for (int i = 0; i < 2; i++) {
        delete mpText[i];
        mpText[i] = NULL;
    }

    delete mpItem_c;
    mpItem_c = NULL;

    if (mButtonInfo != NULL) {
        delete mButtonInfo;
        mButtonInfo = NULL;
    }

    delete mpScreen;
    mpScreen = NULL;

    delete mpFkAll_c;
    mpFkAll_c = NULL;

    delete mpFkRoot_c;
    mpFkRoot_c = NULL;

    delete mpTextScreen;
    mpTextScreen = NULL;

    delete mpTmRoot_c;
    mpTmRoot_c = NULL;

    for (int i = 0; i < 2; i++) {
        delete mpTm_c[i];
        mpTm_c[i] = NULL;

        if (field_0x0ec[i] != NULL) {
            delete field_0x0ec[i];
            field_0x0ec[i] = NULL;
        }
    }

    delete mpString_c;
    mpString_c = NULL;

    delete mpOutFont;
    mpOutFont = NULL;

    dComIfGp_getMeterButtonArchive()->removeResourceAll();
    return 1;
}

bool dMeterButton_c::alphaAnimeButtonA(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_A_e] > 0 || (i_flags & 0x80) || (i_flags & 0x40000000) ||
        (i_flags & 0x1000) || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonAAnimeMin();
        offButtonShowBit(BUTTON_A_e);
    } else {
        setAlphaButtonAAnimeMax();
        onButtonShowBit(BUTTON_A_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonB(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_B_e] > 0 || (i_flags & 0x80) || (i_flags & 0x40000000) ||
        (i_flags & 0x1000) || ((i_flags & 0x40) && dComIfGp_event_checkHind(4)) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonBAnimeMin();
        offButtonShowBit(BUTTON_B_e);
    } else {
        setAlphaButtonBAnimeMax();
        onButtonShowBit(BUTTON_B_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonR(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_R_e] > 0 ||
        #if PLATFORM_WII || PLATFORM_SHIELD
        (i_flags & 0x80) ||
        #endif
        (i_flags & 0x40000000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(8)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonRAnimeMin();
        offButtonShowBit(BUTTON_R_e);
    } else {
        setAlphaButtonRAnimeMax();
        onButtonShowBit(BUTTON_R_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonZ(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_Z_e] > 0 || (i_flags & 0x80) || (i_flags & 0x40000000) ||
        (i_flags & 0x1000) || ((i_flags & 0x40) && dComIfGp_event_checkHind(8)) ||
        (i_flags & 0x100) || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
#if PLATFORM_GCN || PLATFORM_SHIELD
        setAlphaButtonZAnimeMin();
#endif
        offButtonShowBit(BUTTON_Z_e);
    } else {
#if PLATFORM_GCN || PLATFORM_SHIELD
        setAlphaButtonZAnimeMax();
#endif
        onButtonShowBit(BUTTON_Z_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButton3D(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_3D_e] > 0 || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButton3DAnimeMin();
        setAlphaButton3DVAnimeMin();
        offButtonShowBit(BUTTON_3D_e);
    } else {
        if (dComIfGp_is3DSetFlag(8)) {
            setAlphaButton3DAnimeMin();
            setAlphaButton3DVAnimeMax();
        } else {
            setAlphaButton3DAnimeMax();
            setAlphaButton3DVAnimeMin();
        }

        onButtonShowBit(BUTTON_3D_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonC(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_C_e] > 0 || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonCAnimeMin();
        offButtonShowBit(BUTTON_C_e);
    } else {
        setAlphaButtonCAnimeMax();
        onButtonShowBit(BUTTON_C_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonS(u32 i_flags, bool i_drawButton) {
    if (!i_drawButton || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20)) {
        setAlphaButtonSAnimeMin();
        offButtonShowBit(BUTTON_S_e);
    } else {
        setAlphaButtonSAnimeMax();
        onButtonShowBit(BUTTON_S_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonX(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_X_e] > 0 || (i_flags & 0x80) || (i_flags & 0x40000000) ||
        (i_flags & 0x1000) || ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) ||
        (i_flags & 0x100) || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonXAnimeMin();
        offButtonShowBit(BUTTON_X_e);
    } else {
        setAlphaButtonXAnimeMax();
        onButtonShowBit(BUTTON_X_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonY(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_Y_e] > 0 || (i_flags & 0x80) || (i_flags & 0x40000000) ||
        (i_flags & 0x1000) || ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) ||
        (i_flags & 0x100) || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonYAnimeMin();
        offButtonShowBit(BUTTON_Y_e);
    } else {
        setAlphaButtonYAnimeMax();
        onButtonShowBit(BUTTON_Y_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonNun(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_NUN_e] > 0 || (i_flags & 0x80) || (i_flags & 0x40000000) ||
        (i_flags & 0x1000) || ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) ||
        (i_flags & 0x100) || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonNunAnimeMin();
        offButtonShowBit(BUTTON_NUN_e);
    } else {
        setAlphaButtonNunAnimeMax();
        onButtonShowBit(BUTTON_NUN_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonRemo(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_REMO_e] > 0 || (i_flags & 0x80) || (i_flags & 0x40000000) ||
        (i_flags & 0x1000) || ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) ||
        (i_flags & 0x100) || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonRemoAnimeMin();
        offButtonShowBit(BUTTON_REMO_e);
    } else {
        setAlphaButtonRemoAnimeMax();
        onButtonShowBit(BUTTON_REMO_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonRemo2(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        mButtonTimers[BUTTON_REMO2_e] > 0 || (i_flags & 0x80) || (i_flags & 0x40000000) ||
        (i_flags & 0x1000) || ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) ||
        (i_flags & 0x100) || (i_flags & 8) || (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonRemo2AnimeMin();
        offButtonShowBit(BUTTON_REMO2_e);
    } else {
        setAlphaButtonRemo2AnimeMax();
        onButtonShowBit(BUTTON_REMO2_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonAR(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton || (i_flags & 0x80) ||
        (i_flags & 0x40000000) || (i_flags & 0x1000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonARAnimeMin();
        offButtonShowBit(BUTTON_AR_e);
    } else {
        setAlphaButtonARAnimeMax();
        onButtonShowBit(BUTTON_AR_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButton3DB(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton || (i_flags & 0x80) ||
        (i_flags & 0x40000000) || (i_flags & 0x1000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButton3DBAnimeMin();
        offButtonShowBit(BUTTON_3DB_e);
    } else {
        setAlphaButton3DBAnimeMax();
        onButtonShowBit(BUTTON_3DB_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonNURE(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton || (i_flags & 0x80) ||
        (i_flags & 0x40000000) || (i_flags & 0x1000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonNUREAnimeMin();
        offButtonShowBit(BUTTON_NURE_e);
    } else {
        setAlphaButtonNUREAnimeMax();
        onButtonShowBit(BUTTON_NURE_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonReel(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton || (i_flags & 0x80) ||
        (i_flags & 0x40000000) || (i_flags & 0x1000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonReelAnimeMin();
        offButtonShowBit(BUTTON_REEL_e);
    } else {
        setAlphaButtonReelAnimeMax();
        onButtonShowBit(BUTTON_REEL_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonReel2(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton || (i_flags & 0x80) ||
        (i_flags & 0x40000000) || (i_flags & 0x1000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonReel2AnimeMin();
        offButtonShowBit(BUTTON_REEL2_e);
    } else {
        setAlphaButtonReel2AnimeMax();
        onButtonShowBit(BUTTON_REEL2_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonAB(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton || (i_flags & 0x80) ||
        (i_flags & 0x40000000) || (i_flags & 0x1000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonABAnimeMin();
        offButtonShowBit(BUTTON_AB_e);
    } else {
        setAlphaButtonABAnimeMax();
        onButtonShowBit(BUTTON_AB_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonTate(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton || (i_flags & 0x80) ||
        (i_flags & 0x40000000) || (i_flags & 0x1000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonTateAnimeMin();
        offButtonShowBit(BUTTON_TATE_e);
    } else {
        setAlphaButtonTateAnimeMax();
        onButtonShowBit(BUTTON_TATE_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonNunZ(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonNunZAnimeMin();
        offButtonShowBit(BUTTON_NUNZ_e);
    } else {
        setAlphaButtonNunZAnimeMax();
        onButtonShowBit(BUTTON_NUNZ_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonNunC(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonNunCAnimeMin();
        offButtonShowBit(BUTTON_NUNC_e);
    } else {
        setAlphaButtonNunCAnimeMax();
        onButtonShowBit(BUTTON_NUNC_e);
        return true;
    }

    return false;
}

bool dMeterButton_c::alphaAnimeButtonBin(u32 i_flags, bool i_drawButton) {
    if ((i_flags & 0x4000) || dMsgObject_isTalkNowCheck() || !i_drawButton || (i_flags & 0x80) ||
        (i_flags & 0x40000000) || (i_flags & 0x1000) ||
        ((i_flags & 0x40) && dComIfGp_event_checkHind(1)) || (i_flags & 0x100) || (i_flags & 8) ||
        (i_flags & 0x10) || (i_flags & 0x20))
    {
        setAlphaButtonBinAnimeMin();
        offButtonShowBit(BUTTON_BIN_e);
    } else {
        setAlphaButtonBinAnimeMax();
        onButtonShowBit(BUTTON_BIN_e);
        return true;
    }

    return false;
}

void dMeterButton_c::screenInitButton() {
#if PLATFORM_WII
    static u64 const juji_red[] = {
        MULTI_CHAR('red_00'), MULTI_CHAR('red_01'), MULTI_CHAR('red_02'), MULTI_CHAR('red_03'),
    };
#endif

    static u64 const text_tag[] = {
        MULTI_CHAR('info_ar0'), MULTI_CHAR('info_ar1'), MULTI_CHAR('info_ar2'),
        MULTI_CHAR('info_ar3'), MULTI_CHAR('info_ar4'), MULTI_CHAR('info_ar5'),
        MULTI_CHAR('info_ar6'), MULTI_CHAR('info_ar7'), MULTI_CHAR('info_ar8'),
        MULTI_CHAR('info_ar9'),
    };

#if PLATFORM_WII
    static u64 const ftext_tag[] = {
        MULTI_CHAR('fnfo_a0'), MULTI_CHAR('fnfo_a1'), MULTI_CHAR('fnfo_a2'),
        MULTI_CHAR('fnfo_a3'), MULTI_CHAR('fnfo_a4'), MULTI_CHAR('fnfo_a5'),
        MULTI_CHAR('fnfo_a6'), MULTI_CHAR('fnfo_a7'), MULTI_CHAR('fnfo_a8'),
        MULTI_CHAR('fnfo_a9'),
    };
#else
    static u64 const ftext_tag[] = {
        MULTI_CHAR('fnfo_ar0'), MULTI_CHAR('fnfo_ar1'), MULTI_CHAR('fnfo_ar2'),
        MULTI_CHAR('fnfo_ar3'), MULTI_CHAR('fnfo_ar4'), MULTI_CHAR('fnfo_ar5'),
        MULTI_CHAR('fnfo_ar6'), MULTI_CHAR('fnfo_ar7'), MULTI_CHAR('fnfo_ar8'),
        MULTI_CHAR('fnfo_ar9'),
    };
#endif

#if PLATFORM_WII
    static u64 const vtext_tag[] = {
        MULTI_CHAR('info_ar0'), MULTI_CHAR('info_ar1'), MULTI_CHAR('info_ar2'),
        MULTI_CHAR('info_ar3'), MULTI_CHAR('info_ar4'), MULTI_CHAR('info_ar5'),
        MULTI_CHAR('info_ar6'), MULTI_CHAR('info_ar7'), MULTI_CHAR('info_ar8'),
        MULTI_CHAR('info_ar9'),
    };

    static u64 const fvtext_tag[] = {
        MULTI_CHAR('fnfo_ar0'), MULTI_CHAR('fnfo_ar1'), MULTI_CHAR('fnfo_ar2'),
        MULTI_CHAR('fnfo_ar3'), MULTI_CHAR('fnfo_ar4'), MULTI_CHAR('fnfo_ar5'),
        MULTI_CHAR('fnfo_ar6'), MULTI_CHAR('fnfo_ar7'), MULTI_CHAR('fnfo_ar8'),
        MULTI_CHAR('fnfo_ar9'),
    };
#endif


    OS_REPORT("enter dMeterButton_c::screenInitButton\n");

    mpButtonScreen = new J2DScreen();
    JUT_ASSERT(1830, mpButtonScreen != NULL);

    OS_REPORT("load zelda_game_image_button_info.blo");

    bool fg = mpButtonScreen->setPriority(
#if PLATFORM_WII
        "zelda_game_image_button_info_revo.blo",
#else
        "zelda_game_image_button_info.blo",
#endif
        0x20000, dComIfGp_getMeterButtonArchive());
    JUT_ASSERT(1857, fg != false);
    if (!fg) {
        OS_REPORT("[%s] %d\n", __FILE__, 1859);
    }

    dPaneClass_showNullPane(mpButtonScreen);
#if PLATFORM_WII
    field_0x00c = new J2DScreen();
    field_0x00c->setPriority("zelda_view_change_guide.blo", 0x20000,
                             dComIfGp_getMeterButtonArchive());
#else
    field_0x00c = NULL;
#endif

    mpParent = new CPaneMgr(mpButtonScreen, MULTI_CHAR('info_n'), 0, NULL);
    if (mpParent == NULL)
        OS_REPORT("[%s] %d\n", __FILE__, 1867);
    JUT_ASSERT(1868, mpParent != NULL);

    for (int i = 0; i < BUTTON_NUM; i++) {
        field_0x18c[i] = 0.0f;
        mButtonTimers[i] = 0;
        field_0x304[i] = 0.0f;
        mButtonWidth[i] = 0.0f;
        field_0x244[i] = 0.0f;
    }

    field_0x2a4 = 0.0f;
    field_0x2a8 = 0.0f;

    for (int i = 0; i < 2; i++) {
        field_0x1e4[i] = 0.0f;
        field_0x29c[i] = 0.0f;
    }

    field_0x4b0 = 0;
    mParentCenterX = (FB_WIDTH_BASE / 2.0f) - mpParent->getInitCenterPosX();
    paneTrans(mpParent, mParentCenterX, 0.0f, 0xFF);

#if PLATFORM_WII
    mpButtonA = new CPaneMgr(mpButtonScreen, MULTI_CHAR('abtn_r_n'), 2, NULL);
    if (mpButtonA == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1902);
    }
    JUT_ASSERT(1903, mpButtonA != NULL);
    mpButtonA->setAlphaRate(0.0f);
    mpButtonA->show();

    mpButtonB = new CPaneMgr(mpButtonScreen, MULTI_CHAR('bbtn_r_n'), 2, NULL);
    if (mpButtonB == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1914);
    }
    JUT_ASSERT(1916, mpButtonB != NULL);
    mpButtonB->setAlphaRate(0.0f);
    mpButtonB->show();

    mpButtonR = NULL;

    mpButtonZ = NULL;

    mpButton3D = new CPaneMgr(mpButtonScreen, MULTI_CHAR('asbtn_n'), 2, NULL);
    if (mpButton3D == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1914);
    }
    JUT_ASSERT(0, mpButton3D != NULL);
    mpButton3D->setAlphaRate(0.0f);
    mpButton3D->show();

    mpButtonScreen->search(MULTI_CHAR('yaji_l_n'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_u_n'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_d_n'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_r_n'))->hide();

    mpMidona = new CPaneMgr(mpButtonScreen, MULTI_CHAR('midona'), 0, NULL);
    JUT_ASSERT(1939, mpMidona != NULL);
    if (mpMidona == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1941);
    }

    static_cast<J2DPicture*>(mpMidona->getPanePtr())->setMirror(J2DMirror_X);

    for (int i = 0; i < ARRAY_SIZE(field_0x0fc); i++) {
        field_0x0fc[i] = new CPaneMgr(mpButtonScreen, juji_red[i], 0, NULL);
        mPlayedButtonSound[0x1A + i] = false;
    }

    mpButtonC = new CPaneMgr(mpButtonScreen, MULTI_CHAR('jujbtn_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonS != NULL);
    if (mpButtonC == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 0);
    }
    mpButtonC->setAlphaRate(0.0f);
    mpButtonC->show();

    mpButtonS = new CPaneMgr(mpButtonScreen, MULTI_CHAR('sbtn_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonS != NULL);
    mpButtonS->setAlphaRate(0.0f);

    mpButtonX = NULL;
    mpButtonY = NULL;

    mpButtonNun = new CPaneMgr(mpButtonScreen, MULTI_CHAR('nstick_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonNun != NULL);
    mpButtonNun->setAlphaRate(0.0f);

    mpButtonRemo = new CPaneMgr(mpButtonScreen, MULTI_CHAR('rimoco_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonRemo != NULL);
    mpButtonRemo->setAlphaRate(0.0f);

    mpButtonRemo2 = new CPaneMgr(mpButtonScreen, MULTI_CHAR('action_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonRemo2 != NULL);
    mpButtonRemo2->setAlphaRate(0.0f);

    mpButtonAR = new CPaneMgr(mpButtonScreen, MULTI_CHAR('a_to_r_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonAR != NULL);
    mpButtonAR->setAlphaRate(0.0f);

    mpButton3DB = NULL;

    mpButtonNURE = new CPaneMgr(mpButtonScreen, MULTI_CHAR('nu_re_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonNURE != NULL);
    mpButtonNURE->setAlphaRate(0.0f);

    mpButtonReel = new CPaneMgr(mpButtonScreen, MULTI_CHAR('n_kuru_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonReel != NULL);
    mpButtonReel->setAlphaRate(0.0f);

    mpButtonReel2 = new CPaneMgr(mpButtonScreen, MULTI_CHAR('n_only_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonReel2 != NULL);
    mpButtonReel2->setAlphaRate(0.0f);

    mpButtonAB = new CPaneMgr(mpButtonScreen, MULTI_CHAR('AB_null'), 2, NULL);
    JUT_ASSERT(0, mpButtonAB != NULL);
    mpButtonAB->setAlphaRate(0.0f);

    mpButtonTate = new CPaneMgr(mpButtonScreen, MULTI_CHAR('tate_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonTate != NULL);
    mpButtonTate->setAlphaRate(0.0f);

    mpButtonNunZ = new CPaneMgr(mpButtonScreen, MULTI_CHAR('z_btn_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonNunZ != NULL);
    mpButtonNunZ->setAlphaRate(0.0f);

    mpButtonNunC = new CPaneMgr(mpButtonScreen, MULTI_CHAR('c_btn_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonNunC != NULL);
    mpButtonNunC->setAlphaRate(0.0f);

    mpButtonBin = new CPaneMgr(mpButtonScreen, MULTI_CHAR('bottl_n'), 2, NULL);
    JUT_ASSERT(0, mpButtonBin != NULL);
    mpButtonBin->setAlphaRate(0.0f);

    mpText[0] = new CPaneMgr(mpButtonScreen, MULTI_CHAR('text_n'), 2, NULL);
    JUT_ASSERT(0, mpText[0] != NULL);
    mpText[0]->setAlphaRate(0.0f);

    mpText[1] = new CPaneMgr(mpButtonScreen, MULTI_CHAR('text2_n'), 2, NULL);
    JUT_ASSERT(0, mpText[1] != NULL);
    mpText[1]->setAlphaRate(0.0f);

    mpItem_c = new CPaneMgr(mpButtonScreen, MULTI_CHAR('fishing'), 0, NULL);
    JUT_ASSERT(0, mpItem_c != NULL);
    mpItem_c->setAlphaRate(0.0f);
#else
    mpButtonA = new CPaneMgr(mpButtonScreen, MULTI_CHAR('abtn_n'), 2, NULL);
    if (mpButtonA == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1902);
    }
    JUT_ASSERT(1903, mpButtonA != NULL);
    mpButtonA->setAlphaRate(0.0f);
    mpButtonA->show();

    mpButtonB = new CPaneMgr(mpButtonScreen, MULTI_CHAR('bbtn_n'), 2, NULL);
    if (mpButtonB == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1914);
    }
    JUT_ASSERT(1916, mpButtonB != NULL);
    mpButtonB->setAlphaRate(0.0f);
    mpButtonB->show();
    mpButtonR = new CPaneMgr(mpButtonScreen, MULTI_CHAR('rbtn_n'), 2, NULL);
    if (mpButtonR == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1932);
    }
    JUT_ASSERT(1934, mpButtonR != NULL);
    mpButtonR->setAlphaRate(0.0f);
    mpButtonR->show();

    mpMidona = new CPaneMgr(mpButtonScreen, MULTI_CHAR('midona'), 0, NULL);
    JUT_ASSERT(1939, mpMidona != NULL);
    if (mpMidona == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1941);
    }

    for (int i = 0; i < 4; i++) {
        field_0x0fc[i] = NULL;
    }

#if DEBUG
    if (mpButtonScreen->search('zbtn') == 0) OS_REPORT("[%s] %d\n", __FILE__, 1947);
    if (mpButtonScreen->search(MULTI_CHAR('z_btnl')) == 0) OS_REPORT("[%s] %d\n", __FILE__, 1948);
#endif
    mpButtonScreen->search('zbtn')->show();
    mpButtonScreen->search(MULTI_CHAR('z_btnl'))->show();

    mpButtonZ = new CPaneMgr(mpButtonScreen, MULTI_CHAR('zbtn_n'), 2, NULL);
    if (mpButtonZ == NULL) {
        OS_REPORT("[%s] %d\n", __FILE__, 1954);
    }
    JUT_ASSERT(1956, mpButtonZ != NULL);
    mpButtonZ->setAlphaRate(0.0f);
    mpButtonZ->show();

    mpButton3D = new CPaneMgr(mpButtonScreen, MULTI_CHAR('asbtn_n'), 2, NULL);
    JUT_ASSERT(1964, mpButton3D != NULL);
    mpButton3D->setAlphaRate(0.0f);
    mpButton3D->show();

    mpButtonScreen->search(MULTI_CHAR('yaji_l_n'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_u_n'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_d_n'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_r_n'))->hide();

    mpButtonC = new CPaneMgr(mpButtonScreen, MULTI_CHAR('cbtn_n'), 2, NULL);
    JUT_ASSERT(1992, mpButtonC != NULL);
    mpButtonC->setAlphaRate(0.0f);
    mpButtonC->show();

    mpButtonScreen->search(MULTI_CHAR('yaji_ln'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_un'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_dn'))->hide();
    mpButtonScreen->search(MULTI_CHAR('yaji_rn'))->hide();

    mpButtonS = new CPaneMgr(mpButtonScreen, MULTI_CHAR('sbtn_n'), 2, NULL);
    JUT_ASSERT(2002, mpButtonS != NULL);
    mpButtonS->setAlphaRate(0.0f);

    mpButtonX = new CPaneMgr(mpButtonScreen, MULTI_CHAR('xbtn_n'), 2, NULL);
    JUT_ASSERT(2048, mpButtonX != NULL);
    mpButtonX->setAlphaRate(0.0f);

    mpButtonY = new CPaneMgr(mpButtonScreen, MULTI_CHAR('ybtn_n'), 2, NULL);
    JUT_ASSERT(2052, mpButtonY != NULL);
    mpButtonY->setAlphaRate(0.0f);

    mpButtonNun = NULL;
    mpButtonRemo = NULL;
    mpButtonRemo2 = NULL;
    mpButtonAR = NULL;

    mpButton3DB = new CPaneMgr(mpButtonScreen, MULTI_CHAR('as_b_n'), 2, NULL);
    JUT_ASSERT(2060, mpButton3DB != NULL);
    mpButton3DB->setAlphaRate(0.0f);

    mpButtonNURE = NULL;
    mpButtonReel = NULL;
    mpButtonReel2 = NULL;
    mpButtonAB = NULL;
    mpButtonTate = NULL;
    mpButtonNunZ = NULL;
    mpButtonNunC = NULL;

    mpButtonBin = new CPaneMgr(mpButtonScreen, MULTI_CHAR('bottl_n'), 2, NULL);
    JUT_ASSERT(2071, mpButtonBin != NULL);
    mpButtonBin->setAlphaRate(0.0f);

    mpText[0] = new CPaneMgr(mpButtonScreen, MULTI_CHAR('text_n'), 2, NULL);
    JUT_ASSERT(2075, mpText[0] != NULL);
    mpText[0]->setAlphaRate(0.0f);

    mpText[1] = new CPaneMgr(mpButtonScreen, MULTI_CHAR('text2_n'), 2, NULL);
    JUT_ASSERT(2079, mpText[1] != NULL);
    mpText[1]->setAlphaRate(0.0f);

    mpItem_c = new CPaneMgr(mpButtonScreen, MULTI_CHAR('fishing'), 0, NULL);
    JUT_ASSERT(2083, mpItem_c != NULL);
    mpItem_c->setAlphaRate(0.0f);
#endif

    mpHeap = mDoExt_getCurrentHeap();
    mpFishingTex = mpHeap->alloc(0xC00, 0x20);
    JUT_ASSERT(2088, mpFishingTex != NULL);

    u8 fishing_item = dComIfGs_getItem(SLOT_20, false);
    if (dMeter2Info_getMeterClass()->getMeterDrawPtr()->getCanoeFishing()) {
        fishing_item = dItemNo_LURE_ROD_e;
    }

    if (fishing_item == dItemNo_NONE_e) {
        fishing_item = dItemNo_FISHING_ROD_1_e;
    }

    dMeter2Info_readItemTexture(fishing_item, mpFishingTex,
                                static_cast<J2DPicture*>(mpItem_c->getPanePtr()), NULL, NULL, NULL,
                                NULL, NULL, NULL, -1);
    field_0x4d9 = 0xFF;

    for (int i = 0; i < ARRAY_SIZE(mpTextBox); i++) {
#if REGION_JPN
        mpTextBox[i] = (J2DTextBox*)mpButtonScreen->search(text_tag[i]);
        mpButtonScreen->search(ftext_tag[i])->hide();
#else
        mpTextBox[i] = (J2DTextBox*)mpButtonScreen->search(ftext_tag[i]);
        mpButtonScreen->search(text_tag[i])->hide();
#endif

        mpTextBox[i]->setFont(mDoExt_getMesgFont());
        mpTextBox[i]->setString(32, "");
    }

    field_0x35c = mpTextBox[0]->getWidth();
    field_0x360 = mpTextBox[0]->getBounds().i.x;

    for (int i = 0; i < 2; i++) {
        strcpy(mButtonText[i], "");
        field_0x2e8[i] = 0.0f;
        field_0x4be[i] = BUTTON_NONE_e;
        field_0x2f4[i] = 0.0f;
        field_0x2fc[i] = 0.0f;
        field_0x4d7[i] = 0;
        field_0x4b8[i] = 0;
        field_0x4bc[i] = 0;
    }

#if PLATFORM_WII
    mButtonInfo = new CPaneMgr(field_0x00c, MULTI_CHAR('info_n'), 2, NULL);
    JUT_ASSERT(0, mButtonInfo != NULL);
    mButtonInfo->setAlphaRate(0.0f);
#else
    mButtonInfo = NULL;
#endif

#if PLATFORM_WII
    for (int i = 0; i < ARRAY_SIZE(field_0x0ac); i++) {
        field_0x0ac[i] =
            static_cast<J2DTextBox*>(field_0x00c->search(MULTI_CHAR(fvtext_tag[i])));
        field_0x00c->search(MULTI_CHAR(vtext_tag[i]))->hide();
        field_0x0ac[i]->setFont(mDoExt_getMesgFont());
        field_0x0ac[i]->setString(0x20, "");
    }
#endif

    mVtxCenterA = mpButtonA->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_A_e] = mVtxCenterA.x;

    mVtxCenterB = mpButtonB->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_B_e] = mVtxCenterB.x;

#if PLATFORM_WII
    field_0x244[BUTTON_R_e] = 0.0f;

    field_0x244[BUTTON_Z_e] = 0.0f;

    mVtxCenter3D = mpButton3D->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_3D_e] = mVtxCenter3D.x;

    mVtxCenterC = mpButtonC->getGlobalVtxCenter(false, 0);
#else
    mVtxCenterR = mpButtonR->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_R_e] = mVtxCenterR.x;

    mVtxCenterZ = mpButtonZ->getGlobalVtxCenter(false, 0);
#endif

#if !PLATFORM_WII
    // Scope for pane variable. GCN/Shield expect it to be destructed midway
    // through the function, whereas Wii expects it to be destructed at the end.
    // Not sure how else to reconcile this.
    {
#endif
    CPaneMgr pane;
    Mtx m, m2;

#if PLATFORM_WII
    Vec sp108 = pane.getGlobalVtx(mpButtonScreen->search('juji_btn'), &m, 0, false, 0);
    Vec spFC = pane.getGlobalVtx(mpButtonScreen->search('juji_btn'), &m, 3, false, 0);
#else
    Vec sp108 = pane.getGlobalVtx(mpButtonScreen->search('zbtn'), &m, 0, false, 0);
    Vec spFC = pane.getGlobalVtx(mpButtonScreen->search('zbtn'), &m, 3, false, 0);
#endif
    Vec spF0 = pane.getGlobalVtx(mpButtonScreen->search(MULTI_CHAR('midona')), &m2, 0, false, 0);
    Vec spE4 = pane.getGlobalVtx(mpButtonScreen->search(MULTI_CHAR('midona')), &m2, 3, false, 0);

    f32 var_f2;
    if (sp108.x > spF0.x) {
        var_f2 = spF0.x;
    } else {
        var_f2 = sp108.x;
    }

    f32 var_f1;
    if (spFC.x > spE4.x) {
        var_f1 = spFC.x;
    } else {
        var_f1 = spE4.x;
    }

#if PLATFORM_WII
    field_0x2a4 = (var_f2 + var_f1) / 2;

    field_0x2a8 = mVtxCenterC.x;
    field_0x244[BUTTON_C_e] = mVtxCenterC.x;

    mVtxCenterS = mpButtonS->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_S_e] = mVtxCenterS.x;

    mVtxCenterNun = mpButtonNun->getGlobalVtxCenter(false, 0);

    mVtxCenterRemo = mpButtonRemo->getGlobalVtxCenter(false, 0);

    mVtxCenterRemo2 = mpButtonRemo2->getGlobalVtxCenter(false, 0);

    mVtxCenterAR = mpButtonAR->getGlobalVtxCenter(false, 0);

    mVtxCenterNURE = mpButtonNURE->getGlobalVtxCenter(false, 0);

    mVtxCenterReel = mpButtonReel->getGlobalVtxCenter(false, 0);

    mVtxCenterReel2 = mpButtonReel2->getGlobalVtxCenter(false, 0);

    mVtxCenterAB = mpButtonAB->getGlobalVtxCenter(false, 0);

    mVtxCenterTate = mpButtonTate->getGlobalVtxCenter(false, 0);

    mVtxCenterNunZ = mpButtonNunZ->getGlobalVtxCenter(false, 0);

    mVtxCenterNunC = mpButtonNunC->getGlobalVtxCenter(false, 0);

    if (mDoGph_gInf_c::mWide == true) {
        field_0x244[BUTTON_X_e] = 0.0f;
        field_0x244[BUTTON_Y_e] = 0.0f;
        field_0x244[BUTTON_NUN_e] = mVtxCenterNun.x;
        field_0x244[BUTTON_REMO_e] = mVtxCenterRemo.x + 15.0f;
        field_0x244[BUTTON_REMO2_e] = mVtxCenterRemo2.x + 24.0f;
        field_0x244[BUTTON_AR_e] = mVtxCenterAR.x + 22.0f;
        field_0x244[BUTTON_3DB_e] = 0.0f;
        field_0x244[BUTTON_NURE_e] = mVtxCenterNURE.x + 6.0f;
        field_0x244[BUTTON_REEL_e] = mVtxCenterReel.x;
        field_0x244[BUTTON_REEL2_e] = mVtxCenterReel2.x - 4.0f;
        field_0x244[BUTTON_AB_e] = mVtxCenterAB.x + 8.0f;
        field_0x244[BUTTON_TATE_e] = mVtxCenterTate.x;
        field_0x244[BUTTON_NUNZ_e] = mVtxCenterNunZ.x;
        field_0x244[BUTTON_NUNC_e] = mVtxCenterNunC.x - 6.0f;
    } else {
        field_0x244[BUTTON_X_e] = 0.0f;
        field_0x244[BUTTON_Y_e] = 0.0f;
        field_0x244[BUTTON_NUN_e] = mVtxCenterNun.x;
        field_0x244[BUTTON_REMO_e] = mVtxCenterRemo.x;
        field_0x244[BUTTON_REMO2_e] = mVtxCenterRemo2.x;
        field_0x244[BUTTON_AR_e] = mVtxCenterAR.x;
        field_0x244[BUTTON_3DB_e] = 0.0f;
        field_0x244[BUTTON_NURE_e] = mVtxCenterNURE.x;
        field_0x244[BUTTON_REEL_e] = mVtxCenterReel.x;
        field_0x244[BUTTON_REEL2_e] = mVtxCenterReel2.x;
        field_0x244[BUTTON_AB_e] = mVtxCenterAB.x;
        field_0x244[BUTTON_TATE_e] = mVtxCenterTate.x;
        field_0x244[BUTTON_NUNZ_e] = mVtxCenterNunZ.x;
        field_0x244[BUTTON_NUNC_e] = mVtxCenterNunC.x;
    }
#else
    field_0x244[BUTTON_Z_e] = (var_f2 + var_f1) / 2;
    } // end of scope for pane variable
#endif


#if !PLATFORM_WII
    mVtxCenter3D = mpButton3D->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_3D_e] = mVtxCenter3D.x;

    mVtxCenterC = mpButtonC->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_C_e] = mVtxCenterC.x;

    mVtxCenterS = mpButtonS->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_S_e] = mVtxCenterS.x;

    mVtxCenterX = mpButtonX->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_X_e] = mVtxCenterX.x;

    mVtxCenterY = mpButtonY->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_Y_e] = mVtxCenterY.x - 8.0f;

    field_0x244[BUTTON_NUN_e] = 0.0f;
    field_0x244[BUTTON_REMO_e] = 0.0f;
    field_0x244[BUTTON_REMO2_e] = 0.0f;
    field_0x244[BUTTON_AR_e] = 0.0f;

    mVtxCenter3DB = mpButton3DB->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_3DB_e] = mVtxCenter3DB.x;

    field_0x244[BUTTON_NURE_e] = 0.0f;
    field_0x244[BUTTON_REEL_e] = 0.0f;
    field_0x244[BUTTON_REEL2_e] = 0.0f;
    field_0x244[BUTTON_AB_e] = 0.0f;
    field_0x244[BUTTON_TATE_e] = 0.0f;
    field_0x244[BUTTON_NUNZ_e] = 0.0f;
    field_0x244[BUTTON_NUNC_e] = 0.0f;
#endif

    mVtxCenterBin = mpButtonBin->getGlobalVtxCenter(false, 0);
    field_0x244[BUTTON_BIN_e] = mVtxCenterBin.x;

    mVtxCenterText0 = mpText[0]->getGlobalVtxCenter(false, 0);
    field_0x2e0[0] = mVtxCenterText0.x;

    mVtxCenterText1 = mpText[1]->getGlobalVtxCenter(false, 0);
    field_0x2e0[1] = mVtxCenterText1.x;

    mParentPosX = 0.0f;
    mParentPosY = 0.0f;
    mParentScale = 1.0f;
    mButtonAPosX = 0.0f;
    mButtonAPosY = 0.0f;
    mButtonAScale = 1.0f;
    mButtonBPosX = 0.0f;
    mButtonBPosY = 0.0f;
    mButtonBScale = 1.0f;
    mButtonRPosX = 0.0f;
    mButtonRPosY = 0.0f;
    mButtonRScale = 1.0f;
    mButtonZPosX = 0.0f;
    mButtonZPosY = 0.0f;
    mButtonZScale = 1.0f;
    mButton3DPosX = 0.0f;
    mButton3DPosY = 0.0f;
    mButton3DScale = 1.0f;
    mButtonCPosX = 0.0f;
    mButtonCPosY = 0.0f;
    mButtonCScale = 1.0f;
    mButtonSPosX = 0.0f;
    mButtonSPosY = 0.0f;
    mButtonSScale = 1.0f;
    mButtonXPosX = 0.0f;
    mButtonXPosY = 0.0f;
    mButtonXScale = 1.0f;
    mButtonYPosX = 0.0f;
    mButtonYPosY = 0.0f;
    mButtonYScale = 1.0f;
    mButtonNunPosX = 0.0f;
    mButtonNunPosY = 0.0f;
    mButtonNunScale = 1.0f;
    mButtonRemoPosX = 0.0f;
    mButtonRemoPosY = 0.0f;
    mButtonRemoScale = 1.0f;
    mButtonRemo2PosX = 0.0f;
    mButtonRemo2PosY = 0.0f;
    mButtonRemo2Scale = 1.0f;
    mButtonARPosX = 0.0f;
    mButtonARPosY = 0.0f;
    mButtonARScale = 1.0f;
    mButton3DBPosX = 0.0f;
    mButton3DBPosY = 0.0f;
    mButton3DBScale = 1.0f;
    mButtonNUREPosX = 0.0f;
    mButtonNUREPosY = 0.0f;
    mButtonNUREScale = 1.0f;
    mButtonReelPosX = 0.0f;
    mButtonReelPosY = 0.0f;
    mButtonReelScale = 1.0f;
    mButtonReel2PosX = 0.0f;
    mButtonReel2PosY = 0.0f;
    mButtonReel2Scale = 1.0f;
    mButtonABPosX = 0.0f;
    mButtonABPosY = 0.0f;
    mButtonABScale = 1.0f;
    mButtonTatePosX = 0.0f;
    mButtonTatePosY = 0.0f;
    mButtonTateScale = 1.0f;
    mButtonNunZPosX = 0.0f;
    mButtonNunZPosY = 0.0f;
    mButtonNunZScale = 1.0f;
    mButtonNunCPosX = 0.0f;
    mButtonNunCPosY = 0.0f;
    mButtonNunCScale = 1.0f;
    mButtonBinPosX = 0.0f;
    mButtonBinPosY = 0.0f;
    field_0x5f0 = 1.0f;
    field_0x5f4 = 0.0f;
    field_0x5f8 = 0.0f;
    field_0x5fc = 1.0f;
    mTextPosX[0] = mTextPosX[1] = 0.0f;
    mTextPosY[0] = mTextPosY[1] = 0.0f;
    mTextScale[0] = mTextScale[1] = 1.0f;
    mItemPosX = 0.0f;
    mItemPosY = 0.0f;
    mItemScale = 1.0f;
    mMidonaPosX = 0.0f;
    mMidonaPosY = 0.0f;
    mMidonaScale = 1.0f;
    field_0x134 = 307.25f;
    field_0x138 = 307.75f;
    field_0x13c = 300.0f;
    field_0x140 = 304.5f;
    field_0x144 = 347.5f;

#if PLATFORM_GCN || PLATFORM_SHIELD
    if (dComIfGp_checkCameraAttentionStatus(0, 8)) {
        field_0x148 = 0.0f;
    } else {
        field_0x148 = 307.25f;
    }
#else
    field_0x148 = 307.25f;
#endif

    field_0x14c = 307.25f;
    field_0x150 = 307.25f;
    field_0x154 = 307.25f;
    field_0x158 = 367.25f;
    field_0x15c = 367.25f;
    field_0x160 = 367.25f;
    field_0x164 = 367.25f;
    field_0x168 = 367.25f;
    field_0x16c = 367.25f;
    field_0x170 = 367.25f;
    field_0x174 = 367.25f;
    field_0x178 = 367.25f;
    field_0x17c = 367.25f;
    field_0x180 = 367.25f;
    field_0x184 = 367.25f;
    field_0x188 = 367.25f;

    for (int i = 0; i < BUTTON_NUM; i++) {
        mPlayedButtonSound[i] = false;
    }
    mMeterSubContent = 0;

    updateButton();
    OS_REPORT("exit dMeterButton_c::screenInitButton\n");
}

void dMeterButton_c::screenInitText() {
    mpScreen = new J2DScreen();
    JUT_ASSERT(2442, mpScreen != NULL);

    OS_REPORT("enter dMeterButton_c::screenInitText(void)\n");

    bool fg =
        mpScreen->setPriority(
            #if PLATFORM_WII || VERSION == VERSION_SHIELD_DEBUG
            "zelda_message_window_new_revo.blo",
            #else
            "zelda_message_window_new.blo",
            #endif
            0x20000, dComIfGp_getMsgArchive(1));
    OS_REPORT("[%s] %d\n", __FILE__, 2450);
    JUT_ASSERT(2457, fg != false);
    dPaneClass_showNullPane(mpScreen);

    mpFkAll_c = new CPaneMgr(mpScreen, MULTI_CHAR('n_all'), 2, NULL);
    OS_REPORT("[%s] %d\n", __FILE__, 2461);
    JUT_ASSERT(2462, mpFkAll_c != NULL);
    mpFkAll_c->setAlphaRate(0.0f);
    OS_REPORT("[%s] %d\n", __FILE__, 2465);

    mpScreen->search(MULTI_CHAR('mg_null'))->move(
        g_MsgObject_HIO_c.mTextPosX + mpScreen->search(MULTI_CHAR('mg_null'))->getBounds().i.x,
        g_MsgObject_HIO_c.mTextPosY + mpScreen->search(MULTI_CHAR('mg_null'))->getBounds().i.y);
    OS_REPORT("[%s] %d\n", __FILE__, 2469);

    mpFkRoot_c = new CPaneMgr(mpScreen, MULTI_CHAR('mg_null'), 0, NULL);
    JUT_ASSERT(2472, mpFkRoot_c != NULL);
    OS_REPORT("[%s] %d\n", __FILE__, 2474);

    mpTextScreen = new J2DScreen();
    JUT_ASSERT(2478, mpTextScreen != NULL);

    OS_REPORT("[%s] %d\n", __FILE__, 2480);

    fg = mpTextScreen->setPriority("zelda_message_window_text.blo", 0x20000,
                                   dComIfGp_getMsgCommonArchive());
    OS_REPORT("[%s] %d\n", __FILE__, 2491);

    JUT_ASSERT(2493, fg != false);

    dPaneClass_showNullPane(mpTextScreen);
    OS_REPORT("[%s] %d\n", __FILE__, 2496);

    mpTmRoot_c = new CPaneMgr(mpTextScreen, MULTI_CHAR('mg_null'), 0, NULL);
    JUT_ASSERT(2499, mpTmRoot_c != NULL);

#if VERSION == VERSION_GCN_JPN
    if (dComIfGs_getOptRuby() == 0) {
        mpTm_c[0] = new CPaneMgr(mpTextScreen, MULTI_CHAR('mg_3flin'), 0, NULL);

        mpTm_c[1] = new CPaneMgr(mpTextScreen, MULTI_CHAR('t3f_s'), 0, NULL);

        field_0x0ec[0] = new CPaneMgr(mpTextScreen, MULTI_CHAR('mg_3f'), 0, NULL);

        field_0x0ec[1] = new CPaneMgr(mpTextScreen, MULTI_CHAR('mg_3f_s'), 0, NULL);

        mpTextScreen->search(MULTI_CHAR('n_3line'))->hide();
        mpTextScreen->search(MULTI_CHAR('n_3fline'))->show();
        mpTextScreen->search(MULTI_CHAR('n_e4line'))->hide();
    } else {
        mpTm_c[0] = new CPaneMgr(mpTextScreen, MULTI_CHAR('mg_3line'), 0, NULL);

        mpTm_c[1] = new CPaneMgr(mpTextScreen, 't3_s', 0, NULL);

        field_0x0ec[0] = NULL;
        field_0x0ec[1] = NULL;
        OS_REPORT("[%s] %d\n", __FILE__, __LINE__);

        mpTextScreen->search(MULTI_CHAR('n_3line'))->show();
        mpTextScreen->search(MULTI_CHAR('n_3fline'))->hide();
        mpTextScreen->search(MULTI_CHAR('n_e4line'))->hide();
    }
#else
    mpTm_c[0] = new CPaneMgr(mpTextScreen, MULTI_CHAR('mg_e4lin'), 0, NULL);
    JUT_ASSERT(2504, mpTm_c[0] != NULL);

    mpTm_c[1] = new CPaneMgr(mpTextScreen, 't4_s', 0, NULL);
    JUT_ASSERT(2507, mpTm_c[1] != NULL);

    field_0x0ec[0] = NULL;
    field_0x0ec[1] = NULL;

    OS_REPORT("[%s] %d\n", __FILE__, 2512);

    mpTextScreen->search(MULTI_CHAR('n_3line'))->hide();
    mpTextScreen->search(MULTI_CHAR('n_3fline'))->hide();
    mpTextScreen->search(MULTI_CHAR('n_e4line'))->show();
#endif

    OS_REPORT("[%s] %d\n", __FILE__, 2554);

    f32 line_space = static_cast<J2DTextBox*>(mpTm_c[0]->getPanePtr())->getLineSpace();
    for (int i = 0; i < 2; i++) {
        static_cast<J2DTextBox*>(mpTm_c[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
#if VERSION == VERSION_GCN_JPN
        static_cast<J2DTextBox*>(mpTm_c[i]->getPanePtr())->setString(0x210, "");
#else
        static_cast<J2DTextBox*>(mpTm_c[i]->getPanePtr())->setString(0x200, "");
#endif

        if (field_0x0ec[i] != NULL) {
            static_cast<J2DTextBox*>(field_0x0ec[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
#if VERSION == VERSION_GCN_JPN
            static_cast<J2DTextBox*>(field_0x0ec[i]->getPanePtr())->setString(0x210, "");
#else
            static_cast<J2DTextBox*>(field_0x0ec[i]->getPanePtr())->setString(0x200, "");
#endif
            static_cast<J2DTextBox*>(field_0x0ec[i]->getPanePtr())->setLineSpace(line_space);
        }
    }

    mMsgID = 0xFFFF;
    field_0x4b6 = 0;
    field_0x4b4 = 0;

    mpString_c = new dMsgString_c();
    JUT_ASSERT(2572, mpString_c != NULL);

    OS_REPORT("[%s] %d\n", __FILE__, 2574);

    mpOutFont = new COutFont_c(0);
    JUT_ASSERT(2577, mpOutFont != NULL);
    mpOutFont->createPane();

    OS_REPORT("exit dMeterButton_c::screenInitText(void)\n");
}

void dMeterButton_c::updateButton() {
    f32 parent_x_offset = 0.0f;
    f32 parent_y_offset = 0.0f;
    f32 parent_scale_factor = 1.0f;
    bool set_parent_offset = false;
    bool set_parent_pos = false;

    if (mParentPosX != g_drawHIO.mEmpButton.mEmpButtonPosX ||
        mParentPosY != g_drawHIO.mEmpButton.mEmpButtonPosY)
    {
        mParentPosX = g_drawHIO.mEmpButton.mEmpButtonPosX;
        mParentPosY = g_drawHIO.mEmpButton.mEmpButtonPosY;
        parent_y_offset = 0.0f;
        set_parent_pos = true;
    }

    if (mMeterSubContent != dMeter2Info_getMeterClass()->getSubContents()) {
        mMeterSubContent = dMeter2Info_getMeterClass()->getSubContents();
        if (mMeterSubContent == 1) {
            parent_y_offset = -25.0f;
        } else {
            parent_y_offset = 0.0f;
        }

        set_parent_offset = true;
    }

    if (strcmp(dComIfGp_getStartStageName(), "F_SP00") == 0 &&
        (dComIfG_play_c::getLayerNo(0) == 4 || dComIfG_play_c::getLayerNo(0) == 5))
    {
        parent_y_offset = -25.0f;
        set_parent_offset = true;
    }
    #if PLATFORM_GCN
    else if (strcmp(dComIfGp_getStartStageName(), "R_SP161") == 0 &&
               dComIfGs_isOneZoneSwitch(14, -1))
    {
        parent_y_offset = -25.0f;
        set_parent_offset = true;
    }
    #endif

    if (dMeter2Info_getMeterClass()->getSubContents() == 4) {
        parent_scale_factor = 0.8f;
    }

    if (dComIfGp_getSButtonStatus() == BUTTON_STATUS_SKIP ||
        dComIfGp_getSButtonStatus() == BUTTON_STATUS_CANT_SKIP) {
        parent_x_offset = -10.0f;
        parent_y_offset = 25.0f;
        parent_scale_factor = 0.9f;
        set_parent_offset = true;
    }

    if (set_parent_pos || set_parent_offset) {
        paneTrans(mpParent, parent_x_offset + (mParentPosX + mParentCenterX),
                  mParentPosY + parent_y_offset, 0xFF);
    }

    if (mParentScale != g_drawHIO.mEmpButton.mEmpButtonScale * parent_scale_factor) {
        mParentScale = g_drawHIO.mEmpButton.mEmpButtonScale * parent_scale_factor;
        mpParent->scale(mParentScale, mParentScale);
    }

    if (mButtonAPosX != g_drawHIO.mEmpButton.mButtonAPosX ||
        mButtonAPosY != g_drawHIO.mEmpButton.mButtonAPosY)
    {
        mButtonAPosX = g_drawHIO.mEmpButton.mButtonAPosX;
        mButtonAPosY = g_drawHIO.mEmpButton.mButtonAPosY;
        paneTrans(mpButtonA, field_0x304[BUTTON_A_e] + (mButtonAPosX + field_0x18c[BUTTON_A_e]),
                  mButtonAPosY, 0xFF);
    }

    if (mButtonAScale != g_drawHIO.mEmpButton.mButtonAScale) {
        mButtonAScale = g_drawHIO.mEmpButton.mButtonAScale;

        if (!dComIfGp_isDoSetFlag(4)) {
            mpButtonA->scale(mButtonAScale, mButtonAScale);
        }
    }

    if (mButtonBPosX != g_drawHIO.mEmpButton.mButtonBPosX ||
        mButtonBPosY != g_drawHIO.mEmpButton.mButtonBPosY)
    {
        mButtonBPosX = g_drawHIO.mEmpButton.mButtonBPosX;
        mButtonBPosY = g_drawHIO.mEmpButton.mButtonBPosY;
        paneTrans(mpButtonB, field_0x304[BUTTON_B_e] + (mButtonBPosX + field_0x18c[BUTTON_B_e]),
                  mButtonBPosY, 0xFF);
    }

    if (mButtonBScale != g_drawHIO.mEmpButton.mButtonBScale) {
        mButtonBScale = g_drawHIO.mEmpButton.mButtonBScale;

        mpButtonB->scale(mButtonBScale, mButtonBScale);
    }

#if PLATFORM_WII
    if (mButton3DPosX != g_drawHIO.mEmpButton.m3DButtonPosX ||
        mButton3DPosY != g_drawHIO.mEmpButton.m3DButtonPosY)
    {
        mButton3DPosX = g_drawHIO.mEmpButton.m3DButtonPosX;
        mButton3DPosY = g_drawHIO.mEmpButton.m3DButtonPosY;
        paneTrans(mpButton3D, field_0x304[BUTTON_3D_e] + (mButton3DPosX + field_0x18c[BUTTON_3D_e]),
                  mButton3DPosY, 0xFF);
    }

    if (mButton3DScale != g_drawHIO.mEmpButton.m3DButtonScale)
    {
        mButton3DScale = g_drawHIO.mEmpButton.m3DButtonScale;
        mpButton3D->scale(mButton3DScale, mButton3DScale);
    }

    if (mButtonCPosX != g_drawHIO.mEmpButton.mCButtonPosX ||
        mButtonCPosY != g_drawHIO.mEmpButton.mCButtonPosY)
    {
        mButtonCPosX = g_drawHIO.mEmpButton.mCButtonPosX;
        mButtonCPosY = g_drawHIO.mEmpButton.mCButtonPosY;
        paneTrans(mpButtonC, field_0x304[BUTTON_C_e] + (mButtonCPosX + field_0x18c[BUTTON_C_e]),
                  mButtonCPosY, 0xFF);
    }

    if (mButtonCScale != g_drawHIO.mEmpButton.mCButtonScale)
    {
        mButtonCScale = g_drawHIO.mEmpButton.mCButtonScale;
        mpButtonC->scale(mButtonCScale, mButtonCScale);
    }

    if (mButtonSPosX != g_drawHIO.mEmpButton.mSButtonPosX ||
        mButtonSPosY != g_drawHIO.mEmpButton.mSButtonPosY)
    {
        mButtonSPosX = g_drawHIO.mEmpButton.mSButtonPosX;
        mButtonSPosY = g_drawHIO.mEmpButton.mSButtonPosY;
        paneTrans(mpButtonS, field_0x304[BUTTON_S_e] + (mButtonSPosX + field_0x18c[BUTTON_S_e]),
                  mButtonSPosY, 0xFF);
    }

    if (mButtonSScale != g_drawHIO.mEmpButton.mSButtonScale)
    {
        mButtonSScale = g_drawHIO.mEmpButton.mSButtonScale;
        mpButtonS->scale(mButtonSScale, mButtonSScale);
    }

    if (mButtonNunPosX != g_drawHIO.mEmpButton.mNunchukPosX ||
        mButtonNunPosY != g_drawHIO.mEmpButton.mNunchukPosY)
    {
        mButtonNunPosX = g_drawHIO.mEmpButton.mNunchukPosX;
        mButtonNunPosY = g_drawHIO.mEmpButton.mNunchukPosY;
        paneTrans(mpButtonNun,
                  field_0x304[BUTTON_NUN_e] + (mButtonNunPosX + field_0x18c[BUTTON_NUN_e]),
                  mButtonNunPosY, 0xFF);
    }

    if (mButtonNunScale != g_drawHIO.mEmpButton.mNunchukScale)
    {
        mButtonNunScale = g_drawHIO.mEmpButton.mNunchukScale;
        mpButtonNun->scale(mButtonNunScale, mButtonNunScale);
    }

    if (mButtonRemoPosX != g_drawHIO.mEmpButton.mWiimotePosX ||
        mButtonRemoPosY != g_drawHIO.mEmpButton.mWiimotePosY)
    {
        mButtonRemoPosX = g_drawHIO.mEmpButton.mWiimotePosX;
        mButtonRemoPosY = g_drawHIO.mEmpButton.mWiimotePosY;
        paneTrans(mpButtonRemo,
                  field_0x304[BUTTON_REMO_e] + (mButtonRemoPosX + field_0x18c[BUTTON_REMO_e]),
                  mButtonRemoPosY, 0xFF);
    }

    if (mButtonRemoScale != g_drawHIO.mEmpButton.mWiimoteScale)
    {
        mButtonRemoScale = g_drawHIO.mEmpButton.mWiimoteScale;
        mpButtonRemo->scale(mButtonRemoScale, mButtonRemoScale);
    }

    if (mButtonRemo2PosX != g_drawHIO.mEmpButton.mWiimoteLRPosX ||
        mButtonRemo2PosY != g_drawHIO.mEmpButton.mWiimoteLRPosY)
    {
        mButtonRemo2PosX = g_drawHIO.mEmpButton.mWiimoteLRPosX;
        mButtonRemo2PosY = g_drawHIO.mEmpButton.mWiimoteLRPosY;
        paneTrans(mpButtonRemo2,
                  field_0x304[BUTTON_REMO2_e] + (mButtonRemo2PosX + field_0x18c[BUTTON_REMO2_e]),
                  mButtonRemo2PosY, 0xFF);
    }

    if (mButtonRemo2Scale != g_drawHIO.mEmpButton.mWiimoteLRScale)
    {
        mButtonRemo2Scale = g_drawHIO.mEmpButton.mWiimoteLRScale;
        mpButtonRemo2->scale(mButtonRemo2Scale, mButtonRemo2Scale);
    }

    if (mButtonARPosX != g_drawHIO.mEmpButton.mWiimoteAPosX ||
        mButtonARPosY != g_drawHIO.mEmpButton.mWiimoteAPosY)
    {
        mButtonARPosX = g_drawHIO.mEmpButton.mWiimoteAPosX;
        mButtonARPosY = g_drawHIO.mEmpButton.mWiimoteAPosY;
        paneTrans(mpButtonAR,
                  field_0x304[BUTTON_AR_e] + (mButtonARPosX + field_0x18c[BUTTON_AR_e]),
                  mButtonARPosY, 0xFF);
    }

    if (mButtonARScale != g_drawHIO.mEmpButton.mWiimoteAScale)
    {
        mButtonARScale = g_drawHIO.mEmpButton.mWiimoteAScale;
        mpButtonAR->scale(mButtonARScale, mButtonARScale);
    }

    if (mButtonNUREPosX != g_drawHIO.mEmpButton.mNunchukWiimotePosX ||
        mButtonNUREPosY != g_drawHIO.mEmpButton.mNunchukWiimotePosY)
    {
        mButtonNUREPosX = g_drawHIO.mEmpButton.mNunchukWiimotePosX;
        mButtonNUREPosY = g_drawHIO.mEmpButton.mNunchukWiimotePosY;
        paneTrans(mpButtonNURE, mButtonNUREPosX + field_0x304[BUTTON_NURE_e],
                  mButtonNUREPosY, 0xFF);
    }

    if (mButtonNUREScale != g_drawHIO.mEmpButton.mNunchukWiimoteScale)
    {
        mButtonNUREScale = g_drawHIO.mEmpButton.mNunchukWiimoteScale;
        mpButtonNURE->scale(mButtonNUREScale, mButtonNUREScale);
    }

    if (mButtonReelPosX != g_drawHIO.mEmpButton.mNunchukWiimoteRealPosX ||
        mButtonReelPosY != g_drawHIO.mEmpButton.mNunchukWiimoteRealPosY)
    {
        mButtonReelPosX = g_drawHIO.mEmpButton.mNunchukWiimoteRealPosX;
        mButtonReelPosY = g_drawHIO.mEmpButton.mNunchukWiimoteRealPosY;
        paneTrans(mpButtonReel, mButtonReelPosX + field_0x304[BUTTON_REEL_e],
                  mButtonReelPosY, 0xFF);
    }

    if (mButtonReelScale != g_drawHIO.mEmpButton.mNunchukWiimoteRealScale)
    {
        mButtonReelScale = g_drawHIO.mEmpButton.mNunchukWiimoteRealScale;
        mpButtonReel->scale(mButtonReelScale, mButtonReelScale);
    }

    if (mButtonReel2PosX != g_drawHIO.mEmpButton.mNunchukRealPosX ||
        mButtonReel2PosY != g_drawHIO.mEmpButton.mNunchukRealPosY)
    {
        mButtonReel2PosX = g_drawHIO.mEmpButton.mNunchukRealPosX;
        mButtonReel2PosY = g_drawHIO.mEmpButton.mNunchukRealPosY;
        paneTrans(mpButtonReel2, mButtonReel2PosX + field_0x304[BUTTON_REEL2_e],
                  mButtonReel2PosY, 0xFF);
    }

    if (mButtonReel2Scale != g_drawHIO.mEmpButton.mNunchukRealScale)
    {
        mButtonReel2Scale = g_drawHIO.mEmpButton.mNunchukRealScale;
        mpButtonReel2->scale(mButtonReel2Scale, mButtonReel2Scale);
    }

    if (mButtonABPosX != g_drawHIO.mEmpButton.mAButtonBPosX ||
        mButtonABPosY != g_drawHIO.mEmpButton.mAButtonBPosY)
    {
        mButtonABPosX = g_drawHIO.mEmpButton.mAButtonBPosX;
        mButtonABPosY = g_drawHIO.mEmpButton.mAButtonBPosY;
        paneTrans(mpButtonAB, mButtonABPosX + field_0x304[BUTTON_AB_e],
                  mButtonABPosY, 0xFF);
    }

    if (mButtonABScale != g_drawHIO.mEmpButton.mAButtonBScale)
    {
        mButtonABScale = g_drawHIO.mEmpButton.mAButtonBScale;
        mpButtonAB->scale(mButtonABScale, mButtonABScale);
    }

    if (mButtonTatePosX != g_drawHIO.mEmpButton.mNunchukAttackPosX ||
        mButtonTatePosY != g_drawHIO.mEmpButton.mNunchukAttackPosY)
    {
        mButtonTatePosX = g_drawHIO.mEmpButton.mNunchukAttackPosX;
        mButtonTatePosY = g_drawHIO.mEmpButton.mNunchukAttackPosY;
        paneTrans(mpButtonTate, mButtonTatePosX + field_0x304[BUTTON_TATE_e],
                  mButtonTatePosY, 0xFF);
    }

    if (mButtonTateScale != g_drawHIO.mEmpButton.mNunchukAttackScale)
    {
        mButtonTateScale = g_drawHIO.mEmpButton.mNunchukAttackScale;
        mpButtonTate->scale(mButtonTateScale, mButtonTateScale);
    }

    if (mButtonNunZPosX != g_drawHIO.mEmpButton.mNunchukButtonZPosX ||
        mButtonNunZPosY != g_drawHIO.mEmpButton.mNunchukButtonZPosY)
    {
        mButtonNunZPosX = g_drawHIO.mEmpButton.mNunchukButtonZPosX;
        mButtonNunZPosY = g_drawHIO.mEmpButton.mNunchukButtonZPosY;
        paneTrans(mpButtonNunZ,
                  field_0x304[BUTTON_NUNZ_e] + (mButtonXPosX + field_0x18c[BUTTON_NUNZ_e]),
                  mButtonNunZPosY, 0xFF);
    }

    if (mButtonNunZScale != g_drawHIO.mEmpButton.mNunchukButtonZScale)
    {
        mButtonNunZScale = g_drawHIO.mEmpButton.mNunchukButtonZScale;
        mpButtonNunZ->scale(mButtonNunZScale, mButtonNunZScale);
    }

    if (mButtonNunCPosX != g_drawHIO.mEmpButton.mNunchukCButtonPosX ||
        mButtonNunCPosY != g_drawHIO.mEmpButton.mNunchukCButtonPosY)
    {
        mButtonNunCPosX = g_drawHIO.mEmpButton.mNunchukCButtonPosX;
        mButtonNunCPosY = g_drawHIO.mEmpButton.mNunchukCButtonPosY;
        paneTrans(mpButtonNunC,
                  field_0x304[BUTTON_NUNC_e] + (mButtonXPosX + field_0x18c[BUTTON_NUNC_e]),
                  mButtonNunCPosY, 0xFF);
    }

    if (mButtonNunCScale != g_drawHIO.mEmpButton.mNunchukCButtonScale)
    {
        mButtonNunCScale = g_drawHIO.mEmpButton.mNunchukCButtonScale;
        mpButtonNunC->scale(mButtonNunCScale, mButtonNunCScale);
    }

    if (mButtonBinPosX != g_drawHIO.mEmpButton.mBottleIconPosX ||
        mButtonBinPosY != g_drawHIO.mEmpButton.mBottleIconPosY)
    {
        mButtonBinPosX = g_drawHIO.mEmpButton.mBottleIconPosX;
        mButtonBinPosY = g_drawHIO.mEmpButton.mBottleIconPosY;
        paneTrans(mpButtonBin,
                  field_0x304[BUTTON_BIN_e] + (mButtonXPosX + field_0x18c[BUTTON_BIN_e]),
                  mButtonBinPosY, 0xFF);
    }
#else

    if (mButtonRPosX != g_drawHIO.mEmpButton.mRButtonPosX ||
        mButtonRPosY != g_drawHIO.mEmpButton.mRButtonPosY)
    {
        mButtonRPosX = g_drawHIO.mEmpButton.mRButtonPosX;
        mButtonRPosY = g_drawHIO.mEmpButton.mRButtonPosY;
        paneTrans(mpButtonR, field_0x304[BUTTON_R_e] + (mButtonRPosX + field_0x18c[BUTTON_R_e]),
                  mButtonRPosY, 0xFF);
    }

    if (mButtonRScale != g_drawHIO.mEmpButton.mRButtonScale) {
        mButtonRScale = g_drawHIO.mEmpButton.mRButtonScale;

        mpButtonR->scale(mButtonRScale, mButtonRScale);
    }

    if (mButtonZPosX != g_drawHIO.mEmpButton.mButtonZPosX ||
        mButtonZPosY != g_drawHIO.mEmpButton.mButtonZPosY)
    {
        mButtonZPosX = g_drawHIO.mEmpButton.mButtonZPosX;
        mButtonZPosY = g_drawHIO.mEmpButton.mButtonZPosY;
        paneTrans(mpButtonZ, field_0x304[BUTTON_Z_e] + (mButtonZPosX + field_0x18c[BUTTON_Z_e]),
                  mButtonZPosY, 0xFF);
    }

    if (mButtonZScale != g_drawHIO.mEmpButton.mButtonZScale) {
        mButtonZScale = g_drawHIO.mEmpButton.mButtonZScale;

        mpButtonZ->scale(mButtonZScale, mButtonZScale);
    }

    if (mButton3DPosX != g_drawHIO.mEmpButton.m3DButtonPosX ||
        mButton3DPosY != g_drawHIO.mEmpButton.m3DButtonPosY)
    {
        mButton3DPosX = g_drawHIO.mEmpButton.m3DButtonPosX;
        mButton3DPosY = g_drawHIO.mEmpButton.m3DButtonPosY;
        paneTrans(mpButton3D, field_0x304[BUTTON_3D_e] + (mButton3DPosX + field_0x18c[BUTTON_3D_e]),
                  mButton3DPosY, 0xFF);
    }

    if (mButton3DScale != g_drawHIO.mEmpButton.m3DButtonScale) {
        mButton3DScale = g_drawHIO.mEmpButton.m3DButtonScale;

        mpButton3D->scale(mButton3DScale, mButton3DScale);
    }

    if (mButtonCPosX != g_drawHIO.mEmpButton.mCButtonPosX ||
        mButtonCPosY != g_drawHIO.mEmpButton.mCButtonPosY)
    {
        mButtonCPosX = g_drawHIO.mEmpButton.mCButtonPosX;
        mButtonCPosY = g_drawHIO.mEmpButton.mCButtonPosY;
        paneTrans(mpButtonC, field_0x304[BUTTON_C_e] + (mButtonCPosX + field_0x18c[BUTTON_C_e]),
                  mButtonCPosY, 0xFF);
    }

    if (mButtonCScale != g_drawHIO.mEmpButton.mCButtonScale) {
        mButtonCScale = g_drawHIO.mEmpButton.mCButtonScale;

        mpButtonC->scale(mButtonCScale, mButtonCScale);
    }

    if (mButtonSPosX != g_drawHIO.mEmpButton.mSButtonPosX ||
        mButtonSPosY != g_drawHIO.mEmpButton.mSButtonPosY)
    {
        mButtonSPosX = g_drawHIO.mEmpButton.mSButtonPosX;
        mButtonSPosY = g_drawHIO.mEmpButton.mSButtonPosY;
        paneTrans(mpButtonS, field_0x304[BUTTON_S_e] + (mButtonSPosX + field_0x18c[BUTTON_S_e]),
                  mButtonSPosY, 0xFF);
    }

    if (mButtonSScale != g_drawHIO.mEmpButton.mSButtonScale) {
        mButtonSScale = g_drawHIO.mEmpButton.mSButtonScale;

        mpButtonS->scale(mButtonSScale, mButtonSScale);
    }

    if (mButtonXPosX != g_drawHIO.mEmpButton.mButtonXPosX ||
        mButtonXPosY != g_drawHIO.mEmpButton.mButtonXPosY)
    {
        mButtonXPosX = g_drawHIO.mEmpButton.mButtonXPosX;
        mButtonXPosY = g_drawHIO.mEmpButton.mButtonXPosY;
        paneTrans(mpButtonX, field_0x304[BUTTON_X_e] + (mButtonXPosX + field_0x18c[BUTTON_X_e]),
                  mButtonXPosY, 0xFF);
    }

    if (mButtonXScale != g_drawHIO.mEmpButton.mButtonXScale) {
        mButtonXScale = g_drawHIO.mEmpButton.mButtonXScale;

        mpButtonX->scale(mButtonXScale, mButtonXScale);
    }

    if (mButtonYPosX != g_drawHIO.mEmpButton.mButtonYPosX ||
        mButtonYPosY != g_drawHIO.mEmpButton.mButtonYPosY)
    {
        mButtonYPosX = g_drawHIO.mEmpButton.mButtonYPosX;
        mButtonYPosY = g_drawHIO.mEmpButton.mButtonYPosY;
        paneTrans(mpButtonY, field_0x304[BUTTON_Y_e] + (mButtonXPosX + field_0x18c[BUTTON_Y_e]),
                  mButtonYPosY, 0xFF);
    }

    if (mButtonYScale != g_drawHIO.mEmpButton.mButtonYScale) {
        mButtonYScale = g_drawHIO.mEmpButton.mButtonYScale;

        mpButtonY->scale(mButtonYScale, mButtonYScale);
    }

    if (mButton3DBPosX != g_drawHIO.mEmpButton.m3DBButtonPosX ||
        mButton3DBPosY != g_drawHIO.mEmpButton.m3DBButtonPosY)
    {
        mButton3DBPosX = g_drawHIO.mEmpButton.m3DBButtonPosX;
        mButton3DBPosY = g_drawHIO.mEmpButton.m3DBButtonPosY;
        paneTrans(mpButton3DB,
                  field_0x304[BUTTON_3DB_e] + (mButtonXPosX + field_0x18c[BUTTON_3DB_e]),
                  mButton3DBPosY, 0xFF);
    }

    if (mButton3DBScale != g_drawHIO.mEmpButton.m3DBButtonScale) {
        mButton3DBScale = g_drawHIO.mEmpButton.m3DBButtonScale;

        mpButton3DB->scale(mButton3DBScale, mButton3DBScale);
    }

    if (mButtonBinPosX != g_drawHIO.mEmpButton.mBottleIconPosX ||
        mButtonBinPosY != g_drawHIO.mEmpButton.mBottleIconPosY)
    {
        mButtonBinPosX = g_drawHIO.mEmpButton.mBottleIconPosX;
        mButtonBinPosY = g_drawHIO.mEmpButton.mBottleIconPosY;
        paneTrans(mpButtonBin,
                  field_0x304[BUTTON_BIN_e] + (mButtonXPosX + field_0x18c[BUTTON_BIN_e]),
                  mButtonBinPosY, 0xFF);
    }
#endif

    if (mButtonInfo != NULL) {
        if (field_0x5f4 != g_drawHIO.mEmpButton.mViewChangePosX ||
            field_0x5f8 != g_drawHIO.mEmpButton.mViewChangePosY)
        {
            field_0x5f4 = g_drawHIO.mEmpButton.mViewChangePosX;
            field_0x5f8 = g_drawHIO.mEmpButton.mViewChangePosY;
            paneTrans(mButtonInfo, field_0x5f4, field_0x5f8, 0xFF);
        }

        if (field_0x5fc != g_drawHIO.mEmpButton.mViewChangeScale) {
            field_0x5fc = g_drawHIO.mEmpButton.mViewChangeScale;

            mButtonInfo->scale(field_0x5fc, field_0x5fc);
        }
    }

    if (mMidonaPosX != g_drawHIO.mEmpButton.mMidnaIconPosX ||
        mMidonaPosY != g_drawHIO.mEmpButton.mMidnaIconPosY)
    {
        mMidonaPosX = g_drawHIO.mEmpButton.mMidnaIconPosX;
        mMidonaPosY = g_drawHIO.mEmpButton.mMidnaIconPosY;
        paneTrans(mpMidona, mMidonaPosX, mMidonaPosY, 0xFF);
    }

    if (mMidonaScale != g_drawHIO.mEmpButton.mMidnaIconScale) {
        mMidonaScale = g_drawHIO.mEmpButton.mMidnaIconScale;

        mpMidona->scale(mMidonaScale, mMidonaScale);
    }

    if (mTextPosX[0] != g_drawHIO.mEmpButton.mText1PosX ||
        mTextPosY[0] != g_drawHIO.mEmpButton.mText1PosY)
    {
        mTextPosX[0] = g_drawHIO.mEmpButton.mText1PosX;
        mTextPosY[0] = g_drawHIO.mEmpButton.mText1PosY;

        f32 x_offset = 0.0f;
        f32 y_offset = 0.0f;

        if (field_0x4be[0] != BUTTON_NONE_e) {
            x_offset = field_0x18c[field_0x4be[0]];
        }

        if (field_0x4be[0] == BUTTON_S_e) {
            y_offset = mButtonSPosY;
        }

#if WIDESCREEN_SUPPORT && !PLATFORM_SHIELD
        if (mDoGph_gInf_c::mWide == true) {
            x_offset -= 10.0f;
        }
#endif

        paneTrans(mpText[0], mTextPosX[0] + x_offset, mTextPosY[0] + y_offset, 0);
    }

    if (mTextScale[0] != g_drawHIO.mEmpButton.mText1Scale) {
        mTextScale[0] = g_drawHIO.mEmpButton.mText1Scale;

        mpText[0]->scale(mTextScale[0], mTextScale[0]);
    }

    if (mTextPosX[1] != g_drawHIO.mEmpButton.mText2PosX ||
        mTextPosY[1] != g_drawHIO.mEmpButton.mText2PosY)
    {
        mTextPosX[1] = g_drawHIO.mEmpButton.mText2PosX;
        mTextPosY[1] = g_drawHIO.mEmpButton.mText2PosY;

        f32 x_offset = 0.0f;
        f32 y_offset = 0.0f;

        if (field_0x4be[1] != BUTTON_NONE_e) {
            x_offset = field_0x18c[field_0x4be[1]];
        }

        if (field_0x4be[1] == BUTTON_S_e) {
            y_offset = mButtonSPosY;
        }

#if WIDESCREEN_SUPPORT && !PLATFORM_SHIELD
        if (mDoGph_gInf_c::mWide == true) {
            x_offset -= 10.0f;
        }
#endif

        paneTrans(mpText[1], mTextPosX[1] + x_offset, mTextPosY[1] + y_offset, 1);
    }

    if (mTextScale[1] != g_drawHIO.mEmpButton.mText2Scale) {
        mTextScale[1] = g_drawHIO.mEmpButton.mText2Scale;

        mpText[1]->scale(mTextScale[1], mTextScale[1]);
    }

    int var_r4 = -1;
    for (int i = 0; i < 2; i++) {
        if (i == field_0x4d9) {
            var_r4 = i;
        }
    }

    if (var_r4 >= 0) {
        if (mItemPosX != g_drawHIO.mEmpButton.mItemPosX ||
            mItemPosY != g_drawHIO.mEmpButton.mItemPosY)
        {
            mItemPosX = g_drawHIO.mEmpButton.mItemPosX;
            mItemPosY = g_drawHIO.mEmpButton.mItemPosY;

            f32 x_offset = 0.0f;
            f32 y_offset = 0.0f;

            if (field_0x4be[var_r4] != BUTTON_NONE_e) {
                x_offset = field_0x18c[field_0x4be[var_r4]];
            }
            x_offset += 2.0f;

            paneTrans(mpItem_c, mItemPosX + x_offset, mItemPosY + y_offset, 0xFF);
        }

        if (mItemScale != g_drawHIO.mEmpButton.mItemScale) {
            mItemScale = g_drawHIO.mEmpButton.mItemScale;

            mpItem_c->scale(mItemScale, mItemScale);
        }
    }
}

void dMeterButton_c::updateText(u32 i_flags) {
    if (dMeter2Info_isFloatingMessageWakuVisible()) {
        mpFkAll_c->paneTrans(g_drawHIO.mFloatingMessagePosX, 0.0f);
    } else {
        mpFkAll_c->paneTrans(g_drawHIO.mFloatingMessagePosX, g_drawHIO.mFloatingMessagePosY);
    }

    Vec root_center = mpFkRoot_c->getGlobalVtxCenter(false, 0);
    mpTmRoot_c->translate(root_center.x, root_center.y);

    if (dMeter2Info_getFloatingMessageTimer() > 0) {
        if (mMsgID != dMeter2Info_getFloatingMessageID()) {
            J2DTextBox* tbox = NULL;
            if (field_0x0ec[0] != NULL) {
                tbox = static_cast<J2DTextBox*>(field_0x0ec[0]->getPanePtr());
            }

            char buf1[STR_BUF_LEN];
            char buf2[STR_BUF_LEN];
            char buf3[STR_BUF_LEN];

            bool getString = dMsgObject_getString(dMeter2Info_getFloatingMessageID(),
                                     static_cast<J2DTextBox*>(mpTm_c[0]->getPanePtr()), tbox,
                                     mDoExt_getMesgFont(), mpOutFont, buf1, buf2, buf3, NULL);
            if (getString)
            {
                mMsgID = dMeter2Info_getFloatingMessageID();
                strcpy(static_cast<J2DTextBox*>(mpTm_c[0]->getPanePtr())->getStringPtr(), buf1);
                strcpy(static_cast<J2DTextBox*>(mpTm_c[1]->getPanePtr())->getStringPtr(), buf3);

                for (int i = 0; i < 2; i++) {
                    if (field_0x0ec[i] != NULL) {
                        strcpy(
                            static_cast<J2DTextBox*>(field_0x0ec[i]->getPanePtr())->getStringPtr(),
                            buf2);
                    }
                }
            }
        }

        s16 timer = dMeter2Info_decFloatingMessageTimer();
        f32 var_f31 = 1.0f;

        if (i_flags & 0x4000 || i_flags & 0x40 || i_flags & 0x100 || i_flags & 8 ||
            i_flags & 0x10 || i_flags & 0x20 || timer < 10)
        {
            if (field_0x4b6 > 0) {
                field_0x4b6--;
                var_f31 = field_0x4b6 / 10.0f;
            }

            if (field_0x4b6 == 0) {
                dMeter2Info_resetFloatingMessage();
            }
        } else if (field_0x4b6 < 10) {
            field_0x4b6++;
            var_f31 = field_0x4b6 / 10.0f;
        }

        mpFkAll_c->setAlphaRate(var_f31);

        for (int i = 0; i < 2; i++) {
            mpTm_c[i]->setAlphaRate(var_f31);

            if (field_0x0ec[i] != NULL) {
                field_0x0ec[i]->setAlphaRate(var_f31);
            }
        }
    } else {
        mMsgID = 0xFFFF;
        mpFkAll_c->setAlphaRate(0.0f);

        for (int i = 0; i < 2; i++) {
            if (mpTm_c[i]->getAlphaRate() != 0.0f) {
                mpTm_c[i]->setAlphaRate(0.0f);
            }

            if (field_0x0ec[i] != NULL && field_0x0ec[i]->getAlphaRate() != 0.0f) {
                field_0x0ec[i]->setAlphaRate(0.0f);
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonAAnimeMin() {
    if (mpButtonA->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_A_e] == 0) {
            mButtonTimers[BUTTON_A_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButtonA->setAlphaRate(0.0f);
        mpButtonA->alphaAnimeStart(0);

        if (mpButtonA->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_A_e);
            mPlayedButtonSound[BUTTON_A_e] = false;
        }
    }
}

bool dMeterButton_c::isFastSet(int param_0) {
    if ((dComIfGp_isDoSetFlag(1) && field_0x4be[param_0] == BUTTON_A_e) ||
        (dComIfGp_isASetFlag(1) && field_0x4be[param_0] == BUTTON_B_e) ||
        (dComIfGp_isRSetFlag(1) && field_0x4be[param_0] == BUTTON_R_e) ||
        (dComIfGp_isZSetFlag(1) && field_0x4be[param_0] == BUTTON_Z_e) ||
        (dComIfGp_is3DSetFlag(1) && field_0x4be[param_0] == BUTTON_3D_e) ||
        (dComIfGp_isCStickSetFlag(1) && field_0x4be[param_0] == BUTTON_C_e) ||
        (dComIfGp_isSButtonSetFlag(1) && field_0x4be[param_0] == BUTTON_S_e) ||
        (dComIfGp_isXSetFlag(1) && field_0x4be[param_0] == BUTTON_X_e) ||
        (dComIfGp_isYSetFlag(1) && field_0x4be[param_0] == BUTTON_Y_e) ||
        (dComIfGp_isNunSetFlag(1) && field_0x4be[param_0] == BUTTON_NUN_e) ||
        (dComIfGp_isRemoConSetFlag(1) && field_0x4be[param_0] == BUTTON_REMO_e) ||
        (dComIfGp_isRemoConSetFlag(1) && field_0x4be[param_0] == BUTTON_REMO2_e) ||
        ((dComIfGp_isASetFlag(1) || dComIfGp_isRemoConSetFlag(1)) &&
         field_0x4be[param_0] == BUTTON_AR_e) ||
        ((dComIfGp_isDoSetFlag(1) || dComIfGp_is3DSetFlag(1)) &&
         field_0x4be[param_0] == BUTTON_3DB_e) ||
        ((dComIfGp_isRemoConSetFlag(1) || dComIfGp_isNunSetFlag(1)) &&
         field_0x4be[param_0] == BUTTON_NURE_e) ||
        ((dComIfGp_isRemoConSetFlag(1) || dComIfGp_isNunSetFlag(1)) &&
         field_0x4be[param_0] == BUTTON_REEL_e) ||
        (dComIfGp_isNunSetFlag(1) && field_0x4be[param_0] == BUTTON_REEL2_e) ||
        ((dComIfGp_isDoSetFlag(1) || dComIfGp_isASetFlag(1)) &&
         field_0x4be[param_0] == BUTTON_AB_e) ||
        (dComIfGp_isNunSetFlag(1) && field_0x4be[param_0] == BUTTON_TATE_e) ||
        (dComIfGp_isNunZSetFlag(1) && field_0x4be[param_0] == BUTTON_NUNZ_e) ||
        (dComIfGp_isNunCSetFlag(1) && field_0x4be[param_0] == BUTTON_NUNC_e) ||
        (dComIfGp_isBottleSetFlag(1) && field_0x4be[param_0] == BUTTON_BIN_e))
    {
        return true;
    }

    return false;
}

void dMeterButton_c::setAlphaButtonAAnimeMax() {
    if (mpButtonA->getAlphaRate() != 1.0f) {
        if (dComIfGp_isDoSetFlag(1)) {
            mpButtonA->setAlphaRate(1.0f);
            mpButtonA->alphaAnimeStart(5);
        } else {
            mpButtonA->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonA, 5);
        }

        if (mpButtonA->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_A_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_A_e] = true;
        }
    }
}

void dMeterButton_c::setAlphaButtonBAnimeMin() {
    if (mpButtonB->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_B_e] == 0) {
            mButtonTimers[BUTTON_B_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButtonB->setAlphaRate(0.0f);
        mpButtonB->alphaAnimeStart(0);

        if (mpButtonB->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_B_e);
            mPlayedButtonSound[BUTTON_B_e] = false;
        }
    }
}

void dMeterButton_c::setAlphaButtonBAnimeMax() {
    if (mpButtonB->getAlphaRate() != 1.0f) {
        if (dComIfGp_isASetFlag(1)) {
            mpButtonB->setAlphaRate(1.0f);
            mpButtonB->alphaAnimeStart(5);
        } else {
            mpButtonB->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonB, 5);
        }

        if (mpButtonB->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_B_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_B_e] = true;
        }
    }
}

void dMeterButton_c::setAlphaButtonRAnimeMin() {
#if PLATFORM_GCN || PLATFORM_SHIELD
    if (mpButtonR->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_R_e] == 0) {
            mButtonTimers[BUTTON_R_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButtonR->setAlphaRate(0.0f);
        mpButtonR->alphaAnimeStart(0);

        if (mpButtonR->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_R_e);
            mPlayedButtonSound[BUTTON_R_e] = false;
        }
    }
#endif
}

void dMeterButton_c::setAlphaButtonRAnimeMax() {
#if PLATFORM_GCN || PLATFORM_SHIELD
    if (mpButtonR->getAlphaRate() != 1.0f) {
        if (dComIfGp_isRSetFlag(1)) {
            mpButtonR->setAlphaRate(1.0f);
            mpButtonR->alphaAnimeStart(5);
        } else {
            mpButtonR->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonR, 5);
        }

        if (mpButtonR->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_R_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_R_e] = true;
        }
    }
#endif
}

void dMeterButton_c::setAlphaButtonZAnimeMin() {
    if (mpButtonZ->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_Z_e] == 0) {
            mButtonTimers[BUTTON_Z_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButtonZ->setAlphaRate(0.0f);
        mpButtonZ->alphaAnimeStart(0);

        if (mpButtonZ->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_Z_e);
            mPlayedButtonSound[BUTTON_Z_e] = false;
        }
    }
}

void dMeterButton_c::setAlphaButtonZAnimeMax() {
    if (mpButtonZ->getAlphaRate() != 1.0f) {
        if (dComIfGp_isZSetFlag(1)) {
            mpButtonZ->setAlphaRate(1.0f);
            mpButtonZ->alphaAnimeStart(5);
        } else {
            mpButtonZ->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonZ, 5);
        }

        if (mpButtonZ->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_Z_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_Z_e] = true;
        }
    }
}

void dMeterButton_c::setAlphaButton3DAnimeMin() {
    if (mpButton3D->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_3D_e] == 0) {
            mButtonTimers[BUTTON_3D_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButton3D->setAlphaRate(0.0f);
        mpButton3D->alphaAnimeStart(0);
        mButtonTimers[BUTTON_3D_e] = 0;

        if (mpButton3D->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_3D_e);
            mPlayedButtonSound[BUTTON_3D_e] = false;
        }
    }
}

void dMeterButton_c::setAlphaButton3DAnimeMax() {
    if (mpButton3D->getAlphaRate() != 1.0f) {
        if (dComIfGp_is3DSetFlag(1)) {
            mpButton3D->setAlphaRate(1.0f);
            mpButton3D->alphaAnimeStart(5);
        } else {
            mpButton3D->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButton3D, 5);
        }

        if (mpButton3D->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_3D_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_3D_e] = true;
        }
    }
}

void dMeterButton_c::setAlphaButton3DVAnimeMin() {
#if PLATFORM_WII
    if (mButtonInfo->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_3D_e] == 0) {
            mButtonTimers[BUTTON_3D_e] = 30;
        }

        mButtonInfo->setAlphaRate(0.0f);
        mButtonInfo->mAlphaTimer = 0;
        mButtonTimers[BUTTON_3D_e] = 0;

        if (mButtonInfo->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_3D_e);
            mPlayedButtonSound[BUTTON_3D_e] = false;
        }
    }
#endif
}

void dMeterButton_c::setAlphaButton3DVAnimeMax() {
#if PLATFORM_WII
    if (mButtonInfo->getAlphaRate() != 1.0f) {
        if (dComIfGp_is3DSetFlag(1)) {
            mButtonInfo->setAlphaRate(1.0f);
            mButtonInfo->mAlphaTimer = 5;
        } else {
            mButtonInfo->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mButtonInfo, 5);
        }

        if (mButtonInfo->getAlphaRate() == 1.0f && mPlayedButtonSound[BUTTON_3D_e] == 0) {
            mPlayedButtonSound[BUTTON_3D_e] = true;
        }
    }
#endif
}

void dMeterButton_c::setAlphaButtonCAnimeMin() {
    if (mpButtonC->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_C_e] == 0) {
            mButtonTimers[BUTTON_C_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButtonC->setAlphaRate(0.0f);
        mpButtonC->alphaAnimeStart(0);

        if (mpButtonC->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_C_e);
            mPlayedButtonSound[BUTTON_C_e] = false;
        }
    }

    if (field_0x4b4 != 0) {
        field_0x4b4 = 0;
    }
}

void dMeterButton_c::setAlphaButtonCAnimeMax() {
    if (mpButtonC->getAlphaRate() != 1.0f) {
        if (dComIfGp_isCStickSetFlag(1)) {
            mpButtonC->setAlphaRate(1.0f);
            mpButtonC->alphaAnimeStart(5);
        } else {
            mpButtonC->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonC, 5);
        }

        if (mpButtonC->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_C_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_C_e] = true;
        }
    }

    s16 temp_r4 = g_drawHIO.field_0x422;
    s16 temp_r5 = g_drawHIO.field_0x424;

    f32 var_f31;
    if (field_0x4da[0] != 0 || field_0x4da[1] != 0 || field_0x4da[2] != 0 || field_0x4da[3] != 0) {
        field_0x4b4++;
        if (field_0x4b4 >= temp_r4 + temp_r5) {
            field_0x4b4 = 0;
        }

        if (field_0x4b4 < temp_r4) {
            var_f31 = (f32)field_0x4b4 / (f32)temp_r4;
        } else {
            var_f31 = (f32)((temp_r4 + temp_r5) - field_0x4b4) / (f32)temp_r5;
        }
    } else {
        field_0x4b4 = 0;
    }

    for (int i = 0; i < 4; i++) {
        if (field_0x0fc[i] != NULL) {
            if (field_0x4da[i] != 0) {
                field_0x0fc[i]->setAlphaRate(var_f31);
            } else {
                field_0x0fc[i]->setAlphaRate(0.0f);
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonSAnimeMin() {
    if (mpButtonS->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_S_e] == 0) {
            mButtonTimers[BUTTON_S_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButtonS->setAlphaRate(0.0f);
        mpButtonS->alphaAnimeStart(0);

        if (mpButtonS->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_S_e);
            mPlayedButtonSound[BUTTON_S_e] = false;
        }
    }
}

void dMeterButton_c::setAlphaButtonSAnimeMax() {
    if (mpButtonS->getAlphaRate() != 1.0f) {
        if (dComIfGp_isSButtonSetFlag(1)) {
            mpButtonS->setAlphaRate(1.0f);
            mpButtonS->alphaAnimeStart(5);
        } else {
            mpButtonS->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonS, 5);
        }

        if (mpButtonS->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_S_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_S_e] = true;
        }
    }
}

void dMeterButton_c::setAlphaButtonXAnimeMin() {
#if PLATFORM_GCN || PLATFORM_SHIELD
    if (mpButtonX->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_X_e] == 0) {
            mButtonTimers[BUTTON_X_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButtonX->setAlphaRate(0.0f);
        mpButtonX->alphaAnimeStart(0);

        if (mpButtonX->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_X_e);
            mPlayedButtonSound[BUTTON_X_e] = false;
        }
    }
#endif
}

void dMeterButton_c::setAlphaButtonXAnimeMax() {
#if PLATFORM_GCN || PLATFORM_SHIELD
    if (mpButtonX->getAlphaRate() != 1.0f) {
        if (dComIfGp_isXSetFlag(1)) {
            mpButtonX->setAlphaRate(1.0f);
            mpButtonX->alphaAnimeStart(5);
        } else {
            mpButtonX->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonX, 5);
        }

        if (mpButtonX->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_X_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_X_e] = true;
        }
    }
#endif
}

void dMeterButton_c::setAlphaButtonYAnimeMin() {
#if PLATFORM_GCN || PLATFORM_SHIELD
    if (mpButtonY->getAlphaRate() != 0.0f) {
        if (mButtonTimers[BUTTON_Y_e] == 0) {
            mButtonTimers[BUTTON_Y_e] = 30;
        }

        #if DEBUG
        dComIfGp_isDoSetFlag(1);
        #endif
        mpButtonY->setAlphaRate(0.0f);
        mpButtonY->alphaAnimeStart(0);

        if (mpButtonY->getAlphaRate() == 0.0f) {
            hide_button(BUTTON_Y_e);
            mPlayedButtonSound[BUTTON_Y_e] = false;
        }
    }
#endif
}

void dMeterButton_c::setAlphaButtonYAnimeMax() {
#if PLATFORM_GCN || PLATFORM_SHIELD
    if (mpButtonY->getAlphaRate() != 1.0f) {
        if (dComIfGp_isYSetFlag(1)) {
            mpButtonY->setAlphaRate(1.0f);
            mpButtonY->alphaAnimeStart(5);
        } else {
            mpButtonY->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonY, 5);
        }

        if (mpButtonY->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_Y_e]) {
            mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
            mPlayedButtonSound[BUTTON_Y_e] = true;
        }
    }
#endif
}

void dMeterButton_c::setAlphaButtonNunAnimeMin() {
    if (mpButtonNun != NULL) {
        if (mpButtonNun->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_NUN_e] == 0) {
                mButtonTimers[BUTTON_NUN_e] = 30;
            }

            #if DEBUG
            dComIfGp_isDoSetFlag(1);
            #endif
            mpButtonNun->setAlphaRate(0.0f);
            mpButtonNun->alphaAnimeStart(0);

            if (mpButtonNun->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_NUN_e);
                mPlayedButtonSound[BUTTON_NUN_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonNunAnimeMax() {
    if (mpButtonNun != NULL) {
        if (mpButtonNun->getAlphaRate() != 1.0f) {
            if (dComIfGp_isNunSetFlag(1)) {
                mpButtonNun->setAlphaRate(1.0f);
                mpButtonNun->alphaAnimeStart(5);
            } else {
                mpButtonNun->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonNun, 5);
            }

            if (mpButtonNun->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_NUN_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_NUN_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonRemoAnimeMin() {
    if (mpButtonRemo != NULL) {
        if (mpButtonRemo->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_REMO_e] == 0) {
                mButtonTimers[BUTTON_REMO_e] = 30;
            }

            #if DEBUG
            dComIfGp_isDoSetFlag(1);
            #endif
            mpButtonRemo->setAlphaRate(0.0f);
            mpButtonRemo->alphaAnimeStart(0);

            if (mpButtonRemo->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_REMO_e);
                mPlayedButtonSound[BUTTON_REMO_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonRemoAnimeMax() {
    if (mpButtonRemo != NULL) {
        if (mpButtonRemo->getAlphaRate() != 1.0f) {
            if (dComIfGp_isRemoConSetFlag(1)) {
                mpButtonRemo->setAlphaRate(1.0f);
                mpButtonRemo->alphaAnimeStart(5);
            } else {
                mpButtonRemo->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonRemo, 5);
            }

            if (mpButtonRemo->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_REMO_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_REMO_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonRemo2AnimeMin() {
    if (mpButtonRemo2 != NULL) {
        if (mpButtonRemo2->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_REMO2_e] == 0) {
                mButtonTimers[BUTTON_REMO2_e] = 30;
            }

            #if DEBUG
            dComIfGp_isDoSetFlag(1);
            #endif
            mpButtonRemo2->setAlphaRate(0.0f);
            mpButtonRemo2->alphaAnimeStart(0);

            if (mpButtonRemo2->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_REMO2_e);
                mPlayedButtonSound[BUTTON_REMO2_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonRemo2AnimeMax() {
    if (mpButtonRemo2 != NULL) {
        if (mpButtonRemo2->getAlphaRate() != 1.0f) {
            if (dComIfGp_isRemoConSetFlag(1)) {
                mpButtonRemo2->setAlphaRate(1.0f);
                mpButtonRemo2->alphaAnimeStart(5);
            } else {
                mpButtonRemo2->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonRemo2, 5);
            }

            if (mpButtonRemo2->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_REMO2_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_REMO2_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonARAnimeMin() {
    if (mpButtonAR != NULL) {
        if (mpButtonAR->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_AR_e] == 0) {
                mButtonTimers[BUTTON_AR_e] = 30;
            }

            #if DEBUG
            if (!dComIfGp_isDoSetFlag(1)) {
                dComIfGp_isRemoConSetFlag(1);
            }
            #endif
            mpButtonAR->setAlphaRate(0.0f);
            mpButtonAR->alphaAnimeStart(0);

            if (mpButtonAR->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_AR_e);
                mPlayedButtonSound[BUTTON_AR_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonARAnimeMax() {
    if (mpButtonAR != NULL) {
        if (mpButtonAR->getAlphaRate() != 1.0f) {
            if (dComIfGp_isASetFlag(1) || dComIfGp_isRemoConSetFlag(1)) {
                mpButtonAR->setAlphaRate(1.0f);
                mpButtonAR->alphaAnimeStart(5);
            } else {
                mpButtonAR->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonAR, 5);
            }

            if (mpButtonAR->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_AR_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_AR_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButton3DBAnimeMin() {
    if (mpButton3DB != NULL) {
        if (mpButton3DB->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_3DB_e] == 0) {
                mButtonTimers[BUTTON_3DB_e] = 30;
            }

            #if DEBUG
            if (!dComIfGp_isDoSetFlag(1)) {
                dComIfGp_is3DSetFlag(1);
            }
            #endif
            mpButton3DB->setAlphaRate(0.0f);
            mpButton3DB->alphaAnimeStart(0);

            if (mpButton3DB->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_3DB_e);
                mPlayedButtonSound[BUTTON_3DB_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButton3DBAnimeMax() {
    if (mpButton3DB != NULL) {
        if (mpButton3DB->getAlphaRate() != 1.0f) {
            if (dComIfGp_isDoSetFlag(1) || dComIfGp_is3DSetFlag(1)) {
                mpButton3DB->setAlphaRate(1.0f);
                mpButton3DB->alphaAnimeStart(5);
            } else {
                mpButton3DB->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButton3DB, 5);
            }

            if (mpButton3DB->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_3DB_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_3DB_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonNUREAnimeMin() {
    if (mpButtonNURE != NULL) {
        if (mpButtonNURE->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_NURE_e] == 0) {
                mButtonTimers[BUTTON_NURE_e] = 30;
            }

            #if DEBUG
            if (!dComIfGp_isDoSetFlag(1)) {
                dComIfGp_is3DSetFlag(1);
            }
            #endif
            mpButtonNURE->setAlphaRate(0.0f);
            mpButtonNURE->alphaAnimeStart(0);

            if (mpButtonNURE->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_NURE_e);
                mPlayedButtonSound[BUTTON_NURE_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonNUREAnimeMax() {
    if (mpButtonNURE != NULL) {
        if (mpButtonNURE->getAlphaRate() != 1.0f) {
            if (dComIfGp_isDoSetFlag(1) || dComIfGp_is3DSetFlag(1)) {
                mpButtonNURE->setAlphaRate(1.0f);
                mpButtonNURE->alphaAnimeStart(5);
            } else {
                mpButtonNURE->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonNURE, 5);
            }

            if (mpButtonNURE->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_NURE_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_NURE_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonReelAnimeMin() {
    if (mpButtonReel != NULL) {
        if (mpButtonReel->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_REEL_e] == 0) {
                mButtonTimers[BUTTON_REEL_e] = 30;
            }

            #if DEBUG
            if (!dComIfGp_isDoSetFlag(1)) {
                dComIfGp_is3DSetFlag(1);
            }
            #endif
            mpButtonReel->setAlphaRate(0.0f);
            mpButtonReel->alphaAnimeStart(0);

            if (mpButtonReel->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_REEL_e);
                mPlayedButtonSound[BUTTON_REEL_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonReelAnimeMax() {
    if (mpButtonReel != NULL) {
        if (mpButtonReel->getAlphaRate() != 1.0f) {
            if (dComIfGp_isDoSetFlag(1) || dComIfGp_is3DSetFlag(1)) {
                mpButtonReel->setAlphaRate(1.0f);
                mpButtonReel->alphaAnimeStart(5);
            } else {
                mpButtonReel->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonReel, 5);
            }

            if (mpButtonReel->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_REEL_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_REEL_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonReel2AnimeMin() {
    if (mpButtonReel2 != NULL) {
        if (mpButtonReel2->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_REEL2_e] == 0) {
                mButtonTimers[BUTTON_REEL2_e] = 30;
            }

            mpButtonReel2->setAlphaRate(0.0f);
            mpButtonReel2->alphaAnimeStart(0);

            if (mpButtonReel2->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_REEL2_e);
                mPlayedButtonSound[BUTTON_REEL2_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonReel2AnimeMax() {
    if (mpButtonReel2 != NULL) {
        if (mpButtonReel2->getAlphaRate() != 1.0f) {
            mpButtonReel2->setAlphaRate(1.0f);
            mpButtonReel2->alphaAnimeStart(5);

            if (mpButtonReel2->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_REEL2_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_REEL2_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonABAnimeMin() {
    if (mpButtonAB != NULL) {
        if (mpButtonAB->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_AB_e] == 0) {
                mButtonTimers[BUTTON_AB_e] = 30;
            }

            mpButtonAB->setAlphaRate(0.0f);
            mpButtonAB->alphaAnimeStart(0);

            if (mpButtonAB->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_AB_e);
                mPlayedButtonSound[BUTTON_AB_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonABAnimeMax() {
    if (mpButtonAB != NULL) {
        if (mpButtonAB->getAlphaRate() != 1.0f) {
            mpButtonAB->setAlphaRate(1.0f);
            mpButtonAB->alphaAnimeStart(5);

            if (mpButtonAB->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_AB_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_AB_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonTateAnimeMin() {
    if (mpButtonTate != NULL) {
        if (mpButtonTate->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_TATE_e] == 0) {
                mButtonTimers[BUTTON_TATE_e] = 30;
            }

            mpButtonTate->setAlphaRate(0.0f);
            mpButtonTate->alphaAnimeStart(0);

            if (mpButtonTate->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_TATE_e);
                mPlayedButtonSound[BUTTON_TATE_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonTateAnimeMax() {
    if (mpButtonTate != NULL) {
        if (mpButtonTate->getAlphaRate() != 1.0f) {
            mpButtonTate->setAlphaRate(1.0f);
            mpButtonTate->alphaAnimeStart(5);

            if (mpButtonTate->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_TATE_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_TATE_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonNunZAnimeMin() {
    if (mpButtonNunZ != NULL) {
        if (mpButtonNunZ->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_NUNZ_e] == 0) {
                mButtonTimers[BUTTON_NUNZ_e] = 30;
            }

            #if DEBUG
            if (!dComIfGp_isDoSetFlag(1)) {
                dComIfGp_is3DSetFlag(1);
            }
            #endif
            mpButtonNunZ->setAlphaRate(0.0f);
            mpButtonNunZ->alphaAnimeStart(0);

            if (mpButtonNunZ->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_NUNZ_e);
                mPlayedButtonSound[BUTTON_NUNZ_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonNunZAnimeMax() {
    if (mpButtonNunZ != NULL) {
        if (mpButtonNunZ->getAlphaRate() != 1.0f) {
            if (dComIfGp_isDoSetFlag(1) || dComIfGp_is3DSetFlag(1)) {
                mpButtonNunZ->setAlphaRate(1.0f);
                mpButtonNunZ->alphaAnimeStart(5);
            } else {
                mpButtonNunZ->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonNunZ, 5);
            }

            if (mpButtonNunZ->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_NUNZ_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_NUNZ_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonNunCAnimeMin() {
    if (mpButtonNunC != NULL) {
        if (mpButtonNunC->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_NUNC_e] == 0) {
                mButtonTimers[BUTTON_NUNC_e] = 30;
            }

            #if DEBUG
            if (!dComIfGp_isDoSetFlag(1)) {
                dComIfGp_is3DSetFlag(1);
            }
            #endif
            mpButtonNunC->setAlphaRate(0.0f);
            mpButtonNunC->alphaAnimeStart(0);

            if (mpButtonNunC->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_NUNC_e);
                mPlayedButtonSound[BUTTON_NUNC_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonNunCAnimeMax() {
    if (mpButtonNunC != NULL) {
        if (mpButtonNunC->getAlphaRate() != 1.0f) {
            if (dComIfGp_isDoSetFlag(1) || dComIfGp_is3DSetFlag(1)) {
                mpButtonNunC->setAlphaRate(1.0f);
                mpButtonNunC->alphaAnimeStart(5);
            } else {
                mpButtonNunC->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonNunC, 5);
            }

            if (mpButtonNunC->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_NUNC_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_NUNC_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonBinAnimeMin() {
    if (mpButtonBin != NULL) {
        if (mpButtonBin->getAlphaRate() != 0.0f) {
            if (mButtonTimers[BUTTON_BIN_e] == 0) {
                mButtonTimers[BUTTON_BIN_e] = 30;
            }

            #if DEBUG
            if (!dComIfGp_isDoSetFlag(1)) {
                dComIfGp_is3DSetFlag(1);
            }
            #endif
            mpButtonBin->setAlphaRate(0.0f);
            mpButtonBin->alphaAnimeStart(0);

            if (mpButtonBin->getAlphaRate() == 0.0f) {
                hide_button(BUTTON_BIN_e);
                mPlayedButtonSound[BUTTON_BIN_e] = false;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonBinAnimeMax() {
    if (mpButtonBin != NULL) {
        if (mpButtonBin->getAlphaRate() != 1.0f) {
            if (dComIfGp_isDoSetFlag(1) || dComIfGp_is3DSetFlag(1)) {
                mpButtonBin->setAlphaRate(1.0f);
                mpButtonBin->alphaAnimeStart(5);
            } else {
                mpButtonBin->setAlphaRate(1.0f);
                dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpButtonBin, 5);
            }

            if (mpButtonBin->getAlphaRate() == 1.0f && !mPlayedButtonSound[BUTTON_BIN_e]) {
                mDoAud_seStart(Z2SE_SY_HINT_BUTTON, NULL, 0, 0);
                mPlayedButtonSound[BUTTON_BIN_e] = true;
            }
        }
    }
}

void dMeterButton_c::setAlphaButtonOAnimeMin(int param_0) {
    if (mpText[param_0]->getAlphaRate() != 0.0f) {
        isFastSet(param_0);
        mpText[param_0]->setAlphaRate(0.0f);
        mpText[param_0]->alphaAnimeStart(0);
    }
}

void dMeterButton_c::setAlphaButtonOAnimeMax(int param_0) {
    if (mpText[param_0]->getAlphaRate() != 1.0f) {
        if (isFastSet(param_0)) {
            mpText[param_0]->setAlphaRate(1.0f);
            mpText[param_0]->alphaAnimeStart(5);
        } else {
            mpText[param_0]->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpText[param_0], 5);
        }
    }
}

void dMeterButton_c::setAlphaIconAnimeMin() {
    if (mpItem_c->getAlphaRate() != 0.0f) {
        if (field_0x4d9 != 0xFF) {
            isFastSet(field_0x4d9);
        }

        mpItem_c->setAlphaRate(0.0f);
        mpItem_c->alphaAnimeStart(0);
        field_0x4d9 = 0xFF;
    }
}

void dMeterButton_c::setAlphaIconAnimeMax() {
    if (mpItem_c->getAlphaRate() != 1.0f) {
        if (field_0x4d9 != 0xFF && isFastSet(field_0x4d9)) {
            mpItem_c->setAlphaRate(1.0f);
            mpItem_c->alphaAnimeStart(5);
        } else {
            mpItem_c->setAlphaRate(1.0f);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->setAlphaAnimeMax(mpItem_c, 5);
        }
    }
}

bool dMeterButton_c::isClose() {
#if PLATFORM_WII
    if (mpButtonA->getAlphaRate() == 0.0f && mpButtonB->getAlphaRate() == 0.0f &&
        mpButton3D->getAlphaRate() == 0.0f && mpButtonC->getAlphaRate() == 0.0f &&
        mpButtonS->getAlphaRate() == 0.0f && mpButtonNun->getAlphaRate() == 0.0f &&
        mpButtonRemo->getAlphaRate() == 0.0f && mpButtonRemo2->getAlphaRate() == 0.0f &&
        mpButtonAR->getAlphaRate() == 0.0f && mpButtonNURE->getAlphaRate() == 0.0f &&
        mpButtonReel->getAlphaRate() == 0.0f && mpButtonReel2->getAlphaRate() == 0.0f &&
        mpButtonAB->getAlphaRate() == 0.0f && mpButtonTate->getAlphaRate() == 0.0f &&
        mpButtonNunZ->getAlphaRate() == 0.0f && mpButtonNunC->getAlphaRate() == 0.0f &&
        mButtonInfo->getAlphaRate() == 0.0f && mpButtonBin->getAlphaRate() == 0.0f &&
        mpText[0]->getAlphaRate() == 0.0f && mpText[1]->getAlphaRate() == 0.0f &&
        mpItem_c->getAlphaRate() == 0.0f)
    {
        return true;
    }
#else
    if (mpButtonA->getAlphaRate() == 0.0f && mpButtonB->getAlphaRate() == 0.0f &&
        mpButtonR->getAlphaRate() == 0.0f && mpButtonZ->getAlphaRate() == 0.0f &&
        mpButton3D->getAlphaRate() == 0.0f && mpButtonC->getAlphaRate() == 0.0f &&
        mpButtonS->getAlphaRate() == 0.0f && mpButtonX->getAlphaRate() == 0.0f &&
        mpButtonY->getAlphaRate() == 0.0f && mpButton3DB->getAlphaRate() == 0.0f &&
        mpButtonBin->getAlphaRate() == 0.0f && mpText[0]->getAlphaRate() == 0.0f &&
        mpText[1]->getAlphaRate() == 0.0f && mpItem_c->getAlphaRate() == 0.0f)
    {
        return true;
    }
#endif

    return false;
}

void dMeterButton_c::setString(char* i_string, u8 i_button, u8 param_2, u8 param_3) {
    if (strcmp(mButtonText[param_2], i_string) != 0 || field_0x4be[param_2] != i_button) {
        if (param_2 == 0 && strcmp(mButtonText[1], i_string) == 0 &&
            ((i_button == BUTTON_A_e && field_0x4be[1] == BUTTON_A_e) ||
             (i_button == BUTTON_B_e && field_0x4be[1] == BUTTON_B_e) ||
             (i_button == BUTTON_R_e && field_0x4be[1] == BUTTON_R_e) ||
             (i_button == BUTTON_Z_e && field_0x4be[1] == BUTTON_Z_e) ||
             (i_button == BUTTON_3D_e && field_0x4be[1] == BUTTON_3D_e) ||
             (i_button == BUTTON_C_e && field_0x4be[1] == BUTTON_C_e) ||
             (i_button == BUTTON_S_e && field_0x4be[1] == BUTTON_S_e) ||
             (i_button == BUTTON_X_e && field_0x4be[1] == BUTTON_X_e) ||
             (i_button == BUTTON_Y_e && field_0x4be[1] == BUTTON_Y_e) ||
             (i_button == BUTTON_NUN_e && field_0x4be[1] == BUTTON_NUN_e) ||
             (i_button == BUTTON_REMO_e && field_0x4be[1] == BUTTON_REMO_e) ||
             (i_button == BUTTON_REMO2_e && field_0x4be[1] == BUTTON_REMO2_e) ||
             (i_button == BUTTON_AR_e && field_0x4be[1] == BUTTON_AR_e) ||
             (i_button == BUTTON_3DB_e && field_0x4be[1] == BUTTON_3DB_e) ||
             (i_button == BUTTON_NURE_e && field_0x4be[1] == BUTTON_NURE_e) ||
             (i_button == BUTTON_REEL_e && field_0x4be[1] == BUTTON_REEL_e) ||
             (i_button == BUTTON_REEL2_e && field_0x4be[1] == BUTTON_REEL2_e) ||
             (i_button == BUTTON_AB_e && field_0x4be[1] == BUTTON_AB_e) ||
             (i_button == BUTTON_TATE_e && field_0x4be[1] == BUTTON_TATE_e) ||
             (i_button == BUTTON_NUNZ_e && field_0x4be[1] == BUTTON_NUNZ_e) ||
             (i_button == BUTTON_NUNC_e && field_0x4be[1] == BUTTON_NUNC_e) ||
             (i_button == BUTTON_BIN_e && field_0x4be[1] == BUTTON_BIN_e)))
        {
            if (i_button == BUTTON_B_e && field_0x4be[1] == BUTTON_B_e) {
                return;
            }

            field_0x2fc[param_2] = field_0x2fc[1];
            field_0x4be[param_2] = field_0x4be[1];
            field_0x4b8[param_2] = field_0x4b8[1];
            field_0x4bc[param_2] = field_0x4bc[1];
            field_0x2e8[param_2] = field_0x2e8[1];
            field_0x29c[param_2] = field_0x29c[1];
            field_0x2e0[param_2] = field_0x2e0[1];
            hide_button(field_0x4be[1]);
        } else if (param_2 == 1 && (strcmp(mButtonText[0], i_string) == 0) &&
                   ((i_button == BUTTON_A_e && field_0x4be[0] == BUTTON_A_e) ||
                    (i_button == BUTTON_B_e && field_0x4be[0] == BUTTON_B_e) ||
                    (i_button == BUTTON_R_e && field_0x4be[0] == BUTTON_R_e) ||
                    (i_button == BUTTON_Z_e && field_0x4be[0] == BUTTON_Z_e) ||
                    (i_button == BUTTON_3D_e && field_0x4be[0] == BUTTON_3D_e) ||
                    (i_button == BUTTON_C_e && field_0x4be[0] == BUTTON_C_e) ||
                    (i_button == BUTTON_S_e && field_0x4be[0] == BUTTON_S_e) ||
                    (i_button == BUTTON_X_e && field_0x4be[0] == BUTTON_X_e) ||
                    (i_button == BUTTON_Y_e && field_0x4be[0] == BUTTON_Y_e) ||
                    (i_button == BUTTON_NUN_e && field_0x4be[0] == BUTTON_NUN_e) ||
                    (i_button == BUTTON_REMO_e && field_0x4be[0] == BUTTON_REMO_e) ||
                    (i_button == BUTTON_REMO2_e && field_0x4be[0] == BUTTON_REMO2_e) ||
                    (i_button == BUTTON_AR_e && field_0x4be[0] == BUTTON_AR_e) ||
                    (i_button == BUTTON_3DB_e && field_0x4be[0] == BUTTON_3DB_e) ||
                    (i_button == BUTTON_NURE_e && field_0x4be[0] == BUTTON_NURE_e) ||
                    (i_button == BUTTON_REEL_e && field_0x4be[0] == BUTTON_REEL_e) ||
                    (i_button == BUTTON_REEL2_e && field_0x4be[0] == BUTTON_REEL2_e) ||
                    (i_button == BUTTON_AB_e && field_0x4be[0] == BUTTON_AB_e) ||
                    (i_button == BUTTON_TATE_e && field_0x4be[0] == BUTTON_TATE_e) ||
                    (i_button == BUTTON_NUNZ_e && field_0x4be[0] == BUTTON_NUNZ_e) ||
                    (i_button == BUTTON_NUNC_e && field_0x4be[0] == BUTTON_NUNC_e) ||
                    (i_button == BUTTON_BIN_e && field_0x4be[0] == BUTTON_BIN_e)))
        {
            field_0x2fc[param_2] = field_0x2fc[0];
            field_0x4be[param_2] = field_0x4be[0];
            field_0x2e8[param_2] = field_0x2e8[0];
            field_0x29c[param_2] = field_0x29c[0];
            field_0x2e0[param_2] = field_0x2e0[0];
        } else {
            field_0x4be[param_2] = i_button;
            field_0x4b8[param_2] = 0;
            field_0x4bc[param_2] = 0;
            field_0x2e8[param_2] = 0.0f;

            if (strcmp(mButtonText[0], i_string) != 0 && strcmp(mButtonText[1], i_string) != 0) {
                field_0x4d7[param_2] = 1;
            }
        }

        f32 centerPosCalc = getCenterPosCalc(i_button, i_string, param_2);
        f32 temp_f2_2;

        if (param_2 == 0 && field_0x4be[1] == BUTTON_NONE_e) {
            field_0x2f4[param_2] = 0.0f;
        } else if (dComIfGp_is3DSetFlag(8)) {
            temp_f2_2 = 0.0f;
            field_0x2f4[0] = field_0x2f4[1] = 0.0f;
        } else {
            temp_f2_2 = g_drawHIO.mEmpButton.mDisplaySpace + (field_0x1e4[0] + field_0x1e4[1]);

            field_0x2f4[0] = (field_0x1e4[0] * 0.5f) - (temp_f2_2 * 0.5f);
            field_0x2f4[1] = (temp_f2_2 * 0.5f) - (field_0x1e4[1] * 0.5f);
        }
    }

    strcpy(mButtonText[param_2], i_string);

    if (param_2 == 0) {
        if (param_3 != 0) {
            field_0x4d9 = param_2;
        } else if (field_0x4d9 == 0) {
            field_0x4d9 = 0xFF;
        }

        for (int i = 0; i < 5; i++) {
            strcpy(mpTextBox[i]->getStringPtr(), i_string);
        }

#if PLATFORM_WII
        if (dComIfGp_is3DSetFlag(0x8) && i_button == BUTTON_3D_e) {
            for (int i = 0; i < ARRAY_SIZE(field_0x0ac); i++) {
                strcpy(field_0x0ac[i]->getStringPtr(), i_string);
            }
        }
#endif
        return;
    }

    if (param_3 != 0) {
        field_0x4d9 = param_2;
    } else if (field_0x4d9 == 1) {
        field_0x4d9 = 0xFF;
    }

    for (int i = 0; i < 5; i++) {
        strcpy(mpTextBox[5 + i]->getStringPtr(), i_string);
    }

#if PLATFORM_WII
    if (dComIfGp_is3DSetFlag(0x8) && i_button == BUTTON_3D_e) {
        for (int i = 0; i < ARRAY_SIZE(field_0x0ac); i++) {
            strcpy(field_0x0ac[i]->getStringPtr(), i_string);
        }
    }
#endif
}

void dMeterButton_c::hideAll() {
    mpButtonScreen->search('ROOT')->hide();

    if (field_0x00c != NULL) {
        field_0x00c->search('ROOT')->hide();
    }

    mpFkAll_c->hide();
    mpTmRoot_c->hide();
}

f32 dMeterButton_c::getCenterPosCalc(u8 i_button, char* i_string, int param_2) {
    f32 var_f0;
    f32 var_f3;
    f32 rv;
    f32 aspect = 1.0f;
#if WIDESCREEN_SUPPORT && !PLATFORM_SHIELD
    if (mDoGph_gInf_c::mWide != true) {
        aspect = 606.0f / 456.0f;
    }
#endif
    field_0x1e4[param_2] =
        (mTextScale[param_2] * dMeter2Info_getStringLength(mpTextBox[0], i_string)) * aspect;

    if (field_0x4d9 == param_2 && field_0x4be[param_2] == 1) {
        field_0x1e4[param_2] = mButtonBScale * mpButtonScreen->search(MULTI_CHAR('fishing'))->getWidth();
    }

    field_0x29c[param_2] = field_0x1e4[param_2];
    f32 fVar1 = (mTextScale[param_2] * mpTextBox[0]->getWidth());
    f32 temp_f31 = field_0x2e0[param_2] - (fVar1 * 0.5f);
    f32 temp_f30 = temp_f31 + field_0x1e4[param_2];

    // f32* temp_r30 = mButtonWidth;
    mButtonWidth[i_button] = 0.0f;

    switch (i_button) {
    case BUTTON_A_e:
        mButtonWidth[i_button] = mButtonAScale * mpButtonScreen->search(
#if PLATFORM_WII
            MULTI_CHAR('a_btn_c2')
#else
            MULTI_CHAR('a_btn1')
#endif
        )->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
    case BUTTON_B_e:
        mButtonWidth[i_button] = mButtonBScale * mpButtonScreen->search(
#if PLATFORM_WII
            MULTI_CHAR('b_btn_cp')
#else
            MULTI_CHAR('b_btn')
#endif
        )->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
#if PLATFORM_WII
    case BUTTON_Z_e:
        mButtonWidth[i_button] = 0.0f;
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
#else
    case BUTTON_R_e:
        mButtonWidth[i_button] = mButtonRScale * mpButtonScreen->search(MULTI_CHAR('r_btn_b'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
    case BUTTON_Z_e:
        // clang-format off
        {
            CPaneMgr pane;
            Mtx m, m2;
            Vec sp124 = pane.getGlobalVtx(mpButtonScreen->search('zbtn'), &m, 0, false, 0);
            Vec sp130 = pane.getGlobalVtx(mpButtonScreen->search('zbtn'), &m, 3, false, 0);
            Vec sp13C = pane.getGlobalVtx(mpButtonScreen->search(MULTI_CHAR('midona')), &m2, 0, false, 0);
            Vec sp148 = pane.getGlobalVtx(mpButtonScreen->search(MULTI_CHAR('midona')), &m2, 3, false, 0);

            f32 var_f2;
            if (sp124.x > sp13C.x) {
                var_f2 = sp13C.x;
            } else {
                var_f2 = sp124.x;
            }

            f32 var_f1;
            if (sp130.x > sp148.x) {
                var_f1 = sp130.x;
            } else {
                var_f1 = sp148.x;
            }

            mButtonWidth[i_button] = var_f1 - var_f2;
        }
        // clang-format on
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
#endif
    case BUTTON_3D_e:
        mButtonWidth[i_button] = mButton3DScale * mpButtonScreen->search(MULTI_CHAR('as_btn1'))->getWidth();

        if (dComIfGp_get3DDirection() & DIR_LEFT_e) {
            mButtonWidth[i_button] += mButton3DScale * mpButtonScreen->search(MULTI_CHAR('yaji04'))->getWidth();
        }

        if (dComIfGp_get3DDirection() & DIR_RIGHT_e) {
            mButtonWidth[i_button] += mButton3DScale * mpButtonScreen->search(MULTI_CHAR('yaji02'))->getWidth();
        }

        field_0x304[i_button] = 0.0f;
        break;
#if PLATFORM_WII
    case BUTTON_C_e:
        if (dComIfGp_getCStickDirection() == 8) {
            CPaneMgr pane;
            Mtx m, m2;
            Vec sp124 = pane.getGlobalVtx(mpButtonScreen->search('juji_btn'), &m, 0, false, 0);
            Vec sp130 = pane.getGlobalVtx(mpButtonScreen->search('juji_btn'), &m, 3, false, 0);
            Vec sp13C = pane.getGlobalVtx(mpButtonScreen->search(MULTI_CHAR('midona')), &m2, 0, false, 0);
            Vec sp148 = pane.getGlobalVtx(mpButtonScreen->search(MULTI_CHAR('midona')), &m2, 3, false, 0);

            f32 var_f2;
            if (sp124.x > sp13C.x) {
                var_f2 = sp13C.x;
            } else {
                var_f2 = sp124.x;
            }

            f32 var_f1;
            if (sp130.x > sp148.x) {
                var_f1 = sp130.x;
            } else {
                var_f1 = sp148.x;
            }

            field_0x244[BUTTON_C_e] = field_0x2a4;
            mButtonWidth[i_button] = var_f1 - var_f2;
        } else {
            field_0x244[BUTTON_C_e] = field_0x2a8;
            mButtonWidth[i_button] = mButtonCScale * mpButtonScreen->search('juji_btn')->getWidth();
        }
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
#else
    case BUTTON_C_e:
        if (dComIfGp_checkCameraAttentionStatus(0, 8)) {
            mButtonWidth[i_button] = mButtonCScale * mpButtonScreen->search(MULTI_CHAR('c_btn'))->getWidth();
            field_0x304[i_button] = 0.0f;
        } else {
            mButtonWidth[i_button] =
                mButtonCScale * (mpButtonScreen->search(MULTI_CHAR('yaji_rn'))->getWidth() +
                                 mpButtonScreen->search(MULTI_CHAR('c_btn'))->getWidth());
            field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        }
        break;
#endif
    case BUTTON_S_e:
        mButtonWidth[i_button] =
            mButtonSScale * mpButtonScreen->search(MULTI_CHAR('a_btn2'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
    case BUTTON_X_e:
        mButtonWidth[i_button] = mButtonXScale * mpButtonScreen->search(MULTI_CHAR('x_btn'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
    case BUTTON_Y_e:
        mButtonWidth[i_button] = mButtonYScale * mpButtonScreen->search(MULTI_CHAR('y_btn'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
#if PLATFORM_WII
    case BUTTON_NUN_e:
        mButtonWidth[i_button] = mButtonNunScale * mpButtonScreen->search(MULTI_CHAR('nstick_n'))->getWidth();
        field_0x304[i_button] = 0.0f;
        break;
    case BUTTON_REMO_e:
        mButtonWidth[i_button] = mButtonRemoScale * mpButtonScreen->search(MULTI_CHAR('rimoco_n'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
    case BUTTON_REMO2_e:
        mButtonWidth[i_button] = mButtonRemo2Scale * mpButtonScreen->search(MULTI_CHAR('action_n'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
    case BUTTON_AR_e:
        mButtonWidth[i_button] = mButtonARScale * mpButtonScreen->search(MULTI_CHAR('a_to_r_n'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
    case BUTTON_NURE_e:
        mButtonWidth[i_button] = mButtonNUREScale * mpButtonScreen->search(MULTI_CHAR('nu_re_n'))->getWidth();
        field_0x304[i_button] = 0.0f;
        break;
    case BUTTON_REEL_e:
        mButtonWidth[i_button] = mButtonReelScale * mpButtonScreen->search(MULTI_CHAR('n_kuru_n'))->getWidth();
        field_0x304[i_button] = 0.0f;
        break;
    case BUTTON_REEL2_e:
        mButtonWidth[i_button] = mButtonReel2Scale * mpButtonScreen->search(MULTI_CHAR('n_only_n'))->getWidth();
        field_0x304[i_button] = 0.0f;
        break;
    case BUTTON_AB_e:
        mButtonWidth[i_button] = mButtonReel2Scale * mpButtonScreen->search(MULTI_CHAR('AB_null'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
    case BUTTON_TATE_e:
        mButtonWidth[i_button] = mButtonTateScale * mpButtonScreen->search(MULTI_CHAR('tate_n'))->getWidth();
        field_0x304[i_button] = 0.0f;
        break;
    case BUTTON_NUNZ_e:
        mButtonWidth[i_button] = mButtonNunZScale * mpButtonScreen->search(MULTI_CHAR('z_btn_n'))->getWidth();
        field_0x304[i_button] = 0.0f;
        break;
    case BUTTON_NUNC_e:
        mButtonWidth[i_button] = mButtonNunCScale * mpButtonScreen->search(MULTI_CHAR('c_btn_n'))->getWidth();
        field_0x304[i_button] = 0.0f;
        break;
#else
    case BUTTON_3DB_e:
        mButtonWidth[i_button] = mButton3DBScale * mpButtonScreen->search(MULTI_CHAR('as_b_n'))->getWidth();
        field_0x304[i_button] = field_0x1e4[param_2] + mButtonWidth[i_button];
        break;
#endif
    case BUTTON_BIN_e:
        mButtonWidth[i_button] = field_0x5f0 * mpButtonScreen->search(MULTI_CHAR('bottl_n'))->getWidth();
        field_0x304[i_button] = 0.0f;
        break;
    }

    field_0x1e4[param_2] += mButtonWidth[i_button];

    var_f0 = (field_0x244[i_button] + field_0x304[i_button]) - (mButtonWidth[i_button] * 0.5f);
    var_f3 = (field_0x244[i_button] + field_0x304[i_button]) + (mButtonWidth[i_button] * 0.5f);
    f32 var_f29;
    f32 var_f28;

    if (param_2 == 0 && field_0x4be[1] == BUTTON_NONE_e) {
        var_f29 = temp_f31 + mButtonWidth[i_button];
        var_f28 = temp_f30 + mButtonWidth[i_button];
    } else {
        if (var_f0 < temp_f31) {
            var_f29 = var_f0;
        } else {
            var_f29 = temp_f31;
        }

        if (var_f3 > temp_f30) {
            var_f28 = var_f3;
        } else {
            var_f28 = temp_f30;
        }
    }

    rv = (var_f29 + var_f28) * 0.5f;
    return rv;
}

void dMeterButton_c::trans_button(int i_idx, f32 param_1) {
    u8 button = field_0x4be[i_idx];

    if (button == BUTTON_NONE_e) {
        return;
    }

    f32 buttonPosOffsetX = 0.0f;
    f32 offsetY = 0.0f;
    f32 screenCenter = (mDoGph_gInf_c::getMinXF() + mDoGph_gInf_c::getMaxX()) * 0.5f;
    f32 fVar4;
#if WIDESCREEN_SUPPORT && !PLATFORM_SHIELD
    if (mDoGph_gInf_c::mWide == true) {
        fVar4 = 10.0f;
    } else {
        fVar4 = 20.0f;
    }
#else
    fVar4 = 20.0f;
#endif
    u8 var_r26 = 1;
    field_0x18c[button] = screenCenter - field_0x244[button];
    buttonPosOffsetX = field_0x18c[button];
    field_0x304[button] = ((mButtonWidth[button] + field_0x29c[i_idx] + fVar4) * 0.5f) -
                          (mButtonWidth[button] * 0.5f);

    switch (button) {
    case BUTTON_A_e:
        paneTrans(mpButtonA,
                  field_0x304[BUTTON_A_e] + (param_1 + (mButtonAPosX + buttonPosOffsetX)),
                  mButtonAPosY, 0xFF);
        break;
    case BUTTON_B_e:
        paneTrans(mpButtonB,
                  field_0x304[BUTTON_B_e] + (param_1 + (mButtonBPosX + buttonPosOffsetX)),
                  mButtonBPosY, 0xFF);
        break;
#if PLATFORM_GCN || PLATFORM_SHIELD
    case BUTTON_R_e:
        paneTrans(mpButtonR,
                  field_0x304[BUTTON_R_e] + (param_1 + (mButtonRPosX + buttonPosOffsetX)),
                  mButtonRPosY, 0xFF);
        break;
    case BUTTON_Z_e:
        paneTrans(mpButtonZ,
                  field_0x304[BUTTON_Z_e] + (param_1 + (mButtonZPosX + buttonPosOffsetX)),
                  mButtonZPosY, 0xFF);
        break;
#endif
    case BUTTON_3D_e:
        var_r26 = 0;
        field_0x304[button] = -field_0x304[button];
        paneTrans(mpButton3D,
                  field_0x304[BUTTON_3D_e] + (param_1 + (mButton3DPosX + buttonPosOffsetX)),
                  mButton3DPosY, 0xFF);
        break;
    case BUTTON_C_e:
        paneTrans(mpButtonC,
                  field_0x304[BUTTON_C_e] + (param_1 + (mButtonCPosX + buttonPosOffsetX)),
                  mButtonCPosY, 0xFF);
        break;
    case BUTTON_S_e:
        paneTrans(mpButtonS,
                  field_0x304[BUTTON_S_e] + (param_1 + (mButtonSPosX + buttonPosOffsetX)),
                  mButtonSPosY, 0xFF);
        offsetY = mButtonSPosY;
        break;
#if PLATFORM_WII
    case BUTTON_NUN_e:
        if (mpButtonNun == NULL) {
            break;
        }
        field_0x304[button] = -field_0x304[button];
        var_r26 = 0;
        paneTrans(mpButtonNun,
                  field_0x304[BUTTON_NUN_e] + (param_1 + (mButtonNunPosX + buttonPosOffsetX)),
                  mButtonNunPosY, 0xFF);
        break;
    case BUTTON_REMO_e:
        if (mpButtonRemo == NULL) {
            break;
        }
        paneTrans(mpButtonRemo,
                  field_0x304[BUTTON_REMO_e] + (param_1 + (mButtonRemoPosX + buttonPosOffsetX)),
                  mButtonRemoPosY, 0xFF);
        break;
    case BUTTON_REMO2_e:
        if (mpButtonRemo2 == NULL) {
            break;
        }
        paneTrans(mpButtonRemo2,
                  field_0x304[BUTTON_REMO2_e] + (param_1 + (mButtonRemo2PosX + buttonPosOffsetX)),
                  mButtonRemo2PosY, 0xFF);
        break;
    case BUTTON_AR_e:
        if (mpButtonAR == NULL) {
            break;
        }
        paneTrans(mpButtonAR,
                  field_0x304[BUTTON_AR_e] + (param_1 + (mButtonARPosX + buttonPosOffsetX)),
                  mButtonARPosY, 0xFF);
        break;
    case BUTTON_NURE_e:
        if (mpButtonNURE == NULL) {
            break;
        }
        var_r26 = 2;
        paneTrans(mpButtonNURE,
                  (param_1 + (mButtonNUREPosX + buttonPosOffsetX)),
                  mButtonNUREPosY, 0xFF);
        break;
    case BUTTON_REEL_e:
        if (mpButtonReel == NULL) {
            break;
        }
        field_0x304[button] = -field_0x304[button];
        var_r26 = 0;
        paneTrans(mpButtonReel,
                  field_0x304[BUTTON_REEL_e] + (param_1 + (mButtonReelPosX + buttonPosOffsetX)),
                  mButtonReelPosY, 0xFF);
        break;
    case BUTTON_REEL2_e:
        if (mpButtonReel2 == NULL) {
            break;
        }
        field_0x304[button] = -field_0x304[button];
        var_r26 = 0;
        paneTrans(mpButtonReel2,
                  field_0x304[BUTTON_REEL2_e] + (param_1 + (mButtonReel2PosX + buttonPosOffsetX)),
                  mButtonReel2PosY, 0xFF);
        break;
    case BUTTON_AB_e:
        if (mpButtonAB == NULL) {
            break;
        }
        paneTrans(mpButtonAB,
                  field_0x304[BUTTON_AB_e] + (param_1 + (mButtonABPosX + buttonPosOffsetX)),
                  mButtonABPosY, 0xFF);
        break;
    case BUTTON_TATE_e:
        if (mpButtonTate == NULL) {
            break;
        }
        field_0x304[button] = -field_0x304[button];
        var_r26 = 0;
        paneTrans(mpButtonTate,
                  field_0x304[BUTTON_TATE_e] + (param_1 + (mButtonTatePosX + buttonPosOffsetX)),
                  mButtonTatePosY, 0xFF);
        break;
    case BUTTON_NUNZ_e:
        if (mpButtonNunZ == NULL) {
            break;
        }
        field_0x304[button] = -field_0x304[button];
        var_r26 = 0;
        paneTrans(mpButtonNunZ,
                  field_0x304[BUTTON_NUNZ_e] + (param_1 + (mButtonNunZPosX + buttonPosOffsetX)),
                  mButtonNunZPosY, 0xFF);
        break;
    case BUTTON_NUNC_e:
        if (mpButtonNunC == NULL) {
            break;
        }
        field_0x304[button] = -field_0x304[button];
        var_r26 = 0;
        paneTrans(mpButtonNunC,
                  field_0x304[BUTTON_NUNC_e] + (param_1 + (mButtonNunCPosX + buttonPosOffsetX)),
                  mButtonNunCPosY, 0xFF);
        break;
#else
    case BUTTON_X_e:
        paneTrans(mpButtonX,
                  field_0x304[BUTTON_X_e] + (param_1 + (mButtonXPosX + buttonPosOffsetX)),
                  mButtonXPosY, 0xFF);
        break;
    case BUTTON_Y_e:
        paneTrans(mpButtonY,
                  field_0x304[BUTTON_Y_e] + (param_1 + (mButtonYPosX + buttonPosOffsetX)),
                  mButtonYPosY, 0xFF);
        break;
    case BUTTON_3DB_e:
        if (mpButton3DB != NULL) {
            paneTrans(mpButton3DB,
                      field_0x304[BUTTON_3DB_e] + (param_1 + (mButton3DBPosX + buttonPosOffsetX)),
                      mButton3DBPosY, 0xFF);
        }
        break;
#endif
    case BUTTON_BIN_e:
        if (mpButtonBin != NULL) {
            paneTrans(mpButtonBin,
                      field_0x304[BUTTON_BIN_e] + (param_1 + (mButtonBinPosX + buttonPosOffsetX)),
                      mButtonBinPosY, 0xFF);
        }
        break;
    }

#if PLATFORM_WII
#endif

    buttonPosOffsetX -= 10.0f;

    f32 var_f30;
    switch (var_r26) {
    case 1:
        var_f30 = ((field_0x35c * 0.5f) + (field_0x360 + (screenCenter - field_0x2e0[i_idx]))) -
                  ((mButtonWidth[button] + field_0x29c[i_idx] + fVar4) * 0.5f);
        break;
    case 0:
#if WIDESCREEN_SUPPORT && !PLATFORM_SHIELD
        if (mDoGph_gInf_c::mWide == true) {
            var_f30 = mButtonWidth[button] +
                      (((field_0x35c * 0.5f) +
                          (field_0x360 + (screenCenter - field_0x2e0[i_idx]))) -
                              ((mButtonWidth[button] + field_0x29c[i_idx] + fVar4) * 0.5f)) -
                                  field_0x360;
        } else
#endif
        {
            var_f30 = mButtonWidth[button] +
                      (((field_0x35c * 0.5f) +
                          (field_0x360 + (screenCenter - field_0x2e0[i_idx]))) -
                              ((mButtonWidth[button] + field_0x29c[i_idx] + fVar4) * 0.5f));
        }
        break;
    case 2:
        var_f30 = ((field_0x35c * 0.5f) + (field_0x360 + (screenCenter - field_0x2e0[i_idx]))) -
                  (field_0x29c[i_idx] * 0.5f);
        break;
    }

    paneTrans(mpText[i_idx], param_1 + (mTextPosX[i_idx] + var_f30),
              (mTextPosY[i_idx] + offsetY) - 2.0f, i_idx);

    if (field_0x4d9 == i_idx) {
        paneTrans(mpItem_c, mItemPosX + param_1, mItemPosY, 0xFF);
    }
}

void dMeterButton_c::hide_button(u8 i_button) {
    if (field_0x4be[0] == i_button) {
        if (field_0x4be[1] != BUTTON_NONE_e && field_0x4be[1] != BUTTON_B_e) {
            field_0x4be[0] = field_0x4be[1];
            field_0x4be[1] = BUTTON_NONE_e;

            field_0x4b8[0] = field_0x4b8[1];
            field_0x4bc[0] = field_0x4bc[1];
            field_0x4b8[1] = 0;
            field_0x4bc[1] = 0;

            strcpy(mButtonText[1], "");
            mpText[0]->alphaAnimeStart(mpText[1]->getAlphaTimer());
            mpText[0]->setAlphaRate(mpText[1]->getAlphaRate());
            mpText[1]->alphaAnimeStart(0);
            mpText[1]->setAlphaRate(0.0f);
            mpItem_c->setAlphaRate(0.0f);
        } else {
            field_0x4be[0] = BUTTON_NONE_e;
            field_0x4b8[0] = 0;
            field_0x4bc[0] = 0;
            strcpy(mButtonText[0], "");
        }
    } else if (field_0x4be[1] == i_button) {
        field_0x4be[1] = BUTTON_NONE_e;
        field_0x4b8[1] = 0;
        field_0x4bc[1] = 0;
        field_0x2f4[0] = 0.0f;
        strcpy(mButtonText[1], "");
    }
}

void dMeterButton_c::pikariCheck() {
    for (int i = 0; i < 2; i++) {
        if (field_0x4d7[i] != 0) {
            if ((isButtonShowBit(BUTTON_A_e) && field_0x4be[i] == BUTTON_A_e) ||
                (isButtonShowBit(BUTTON_B_e) && field_0x4be[i] == BUTTON_B_e) ||
                (isButtonShowBit(BUTTON_R_e) && field_0x4be[i] == BUTTON_R_e) ||
                (isButtonShowBit(BUTTON_Z_e) && field_0x4be[i] == BUTTON_Z_e) ||
                (isButtonShowBit(BUTTON_3D_e) && field_0x4be[i] == BUTTON_3D_e) ||
                (isButtonShowBit(BUTTON_C_e) && field_0x4be[i] == BUTTON_C_e) ||
                (isButtonShowBit(BUTTON_S_e) && field_0x4be[i] == BUTTON_S_e) ||
                (isButtonShowBit(BUTTON_X_e) && field_0x4be[i] == BUTTON_X_e) ||
                (isButtonShowBit(BUTTON_Y_e) && field_0x4be[i] == BUTTON_Y_e) ||
                (isButtonShowBit(BUTTON_NUN_e) && field_0x4be[i] == BUTTON_NUN_e) ||
                (isButtonShowBit(BUTTON_REMO_e) && field_0x4be[i] == BUTTON_REMO_e) ||
                (isButtonShowBit(BUTTON_REMO2_e) && field_0x4be[i] == BUTTON_REMO2_e) ||
                (isButtonShowBit(BUTTON_AR_e) & 1 && field_0x4be[i] == BUTTON_AR_e) ||
                (isButtonShowBit(BUTTON_3DB_e) && field_0x4be[i] == BUTTON_3DB_e) ||
                (isButtonShowBit(BUTTON_NURE_e) && field_0x4be[i] == BUTTON_NURE_e) ||
                (isButtonShowBit(BUTTON_REEL_e) && field_0x4be[i] == BUTTON_REEL_e) ||
                (isButtonShowBit(BUTTON_REEL2_e) && field_0x4be[i] == BUTTON_REEL2_e) ||
                (isButtonShowBit(BUTTON_AR_e) && field_0x4be[i] == BUTTON_AR_e) ||
                (isButtonShowBit(BUTTON_NUNZ_e) && field_0x4be[i] == BUTTON_NUNZ_e) ||
                (isButtonShowBit(BUTTON_NUNC_e) && field_0x4be[i] == BUTTON_NUNC_e) ||
                (isButtonShowBit(BUTTON_BIN_e) && field_0x4be[i] == BUTTON_BIN_e))
            {
                if ((dComIfGp_isDoSetFlag(1) && field_0x4be[i] == BUTTON_A_e) ||
                    (dComIfGp_isASetFlag(1) && field_0x4be[i] == BUTTON_B_e) ||
                    (dComIfGp_isRSetFlag(1) && field_0x4be[i] == BUTTON_R_e) ||
                    (dComIfGp_isZSetFlag(1) && field_0x4be[i] == BUTTON_Z_e) ||
                    (dComIfGp_is3DSetFlag(1) && field_0x4be[i] == BUTTON_3D_e) ||
                    (dComIfGp_isCStickSetFlag(1) && field_0x4be[i] == BUTTON_C_e) ||
                    (dComIfGp_isSButtonSetFlag(1) && field_0x4be[i] == BUTTON_S_e) ||
                    (dComIfGp_isXSetFlag(1) && field_0x4be[i] == BUTTON_X_e) ||
                    (dComIfGp_isYSetFlag(1) && field_0x4be[i] == BUTTON_Y_e) ||
                    (dComIfGp_isNunSetFlag(1) && field_0x4be[i] == BUTTON_NUN_e) ||
                    (dComIfGp_isRemoConSetFlag(1) && field_0x4be[i] == BUTTON_REMO_e) ||
                    (dComIfGp_isRemoConSetFlag(1) && field_0x4be[i] == BUTTON_REMO2_e) ||
                    ((dComIfGp_isASetFlag(1) || dComIfGp_isRemoConSetFlag(1)) &&
                     field_0x4be[i] == BUTTON_REMO_e) ||
                    ((dComIfGp_isDoSetFlag(1) || dComIfGp_is3DSetFlag(1)) &&
                     field_0x4be[i] == BUTTON_3DB_e) ||
                    ((dComIfGp_isRemoConSetFlag(1) || dComIfGp_isNunSetFlag(1)) &&
                     field_0x4be[i] == BUTTON_NURE_e) ||
                    ((dComIfGp_isRemoConSetFlag(1) || dComIfGp_isNunSetFlag(1)) &&
                     field_0x4be[i] == BUTTON_REEL_e) ||
                    (dComIfGp_isNunSetFlag(1) && field_0x4be[i] == BUTTON_REEL2_e) ||
                    ((dComIfGp_isDoSetFlag(1) || dComIfGp_isASetFlag(1)) &&
                     field_0x4be[i] == BUTTON_AR_e) ||
                    (dComIfGp_isNunZSetFlag(1) && field_0x4be[i] == BUTTON_NUNZ_e) ||
                    (dComIfGp_isNunCSetFlag(1) && field_0x4be[i] == BUTTON_NUNC_e) ||
                    (dComIfGp_isBottleSetFlag(1) && field_0x4be[i] == BUTTON_BIN_e))
                {
                    field_0x2e8[i] = 18.0f - g_drawHIO.mEmpButton.mPikariFastAnimSpeed;
                } else {
                    field_0x2e8[i] = 18.0f - g_drawHIO.mEmpButton.mPikariAnimSpeed;
                }
            }

            field_0x4d7[i] = 0;
        }
    }
}

void dMeterButton_c::paneTrans(CPaneMgr* i_pane, f32 i_transX, f32 i_transY, u8 unused) {
    i_pane->paneTrans(i_transX, i_transY);
}
