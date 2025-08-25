/**
 * @file d_a_obj_pdtile.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_pdtile.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_bg_w.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"

/* 80CAACB8-80CAACE0 000078 0028+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_1, fopAc_ac_c* param_2, fopAc_ac_c* param_3) {
    static_cast<daObjPDtile_c*>(param_2)->rideActor(param_3);
}

/* 80CAC5BC-80CAC5C0 -00001 0004+00 0/1 0/0 0/0 .data            l_arcName4 */
static char* l_arcName4 = "P_Dtile";

/* 80CAC5C0-80CAC5C8 000024 0008+00 0/1 0/0 0/0 .data            l_dzbidx4 */
static u32 l_dzbidx4[2] = {
    9, 8,
};

/* 80CAC5C8-80CAC5D0 00002C 0008+00 0/1 0/0 0/0 .data            l_bmdidx4 */
static u32 l_bmdidx4[2] = {
    5, 4,
};

/* 80CAC5D0-80CAC600 000034 0030+00 0/1 0/0 0/0 .data            l_cull_box4 */
static Vec l_cull_box4[2][2] = {
    {{-50.0f, -100.0f, -50.0f}, {50.0f, 20.49f, 50.0f}},
    {{-160.0f, -460.0f, -160.0f}, {160.0f, 20.0f, 160.0f}},
};

/* 80CAC600-80CAC604 -00001 0004+00 0/1 0/0 0/0 .data            l_arcName7 */
static char* l_arcName7 = "P_Dtile00";

/* 80CAC604-80CAC608 000068 0004+00 0/1 0/0 0/0 .data            l_dzbidx7 */
static u32 l_dzbidx7 = 7;

/* 80CAC608-80CAC60C 00006C 0004+00 0/1 0/0 0/0 .data            l_bmdidx7 */
static u32 l_bmdidx7 = 4;

/* 80CAC60C-80CAC624 000070 0018+00 0/1 0/0 0/0 .data            l_cull_box7 */
static Vec l_cull_box7[2] = {
    {-200.0f, -700.0f, -200.0f},
    {200.0f, 50.0f, 200.0f},
};

/* 80CAC624-80CAC628 -00001 0004+00 0/1 0/0 0/0 .data            l_arcName9 */
static char* l_arcName9 = "Lv9_Dtile";

/* 80CAC628-80CAC62C 00008C 0004+00 0/1 0/0 0/0 .data            l_dzbidx9 */
static u32 l_dzbidx9 = 7;

/* 80CAC62C-80CAC630 000090 0004+00 0/1 0/0 0/0 .data            l_bmdidx9 */
static u32 l_bmdidx9 = 4;

/* 80CAC630-80CAC648 000094 0018+00 0/1 0/0 0/0 .data            l_cull_box9 */
static Vec l_cull_box9[2] = {
    {-200.0f, -650.0f, -200.0f},
    {200.0f, 50.0f, 200.0f},
};

/* 80CAACE0-80CAAE80 0000A0 01A0+00 1/1 0/0 0/0 .text            create1st__13daObjPDtile_cFv */
int daObjPDtile_c::create1st() {
    mType = (Type)getType();
    if (mType == TYPE_4) {
        mArcName = l_arcName9;
        mDzbId = l_dzbidx9;
        mBmdId = l_bmdidx9;
        mCullBox = l_cull_box9;
        field_0x7cc = 1500.0f;
    } else if (mType == TYPE_2) {
        mArcName = l_arcName7;
        mDzbId = l_dzbidx7;
        mBmdId = l_bmdidx7;
        mCullBox = l_cull_box7;
        field_0x7cc = 600.0f;
    } else if (mType == TYPE_0) {
        mArcName = l_arcName4;
        mDzbId = l_dzbidx4[0];
        mBmdId = l_bmdidx4[0];
        mCullBox = l_cull_box4[0];
        field_0x7cc = 450.0f;
    } else {
        mArcName = l_arcName4;
        mDzbId = l_dzbidx4[1];
        mBmdId = l_bmdidx4[1];
        mCullBox = l_cull_box4[1];
        field_0x7cc = 450.0f;
    }
    int rv = dComIfG_resLoad(this, mArcName);
    if (rv == cPhs_COMPLEATE_e) {
        setMtx();
        MoveBGActor_SetFunc setFunc;
        if (mType != TYPE_4) {
            setFunc = dBgS_MoveBGProc_TypicalRotY;
        } else {
            setFunc = NULL;
        }
        rv = MoveBGCreate(mArcName, mDzbId, setFunc, 0x12a0, &mBgMtx);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
        field_0x620.z = 0.0f;
        field_0x620.y = 0.0f;
        field_0x620.x = 0.0f;
    }
    return rv;
}

/* 80CAAE80-80CAAF90 000240 0110+00 3/3 0/0 0/0 .text            setMtx__13daObjPDtile_cFv */
void daObjPDtile_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x + field_0x620.x,
                           current.pos.y,
                           current.pos.z + field_0x620.z);
    mDoMtx_stack_c::XYZrotM(current.angle.x, current.angle.y, current.angle.z);
    MTXCopy(mDoMtx_stack_c::get(), field_0x5d8);
    if (mType != TYPE_2 && mType != TYPE_4) {
        MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    } else {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y,
                               current.pos.z);
        mDoMtx_stack_c::XYZrotM(0, current.angle.y, 0);
        if (mType == TYPE_2) {
            cXyz local_1c;
            local_1c.x = 1.01f;
            local_1c.y = 1.0f;
            local_1c.z = 1.01f;
            mDoMtx_stack_c::scaleM(local_1c);
        }
        MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    }
}

/* 80CAAF90-80CAB1F0 000350 0260+00 1/1 0/0 0/0 .text rideActor__13daObjPDtile_cFP10fopAc_ac_c */
void daObjPDtile_c::rideActor(fopAc_ac_c* param_1) {
    if (param_1 == daPy_getLinkPlayerActorClass() ||
        fopAcM_GetProfName(param_1) == PROC_B_GG)
    {
        if (mType == TYPE_0) {
            field_0x7b0 = 200;
        } else {
            field_0x7b0 = 100;
        }
        field_0x7b5 = 1;
        field_0x61c = 2.5f;
        if (field_0x610 == 0) {
            if (mType == TYPE_2) {
                field_0x610 = 5;
                mSoundObj.startSound(Z2SE_OBJ_FLR_FALL_START, 0, -1);
            } else if ((mType == TYPE_1) || (mType == TYPE_3)) {
                field_0x610 = 7;
                field_0x7d8 = 0;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_SINK_FLOOR_DW_TRG, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f,
                                 -1.0f, 0);
            } else {
                field_0x610 = 1;
                if (mType == TYPE_4) {
                    mSoundObj.startSound(Z2SE_OBJ_FLR_FALL_START, 0, -1);
                }
            }
        }
        if (param_1 == daPy_getLinkPlayerActorClass()) {
            if (daPy_getLinkPlayerActorClass()->checkBootsOrArmorHeavy()) {
                field_0x630 = 1;
            }
        }
    }
    if (!cM3d_IsZero(param_1->speed.x) || !cM3d_IsZero(param_1->speed.z)) {
        field_0x61c = 2.5f;
        if (mType == TYPE_0) {
            field_0x7b0 = 200;
        } else {
            field_0x7b0 = 100;
        }
    }
    if (field_0x614 == 0) {
        field_0x7ac = 0;
        if (mType == TYPE_0) {
            field_0x7b0 = 200;
        } else {
            field_0x7b0 = 100;
        }
        field_0x7b2 = cM_rndF(65535.0f);
        field_0x61c = 2.5f;
    }
    field_0x614 = 1;
    field_0x7b4 = 1;
}

/* 80CAB1F0-80CAB258 0005B0 0068+00 1/0 0/0 0/0 .text            CreateHeap__13daObjPDtile_cFv */
int daObjPDtile_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(mArcName, mBmdId);
    JUT_ASSERT(557, model_data != 0);
    mModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    return mModel != 0 ? TRUE : FALSE;
}

/* ############################################################################################## */
/* 80CAC648-80CAC68C 0000AC 0044+00 1/1 0/0 0/0 .data            cc_cyl_src */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x8020, 0x11}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        70.0f, // mRadius
        100.0f // mHeight
    } // mCyl
};

/* 80CAB258-80CAB374 000618 011C+00 1/0 0/0 0/0 .text            Create__13daObjPDtile_cFv */
int daObjPDtile_c::Create() {
    mModel->setBaseTRMtx(field_0x5d8);
    fopAcM_SetMtx(this, field_0x5d8);
    fopAcM_setCullSizeBox(this, 
        mCullBox[0].x, mCullBox[0].y, mCullBox[0].z,
        mCullBox[1].x, mCullBox[1].y, mCullBox[1].z);
    mpBgW->SetRideCallback(rideCallBack);
    field_0x610 = 0;
    field_0x614 = 0;
    field_0x618 = 0;
    field_0x61c = 0.0f;
    field_0x62c = 0.0f;
    field_0x630 = 0;
    mStts.Init(0xff, 0, this);
    mCyl.Set(cc_cyl_src);
    mCyl.SetStts(&mStts);
    field_0x7ac = 0;
    field_0x7b0 = 0;
    field_0x7b2 = cM_rndF(65535.0f);
    field_0x7b4 = 0;
    field_0x7d0 = 0;
    field_0x7d8 = 0;
    mSoundObj.init(&current.pos, 1);
    return 1;
}

/* 80CAB374-80CABED8 000734 0B64+00 1/0 0/0 0/0 .text            Execute__13daObjPDtile_cFPPA3_A4_f
 */
int daObjPDtile_c::Execute(Mtx** param_1) {
    if (mCyl.ChkTgHit()) {
        field_0x614 = 1;
        if (mType == TYPE_0) {
            field_0x7b0 = 200;
        } else {
            field_0x7b0 = 100;
        }
        field_0x61c = 2.5f;
        if (mType == TYPE_2 || mType == TYPE_4) {
            field_0x610 = 2;
            field_0x62c = 0.3f;
        }
    }
    if (field_0x610 == 1 || field_0x614 != 0 ||
        field_0x7b0 != 0)
    {
        field_0x620.x = cM_rndFX(field_0x61c);
        field_0x620.z = cM_rndFX(field_0x61c);
        field_0x7ac++;
        current.angle.x = field_0x7b0 * cM_ssin(field_0x7ac * 10000);
        current.angle.z = field_0x7b0 *
                      cM_ssin(field_0x7b2 + field_0x7ac * 10000);
        field_0x7b0 *= 0.95f;
        field_0x61c *= 0.95f;
        if (field_0x7b0 < 32) {
            field_0x7b0 = 0;
            field_0x7ac = 0;
        }
        if (field_0x610 == 1) {
            field_0x618++;
            if (field_0x618 >= 4.5f)
            {
                field_0x610 = 2;
                field_0x62c = 0.3f;
            }
        }
        if ((mType == TYPE_2 || mType == TYPE_4) && field_0x7b5 == 0 && field_0x610 != 5 &&
            field_0x610 != 6 && field_0x610 != 2 && field_0x610 != 4 && field_0x7b0 != 0)
        {
            mSoundObj.startLevelSound(Z2SE_OBJ_FLR_GURAGURA, 0, -1);
        }
    } else {
        field_0x620 *= -0.8f;
        field_0x7ac = 0;
    }
    bool bVar5 = false;
    cXyz local_f0(daPy_getLinkPlayerActorClass()->current.pos);
    f32 diffx = local_f0.x - current.pos.x;
    f32 diffz = local_f0.z - current.pos.z;
    if (diffx * diffx +
                diffz * diffz <
            14400.0f &&
        local_f0.y > current.pos.y && local_f0.y < current.pos.y + 450.0f)
    {
        bVar5 = true;
    }
    if (field_0x610 == 2 || field_0x610 == 5) {
        if (mType == TYPE_3 && field_0x7b5 == 0 && !bVar5) {
            field_0x7b8++;
            if (75 <= field_0x7b8) {
                field_0x610 = 3;
            }
        } else {
            current.pos.y -= field_0x62c;
            if ((field_0x610 == 5) &&
                (current.pos.y <= home.pos.y - 30.0f))
            {
                current.pos.y = home.pos.y - 30.0f;
                field_0x610 = 6;
                field_0x7d4 = 0;
                field_0x62c *= -0.8f;
            }
            if (current.pos.y <= home.pos.y - field_0x7cc) {
                current.pos.y = home.pos.y - field_0x7cc;
                if (mType == TYPE_3 && field_0x7b5 == 0) {
                    field_0x7b8++;
                    if (75 <= field_0x7b8) {
                        field_0x7b8 = 75;
                        if (!bVar5) {
                            field_0x610 = 3;
                        }
                    }
                } else {
                    field_0x7b8 = 0;
                }
                if (mType == TYPE_2 || mType == TYPE_4) {
                    field_0x610 = 4;
                    fopAcM_OnStatus(this, 0x4000);
                }
            } else {
                field_0x7b8 = 0;
                if (mType != TYPE_2 && mType != TYPE_4) {
                    Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_SINK_FLOOR_DW, &current.pos, 0, 0, 1.0f, 1.0f,
                                          -1.0f, -1.0f, 0);
                }
                if (field_0x610 == 5) {
                    if (field_0x630 != 0) {
                        field_0x62c += 5.0f;
                    } else {
                        field_0x62c += 3.0f;
                    }
                } else if (mType == 2 && field_0x630 != 0) {
                    field_0x62c += 1.0f;
                    if (field_0x62c >= 15.0f) {
                        field_0x62c = 15.0f;
                    }
                } else if (mType == 4) {
                    field_0x62c += 2.0f;
                    if (field_0x630 != 0) {
                        field_0x62c += 2.0f;
                    }
                    if (field_0x62c >= 30.0f) {
                        field_0x62c = 30.0f;
                    }
                } else {
                    field_0x62c += 0.03f;
                    if (field_0x630 != 0) {
                        field_0x62c += 0.03f;
                    }
                    if (field_0x62c >= 10.0f) {
                        field_0x62c = 10.0f;
                    }
                }
            }
        }
    }
    if (field_0x610 == 6) {
        current.pos.y -= field_0x62c;
        field_0x7d4++;
        if (field_0x62c > 0.0f &&
            current.pos.y <= home.pos.y - 30.0f)
        {
            if (field_0x630 == 0 && 30 < field_0x7d4) {
                field_0x610 = 2;
                field_0x62c = 0;
            } else if (field_0x630 != 0 && field_0x7d4 > 5) {
                field_0x610 = 2;
                field_0x62c = 0;
            } else {
                field_0x62c *= -0.2f;
            }
        } else {
            if (field_0x630 != 0) {
                field_0x62c += 5.0f;
            } else {
                field_0x62c += 3.0f;
            }
        }
    }
    if (field_0x610 == 3 && mType == TYPE_3) {
        if (field_0x7b5 == 1) {
            field_0x610 = 2;
            if (mType == TYPE_2 && field_0x630 != 0) {
                field_0x62c = 0.3f;
            } else if (mType == 4) {
                field_0x62c = 2.0f;
            } else {
                field_0x62c = 0.3f;
            }
        }
        current.pos.y += 1.5f;
        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_SINK_FLOOR_UP, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                              0);
        if (current.pos.y >= home.pos.y) {
            current.pos.y = home.pos.y;
            field_0x610 = 0;
        }
    }
    if (field_0x610 == 4) {
        if (mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }
        if (field_0x7d0 != 0) {
            field_0x62c *= 2.0f;
        }
        field_0x7d0 = 0;
        if (mType == TYPE_2 && field_0x630 != 0) {
            field_0x62c += 7.0f;
        } else if (mType == 4) {
            field_0x62c += 10.0f;
        } else {
            field_0x62c += 5.0f;
        }
        fopAc_ac_c* player = dComIfGp_getPlayer(0);
        if (field_0x62c >= -player->maxFallSpeed + 10.0f) {
            field_0x62c = -player->maxFallSpeed + 10.0f;
        }
        current.pos.y -= field_0x62c;
        if (mType != TYPE_2 && mType != TYPE_4) {
            Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_SINK_FLOOR_DW, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f,
                                  -1.0f, 0);
        }
        dBgS_ObjGndChk adStack_e4;
        adStack_e4.SetActorPid(base.id);
        adStack_e4.SetPos(&current.pos);
        dComIfG_Bgsp().GroundCross(&adStack_e4);
        if (home.pos.y - current.pos.y < -3000.0f) {
            fopAcM_delete(this);
        }
        field_0x7b0 = 0;
        field_0x614 = 0;
    }
    if (field_0x610 == 7) {
        if (field_0x7d8 < 5.0f) {
            current.pos.y = home.pos.y - (30.0f * field_0x7d8) / 5.0f;
        } else {
            current.pos.y = home.pos.y - 30.0f * (10.0f - field_0x7d8) / 5.0f;
        }
        field_0x7d8++;
        if (field_0x7d8 >= 10) {
            current.pos.y = home.pos.y;
            field_0x610 = 2;
            field_0x62c = 0.3f;
        }
    }
    if ((mType == TYPE_2 || mType == TYPE_4) &&
        (field_0x610 == 6 || field_0x610 == 5 || field_0x610 == 2))
    {
        // Fake match to load field_0x62c first.
        f32 xx = *(vf32*)&field_0x62c;
        u32 ff;
        ff = xx = (127 * xx) / 15;
        mSoundObj.startLevelSound(Z2SE_OBJ_FLR_FALLING, ff, -1);
    }
    setMtx();
    mModel->setBaseTRMtx(field_0x5d8);
    *param_1 = &mBgMtx;
    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);
    if (field_0x7b4 == 0) {
        field_0x614 = 0;
    }
    field_0x7b4 = 0;
    field_0x630 = 0;
    field_0x7b5 = 0;
    mSoundObj.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}

/* 80CABF50-80CAC094 001310 0144+00 1/0 0/0 0/0 .text            Draw__13daObjPDtile_cFv */
int daObjPDtile_c::Draw() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    if (field_0x610 == 4 && player != NULL) {
        cXyz local_48(player->current.pos);
        f32 diffZ = local_48.z - current.pos.z;
        f32 diffX = fabsf(local_48.x - current.pos.x);
        if (diffX < 200.0f && fabsf(diffZ) < 200.0f && local_48.y < current.pos.y)
        {
            current.pos.y = local_48.y - field_0x62c;
            field_0x7d0 = 1;
            setMtx();
        } else {
            field_0x7d0 = 0;
        }
    }
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80CAC094-80CAC0D8 001454 0044+00 1/0 0/0 0/0 .text            Delete__13daObjPDtile_cFv */
int daObjPDtile_c::Delete() {
    dComIfG_resDelete(this, mArcName);
    mSoundObj.deleteObject();
    return 1;
}

/* 80CAC0D8-80CAC1D4 001498 00FC+00 1/0 0/0 0/0 .text daObjPDtile_create1st__FP13daObjPDtile_c */
static int daObjPDtile_create1st(daObjPDtile_c* i_this) {
    fopAcM_SetupActor(i_this,daObjPDtile_c);
    return i_this->create1st();
}

/* 80CAC2C0-80CAC2E0 001680 0020+00 1/0 0/0 0/0 .text daObjPDtile_MoveBGDelete__FP13daObjPDtile_c
 */
static int daObjPDtile_MoveBGDelete(daObjPDtile_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CAC2E0-80CAC300 0016A0 0020+00 1/0 0/0 0/0 .text daObjPDtile_MoveBGExecute__FP13daObjPDtile_c
 */
static int daObjPDtile_MoveBGExecute(daObjPDtile_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CAC300-80CAC32C 0016C0 002C+00 1/0 0/0 0/0 .text daObjPDtile_MoveBGDraw__FP13daObjPDtile_c */
static int daObjPDtile_MoveBGDraw(daObjPDtile_c* i_this) {
    return i_this->MoveBGDraw();
}


/* 80CAC68C-80CAC6AC -00001 0020+00 1/0 0/0 0/0 .data            daObjPDtile_METHODS */
static actor_method_class daObjPDtile_METHODS = {
    (process_method_func)daObjPDtile_create1st,
    (process_method_func)daObjPDtile_MoveBGDelete,
    (process_method_func)daObjPDtile_MoveBGExecute,
    NULL,
    (process_method_func)daObjPDtile_MoveBGDraw,
};

/* 80CAC6AC-80CAC6DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_PDtile */
extern actor_process_profile_definition g_profile_Obj_PDtile = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_PDtile,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjPDtile_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  670,                    // mPriority
  &daObjPDtile_METHODS,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CAC580-80CAC580 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
