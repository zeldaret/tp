/**
 * d_a_alink.cpp
 * Player (Link) Actor
 */

#include "d/actor/d_a_alink.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/J3DGraphLoader/J3DAnmLoader.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_item.h"
#include "d/d_meter2_draw.h"
#include "d/d_pane_class.h"
#include "dol2asm.h"
#include "d/d_demo.h"
#include "d/actor/d_a_crod.h"
#include "d/actor/d_a_mg_rod.h"
#include "d/actor/d_a_midna.h"
#include "d/actor/d_a_mirror.h"
#include "d/actor/d_a_spinner.h"
#include "d/actor/d_a_tbox.h"
#include "d/actor/d_a_e_wb.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/actor/d_a_obj_movebox.h"
#include "d/actor/d_a_obj_sekizoa.h"
#include "d/actor/d_a_tag_Lv6Gate.h"
#include "d/actor/d_a_tag_kmsg.h"
#include "d/actor/d_a_tag_magne.h"
#include "d/actor/d_a_tag_mist.h"
#include "d/actor/d_a_tag_wljump.h"
#include "d/actor/d_a_npc_tk.h"
#include "d/actor/d_a_cow.h"
#include "d/actor/d_a_obj_crope.h"
#include "d/actor/d_a_obj_wchain.h"
#include "d/actor/d_a_tag_hstop.h"
#include "d/actor/d_a_scene_exit.h"
#include "d/actor/d_a_tag_mhint.h"
#include "d/actor/d_a_tag_mmsg.h"
#include "d/actor/d_a_tag_lantern.h"
#include "m_Do/m_Do_controller_pad.h"
#include "d/d_bomb.h"
#include "d/d_meter2_info.h"
#include "d/actor/d_a_kytag05.h"
#include "d/actor/d_a_b_mgn.h"
#include "d/actor/d_a_npc_bou.h"
#include "d/actor/d_a_npc_kolin.h"
#include "f_op/f_op_kankyo_mng.h"
#include "d/actor/d_a_tag_mstop.h"
#include "d/actor/d_a_tag_mwait.h"
#include "d/actor/d_a_canoe.h"

static fopAc_ac_c* daAlink_searchTagKandelaar(fopAc_ac_c* i_actor, void* i_data);

/* 8009D87C-8009D884 0981BC 0008+00 0/0 1/1 0/0 .text            getE3Zhint__9daAlink_cFv */
bool daAlink_c::getE3Zhint() {
    return false;
}

/* 80452C50-80452C58 001250 0005+03 2/2 0/0 0/0 .sdata2          l_wArcName */
static const char l_wArcName[8] = "Wmdl";

/* 80452C58-80452C60 001258 0005+03 2/2 0/0 0/0 .sdata2          l_bArcName */
static const char l_bArcName[8] = "Bmdl";

/* 80452C60-80452C68 001260 0005+03 2/2 0/0 0/0 .sdata2          l_kArcName */
static const char l_kArcName[8] = "Kmdl";

/* 80452C68-80452C70 001268 0005+03 2/2 0/0 0/0 .sdata2          l_zArcName */
static const char l_zArcName[8] = "Zmdl";

/* 80452C70-80452C78 001270 0005+03 3/3 0/0 0/0 .sdata2          l_mArcName */
static const char l_mArcName[8] = "Mmdl";

/* 80452C78-80452C80 001278 0006+02 1/1 0/0 0/0 .sdata2          l_hyShdArcName */
static const char l_hyShdArcName[8] = "HyShd";

/* 80452C80-80452C88 001280 0006+02 1/1 0/0 0/0 .sdata2          l_cWShdArcName */
static const char l_cWShdArcName[8] = "CWShd";

/* 80452C88-80452C90 001288 0006+02 1/1 0/0 0/0 .sdata2          l_sWShdArcName */
static const char l_sWShdArcName[8] = "SWShd";

/* 80452C90-80452C98 001290 0006+02 7/7 0/0 0/0 .sdata2          l_arcName */
static const char l_arcName[8] = "Alink";

/* 8009D884-8009D88C 0981C4 0008+00 0/0 0/0 13/13 .text            getAlinkArcName__9daAlink_cFv */
const char* daAlink_c::getAlinkArcName() {
    return l_arcName;
}

/* 8009D88C-8009D8B8 0981CC 002C+00 1/1 0/0 0/0 .text
 * daAlink_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daAlink_tgHitCallback(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    static_cast<daAlink_c*>(param_0)->tgHitCallback(param_2, param_1, param_3);
}

/* 8009D8B8-8009D8E4 0981F8 002C+00 1/1 0/0 0/0 .text
 * daAlink_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daAlink_coHitCallback(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    static_cast<daAlink_c*>(param_0)->coHitCallback(param_2, param_1);
}

/* 80450FC0-80450FC4 0004C0 0004+00 1/1 0/0 0/0 .sbss            it$36766 */
static int it;

/* 80450FC4-80450FC8 -00001 0004+00 1/1 0/0 0/0 .sbss            None */
/* 80450FC4 0001+00 data_80450FC4 None */
/* 80450FC5 0001+00 data_80450FC5 None */
/* 80450FC6 0001+00 data_80450FC6 None */
/* 80450FC7 0001+00 data_80450FC7 None */
static u8 struct_80450FC4[4];

/* 80450FC8-80450FCC -00001 0004+00 5/5 0/0 0/0 .sbss            None */
/* 80450FC8 0001+00 data_80450FC8 None */
bool daAlink_matAnm_c::m_eye_move_flg;

/* 80450FC9 0003+00 data_80450FC9 None */
u8 daAlink_matAnm_c::m_morf_frame;

// temporary for literal matching
bool daAlink_c::checkWindSpeedOnXZ() const {
    return field_0x35b8.abs2XZ() > 1.0f;
}
bool daPy_py_c::i_checkShieldGet() const {
    return dComIfGs_getSelectEquipShield() != NO_ITEM;
}
u32 daPy_py_c::getLastSceneMode() {
    return dComIfGs_getLastSceneMode() & 0xF;
}

/* 8009D8E4-8009D90C 098224 0028+00 2/2 0/0 0/0 .text            init__16daAlink_matAnm_cFv */
void daAlink_matAnm_c::init() {
    field_0xf4 = 0.0f;
    field_0xf8 = 0.0f;
    mNowOffsetX = 0.0f;
    mNowOffsetY = 0.0f;
    m_eye_move_flg = false;
    m_morf_frame = 0;
    mSetFlag = 0;
}

/* 8009D90C-8009DA60 09824C 0154+00 1/0 0/0 0/0 .text calc__16daAlink_matAnm_cCFP11J3DMaterial */
void daAlink_matAnm_c::calc(J3DMaterial* param_0) const {
    J3DMaterialAnm::calc(param_0);

    if (!daAlink_getAlinkActorClass()->checkStatusWindowDraw()) {
        for (u32 i = 0; i < 8; i++) {
            if (getTexMtxAnm(i).getAnmFlag()) {
                J3DTexMtxInfo* info = &param_0->getTexGenBlock()->getTexMtx(i)->getTexMtxInfo();
                if (m_morf_frame != 0) {
                    if (!mSetFlag) {
                        f32 var_f31 = 1.0f / (m_morf_frame + 1);
                        info->mSRT.mTranslationX = field_0xf4 * (1.0f - var_f31) + info->mSRT.mTranslationX * var_f31;
                        info->mSRT.mTranslationY = field_0xf8 * (1.0f - var_f31) + info->mSRT.mTranslationY * var_f31;
                        const_cast<int&>(mSetFlag) = 1;
                    } else {
                        info->mSRT.mTranslationX = field_0xf4;
                        info->mSRT.mTranslationY = field_0xf8;
                    }
                } else if (m_eye_move_flg) {
                    info->mSRT.mTranslationX = mNowOffsetX;
                    info->mSRT.mTranslationY = mNowOffsetY;
                }

                const_cast<f32&>(field_0xf4) = info->mSRT.mTranslationX;
                const_cast<f32&>(field_0xf8) = info->mSRT.mTranslationY;
            }
        }
    }
}

bool daAlink_c::checkStageName(const char* stage) {
    return strcmp(dComIfGp_getStartStageName(), stage) == 0;
}

/* 8009DA98-8009DB64 0983D8 00CC+00 1/1 0/0 0/0 .text
 * tgHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfP12dCcD_GObjInf */
void daAlink_c::tgHitCallback(fopAc_ac_c* i_atActor, dCcD_GObjInf* i_tgObjInf, dCcD_GObjInf* i_atObjInf) {
    if (i_atObjInf->ChkAtType(AT_TYPE_40000)) {
        field_0x369c = *i_atObjInf->GetAtVecP();
        for (int i = 0; i < 3; i++) {
            if (i_tgObjInf == &field_0x850[i]) {
                field_0x2fb8 |= (1 << i);
                field_0x36b4 = i_atActor->current.pos;
                return;
            }
        }
    } else {
        for (int i = 0; i < 3; i++) {
            if (i_tgObjInf == &field_0x850[i]) {
                field_0x2fb8 &= ~(1 << i);
                return;
            }
        }
    }
}

/* 8009DB64-8009DC6C 0984A4 0108+00 1/1 0/0 0/0 .text
 * coHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInf       */
void daAlink_c::coHitCallback(fopAc_ac_c* i_coHitActor, dCcD_GObjInf* i_coHitObj) {
    if (!checkWolf() && !checkNoResetFlg3(FLG3_UNK_20000000)) {
        if (((mProcID != PROC_CUT_HEAD && mProcID != PROC_CUT_DOWN) || i_coHitActor != field_0x280c.getActor()) && (!checkModeFlg(0x10040) || fopAcM_GetName(i_coHitActor) == PROC_CSTAF)) {
            field_0x372c += *field_0x814.GetCCMoveP();
        }

        field_0x30fe++;
    }

    if (fopAcM_GetName(i_coHitActor) == PROC_Obj_WaterFall) {
        if (checkWolf()) {
            if (i_coHitObj == &field_0x850[0]) {
                onEndResetFlg1(ERFLG1_UNK_800);
            } else if (i_coHitObj == &field_0x850[2]) {
                onEndResetFlg1(ERFLG1_UNK_1000);
            }
        } else {
            onEndResetFlg1(ERFLG1_UNK_800);
        }
    }
}

/* 8009DC6C-8009DD90 0985AC 0124+00 5/5 0/0 0/0 .text
 * setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz           */
void daAlink_c::setMatrixWorldAxisRot(MtxP param_0, s16 param_1, s16 param_2, s16 param_3,
                                      int param_4, cXyz const* param_5) {
    cXyz tmp;
    mDoMtx_multVecZero(param_0, &tmp);
    if (param_5 != NULL) {
        mDoMtx_stack_c::transS(*param_5);
    } else {
        mDoMtx_stack_c::transS(tmp);
    }

    concatMagneBootMtx();
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::ZXYrotM(param_1, param_2, param_3);
    mDoMtx_stack_c::YrotM(-shape_angle.y);
    concatMagneBootInvMtx();
    mDoMtx_stack_c::transM(-tmp.x, -tmp.y, -tmp.z);
    MTXConcat(mDoMtx_stack_c::get(), param_0, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), param_0);
    if (param_4 != 0) {
        MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    }
}

/* 8009DD90-8009E7B8 0986D0 0A28+00 2/2 0/0 0/0 .text            jointControll__9daAlink_cFi */
// NONMATCHING - stack issues
int daAlink_c::jointControll(int param_0) {
    csXyz sp18(0, 0, 0);
    int var_r27 = 0;

    mDoExt_MtxCalcOldFrame* temp = field_0x2060;
    J3DTransformInfo* temp_r3 = temp->getOldFrameTransInfo(param_0);
    J3DTransformInfo sp80 = *temp_r3;

    Quaternion sp50;
    Quaternion sp40;
    Quaternion sp30;
    Quaternion sp20 = *temp->getOldFrameQuaternion(param_0);

    csXyz sp10(0, 1, 2);

    if (checkWolf()) {
        if (param_0 == 0) {
            if (mProcID == PROC_TOOL_DEMO) {
                J3DTransformInfo* temp_r3_3 = field_0x2060->getOldFrameTransInfo(0);
                temp_r3_3->mTranslate.x = 0.0f;
                temp_r3_3->mTranslate.z = 0.0f;
            } else if (checkRootTransClearMode()) {
                J3DTransformInfo* temp_r28 = field_0x2060->getOldFrameTransInfo(0);

                if (checkRootTransZClearMode()) {
                    temp_r28->mTranslate.z = field_0x3588.z;
                }

                if (checkRootTransXClearMode()) {
                    temp_r28->mTranslate.x = field_0x3588.x;
                }

                if (checkRootTransYClearMode()) {
                    temp_r28->mTranslate.y = field_0x33b0;
                }
            }

            sp18.set(field_0x3080, 0, field_0x3082);
            sp10.set(2, 1, 0);
            sp80 = *field_0x2060->getOldFrameTransInfo(0);
            var_r27 |= 2;
        } else if (param_0 == 3) {
            sp18.set((field_0x30d6 + field_0x30b2), 0, field_0x30b0);
            sp10.set(2, 0, 1);
        } else if (param_0 == 0x1A) {
            sp18.set(0, -field_0x2fec, 0);
            sp10.set(2, 1, 0);
        } else if (param_0 >= 0x25 && param_0 <= 0x27) {
            sp18.set(0, field_0x3040[param_0 + 5], 0);
            sp10.set(2, 1, 0);
        } else if (param_0 == 2) {
            sp18.set(0, -field_0x2fec, 0);
            sp10.set(2, 1, 0);
        } else if (param_0 == 4) {
            sp18.set(field_0x3124, -field_0x3126, field_0x3128);
            sp10.set(2, 1, 0);
        }
    } else if (param_0 == 4) {
        sp18.set(field_0x3124, -field_0x3126, field_0x3128);
        sp10.set(2, 1, 0);
    } else if (param_0 == 0x10) {
        sp18.set(field_0x3088, 0, -field_0x308a);
        sp10.set(2, 0, 1);
    } else if (param_0 == 1) {
        s16 sp8;
        if (checkReinRide() && !checkHorseLieAnime() && mProcID != PROC_HORSE_RUN && mProcID != PROC_BOAR_RUN) {
            sp8 = (s16)(mBodyAngle.x - shape_angle.x);
        } else {
            sp8 = mBodyAngle.x;
        }

        if (sp8 || field_0x30c8 != 0 || mBodyAngle.z != 0) {
            setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(1), sp8, field_0x30c8, mBodyAngle.z, 1, NULL);
        }
    } else if (param_0 == 2) {
        if (field_0x30c8 != 0) {
            setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(2), 0, field_0x30c8, 0, 1, NULL);
        }
    } else if (param_0 == 0) {
        if (mProcID == PROC_TOOL_DEMO || mProcID == PROC_GANON_FINISH) {
            J3DTransformInfo* temp_r3_4 = field_0x2060->getOldFrameTransInfo(0);
            temp_r3_4->mTranslate.x = 0.0f;
            temp_r3_4->mTranslate.z = 0.0f;
        } else if (checkRootTransClearMode()) {
            J3DTransformInfo* temp_r28_2 = field_0x2060->getOldFrameTransInfo(0);
            if (checkRootTransZClearMode()) {
                temp_r28_2->mTranslate.z = field_0x3588.z;
            }
            if (checkRootTransXClearMode()) {
                temp_r28_2->mTranslate.x = field_0x3588.x;
            }
            if (checkRootTransYClearMode()) {
                temp_r28_2->mTranslate.y = field_0x33b0;
            }
        }

        sp18.set(field_0x3080, 0, field_0x3082);
        sp10.set(2, 0, 1);

        sp80 = *field_0x2060->getOldFrameTransInfo(0);
        var_r27 |= 2;
        if (field_0x2f99 == 0x60) {
            sp80.mTranslate.x -= field_0x384c->x;
            sp80.mTranslate.y -= field_0x384c->y;
            sp80.mTranslate.z -= field_0x384c->z;
        }
    } else if (param_0 == 0x1B) {
        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(param_0), mFootData1[0].field_0x6, 0, 0, 1, NULL);
    } else if (param_0 == 0x1D) {
        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(param_0), mFootData1[1].field_0x6, 0, 0, 1, NULL);
    } else if (param_0 == 5) {
        if (checkReinRide() && checkBowAnime()) {
            var_r27 = 1;
            sp50 = *field_0x2060->getOldFrameQuaternion(param_0);
            JMAEulerToQuat(0, 0, 5000, &sp40);
            mDoMtx_QuatConcat(&sp50, &sp40, &sp30);
        }
    } else if ((param_0 == 0xD || param_0 == 0xC) && (checkCanoeFishingWaitAnime() || checkUnderMove0BckNoArc(ANM_CANOE_FISH_LEFT) || checkUnderMove0BckNoArc(ANM_CANOE_FISH_RIGHT))) {
        if (param_0 == 0xD) {
            sp18 = field_0x3160;
        } else {
            sp18 = mFishingArm1Angle;
        }
    }

    if (sp18.x != 0 || sp18.y != 0 || sp18.z != 0) {
        var_r27 |= 1;
        if (sp18.y != 0) {
            sp50 = *field_0x2060->getOldFrameQuaternion(param_0);
    
            if (sp10.y == 0) {
                JMAEulerToQuat(sp18.y, 0, 0, &sp40);
            } else if (sp10.y == 1) {
                JMAEulerToQuat(0, sp18.y, 0, &sp40);
            } else {
                JMAEulerToQuat(0, 0, sp18.y, &sp40);
            }

            mDoMtx_QuatConcat(&sp50, &sp40, &sp30);
        } else {
            sp30 = *field_0x2060->getOldFrameQuaternion(param_0);
        }

        if (sp18.x != 0) {
            sp50 = sp30;

            if (sp10.x == 0) {
                JMAEulerToQuat(sp18.x, 0, 0, &sp40);
            } else if (sp10.x == 1) {
                JMAEulerToQuat(0, sp18.x, 0, &sp40);
            } else {
                JMAEulerToQuat(0, 0, sp18.x, &sp40);
            }

            mDoMtx_QuatConcat(&sp50, &sp40, &sp30);
        }

        if (sp18.z != 0) {
            sp50 = sp30;

            if (sp10.z == 0) {
                JMAEulerToQuat(sp18.z, 0, 0, &sp40);
            } else if (sp10.z == 1) {
                JMAEulerToQuat(0, sp18.z, 0, &sp40);
            } else {
                JMAEulerToQuat(0, 0, sp18.z, &sp40);
            }

            mDoMtx_QuatConcat(&sp50, &sp40, &sp30);
        }
    }

    if (var_r27 != 0) {
        MtxP temp_r26 = mpLinkModel->getAnmMtx(param_0);

        J3DTransformInfo* var_r25;
        if ((var_r27 & 2)) {
            var_r25 = &sp80;
        } else {
            var_r25 = field_0x2060->getOldFrameTransInfo(param_0);
        }

        Quaternion* spC;
        if ((var_r27 & 1)) {
            spC = &sp30;
        } else {
            spC = field_0x2060->getOldFrameQuaternion(param_0);
        }

        mDoMtx_stack_c::transS(sp80.mTranslate.x, sp80.mTranslate.y, sp80.mTranslate.z);
        mDoMtx_stack_c::quatM(&sp20);
        mDoMtx_stack_c::inverse();
        cMtx_concat(temp_r26, mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

        MTXQuat(temp_r26, (PSQuaternion*)spC);

        temp_r26[0][3] = var_r25->mTranslate.x;
        temp_r26[1][3] = var_r25->mTranslate.y;
        temp_r26[2][3] = var_r25->mTranslate.z;

        cMtx_concat(J3DSys::mCurrentMtx, temp_r26, J3DSys::mCurrentMtx);
        cMtx_copy(J3DSys::mCurrentMtx, temp_r26);
    }

    return 1;
}

/* 8009E7B8-8009E91C 0990F8 0164+00 1/1 0/0 0/0 .text            setUpperFront__9daAlink_cFv */
void daAlink_c::setUpperFront() {
    if ((checkReinRide() && checkUpperReadyThrowAnime()) || (checkBoardRide() && !checkNoUpperAnime())) {
        cMtx_copy(J3DSys::mCurrentMtx, mRootMtx);

        J3DAnmTransform* temp_r3 = getNowAnmPackUpper(UPPER_2);
        if (temp_r3 != NULL) {
            MtxP temp_r28 = mDoMtx_stack_c::get();

            J3DTransformInfo sp18;
            temp_r3->getTransform(0, &sp18);

            Quaternion sp8;
            JMAEulerToQuat(sp18.mRotation.x, sp18.mRotation.y, sp18.mRotation.z, &sp8);
            MTXQuat(temp_r28, (PSQuaternion*)&sp8);

            cMtx_concat(mpLinkModel->getBaseTRMtx(), temp_r28, J3DSys::mCurrentMtx);
            J3DSys::mCurrentMtx[0][3] = mRootMtx[0][3];
            J3DSys::mCurrentMtx[1][3] = mRootMtx[1][3];
            J3DSys::mCurrentMtx[2][3] = mRootMtx[2][3];
        } else {
            mDoMtx_stack_c::quatS(field_0x2060->getOldFrameQuaternion( 0));
            mDoMtx_stack_c::inverse();
            cMtx_concat(J3DSys::mCurrentMtx, mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        }

        field_0x2f90 = 1;
    }
}

/* 8009E91C-8009EB18 09925C 01FC+00 1/1 0/0 0/0 .text            changeBlendRate__9daAlink_cFi */
void daAlink_c::changeBlendRate(int param_0) {
    if (field_0x2fb6 == 5) {
        if (param_0 == 0) {
            mNowAnmPackUpper[2].setRatio(0.0f);
        } else if (param_0 == 5) {
            mNowAnmPackUpper[2].setRatio(field_0x3444);
        } else if (param_0 == 0xA) {
            mNowAnmPackUpper[2].setRatio(0.0f);
        } else if (param_0 == 0xF) {
            mNowAnmPackUpper[2].setRatio(field_0x3444);
        }
    } else if (field_0x2fb6 == 1) {
        if (param_0 == 0) {
            mNowAnmPackUpper[2].setRatio(0.0f);
        } else if (param_0 == 5) {
            mNowAnmPackUpper[2].setRatio(field_0x3444);
        }
    } else if (field_0x2fb6 == 2) {
        if (param_0 == 0xA) {
            mNowAnmPackUpper[2].setRatio(0.0f);
        } else if (param_0 == 0xF) {
            mNowAnmPackUpper[2].setRatio(field_0x3444);
        }
    } else if (field_0x2fb6 == 3) {
        if (param_0 == 4) {
            mNowAnmPackUpper[2].setRatio(0.0f);
        } else if (param_0 == 5) {
            mNowAnmPackUpper[2].setRatio(field_0x3444);
        }
    } else if (field_0x2fb6 == 7) {
        if (param_0 == 0) {
            mNowAnmPackUpper[2].setRatio(0.0f);
        } else if (param_0 == 4) {
            mNowAnmPackUpper[2].setRatio(1.0f);
        } else if (param_0 == 5) {
            mNowAnmPackUpper[2].setRatio(0.0f);
        } else if (param_0 == 0xF) {
            mNowAnmPackUpper[2].setRatio(1.0f);
        }
    } else if (field_0x2fb6 == 6) {
        if (param_0 == 4) {
            setDoubleAnimeBlendRatio(1.0f);
        } else if (param_0 == 5) {
            setDoubleAnimeBlendRatio(0.0f);
        }
    } else if (field_0x2fb6 == 8) {
        if (param_0 == 4) {
            mNowAnmPackUpper[2].setRatio(0.0f);
            mNowAnmPackUpper[1].setRatio(1.0f);
        } else if (param_0 == 5) {
            mNowAnmPackUpper[2].setRatio(field_0x3444);
            mNowAnmPackUpper[1].setRatio(0.0f);
        }
    } else if (field_0x2fb6 == 4) {
        if (param_0 == 0) {
            mNowAnmPackUpper[2].setRatio(0.0f);
        } else if (param_0 == 0xD) {
            mNowAnmPackUpper[2].setRatio(field_0x3444);
        }
    }
}

/* 8009EB18-8009EB58 099458 0040+00 1/1 0/0 0/0 .text            resetRootMtx__9daAlink_cFv */
void daAlink_c::resetRootMtx() {
    MTXCopy(mRootMtx, J3DSys::mCurrentMtx);
    field_0x2f90 = 0;
}

/* 8009EB58-8009EC28 099498 00D0+00 1/1 0/0 0/0 .text            modelCallBack__9daAlink_cFi */
bool daAlink_c::modelCallBack(int i_jointNo) {
    jointControll(i_jointNo);

    if (i_jointNo == 0) {
        setUpperFront();
    } else if (i_jointNo == 26) {
        if (!getSumouMode()) {
            setFootMatrix();
        }
        setArmMatrix();
    }

    if (field_0x2fb6 != 0 && (i_jointNo == 0 || i_jointNo == 5 || i_jointNo == 10 ||
                              i_jointNo == 4 || i_jointNo == 13 || i_jointNo == 15))
    {
        changeBlendRate(i_jointNo);
    }
    return true;
}

/* 8009EC28-8009ECA0 099568 0078+00 1/1 0/0 0/0 .text            daAlink_modelCallBack__FP8J3DJointi
 */
static int daAlink_modelCallBack(J3DJoint* p_joint, int param_1) {
    int jntNo = p_joint->getJntNo();
    daAlink_c* alink = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        alink->modelCallBack(jntNo);
    } else if (param_1 == 1 && alink->checkResetRootMtx(jntNo)) {
        alink->resetRootMtx();
    }

    return 1;
}

/* 80452CF8-80452D00 0012F8 0008+00 84/84 0/0 0/0 .sdata2          @6848 */
static const u8 lit_6848[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8009ECA0-8009EF38 0995E0 0298+00 1/1 0/0 0/0 .text            headModelCallBack__9daAlink_cFi */
int daAlink_c::headModelCallBack(int param_0) {
    if (mpDemoHDTmpBck == NULL || !mpDemoHDTmpBck->getBckAnm() || (checkEndResetFlg1(ERFLG1_UNK_400000) && param_0 < 6)) {
        if (checkNoResetFlg2(FLG2_STATUS_WINDOW_DRAW)) {
            mDoMtx_stack_c::copy(J3DSys::mCurrentMtx);
            mDoMtx_stack_c::ZrotM(-6500);
            mpLinkHatModel->setAnmMtx(param_0, mDoMtx_stack_c::get());
            cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        } else if (param_0 >= 6) {
            mDoMtx_stack_c::copy(J3DSys::mCurrentMtx);

            if (param_0 == 6) {
                mDoMtx_stack_c::XYZrotM(0, (field_0x3040[7] >> 1), (field_0x302c[7] >> 1));
            } else {
                int temp_r28 = param_0 - 7;
                if (temp_r28 == 0) {
                    mDoMtx_stack_c::XYZrotM(0, (field_0x3040[7] >> 1), ((field_0x302c[7] >> 1) + field_0x3066[0]));
                } else {
                    mDoMtx_stack_c::XYZrotM(0, field_0x3040[param_0], (field_0x302c[param_0] + field_0x3066[temp_r28]));
                }
            }

            if (mProcID == PROC_METAMORPHOSE) {
                mDoMtx_stack_c::scaleM(field_0x347c, 1.0f, 1.0f);
            }

            mpLinkHatModel->setAnmMtx(param_0, mDoMtx_stack_c::get());
            cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        } else {
            s16 temp_r27 = shape_angle.y;
            shape_angle.y = field_0x3062;
            setMatrixWorldAxisRot(mpLinkHatModel->getAnmMtx(param_0), field_0x302c[param_0], 0, field_0x3040[param_0], 0, NULL);
            shape_angle.y = temp_r27;
        }
    }

    if (checkZoraWearAbility() && param_0 == 6) {
        mDoMtx_stack_c::copy(J3DSys::mCurrentMtx);
        mDoMtx_stack_c::scaleM(1.2f, 1.0f, 1.0f);
        mpLinkHatModel->setAnmMtx(param_0, mDoMtx_stack_c::get());
        cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    }

    return 1;
}

/* 8009EF38-8009EF7C 099878 0044+00 1/1 0/0 0/0 .text daAlink_headModelCallBack__FP8J3DJointi */
static int daAlink_headModelCallBack(J3DJoint* i_joint, int param_1) {
    int joint_no = i_joint->getJntNo();
    daAlink_c* this_ = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        this_->headModelCallBack(joint_no);
    }

    return 1;
}

/* 8009EF7C-8009EFF0 0998BC 0074+00 1/1 0/0 0/0 .text            wolfModelCallBack__9daAlink_cFi */
int daAlink_c::wolfModelCallBack(int i_jointNo) {
    jointControll(i_jointNo);

    if (i_jointNo == 36) {
        setWolfFootMatrix();
    } else if (i_jointNo == 7 || i_jointNo == 2 || i_jointNo == 3) {
        changeWolfBlendRate(i_jointNo);
    }

    return 1;
}

/* 8009EFF0-8009F034 099930 0044+00 1/1 0/0 0/0 .text daAlink_wolfModelCallBack__FP8J3DJointi */
static int daAlink_wolfModelCallBack(J3DJoint* i_joint, int param_1) {
    int joint_no = i_joint->getJntNo();
    daAlink_c* this_ = (daAlink_c*)j3dSys.getModel()->getUserArea();

    if (param_1 == 0) {
        this_->wolfModelCallBack(joint_no);
    }

    return 1;
}

/* 80452F38-80452F3C -00001 0004+00 1/1 0/0 0/0 .sdata2          None */
static const u8 data_80452F38 = 1;

static const u8 data_80452F39 = 4;

/* 80452FA8-80452FB0 0015A8 0008+00 1/1 0/0 0/0 .sdata2          offsetAngle$25945 */
static const s16 offsetAngle[] = {
    0x0000,
    0x8000,
    0x4000,
    0xC000,
};

/* 80453020-80453024 001620 0004+00 1/1 0/0 0/0 .sdata2          grassWhistleIdx$33097 */
static const u16 grassWhistleIdx[2] = {
    3,
    3,
};

/* 80453094-8045309C 001694 0006+02 1/1 0/0 0/0 .sdata2          effName$40765 */
static const u16 effName_40765[] = {
    0x0407,
    0x0408,
    0x0409,
};

/* 8045309C-804530A4 00169C 0006+02 1/1 0/0 0/0 .sdata2          effName0$40950 */
static const u16 effName0[] = {
    0x867D,
    0x867E,
    0x867F,
};

/* 804530A4-804530AC 0016A4 0006+02 1/1 0/0 0/0 .sdata2          effName1$40951 */
static const u16 effName1[] = {
    0x8981,
    0x8982,
    0x8983,
};

/* 804530AC-804530B0 0016AC 0004+00 1/1 0/0 0/0 .sdata2          effNameNormal$41086 */
static const u16 effNameNormal[] = {
    0x0159,
    0x015A,
};

/* 804530B0-804530B8 0016B0 0008+00 1/1 0/0 0/0 .sdata2          effNameLight$41091 */
static const u16 effNameLight[] = {
    0x0A28, 0x0A29, 0x0A2A, 0x0A2B,
};

/* 804530B8-804530BC 0016B8 0004+00 1/1 0/0 0/0 .sdata2          effNameWater$41101 */
static const u16 effNameWater[] = {
    0x0C52,
    0x0C53,
};

/* 804530C0-804530C8 0016C0 0008+00 1/1 0/0 0/0 .sdata2          jointID$41285 */
static const u16 jointID[] = {
    0x0014, 0x0013, 0x0018, 0x0019,
};

/* 804530C8-804530D0 0016C8 0008+00 1/1 0/0 0/0 .sdata2          effName$41286 */
static const u16 effName_41286[] = {
    0x88E1, 0x88E2, 0x88E3, 0x88E4,
};

/* 804530D0-804530D8 0016D0 0006+02 1/1 0/0 0/0 .sdata2          effName$41312 */
static const u16 effName_41312[] = {
    0x0A58,
    0x0A59,
    0x0B9D,
};

/* 804530D8-804530E0 0016D8 0006+02 1/1 0/0 0/0 .sdata2          name0$41422 */
static const u16 name0[] = {
    0x02A3,
    0x83A2,
    0x884F,
};

/* 804530E0-804530E8 0016E0 0006+02 1/1 0/0 0/0 .sdata2          name1$41423 */
static const u16 name1[] = {
    0x02A3,
    0x83A3,
    0x8850,
};

/* 804530E8-804530F0 0016E8 0006+02 1/1 0/0 0/0 .sdata2          effID$41443 */
static const u16 effID[] = {
    0x0244,
    0x0245,
    0x0246,
};

/* 804530F0-804530F4 0016F0 0004+00 1/1 0/0 0/0 .sdata2          normalNameID$41521 */
static const u16 normalNameID[] = {
    0x8390,
    0x8391,
};

/* 804530F4-804530F8 0016F4 0004+00 1/1 0/0 0/0 .sdata2          ganonNameID$41522 */
static const u16 ganonNameID[] = {
    0x8C2A,
    0x8C2B,
};

/* 804530F8-80453100 0016F8 0008+00 1/1 0/0 0/0 .sdata2          effDataTable$41650 */
static const u16 effDataTable[] = {
    0x02A5, 0x02A6, 0x02A7, 0x02A8,
};

/* 80453104-8045310C 001704 0008+00 1/1 0/0 0/0 .sdata2          cutSplashName$41756 */
static const u16 cutSplashName[] = {
    0x01B8, 0x01B9, 0x01BA, 0x01BB,
};

/* 8045310C-80453110 00170C 0004+00 1/1 0/0 0/0 .sdata2          effName$42224 */
static const u16 effName_42224[] = {
    0x8818,
    0x8819,
};

/* 80453110-80453114 001710 0004+00 1/1 0/0 0/0 .sdata2          effName$42309 */
static const u16 effName_42309[] = {
    0x0814,
    0x0815,
};

/* 80453114-80453118 001714 0004+00 1/1 0/0 0/0 .sdata2          effName$42340 */
static const u16 effName_42340[] = {
    0x0816,
    0x0817,
};

/* 8045314C-80453150 00174C 0004+00 1/1 0/0 0/0 .sdata2          fFootJoint$44785 */
static const u16 fFootJoint[] = {
    0x0010,
    0x0015,
};

/* 80453150-80453154 001750 0004+00 1/1 0/0 0/0 .sdata2          bFootJoint$44786 */
static const u16 bFootJoint[] = {
    0x001C,
    0x0021,
};

/* 804531D8-804531E0 0017D8 0008+00 1/1 0/0 0/0 .sdata2          snowID$53110 */
static const u16 snowID[] = {
    0x884D, 0x884E, 0x8851, 0x8852,
};

/* 804531E0-804531E8 0017E0 0008+00 1/1 0/0 0/0 .sdata2          smokeID$53111 */
static const u16 smokeID[] = {
    0x83A0, 0x83A1, 0x83A4, 0x83A5,
};

/* 804531E8-804531F0 0017E8 0008+00 1/1 0/0 0/0 .sdata2          waterColor$53845 */
static const GXColorS10 waterColor = {0, 0, 0, 0};

/* 8009F034-8009FFF8 099974 0FC4+00 1/1 0/0 0/0 .text            setHatAngle__9daAlink_cFv */
void daAlink_c::setHatAngle() {
    if (field_0x2060->getOldFrameFlg()) {
        if (checkEndResetFlg0(ERFLG0_UNK_800000)) {
            for (int i = 0; i < 3; i++) {
                field_0x3054[i] = 0;
                field_0x305a[i] = 0;
            }
        }

        cXyz spB4;
        cXyz spA8;
        cXyz sp9C;
        cXyz sp90;

        int sp38;
        if (checkNoResetFlg2(daPy_FLG2(FLG2_UNK_100000 | FLG2_UNK_80000))) {
            sp38 = 0;
        } else {
            sp38 = 7;
        }

        mDoMtx_multVecZero(mpLinkHatModel->getAnmMtx(sp38), &spA8);

        BOOL sp34;
        if (!checkEndResetFlg1(ERFLG1_UNK_80000) && (field_0x35b8.abs2() > 100.0f || (checkEndResetFlg0(ERFLG0_UNK_8) && (field_0x3400 * field_0x3400) + (field_0x3404 * field_0x3404) > 100.0f))) {
            sp34 = 1;
        } else {
            sp34 = 0;
        }

        f32 sp40;
        dKyw_get_AllWind_vec(&spA8, &spB4, &sp40);

        if (checkModeFlg(0x40000) || checkEndResetFlg1(ERFLG1_UNK_80000)) {
            sp40 = 0.0f;
        } else if (sp34 != 0) {
            sp40 = 1.0f;
        }

        f32 var_f29;
        f32 var_f28;
        f32 temp_f26 = 25.0f * (sp40 * sp40);

        s16 sp14 = field_0x3060;
        s16 sp12 = field_0x3062;
        cXyz sp84 = eyePos - field_0x34e0;

        if (checkMagneBootsOn()) {
            mDoMtx_multVecSR(mMagneBootInvMtx, &sp84, &sp84);
            mDoMtx_multVecZero(mpLinkHatModel->getAnmMtx(0), &sp90);
            sp90 = field_0x34e0 - sp90;
            mDoMtx_multVecSR(mMagneBootInvMtx, &sp90, &sp90);
        }
    
        field_0x3062 = sp84.atan2sX_Z();

        s16 spE;
        if (mProcID == PROC_GOAT_CATCH) {
            mDoMtx_multVecSR(mpLinkModel->getAnmMtx(1), &cXyz::BaseY, &sp90);
            spE = sp90.atan2sX_Z();
        } else if (checkUnderMove0BckNoArc(ANM_HORSE_WAIT_B) && mUnderFrameCtrl[0].getFrame() < 77.0f) {
            mDoMtx_multVecSR(mpLinkModel->getAnmMtx(4), &cXyz::BaseX, &sp90);
            spE = sp90.atan2sX_Z();
        } else if (mProcID == PROC_HAND_PAT && mProcVar2.field_0x300c == 0) {
            spE = shape_angle.y + mBodyAngle.y + 0x8000;
        } else {
            spE = (shape_angle.y + mBodyAngle.y);
        }

        if (cLib_distanceAngleS(field_0x3062, spE) > 0x7000) {
            field_0x3060 = cM_atan2s(-sp84.y, -sp84.absXZ());
        } else {
            field_0x3060 = sp84.atan2sY_XZ();
        }

        f32 temp_f1 = sp84.absXZ();
        if (temp_f1 < 0.01f) {
            var_f29 = cM_ssin(spE);
            var_f28 = cM_scos(spE);
        } else {
            f32 temp_f31 = 1.0f / temp_f1;
            var_f29 = sp84.x * temp_f31;
            var_f28 = sp84.z * temp_f31;
        }

        s16 spC;
        s16 spA;
        if (checkEndResetFlg0(ERFLG0_UNK_800000)) {
            sp9C = cXyz::Zero;
            spC = 0;
            spA = 0;
        } else {
            spC = ((s16)(field_0x3060 - sp14) >> 1);
            if (abs(field_0x3060) > 0x3000 && abs(field_0x3060) < 0x5000) {
                spA = 0;
            } else {
                spA = ((s16)(field_0x3062 - sp12) >> 1);
            }

            sp9C = field_0x34c8 - spA8;
        }

        if (checkNoResetFlg0(FLG0_SWIM_UP)) {
            sp9C += spB4 * temp_f26;
        } else if (field_0x3798.abs2XZ(current.pos) < 1.0f) {
            sp9C.x = 0.0f;
            sp9C.z = 0.0f;
        }

        sp9C += field_0x35b8;

        if (checkEndResetFlg0(ERFLG0_UNK_8)) {
            sp9C.x += field_0x3400;
            sp9C.z += field_0x3404;
        }

        multVecMagneBootInvMtx(&sp9C);

        if (!checkNoResetFlg0(FLG0_SWIM_UP)) {
            sp9C.y -= 2.0f;
        } else if (checkMagneBootsOn() && getMoveBGActorName(mMagneLineChk, FALSE) == PROC_Obj_MagneArm) {
            sp9C.y += 5.0f;
        } else {
            sp9C.y -= 5.0f;
        }

        if (fabsf(sp9C.x) < 0.01f) {
            sp9C.x = (f32) 0.0f;
        }

        if (fabsf(sp9C.z) < 0.01f) {
            sp9C.z = (f32) 0.0f;
        }

        if (checkMagneBootsOn()) {
            mDoMtx_stack_c::copy(mMagneBootInvMtx);
            mDoMtx_stack_c::concat(mpLinkModel->getAnmMtx(2));
        } else {
            mDoMtx_stack_c::copy(mpLinkModel->getAnmMtx(2));
        }

        cXyz sp78;
        cXyz sp6C;
        mDoMtx_stack_c::multVecSR(&cXyz::BaseY, &sp78);
        mDoMtx_stack_c::multVec(&cXyz::BaseX, &sp6C);
    
        s16 sp18;
        s16 sp16;

        int sp30;
        if (sp6C.y < mDoMtx_stack_c::get()[1][3] && !checkUnderMove0BckNoArc(ANM_DIE)) {
            sp30 = cM_atan2s(-sp78.y, -sp78.absXZ());
        } else {
            sp30 = sp78.atan2sY_XZ();
        }
        sp30 -= 0x3800;

        s16* temp_r29 = &field_0x302c[7];
        s16* temp_r28 = &field_0x3040[7];
        s16* sp2C = &field_0x3054[0];
        s16* sp28 = &field_0x305a[0];
        *temp_r29 -= spC;
        *temp_r28 -= spA;
        sp18 = *temp_r29;
        sp16 = *temp_r28;

        f32 temp_f27 = (sp9C.z * var_f28) + (sp9C.x * var_f29);
        s16 sp10 = cM_atan2s(sp9C.y, -temp_f27);
        int sp24 = cLib_minMaxLimit<int>(sp10 - field_0x3060, -0x3800, 0x3800);

        sp10 = (sp24 + field_0x3060);
        if (sp10 < sp30) {
            sp10 = sp30;
        }

        sp24 = (sp10 - field_0x3060);
        if (checkEndResetFlg0(ERFLG0_UNK_800000)) {
            *temp_r29 = sp24;
        } else {
            cLib_addCalcAngleS2(temp_r29, sp24, 5, 0x400);
        }

        *temp_r29 = cLib_minMaxLimit<s16>((*temp_r29 + *sp2C), -0x3800, 0x3800);
        sp10 = cLib_minMaxLimit<s16>(cM_atan2s(-((sp9C.x * var_f28) - (sp9C.z * var_f29)), JMAFastSqrt((temp_f27 * temp_f27) + (sp9C.y * sp9C.y))), -0x2800, 0x2800);      
        
        if (checkEndResetFlg0(ERFLG0_UNK_800000)) {
            *temp_r28 = sp10;
        } else {
            cLib_addCalcAngleS2(temp_r28, sp10, 5, 0x400);
        }

        *temp_r28 = cLib_minMaxLimit<s16>((*temp_r28 + *sp28), -0x2800, 0x2800);

        *sp2C = 0.2f * (*temp_r29 - sp18);
        *sp28 = 0.2f * (*temp_r28 - sp16);

        sp10 = (*temp_r29 + field_0x3060);
        temp_r29++;
        temp_r28++;
        sp2C++;
        sp28++;

        for (int i = 1; i < 3; i++, temp_r29++, temp_r28++, sp2C++, sp28++) {
            temp_r29[0] -= ((s16)(temp_r29[-1] - sp18) >> 1);
            temp_r28[0] -= ((s16)(temp_r28[-1] - sp16) >> 1);
            sp18 = temp_r29[0];
            sp16 = temp_r28[0];

            if (checkEndResetFlg0(ERFLG0_UNK_800000)) {
                temp_r29[0] = 0;
                temp_r28[0] = 0;
            } else {
                cLib_addCalcAngleS2(temp_r29, 0, 5, 0x400);
                cLib_addCalcAngleS2(temp_r28, 0, 5, 0x400);
            }

            temp_r29[0] = cLib_minMaxLimit<s16>((temp_r29[0] + *sp2C), -0x1000, 0x1000);

            sp10 += temp_r29[0];
            if (sp10 < sp30) {
                temp_r29[0] += (sp30 - sp10);
                sp10 = sp30;
            }

            temp_r28[0] = cLib_minMaxLimit<s16>((temp_r28[0] + *sp28), -0x2000, 0x2000);

            *sp2C = 0.2f * (temp_r29[0] - sp18);
            *sp28 = 0.2f * (temp_r28[0] - sp16);
        }

        f32 var_f30 = (temp_f26 + (0.65f * field_0x34c8.abs(spA8))) / 30.0f;
        if (var_f30 > 1.0f) {
            var_f30 = 1.0f;
        }

        f32 var_f25 = var_f30;
        if (sp34 != 0 && !checkNoResetFlg2(daPy_FLG2(FLG2_UNK_100000 | FLG2_UNK_80000))) {
            var_f30 = 3.5f;
            var_f25 = 1.0f;
        }

        s16 sp8 = 1500.0f + (4060.0f * var_f30);
        field_0x3064 += sp8;

        for (int i = 0; i < 3; i++) {
            field_0x3066[i] = var_f25 * cM_deg2s(((i + 1) * 4)) * cM_scos((field_0x3064 - ((i + 3) * sp8)));
        }

        field_0x34c8 = spA8;
        setHairAngle(&sp9C, var_f29, var_f28);
    }
}

/* 8009FFF8-800A002C 09A938 0034+00 1/1 0/0 0/0 .text            calcHairAngle__9daAlink_cFPs */
void daAlink_c::calcHairAngle(s16* o_angle) {
    cLib_addCalcAngleS(o_angle, 0, 5, 400, 50);
}

/* 800A002C-800A0744 09A96C 0718+00 1/1 0/0 0/0 .text            setHairAngle__9daAlink_cFP4cXyzff
 */
void daAlink_c::setHairAngle(cXyz* param_0, f32 param_1, f32 param_2) {
    f32 var_f31 = param_0->abs();
    f32 temp_f27 = param_0->absXZ();

    if (var_f31 < 1.0f || temp_f27 < 1.0f) {
        calcHairAngle(&field_0x302c[1]);
        calcHairAngle(&field_0x3040[1]);
        calcHairAngle(&field_0x302c[2]);
        calcHairAngle(&field_0x3040[2]);
        calcHairAngle(&field_0x302c[3]);
        calcHairAngle(&field_0x3040[3]);
        calcHairAngle(&field_0x302c[4]);
        calcHairAngle(&field_0x3040[4]);
        calcHairAngle(&field_0x302c[5]);
        calcHairAngle(&field_0x3040[5]);
        field_0x3070 = -0x8000;
        field_0x3072 = -0x8000;
        field_0x3074 = -0x8000;
        field_0x3076 = -0x8000;
        return;
    }

    var_f31 *= 0.033333335f;
    if (var_f31 > 1.0f) {
        var_f31 = 1.0f;
    }

    var_f31 = 0.15f + (0.85f * var_f31);

    field_0x3070 += (s16)(1000.0f + cM_rndF(500.0f) + (var_f31 * (3000.0f + cM_rndF(1000.0f))));
    field_0x3072 += (s16)(1000.0f + cM_rndF(500.0f) + (var_f31 * (3000.0f + cM_rndF(1000.0f))));
    field_0x3074 += (s16)(1000.0f + cM_rndF(500.0f) + (var_f31 * (5000.0f + cM_rndF(1500.0f))));
    field_0x3076 += (s16)(1000.0f + cM_rndF(500.0f) + (var_f31 * (5000.0f + cM_rndF(1500.0f))));

    temp_f27 = 1.0f / temp_f27;
    param_0->x *= temp_f27;
    param_0->z *= temp_f27;

    f32 temp_f30 = (param_0->x * param_2) - (param_0->z * param_1);
    f32 temp_f29 = (param_0->x * param_1) + (param_0->z * param_2);
    f32 temp_f28 = var_f31 * (0.5f * (1.0f + cM_scos(field_0x3070)));
    f32 sp10 = var_f31 * (0.5f * (1.0f + cM_scos(field_0x3072)));
    f32 spC = var_f31 * (0.5f * (1.0f + cM_scos(field_0x3074)));
    f32 sp8 = var_f31 * (0.5f * (1.0f + cM_scos(field_0x3076)));

    if (temp_f30 > 0.0f) {
        field_0x3040[1] = 6000.0f * temp_f28 * temp_f30;
        field_0x3040[2] = 8000.0f * temp_f28 * temp_f30;
        field_0x3040[3] = 2000.0f * sp10 * temp_f30;
        field_0x3040[4] = 7000.0f * spC * temp_f30;
        field_0x3040[5] = 2500.0f * sp8 * temp_f30;
    } else {
        field_0x3040[1] = 10000.0f * temp_f28 * temp_f30;
        field_0x3040[2] = 2000.0f * temp_f28 * temp_f30;
        field_0x3040[3] = 8000.0f * sp10 * temp_f30;
        field_0x3040[4] = 2500.0f * spC * temp_f30;
        field_0x3040[5] = 7000.0f * sp8 * temp_f30;
    }

    if (temp_f29 > 0.0f) {
        field_0x302c[1] = -9000.0f * temp_f28 * temp_f29;
        field_0x302c[2] = -15000.0f * temp_f28 * temp_f29;
        field_0x302c[3] = -15000.0f * sp10 * temp_f29;
    } else {
        field_0x302c[1] = -1000.0f * temp_f28 * temp_f29;
        field_0x302c[2] = -5000.0f * temp_f28 * temp_f29;
        field_0x302c[3] = -5000.0f * sp10 * temp_f29;
    }

    field_0x302c[4] = -7000.0f * spC * temp_f29;
    field_0x302c[5] = -7000.0f * sp8 * temp_f29;
}

/* 800A0744-800A07D8 09B084 0094+00 0/0 1/1 0/0 .text setLookPosFromOut__9daAlink_cFP4cXyz */
void daAlink_c::setLookPosFromOut(cXyz* p_pos) {
    if (checkEndResetFlg0(ERFLG0_UNK_4)) {
        if (current.pos.abs2(mLookPosFromOut) < current.pos.abs2(*p_pos)) {
            return;
        }
    }

    onEndResetFlg0(ERFLG0_UNK_4);
    mLookPosFromOut = *p_pos;
}

/* 8038D658-8038D664 019CB8 000C+00 69/69 0/0 0/0 .rodata          @3757 */
SECTION_RODATA static u8 const lit_3757[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8038D658, &lit_3757);

#include "d/actor/d_a_alink_HIO_data.inc"

/* 800A07D8-800A0868 09B118 0090+00 2/2 0/0 0/0 .text checkAttentionPosAngle__9daAlink_cFP4cXyz */
bool daAlink_c::checkAttentionPosAngle(cXyz* param_0) {
    if (checkNoResetFlg1(FLG1_UNK_4)) {
        return true;
    }

    int tmp;
    if (checkModeFlg(MODE_RIDING) || checkEndResetFlg0(ERFLG0_UNK_400)) {
        tmp = daAlinkHIO_horse_c0::m.mSearchRangeAngle;
    } else {
        tmp = 0x6000;
    }

    s16 targetY = cLib_targetAngleY(&field_0x34e0, param_0);
    return cLib_distanceAngleS(targetY, field_0x2fe6) <= tmp;
}

/* 800A0868-800A093C 09B1A8 00D4+00 1/1 0/0 0/0 .text
 * checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz          */
bool daAlink_c::checkActorPosAngle(fopAc_ac_c* param_0, cXyz** param_1) {
    if (param_0 != NULL && checkAttentionPosAngle(&param_0->eyePos)) {
        s16 temp_r3 = fopAcM_GetName(param_0);

        if (checkEnemyGroup(param_0)) {
            field_0x3504 = param_0->eyePos;
            field_0x311c = 0x50;
        }

        if (temp_r3 == PROC_Obj_Wchain || (temp_r3 == PROC_B_MGN && !((daB_MGN_c*)param_0)->isDown())) {
            onNoResetFlg1(FLG1_MIDNA_HAIR_ATN_POS);
            mMidnaHairAtnPos = param_0->eyePos;
        }

        *param_1 = &param_0->eyePos;
        return 1;
    }

    return 0;
}

/* 800A093C-800A142C 09B27C 0AF0+00 1/1 0/0 0/0 .text            getNeckAimPos__9daAlink_cFP4cXyzPii
 */
cXyz* daAlink_c::getNeckAimPos(cXyz* param_0, int* param_1, int param_2) {
    fopAc_ac_c* var_r29 = NULL;
    s16 spA = field_0x311c;
    field_0x311c = 0;

    if (mProcID == PROC_GOAT_CATCH || mProcID == PROC_GET_ITEM || mProcID == PROC_WOLF_GANON_CATCH || mProcID == PROC_NOT_USE_ITEM || mProcID == PROC_DUNGEON_WARP_READY || mProcID == PROC_GOAT_STROKE) {
        var_r29 = field_0x280c.getActor();
    } else if (dComIfGp_checkPlayerStatus0(0, 0x10)) {
        if (mProcID != PROC_NOD && mProcID != PROC_EYE_AWAY && mProcID != PROC_GLARE) {
            var_r29 = fopAcM_getTalkEventPartner(this);
            if (var_r29 != NULL) {
                daMidna_c* sp18 = (daMidna_c*)getMidnaActor();
                s16 temp_r3_3 = fopAcM_GetName(var_r29);

                if (temp_r3_3 == PROC_MIDNA || temp_r3_3 == PROC_Tag_Wljump || (temp_r3_3 == PROC_Tag_Mhint && ((daTagMhint_c*)var_r29)->checkNoAttention()) || (temp_r3_3 == PROC_Tag_Mstop && ((daTagMstop_c*)var_r29)->checkNoAttention()) || (temp_r3_3 == PROC_Tag_Mwait && ((daTagMwait_c*)var_r29)->checkEndMessage())) {
                    *param_1 = 1;
                    return &sp18->eyePos;
                }

                if (temp_r3_3 == PROC_Tag_Mhint || temp_r3_3 == PROC_Tag_Mstop) {
                    sp18->setForceNeckAimPos(var_r29->eyePos);
                }
            }
        }
    } else if (mProcID == PROC_BOTTLE_OPEN && mEquipItem == FAIRY) {
        var_r29 = field_0x285c.getActor();
    } else if (mProcID == PROC_FISHING_CAST || mProcID == PROC_CANOE_FISHING_WAIT || mProcID == PROC_CANOE_FISHING_REEL || mProcID == PROC_CANOE_FISHING_GET) {
        var_r29 = mItemAcKeep.getActor();
    } else {
        var_r29 = mTargetedActor;
        if (checkEnemyGroup(mTargetedActor)) {
            fopAc_ac_c* sp14;
            if (mAttention->GetLockonList(1) != NULL) {
                sp14 = mAttention->GetLockonList(1)->getActor();
            } else {
                sp14 = NULL;
            }

            if (field_0x28fc != fpcM_ERROR_PROCESS_ID_e) {
                fopAc_ac_c* sp10 = fopAcM_SearchByID(field_0x28fc);
                field_0x30f8--;

                if (field_0x30f8 != 0 && sp10 != NULL && sp10 == sp14) {
                    var_r29 = sp10;
                } else {
                    field_0x30f8 = 0;
                    field_0x28fc = fpcM_ERROR_PROCESS_ID_e;
                }
            } else if (checkEnemyGroup(sp14)) {
                if (field_0x30f8 == -30) {
                    if (cM_rnd() < 0.02f) {
                        field_0x30f8 = 30.0f + cM_rndF(30.0f);
                        var_r29 = sp14;
                        field_0x28fc = fopAcM_GetID(sp14);
                    }
                } else {
                    field_0x30f8 -= 1;
                }
            }
        } else {
            field_0x28fc = -1;
            field_0x30f8 = 0;
        }
    }

    fopAc_ac_c* spC = mAttention->LockonTarget(0);
    if (var_r29 == NULL) {
        var_r29 = dCam_getBody()->GetForceLockOnActor();
    }

    cXyz* sp1C;
    if (checkActorPosAngle(var_r29, &sp1C)) {
        return sp1C;
    }

    if (!checkModeFlg(0x08000100) && param_2 != 0) {
        if (spA > 0) {
            field_0x311c = spA - 1;
        }
        return NULL;
    }

    if (!checkEventRun()) {
        if (dComIfGp_checkPlayerStatus1(0, 0x02010000)) {
            if (mSight.getDrawFlg()) {
                return mSight.getPosP();
            } else {
                return NULL;
            }
        }

        if (dComIfGp_att_getLookTarget() != NULL) {
            if (fopAcM_GetName(dComIfGp_att_getLookTarget()) == PROC_E_NZ) {
                *param_1 = 0;
            }
            return &dComIfGp_att_getLookTarget()->eyePos;
        }

        if ((checkActorPosAngle(field_0x27f0, &sp1C) && (field_0x27f0 == NULL || fopAcM_GetName(field_0x27f0) != PROC_Tag_WaraHowl)) || checkActorPosAngle(spC, &sp1C) || checkActorPosAngle(field_0x27f8, &sp1C)) {
            return sp1C;
        }

        if (checkActorPosAngle(mThrowBoomerangAcKeep.getActor(), &sp1C)) {
            return sp1C;
        }

        if (checkActorPosAngle(mCopyRodAcKeep.getActor(), &sp1C)) {
            return sp1C;
        }

        if (checkEndResetFlg0(ERFLG0_UNK_4) && checkAttentionPosAngle(&mLookPosFromOut)) {
            return &mLookPosFromOut;
        }

        if (checkActorPosAngle(field_0x285c.getActor(), &sp1C)) {
            return sp1C;
        }

        if (mProcID == PROC_SPINNER_WAIT && mNormalSpeed > 0.0f) {
            param_0->set(current.pos.x + (200.0f * cM_ssin(current.angle.y)), 100.0f + current.pos.y, current.pos.z + (200.0f * cM_scos(current.angle.y)));
            return param_0;
        }

        if (checkModeFlg(1) && checkCopyRodControllAnime() && checkActorPosAngle(getCopyRodControllActor(), &sp1C)) {
            return sp1C;
        }

        if (checkWindSpeedOnAngleAnime(1)) {
            if (checkWolf()) {
                s16 sp8 = ((field_0x30cc + 0x8000) - shape_angle.y);
                if (sp8 >= 0) {
                    sp8 = (shape_angle.y - 0x4000);
                } else {
                    sp8 = (shape_angle.y + 0x4000);
                }
    
                param_0->set(current.pos.x + (100.0f * cM_ssin(sp8)), current.pos.y, current.pos.z + (100.0f * cM_scos(sp8)));
            } else {
                param_0->set(current.pos.x - (100.0f * field_0x35b8.x), 150.0f + current.pos.y, current.pos.z - (100.0f * field_0x35b8.z));
            }

            if (checkAttentionPosAngle(param_0)) {
                if (checkWolf()) {
                    onEndResetFlg0(ERFLG0_UNK_4000);
                }
                *param_1 = 0;
                return param_0;
            }
        } else if (field_0x35c4.abs2XZ() > 1.0f && checkModeFlg(1)) {
            f32 var_f31;
            if (checkWolf() != NULL) {
                var_f31 = 80.0f;
            } else {
                var_f31 = 150.0f;
            }
    
            param_0->set(current.pos.x + (100.0f * field_0x35c4.x), current.pos.y + var_f31, current.pos.z + (100.0f * field_0x35c4.z));
            return param_0;
        } else if (field_0x3594.absXZ() > 1.0f && (checkUnderMove0BckNoArc(ANM_SWIM_WAIT) || checkUnderMove0BckNoArcWolf(WANM_SWIM_WAIT))) {
            param_0->set(current.pos.x + (100.0f * field_0x3594.x), 30.0f + current.pos.y, current.pos.z + (100.0f * field_0x3594.z));
            return param_0;
        } else if (checkWolf()) {
            if (mProcID == PROC_WOLF_WAIT_SLIP) {
                if (checkAttentionPosAngle(&field_0x37c8)) {
                    *param_1 = 0;
                    return &field_0x37c8;
                }
            } else if (mTargetedActor == NULL && ((checkAttentionState() && mProcID == PROC_WOLF_ATN_AC_MOVE) || mProcID == PROC_WOLF_ROLL_ATTACK_MOVE)) {
                param_0->set(current.pos.x + (1000.0f * cM_ssin(field_0x2fe4)), eyePos.y, current.pos.z + (1000.0f * cM_scos(field_0x2fe4)));

                if (checkAttentionPosAngle(param_0)) {
                    *param_1 = 0;
                    return param_0;
                }
            }
        }
    } else {
        u32 temp_r26 = mDemo.getDemoMode();
        spA = 0;

        if (checkEndResetFlg2(ERFLG2_PORTAL_WARP_MIDNA_ATN_KEEP) && daMidna_c::checkMidnaRealBody()) {
            if (checkWolf()) {
                *param_1 = 1;
                return &getMidnaActor()->eyePos;
            }
        }

        if (mProcID == PROC_LOOK_WAIT || temp_r26 == 0x17 || checkDemoMoveMode(temp_r26) || temp_r26 == 1 || temp_r26 == 4 || temp_r26 == 0x2C || temp_r26 == 0x2F || temp_r26 == 0x30 || temp_r26 == 0x31 || temp_r26 == 0xC) {
            spC = getDemoLookActor();
            if (spC != NULL && fopAcM_GetName(spC) == PROC_MIDNA) {
                return &spC->eyePos;
            }

            if (checkActorPosAngle(spC, &sp1C)) {
                return sp1C;
            }
        } else if (checkActorPosAngle(field_0x285c.getActor(), &sp1C)) {
            return sp1C;
        }
    }
    
    if (param_2 == 0) {
        return NULL;
    }

    if (spA > 0) {
        field_0x311c = spA - 1;
        if (checkAttentionPosAngle(&field_0x3504)) {
            return &field_0x3504;
        }
    }

    return NULL;
}

/* 800A142C-800A1AEC 09BD6C 06C0+00 1/1 0/0 0/0 .text getNeckAimAngle__9daAlink_cFP4cXyzPsPsPsPs
 */
// NONMATCHING - regalloc / one clib_minMaxLimit instance with issues
s16 daAlink_c::getNeckAimAngle(cXyz* param_0, s16* param_1, s16* param_2, s16* param_3,
                                    s16* param_4) {
    s16 sp16 = field_0x2fe6 + mBodyAngle.y;
    if ((mProcID == PROC_GOAT_CATCH && mProcVar1.field_0x300a == 0) || (mProcID == PROC_HAND_PAT && mProcVar2.field_0x300c == 0)) {
        sp16 += 0x8000;
    }

    cXyz sp28 = eyePos - field_0x34e0;
    multVecMagneBootInvMtx(&sp28);

    s16 sp14 = sp28.atan2sY_XZ();
    s16 sp12 = sp28.atan2sX_Z();
    s16 sp1A = sp14 - field_0x3124;
    s16 sp18 = (sp12 - sp16) - field_0x3126;

    if (checkModeFlg(0x08000100) && param_0 != NULL && !checkWolfHeadDamageAnime() && !checkDashDamageAnime()) {
        cXyz sp1C = *param_0 - field_0x34e0;
        multVecMagneBootInvMtx(&sp1C);

        s16 temp_r24 = sp1C.atan2sY_XZ();
        s16 var_r28 = sp1C.atan2sX_Z() - sp16;
        if (((var_r28 > 0x7000) && (field_0x3126 < 0)) || ((var_r28 < -0x7000) && (field_0x3126 > 0))) {
            var_r28 *= -1;
        }

        s16 sp10 = temp_r24;
        s16 spE = var_r28;
        if (sp1C.absXZ() < 30.0f) {
            var_r28 = field_0x3126;
        }

        if (checkWolf()) {
            if (mProcID == PROC_WOLF_TIRED_WAIT) {
                temp_r24 = cLib_minMaxLimit<s16>((s16)temp_r24, daAlinkHIO_wolf_c0::m.mMaxTiredNeckTurnUp, daAlinkHIO_wolf_c0::m.mMaxTiredNeckTurnDown);
                var_r28 = cLib_minMaxLimit<s16>((s16)var_r28, -daAlinkHIO_wolf_c0::m.mMaxTiredNeckTurnH, daAlinkHIO_wolf_c0::m.mMaxTiredNeckTurnH);
            } else {
                temp_r24 = cLib_minMaxLimit<s16>((s16)temp_r24, daAlinkHIO_wolf_c0::m.mMaxNeckTurnUp, daAlinkHIO_wolf_c0::m.mMaxNeckTurnDown);
                var_r28 = cLib_minMaxLimit<s16>((s16)var_r28, -daAlinkHIO_wolf_c0::m.mMaxNeckTurnH, daAlinkHIO_wolf_c0::m.mMaxNeckTurnH);
            }
        } else {
            temp_r24 = cLib_minMaxLimit<s16>((s16)temp_r24, daAlinkHIO_basic_c0::m.mNeckMaxUp, daAlinkHIO_basic_c0::m.mNeckMaxDown);

            s16 spC;
            s16 spA;
            if (dComIfGp_checkPlayerStatus1(0, 0x02000000)) {
                if (field_0x3020 == 1) {
                    spC = -0x1000;
                    spA = daAlinkHIO_basic_c0::m.mNeckMaxHorizontal;
                } else {
                    spC = -daAlinkHIO_basic_c0::m.mNeckMaxHorizontal;
                    spA = 0x1000;
                }
            } else {
                if (checkGrabAnimeCarry()) {
                    spC = 0;
                } else {
                    spC = -daAlinkHIO_basic_c0::m.mNeckMaxHorizontal;
                }
                spA = daAlinkHIO_basic_c0::m.mNeckMaxHorizontal;
            }

            var_r28 = cLib_minMaxLimit<s16>((s16)var_r28, spC, spA);
        }

        s16 temp_r23 = temp_r24 - sp1A;
        s16 sp8 = (var_r28 - sp18);

        if (checkModeFlg(0x100)) {
            if (checkWolf()) {
                *param_1 = 0.9f * temp_r23;
                *param_2 = 0.9f * sp8;
                *param_3 = temp_r23 - *param_1;
                *param_4 = sp8 - *param_2;
            } else if (field_0x2fc8 != 0) {
                *param_1 = 0.25f * temp_r23;
                *param_2 = 0.5f * sp8;
                *param_3 = temp_r23 - *param_1;
                *param_4 = *param_2;
            } else {
                *param_3 = (temp_r23 >> 1);
                *param_4 = (sp8 >> 1);
                *param_1 = *param_3;
                *param_2 = *param_4;
            }
        } else {
            *param_3 = temp_r23;
            *param_4 = sp8;
        }

        *param_3 += (s16)(sp10 - temp_r24);
        *param_4 += (s16)(spE - var_r28);

        if (checkEndResetFlg0(ERFLG0_UNK_4000)) {
            *param_3 = (sp10 + 0x8000) - sp14;
            *param_4 = (field_0x30cc + 0x8000) - sp12;
        }
    } else if (checkMagneBootsOn()) {
        *param_1 = 0;
        *param_2 = 0;
        field_0x30d4 = 0;
    } else {
        *param_1 = field_0x30a0;
        *param_2 = field_0x30a2;

        if (checkWolf() && *param_2 == 0) {
            *param_2 = field_0x2fec;
        }
        
    
        field_0x30d4 = *param_2;
    }

    return sp18;
}

/* 800A1AEC-800A1F90 09C42C 04A4+00 1/1 0/0 0/0 .text            setEyeMove__9daAlink_cFP4cXyzss */
void daAlink_c::setEyeMove(cXyz* param_0, s16 param_1, s16 param_2) {
    u32 temp_r28 = field_0x2fa7;
    f32 sp18 = field_0x3418;
    f32 sp14 = field_0x341c;

    field_0x2fa7 = 75.0f + cM_rndF(30.0f);
    field_0x3418 = 0.0f;
    field_0x341c = 0.0f;
    field_0x33f8 = 0.0f;

    f32 var_f31;
    f32 var_f30;
    if (param_0 != NULL) {
        var_f30 = 0.00012207031f * param_1;
        var_f31 = 0.00012207031f * param_2;
    } else if (0.0f != field_0x33f0 || 0.0f != field_0x33f4) {
        var_f30 = field_0x33f4;
        var_f31 = field_0x33f0;
        field_0x33f8 = field_0x33f0;
    } else if ((mProcID == PROC_MOVE || mProcID == PROC_WOLF_MOVE) && !checkNoResetFlg1(FLG1_UNK_1000000) && field_0x2fee != 0) {
        var_f30 = 0.0f;
        var_f31 = 0.00024414062f * -field_0x2fee;
        field_0x33f8 = var_f31;
    } else if (checkSwimNeckUpDown()) {
        if (field_0x3124 > 0) {
            var_f30 = 0.5f;
        } else if (field_0x3124 < 0) {
            var_f30 = -0.5f;
        } else {
            var_f30 = 0.0f;
        }
        var_f31 = 0.0f;
    } else if (!checkEventRun() && checkModeFlg(1) && checkNoResetFlg1(FLG1_UNK_2000) && (checkNoUpperAnime() || checkGrabAnime()) && (mProcID == PROC_WAIT || mProcID == PROC_GRAB_WAIT || mProcID == PROC_CROUCH || mProcID == PROC_HORSE_WAIT || mProcID == PROC_WOLF_WAIT)) {
        if (temp_r28 != 0) {
            field_0x2fa7 = temp_r28 - 1;
            field_0x3418 = sp18;
            field_0x341c = sp14;
        } else if (0.0f != sp18 || 0.0f != sp14) {
            if (checkGrabAnimeCarry() || cM_rnd() < 0.5f) {
                field_0x3418 = 0.0f;
                field_0x341c = 0.0f;
            } else {
                s16 temp_r29_2 = cM_atan2s(field_0x3418, field_0x341c);
                temp_r29_2 += (s16)(((int)cM_rndF(3.0f) << 13) + 0x6000);
    
                field_0x3418 = cM_ssin(temp_r29_2);
                field_0x341c = cM_scos(temp_r29_2);
            }
        } else if (checkGrabAnimeCarry() && mGrabItemAcKeep.getActor() != NULL) {
            field_0x3418 = -1.0f;
        } else {
            s16 temp_r0 = (int)cM_rndF(8.0f) << 0xD;
            field_0x3418 = cM_ssin(temp_r0);
            field_0x341c = cM_scos(temp_r0);
        }
        var_f31 = field_0x3418;
        var_f30 = field_0x341c;
    } else {
        field_0x2180[0]->setNowOffsetX(0.0f);
        field_0x2180[1]->setNowOffsetX(0.0f);
        field_0x2180[0]->setNowOffsetY(0.0f);
        field_0x2180[1]->setNowOffsetY(0.0f);

        if (daAlink_matAnm_c::getEyeMoveFlg()) {
            daAlink_matAnm_c::offEyeMoveFlg();
            daAlink_matAnm_c::setMorfFrame(3);
        }
        return;
    }

    if (daAlink_matAnm_c::getMorfFrame() == 0) {
        var_f31 = cLib_minMaxLimit<f32>(var_f31, -1.0f, 1.0f);
        var_f30 = cLib_minMaxLimit<f32>(var_f30, -1.0f, 1.0f);

        f32 var_f29;
        f32 var_f28;
        if (var_f31 > 0.0f) {
            var_f29 = 0.25f * var_f31;
            var_f28 = 0.15f * var_f31;
        } else {
            var_f29 = 0.15f * var_f31;
            var_f28 = 0.25f * var_f31;
        }

        f32 sp10;
        if (var_f30 > 0.0f) {
            sp10 = 0.2f * var_f30;
        } else {
            sp10 = 0.1f * var_f30;
        }

        if (checkWolf()) {
            var_f29 *= -1.0f;
            var_f28 *= -1.0f;
        }

        daAlink_matAnm_c::onEyeMoveFlg();
        cLib_addCalc(field_0x2180[0]->getNowOffsetXP(), var_f29, 0.5f, 0.1f, 0.03f);
        cLib_addCalc(field_0x2180[1]->getNowOffsetXP(), var_f28, 0.5f, 0.1f, 0.03f);
        cLib_addCalc(field_0x2180[0]->getNowOffsetYP(), sp10, 0.5f, 0.08f, 0.02f);
        field_0x2180[1]->setNowOffsetY(*field_0x2180[0]->getNowOffsetYP());
    }
}

/* 800A1F90-800A2160 09C8D0 01D0+00 1/1 0/0 0/0 .text            setNeckAngle__9daAlink_cFv */
void daAlink_c::setNeckAngle() {
    cXyz sp18;
    s16 sp10 = 0;
    s16 spE = 0;
    s16 spC = 0;
    s16 spA = 0;
    int sp14 = 2;

    offNoResetFlg1(FLG1_MIDNA_HAIR_ATN_POS);
    cXyz* var_r30 = getNeckAimPos(&sp18, &sp14, 1);

    if (var_r30 != NULL && checkModeFlg(0x08000100)) {
        onNoResetFlg1(FLG1_UNK_4);

        if (sp14 != 0) {
            if (sp14 == 1) {
                mMidnaAtnPos = eyePos;
                onNoResetFlg1(FLG1_MIDNA_ATN_POS);
            } else {
                mMidnaAtnPos = *var_r30;
                onNoResetFlg1(FLG1_MIDNA_ATN_POS);
            }
        }
    } else {
        offNoResetFlg1(daPy_FLG1(FLG1_MIDNA_ATN_POS | FLG1_UNK_4));
    }

    if (checkUnderMove0BckNoArcWolf(WANM_SMELL) || checkUnderMove0BckNoArc(ANM_HORSE_TURN_B) || checkUnderMove0BckNoArc(ANM_WAIT_INSECT) || checkUnderMove0BckNoArc(ANM_HORSE_TURN_LEFT) || checkUnderMove0BckNoArc(ANM_HORSE_TURN_RIGHT)) {
        var_r30 = NULL;
    }

    s16 sp8 = getNeckAimAngle(var_r30, &sp10, &spE, &spC, &spA);
    daPy_addCalcShort(&field_0x3124, sp10, 3, 0x1000, 0x100);
    daPy_addCalcShort(&field_0x3126, spE, 3, 0x1000, 0x100);
    setEyeMove(var_r30, spC, spA);
}

/* 800A2160-800A2198 09CAA0 0038+00 1/0 0/0 0/0 .text getStickAngleFromPlayerShape__9daAlink_cCFPs
 */
bool daAlink_c::getStickAngleFromPlayerShape(s16* o_angle) const {
    if (checkInputOnR()) {
        *o_angle = field_0x2fe2 - shape_angle.y;
        return true;
    }

    *o_angle = 0;
    return false;
}

/* 800A2198-800A21E0 09CAD8 0048+00 42/42 0/0 0/0 .text commonLineCheck__9daAlink_cFP4cXyzP4cXyz
 */
bool daAlink_c::commonLineCheck(cXyz* i_startPos, cXyz* i_endPos) {
    mLinkLinChk.Set(i_startPos, i_endPos, this);
    return dComIfG_Bgsp().LineCross(&mLinkLinChk);
}

/* 800A21E0-800A2280 09CB20 00A0+00 18/18 0/0 2/2 .text
 * getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi             */
/**
 * Gets the Actor Name of a given polygon's associated actor
 * 
 * @param i_polyinf The polygon info to check
 * @param i_forceCheck Forces the check to happen regardless of if the poly is safe or not
 * @return The actor name of the actor associated with the polygon info. defaults to PROC_ALINK
 */
s16 daAlink_c::getMoveBGActorName(cBgS_PolyInfo& i_polyinf, BOOL i_forceCheck) {
    if ((i_forceCheck || dComIfG_Bgsp().ChkPolySafe(i_polyinf)) &&
        dComIfG_Bgsp().ChkMoveBG_NoDABg(i_polyinf) && dComIfG_Bgsp().GetActorPointer(i_polyinf))
    {
        return fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(i_polyinf));
    }

    return PROC_ALINK;
}

/* 800A2280-800A22E8 09CBC0 0068+00 2/2 0/0 0/0 .text            checkGoronRide__9daAlink_cFv */
fopAc_ac_c* daAlink_c::checkGoronRide() {
    if (mLinkAcch.ChkGroundHit() && getMoveBGActorName(mLinkAcch.m_gnd, FALSE) == PROC_OBJ_GRA) {
        return dComIfG_Bgsp().GetActorPointer(mLinkAcch.m_gnd);
    }

    return NULL;
}

/* 800A22E8-800A2710 09CC28 0428+00 1/1 0/0 0/0 .text            setMoveSlantAngle__9daAlink_cFv */
void daAlink_c::setMoveSlantAngle() {
    f32 temp_f31 = fabsf(speedF / field_0x594);

    if (checkModeFlg(0x02020400) || mProcID == PROC_WOLF_CARGO_CARRY) {
        if (!checkBoardRide()) {
            field_0x2fee = 0;
            if (!checkCanoeRide()) {
                mBodyAngle.z = 0;
            }
        }

        if (mProcID == PROC_SLIDE && field_0x3198 != 0) {
            mBodyAngle.z = mProcVar4.field_0x3010 * 0.75f;
            shape_angle.z += (0.25f * mProcVar4.field_0x3010);
        }

        field_0x2fec = 0;
        return;
    }

    s16 var_r29;
    s16 var_r28;

    if ((mProcID == PROC_MOVE && temp_f31 > daAlinkHIO_move_c0::m.mRunChangeRate) || (mProcID == PROC_WOLF_MOVE && temp_f31 > daAlinkHIO_wlMove_c0::m.field_0x84)) {
        var_r28 = cLib_minMaxLimit<s16>((s16)(field_0x2fe6 - shape_angle.y) * 2, -0xC00, 0xC00);
        if (abs(var_r28) > 0x800) {
            int var_r27;
            if (var_r28 > 0) {
                var_r27 = var_r28 - 0x800;
            } else {
                var_r27 = var_r28 + 0x800;
            }

            var_r29 = -3.9f * var_r27;
        } else {
            var_r29 = 0;
        }

        if ((mProcID == PROC_WOLF_MOVE && checkAttentionState()) || temp_f31 < daAlinkHIO_wlMove_c0::m.field_0x8C) {
            var_r28 = 0;
        }
    } else if ((mProcID == PROC_WOLF_WAIT || mProcID == PROC_WOLF_SWIM_MOVE) && shape_angle.y != field_0x2fe6) {
        var_r28 = 0;
        var_r29 = (s16)(shape_angle.y - field_0x2fe6);

        if (mProcID == PROC_WOLF_SWIM_MOVE) {
            if (var_r29 >= 0) {
                var_r29 -= 0x100;
                if (var_r29 < 0) {
                    var_r29 = 0;
                }
            } else {
                var_r29 += 0x100;
                if (var_r29 > 0) {
                    var_r29 = 0;
                }
            }
        }

        var_r29 = cLib_minMaxLimit<s16>((s16)var_r29, -0x300, 0x300);
        var_r29 *= 8;
    } else {
        var_r28 = 0;
        var_r29 = 0;
    }

    cLib_addCalcAngleS(&field_0x2fee, var_r28, 4, 1200, 200);

    if (checkWolf()) {
        shape_angle.z = field_0x2fee;
        if (var_r29 == 0) {
            cLib_addCalcAngleS(&field_0x2fec, 0, 2, 4000, 1000);
        } else {
            cLib_addCalcAngleS(&field_0x2fec, var_r29, 4, 1200, 200);
        }
    } else if (mProcID != PROC_CAUGHT) {
        shape_angle.z = (field_0x2fee >> 1);
        mBodyAngle.z = shape_angle.z;

        if (mProcID == PROC_MOVE || mProcID == PROC_WAIT) {
            var_r29 = (s16)(shape_angle.y - field_0x2fe6) * 2;
            if (mProcID == PROC_WAIT) {
                var_r29 *= 2;
            }

            var_r29 = cLib_minMaxLimit<s16>((s16)var_r29, -0xC00, 0xC00);
            if (var_r29 == 0) {
                cLib_addCalcAngleS(&field_0x30a2, 0, 2, 4000, 1000);
            } else {
                cLib_addCalcAngleS(&field_0x30a2, var_r29, 4, 1200, 200);
            }
        }
    }
}

/* 8038FA10-8038FA20 01C070 0010+00 0/0 0/0 0/0 .rodata          l_worldChangeEventName */
#pragma push
#pragma force_active on
SECTION_RODATA static char const l_worldChangeEventName[16] = "WORLD_CHANGE_IN";
COMPILER_STRIP_GATE(0x8038FA10, &l_worldChangeEventName);
#pragma pop

/* 8038FA20-8038FA38 01C080 0015+03 0/0 0/0 0/0 .rodata          l_wolfWorldChangeEventName */
#pragma push
#pragma force_active on
SECTION_RODATA static char const l_wolfWorldChangeEventName[24] = "WOLF_WORLD_CHANGE_IN";
COMPILER_STRIP_GATE(0x8038FA20, &l_wolfWorldChangeEventName);
#pragma pop

/* 8038FA38-8038FA48 01C098 0010+00 0/1 0/0 0/0 .rodata          l_defaultGetEventName */
#pragma push
#pragma force_active on
SECTION_RODATA static char const l_defaultGetEventName[16] = "DEFAULT_GETITEM";
COMPILER_STRIP_GATE(0x8038FA38, &l_defaultGetEventName);
#pragma pop

/* 8038FA48-8038FA54 01C0A8 000C+00 0/0 0/0 0/0 .rodata          l_crawlStartFrontOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static float const l_crawlStartFrontOffset[3] = {0.0f, 30.0f, 112.0f};
COMPILER_STRIP_GATE(0x8038FA48, &l_crawlStartFrontOffset);
#pragma pop

/* 8038FA54-8038FA60 01C0B4 000C+00 1/2 0/0 0/0 .rodata          l_crawlFrontOffset */
SECTION_RODATA static Vec const l_crawlFrontOffset = {0.0f, 30.0f, 80.0f};
COMPILER_STRIP_GATE(0x8038FA54, &l_crawlFrontOffset);

/* 8038FA60-8038FA6C 01C0C0 000C+00 0/1 0/0 0/0 .rodata          l_crawlBackOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlBackOffset = {
    0.0f, 30.0f, -30.0f
};
COMPILER_STRIP_GATE(0x8038FA60, &l_crawlBackOffset);
#pragma pop

/* 8038FA6C-8038FA78 01C0CC 000C+00 1/1 0/0 0/0 .rodata          l_crawlTopOffset */
SECTION_RODATA static Vec const l_crawlTopOffset = {0.0f, 30.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FA6C, &l_crawlTopOffset);

/* 8038FA78-8038FA84 01C0D8 000C+00 1/2 0/0 0/0 .rodata          l_crawlFrontUpOffset */
SECTION_RODATA static Vec const l_crawlFrontUpOffset = {
    0.0f, 80.0f, 80.0f
};
COMPILER_STRIP_GATE(0x8038FA78, &l_crawlFrontUpOffset);

/* 8038FA84-8038FA90 01C0E4 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieFrontUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_wolfLieFrontUpOffset = {
    0.0f, 75.0f, 100.0f
};
COMPILER_STRIP_GATE(0x8038FA84, &l_wolfLieFrontUpOffset);
#pragma pop

/* 8038FA90-8038FA9C 01C0F0 000C+00 1/2 0/0 0/0 .rodata          l_crawlBackUpOffset */
SECTION_RODATA static Vec const l_crawlBackUpOffset = {
    0.0f, 80.0f, -30.0f
};
COMPILER_STRIP_GATE(0x8038FA90, &l_crawlBackUpOffset);

/* 8038FA9C-8038FAA8 01C0FC 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieBackUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_wolfLieBackUpOffset = {
    0.0f, 70.0f, -70.0f
};
COMPILER_STRIP_GATE(0x8038FA9C, &l_wolfLieBackUpOffset);
#pragma pop

/* 8038FAA8-8038FAB4 01C108 000C+00 0/1 0/0 0/0 .rodata          l_crawlStandUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlStandUpOffset = {
    0.0f, 80.0f, -30.0f
};
COMPILER_STRIP_GATE(0x8038FAA8, &l_crawlStandUpOffset);
#pragma pop

/* 8038FAB4-8038FAC0 01C114 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieStandUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_wolfLieStandUpOffset = {
    0.0f, 80.0f, -70.0f
};
COMPILER_STRIP_GATE(0x8038FAB4, &l_wolfLieStandUpOffset);
#pragma pop

/* 8038FAC0-8038FACC 01C120 000C+00 1/2 0/0 0/0 .rodata          l_crawlTopUpOffset */
SECTION_RODATA static Vec const l_crawlTopUpOffset = {0.0f, 80.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FAC0, &l_crawlTopUpOffset);

/* 8038FACC-8038FAD8 01C12C 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieTopUpOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_wolfLieTopUpOffset = {0.0f, 75.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FACC, &l_wolfLieTopUpOffset);
#pragma pop

/* 8038FAD8-8038FAE4 01C138 000C+00 0/1 0/0 0/0 .rodata          l_crawlSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlSideOffset = {55.0f, 80.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FAD8, &l_crawlSideOffset);
#pragma pop

/* 8038FAE4-8038FAF0 01C144 000C+00 0/1 0/0 0/0 .rodata          l_wolfLieSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_wolfLieSideOffset = {55.0f, 75.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FAE4, &l_wolfLieSideOffset);
#pragma pop

/* 8038FAF0-8038FAFC 01C150 000C+00 0/1 0/0 0/0 .rodata          l_crawlLSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlLSideOffset = {55.0f, 0.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FAF0, &l_crawlLSideOffset);
#pragma pop

/* 8038FAFC-8038FB08 01C15C 000C+00 0/1 0/0 0/0 .rodata          l_crawlRSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlRSideOffset = {-55.0f, 0.0f, 0.0f};
COMPILER_STRIP_GATE(0x8038FAFC, &l_crawlRSideOffset);
#pragma pop

/* 8038FB08-8038FB14 01C168 000C+00 0/1 0/0 0/0 .rodata          l_crawlLSideFrontOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlLSideFrontOffset = {55.0f, 5.0f, 80.0f};
COMPILER_STRIP_GATE(0x8038FB08, &l_crawlLSideFrontOffset);
#pragma pop

/* 8038FB14-8038FB20 01C174 000C+00 0/1 0/0 0/0 .rodata          l_crawlRSideFrontOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlRSideFrontOffset = {-55.0f, 5.0f, 80.0f};
COMPILER_STRIP_GATE(0x8038FB14, &l_crawlRSideFrontOffset);
#pragma pop

/* 8038FB20-8038FB2C 01C180 000C+00 0/2 0/0 0/0 .rodata          l_crawlMinSideOffset */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_crawlMinSideOffset = {
    35.0f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x8038FB20, &l_crawlMinSideOffset);
#pragma pop

/* 8038FB2C-8038FB38 01C18C 000C+00 0/2 0/0 0/0 .rodata          l_swordTopLocalN */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_swordTopLocalN = {
    100.0f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x8038FB2C, &l_swordTopLocalN);
#pragma pop

/* 8038FB38-8038FB44 01C198 000C+00 0/2 0/0 0/0 .rodata          l_swordTopLocalM */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const l_swordTopLocalM = {
    120.0f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x8038FB38, &l_swordTopLocalM);
#pragma pop

/* 8038FB44-8038FB50 01C1A4 000C+00 1/2 0/0 0/0 .rodata          l_ironBallChainVec */
static const Vec l_ironBallChainVec = {
    0.0f, 0.0f, 10.0f  
};

/* 8038FB50-8038FB5C 01C1B0 000C+00 1/2 0/0 0/0 .rodata          l_ironBallCenterVec */
SECTION_RODATA static Vec const l_ironBallCenterVec = {
    0.0f,
    0.0f,
    42.0f,
};
COMPILER_STRIP_GATE(0x8038FB50, &l_ironBallCenterVec);

/* 8038FB5C-8038FBBC 01C1BC 0060+00 1/2 0/0 0/0 .rodata          l_wolfFootOnFrame */
SECTION_RODATA static f32 const l_wolfFootOnFrame[6][4] = {
    {0.0f, 16.0f, 19.0f, 6.0f},
    {10.0f, 12.0f, 7.0f, 3.0f},
    {0.0f, 20.0f, 27.0f, 8.0f},
    {17.0f, 0.0f, 24.0f, 11.0f},
    {24.0f, 32.0f, 12.0f, 26.0f},
    {56.0f, 0.0f, 44.0f, 58.0f},
};
COMPILER_STRIP_GATE(0x8038FB5C, &l_wolfFootOnFrame);

/* 8038FBBC-8038FBD4 01C21C 0018+00 1/1 0/0 0/0 .rodata          l_insectNameList */
SECTION_RODATA static s16 const l_insectNameList[12] = {
    PROC_Obj_Kabuto, PROC_Obj_Cho, PROC_Obj_Kuw, PROC_Obj_Batta, PROC_Obj_Nan, PROC_Obj_Dan,
    PROC_Obj_Kam,    PROC_Obj_Ten, PROC_Obj_Kat, PROC_Obj_Tombo, PROC_Obj_Ari, PROC_Obj_Kag,
};
COMPILER_STRIP_GATE(0x8038FBBC, &l_insectNameList);

/* 8038FBD4-8038FC24 01C234 0050+00 0/1 0/0 0/0 .rodata          m_mainBckShield__9daAlink_c */
#pragma push
#pragma force_active on
SECTION_RODATA daAlink_BckData const daAlink_c::m_mainBckShield[20] = {
    {0x0025, 0x0025}, {0x0023, 0x0023}, {0x0012, 0x001B}, {0x0010, 0x001B}, {0x0021, 0x0021},
    {0x001E, 0x001E}, {0x003C, 0x003C}, {0x002C, 0x002C}, {0x003E, 0x003E}, {0x002E, 0x002E},
    {0x0030, 0x0030}, {0x0028, 0x0028}, {0x0032, 0x0032}, {0x002A, 0x002A}, {0x0274, 0x001B},
    {0x0020, 0x001B}, {0x001B, 0x001B}, {0x0026, 0x0026}, {0x0277, 0x001B}, {0x00CD, 0x001B},
};
COMPILER_STRIP_GATE(0x8038FBD4, &daAlink_c::m_mainBckShield);
#pragma pop

/* 8038FC24-8038FC38 01C284 0014+00 0/1 0/0 0/0 .rodata          m_mainBckSword__9daAlink_c */
#pragma push
#pragma force_active on
SECTION_RODATA daAlink_BckData const daAlink_c::m_mainBckSword[5] = {
    {0x001A, 0x001A}, {0x001C, 0x001C}, {0x0277, 0x0277}, {0x00CD, 0x00CD}, {0x0243, 0x0244},
};
COMPILER_STRIP_GATE(0x8038FC24, &daAlink_c::m_mainBckSword);
#pragma pop

/* 8038FC38-8038FCA8 01C298 0070+00 0/1 0/0 0/0 .rodata          m_mainBckFishing__9daAlink_c */
#pragma push
#pragma force_active on
SECTION_RODATA daAlink_BckData const daAlink_c::m_mainBckFishing[28] = {
    {0x0025, 0x0273}, {0x0023, 0x00C8}, {0x0012, 0x0273}, {0x0010, 0x00C8}, {0x0021, 0x0273},
    {0x001E, 0x00C8}, {0x003C, 0x0273}, {0x002C, 0x0273}, {0x003E, 0x0273}, {0x002E, 0x0273},
    {0x0030, 0x00C8}, {0x0028, 0x00C8}, {0x0032, 0x00C8}, {0x002A, 0x00C8}, {0x0274, 0x0273},
    {0x0020, 0x0273}, {0x001A, 0x0273}, {0x001C, 0x0273}, {0x0277, 0x0273}, {0x00CD, 0x00C8},
    {0x0243, 0x0244}, {0x0233, 0x0273}, {0x0234, 0x0273}, {0x0233, 0x0273}, {0x0234, 0x0273},
    {0x026A, 0x0273}, {0x0256, 0x0273}, {0x0257, 0x0273},
};
COMPILER_STRIP_GATE(0x8038FC38, &daAlink_c::m_mainBckFishing);
#pragma pop

/* 8038FCA8-80391010 01C308 1368+00 3/4 0/0 0/0 .rodata          m_anmDataTable__9daAlink_c */
daAlink_AnmData const daAlink_c::m_anmDataTable[414] = {
    {37, 36, 254, 254, 0, 232, 0},
    {35, 34, 254, 254, 0, 232, 0},
    {18, 18, 254, 254, 0, 232, 0},
    {16, 16, 254, 254, 0, 232, 0},
    {33, 31, 254, 254, 0, 232, 0},
    {30, 29, 254, 254, 0, 232, 0},
    {60, 59, 4, 10, 0, 232, 0},
    {44, 43, 4, 10, 0, 232, 0},
    {62, 61, 4, 10, 0, 232, 0},
    {46, 45, 4, 10, 0, 232, 0},
    {48, 47, 4, 10, 0, 232, 0},
    {40, 39, 4, 10, 0, 232, 0},
    {50, 49, 4, 10, 0, 232, 0},
    {42, 41, 4, 10, 0, 232, 0},
    {628, 628, 254, 254, 0, 232, 0},
    {32, 26, 254, 254, 0, 0, 0},
    {26, 14, 254, 254, 0, 232, 0},
    {28, 14, 254, 254, 0, 232, 0},
    {631, 631, 4, 10, 0, 0, 0},
    {205, 197, 4, 10, 0, 232, 0},
    {579, 579, 254, 254, 0, 345, 0},
    {563, 563, 4, 10, 0, 0, 0},
    {564, 564, 4, 10, 0, 0, 0},
    {563, 604, 4, 10, 0, 0, 0},
    {564, 604, 4, 10, 0, 0, 0},
    {618, 618, 4, 10, 0, 0, 0},
    {598, 598, 1, 6, 0, 232, 0},
    {599, 599, 1, 6, 0, 351, 0},
    {198, 198, 1, 6, 0, 232, 0},
    {54, 54, 254, 254, 0, 328, 0},
    {56, 56, 254, 254, 0, 328, 0},
    {53, 53, 1, 6, 0, 232, 0},
    {55, 55, 1, 6, 0, 232, 0},
    {52, 52, 254, 254, 0, 328, 0},
    {51, 51, 1, 6, 0, 232, 0},
    {519, 519, 254, 254, 0, 328, 0},
    {521, 521, 254, 254, 0, 223, 0},
    {520, 520, 1, 6, 38, 335, 0},
    {518, 518, 4, 10, 0, 328, 0},
    {517, 517, 4, 10, 0, 232, 0},
    {559, 559, 254, 254, 0, 232, 0},
    {123, 123, 254, 254, 0, 0, 0},
    {126, 126, 254, 6, 0, 232, 0},
    {19, 19, 254, 6, 0, 232, 0},
    {21, 21, 254, 6, 0, 232, 0},
    {124, 124, 254, 6, 0, 232, 0},
    {23, 23, 254, 6, 0, 232, 0},
    {24, 24, 254, 6, 0, 232, 0},
    {20, 20, 1, 6, 125, 233, 0},
    {421, 421, 254, 254, 0, 327, 0},
    {419, 419, 254, 254, 0, 327, 0},
    {420, 420, 254, 254, 0, 223, 0},
    {436, 436, 254, 254, 0, 223, 0},
    {437, 437, 254, 254, 0, 223, 0},
    {617, 617, 254, 254, 0, 223, 0},
    {503, 503, 254, 254, 10, 333, 0},
    {502, 502, 254, 254, 4, 232, 0},
    {501, 501, 254, 254, 4, 232, 0},
    {500, 500, 0, 5, 11, 332, 0},
    {499, 499, 254, 254, 0, 232, 0},
    {498, 498, 0, 5, 0, 232, 0},
    {510, 510, 254, 254, 0, 223, 0},
    {511, 511, 254, 254, 0, 223, 0},
    {509, 509, 254, 254, 0, 223, 0},
    {225, 225, 4, 10, 0, 223, 0},
    {226, 226, 4, 10, 0, 223, 0},
    {565, 565, 4, 5, 0, 232, 0},
    {566, 566, 4, 5, 0, 232, 0},
    {562, 562, 4, 5, 0, 232, 0},
    {418, 418, 4, 5, 0, 232, 0},
    {416, 416, 4, 5, 0, 232, 0},
    {417, 417, 4, 5, 0, 232, 0},
    {614, 614, 4, 5, 0, 0, 0},
    {629, 629, 4, 5, 0, 0, 0},
    {630, 630, 4, 5, 0, 0, 0},
    {202, 202, 4, 5, 0, 232, 0},
    {203, 203, 4, 5, 0, 232, 0},
    {781, 614, 4, 5, 0, 0, 0},
    {221, 221, 4, 5, 0, 258, 0},
    {435, 435, 4, 5, 0, 261, 0},
    {149, 149, 100, 5, 36, 272, 0},
    {568, 568, 4, 5, 55, 338, 0},
    {569, 569, 4, 5, 56, 0, 0},
    {214, 214, 4, 10, 88, 300, 0},
    {587, 587, 4, 5, 37, 0, 0},
    {613, 613, 4, 5, 0, 232, 0},
    {560, 560, 4, 5, 109, 336, 0},
    {561, 561, 4, 5, 109, 336, 0},
    {373, 373, 4, 5, 110, 321, 0},
    {374, 374, 4, 5, 110, 321, 0},
    {588, 588, 4, 5, 114, 0, 0},
    {589, 589, 4, 5, 115, 0, 0},
    {512, 512, 254, 254, 0, 223, 0},
    {513, 513, 254, 254, 0, 223, 0},
    {227, 227, 4, 10, 0, 223, 0},
    {228, 228, 4, 10, 0, 223, 0},
    {624, 624, 254, 254, 16, 357, 0},
    {623, 623, 4, 5, 17, 356, 0},
    {127, 127, 100, 6, 46, 259, 0},
    {153, 153, 0, 6, 47, 275, 0},
    {154, 154, 0, 6, 48, 276, 0},
    {143, 143, 100, 6, 49, 267, 0},
    {144, 144, 100, 6, 49, 267, 0},
    {132, 132, 100, 6, 50, 262, 0},
    {133, 133, 100, 6, 51, 263, 0},
    {134, 134, 100, 5, 0, 261, 0},
    {138, 138, 0, 5, 0, 223, 0},
    {137, 137, 100, 5, 0, 223, 0},
    {139, 139, 100, 5, 52, 264, 0},
    {136, 136, 0, 5, 0, 223, 0},
    {135, 135, 100, 5, 0, 223, 0},
    {155, 155, 0, 6, 89, 277, 0},
    {156, 156, 0, 6, 89, 277, 0},
    {152, 152, 100, 6, 60, 274, 0},
    {151, 151, 100, 6, 61, 273, 0},
    {159, 159, 100, 6, 58, 280, 0},
    {158, 158, 100, 6, 59, 279, 0},
    {164, 164, 0, 6, 0, 232, 0},
    {165, 165, 100, 6, 0, 232, 0},
    {166, 166, 100, 6, 0, 232, 0},
    {170, 170, 0, 5, 0, 261, 0},
    {167, 167, 0, 5, 90, 285, 0},
    {168, 168, 0, 5, 0, 286, 0},
    {169, 169, 100, 5, 18, 287, 0},
    {142, 142, 0, 6, 127, 266, 0},
    {140, 140, 0, 6, 128, 265, 0},
    {141, 141, 0, 6, 0, 232, 0},
    {174, 174, 1, 6, 39, 234, 0},
    {172, 172, 1, 6, 39, 234, 0},
    {189, 189, 1, 6, 39, 234, 0},
    {190, 190, 1, 6, 39, 234, 0},
    {178, 178, 254, 254, 40, 248, 0},
    {175, 175, 254, 254, 40, 248, 0},
    {180, 180, 254, 254, 40, 248, 0},
    {182, 182, 254, 254, 40, 248, 0},
    {179, 179, 254, 254, 42, 292, 0},
    {176, 176, 254, 254, 43, 290, 0},
    {181, 181, 254, 254, 44, 293, 0},
    {183, 183, 254, 254, 44, 293, 0},
    {171, 171, 1, 6, 39, 234, 0},
    {431, 431, 1, 6, 39, 234, 0},
    {432, 432, 254, 254, 0, 223, 0},
    {324, 324, 0, 6, 6, 305, 0},
    {325, 325, 0, 10, 7, 306, 0},
    {567, 567, 4, 10, 28, 337, 0},
    {591, 591, 254, 254, 0, 223, 0},
    {592, 592, 254, 254, 0, 223, 0},
    {593, 593, 254, 254, 0, 223, 0},
    {594, 594, 254, 254, 0, 223, 0},
    {372, 372, 254, 254, 0, 223, 0},
    {378, 378, 254, 254, 0, 223, 0},
    {376, 376, 254, 254, 0, 223, 0},
    {377, 377, 254, 254, 0, 223, 0},
    {430, 430, 254, 254, 0, 223, 0},
    {428, 428, 254, 254, 0, 223, 0},
    {429, 429, 254, 254, 0, 223, 0},
    {425, 425, 254, 254, 0, 223, 0},
    {423, 423, 254, 254, 0, 223, 0},
    {424, 424, 254, 254, 0, 223, 0},
    {427, 427, 254, 254, 0, 223, 0},
    {426, 426, 254, 254, 0, 223, 0},
    {106, 106, 3, 9, 0, 232, 0},
    {112, 112, 3, 9, 0, 232, 0},
    {108, 108, 3, 9, 0, 232, 0},
    {109, 109, 3, 9, 0, 232, 0},
    {110, 110, 3, 9, 0, 232, 0},
    {111, 111, 3, 9, 0, 232, 0},
    {107, 107, 3, 9, 92, 254, 0},
    {527, 527, 3, 9, 0, 232, 0},
    {528, 528, 3, 9, 0, 232, 0},
    {522, 522, 3, 9, 0, 232, 0},
    {524, 524, 3, 9, 0, 232, 0},
    {525, 525, 3, 9, 0, 232, 0},
    {526, 526, 3, 9, 0, 232, 0},
    {523, 523, 3, 9, 0, 232, 0},
    {366, 366, 254, 254, 24, 313, 0},
    {369, 369, 254, 254, 25, 316, 0},
    {368, 368, 254, 254, 0, 315, 0},
    {379, 379, 254, 254, 26, 322, 0},
    {365, 365, 254, 254, 27, 312, 0},
    {367, 367, 254, 254, 0, 314, 0},
    {95, 95, 254, 254, 0, 223, 0},
    {604, 604, 4, 10, 1, 352, 0},
    {596, 596, 4, 10, 1, 349, 0},
    {585, 585, 4, 10, 0, 223, 0},
    {620, 620, 1, 6, 12, 355, 0},
    {157, 157, 1, 6, 13, 278, 0},
    {82, 82, 254, 254, 0, 232, 0},
    {632, 632, 1, 6, 0, 223, 0},
    {557, 557, 254, 254, 0, 223, 0},
    {555, 555, 254, 254, 0, 223, 0},
    {558, 558, 254, 254, 0, 223, 0},
    {556, 556, 254, 254, 0, 223, 0},
    {574, 574, 254, 254, 21, 342, 0},
    {578, 578, 254, 254, 22, 344, 0},
    {57, 57, 254, 254, 0, 232, 0},
    {58, 58, 254, 254, 0, 232, 0},
    {17, 17, 254, 254, 0, 232, 0},
    {570, 570, 254, 254, 3, 232, 0},
    {573, 573, 254, 254, 23, 341, 0},
    {577, 577, 254, 254, 0, 232, 0},
    {576, 576, 254, 254, 0, 232, 0},
    {193, 193, 1, 6, 39, 234, 0},
    {192, 192, 1, 6, 39, 234, 0},
    {194, 194, 1, 6, 39, 234, 0},
    {195, 195, 1, 6, 39, 234, 0},
    {196, 196, 1, 6, 39, 234, 0},
    {87, 87, 254, 254, 77, 247, 0},
    {86, 86, 254, 254, 78, 246, 0},
    {85, 85, 254, 254, 79, 245, 0},
    {361, 361, 254, 254, 0, 308, 0},
    {362, 362, 254, 254, 0, 310, 0},
    {362, 618, 254, 254, 0, 307, 0},
    {362, 381, 254, 254, 0, 307, 0},
    {586, 586, 4, 10, 41, 346, 0},
    {595, 595, 254, 254, 0, 348, 0},
    {619, 619, 254, 254, 0, 223, 0},
    {603, 602, 254, 5, 0, 223, 0},
    {603, 603, 0, 254, 0, 223, 0},
    {619, 533, 254, 5, 0, 223, 0},
    {619, 534, 0, 254, 0, 223, 0},
    {619, 531, 254, 5, 0, 223, 0},
    {619, 532, 0, 254, 0, 223, 0},
    {619, 103, 254, 5, 0, 223, 0},
    {90, 90, 2, 254, 0, 304, 0},
    {91, 91, 2, 254, 0, 304, 0},
    {92, 92, 2, 254, 0, 223, 0},
    {94, 94, 2, 5, 120, 249, 0},
    {491, 491, 254, 254, 0, 223, 0},
    {506, 506, 2, 5, 0, 223, 0},
    {508, 508, 2, 5, 0, 223, 0},
    {434, 434, 2, 5, 0, 223, 0},
    {217, 217, 4, 10, 30, 301, 0},
    {218, 218, 4, 10, 31, 302, 0},
    {215, 215, 3, 10, 0, 223, 0},
    {216, 216, 3, 10, 0, 223, 0},
    {219, 219, 254, 254, 0, 223, 0},
    {220, 220, 254, 254, 0, 223, 0},
    {492, 492, 254, 254, 29, 223, 0},
    {529, 529, 1, 6, 0, 223, 0},
    {484, 484, 1, 6, 0, 223, 0},
    {485, 485, 1, 6, 0, 223, 0},
    {552, 552, 254, 254, 0, 223, 0},
    {544, 544, 254, 254, 0, 223, 0},
    {543, 543, 254, 254, 0, 223, 0},
    {549, 549, 254, 254, 0, 223, 0},
    {547, 547, 254, 254, 0, 223, 0},
    {545, 545, 254, 254, 0, 223, 0},
    {546, 546, 254, 254, 0, 223, 0},
    {548, 548, 254, 254, 0, 223, 0},
    {551, 551, 100, 254, 0, 223, 0},
    {550, 550, 100, 254, 0, 223, 0},
    {530, 530, 254, 254, 0, 223, 0},
    {102, 102, 254, 254, 53, 252, 0},
    {105, 105, 254, 254, 54, 253, 0},
    {625, 625, 4, 10, 0, 358, 0},
    {72, 72, 3, 254, 62, 238, 0},
    {70, 70, 3, 254, 63, 236, 0},
    {71, 71, 3, 254, 64, 237, 0},
    {69, 69, 3, 254, 65, 235, 0},
    {75, 75, 3, 254, 66, 241, 0},
    {76, 76, 3, 5, 67, 242, 0},
    {73, 73, 3, 5, 68, 239, 0},
    {78, 78, 3, 254, 69, 243, 0},
    {79, 79, 3, 254, 70, 244, 0},
    {74, 74, 3, 254, 71, 240, 0},
    {77, 77, 3, 254, 0, 223, 0},
    {438, 438, 0, 10, 0, 223, 0},
    {495, 495, 0, 9, 0, 223, 0},
    {493, 493, 0, 9, 0, 223, 0},
    {494, 494, 0, 9, 0, 223, 0},
    {371, 371, 2, 254, 74, 319, 0},
    {370, 370, 2, 254, 76, 318, 0},
    {97, 97, 2, 254, 75, 251, 0},
    {621, 621, 2, 254, 75, 251, 0},
    {605, 605, 1, 6, 14, 355, 0},
    {610, 610, 1, 6, 15, 353, 0},
    {483, 483, 254, 254, 0, 223, 0},
    {212, 212, 4, 10, 80, 298, 0},
    {213, 213, 4, 10, 81, 299, 0},
    {571, 571, 254, 254, 82, 339, 0},
    {572, 572, 254, 254, 83, 340, 0},
    {114, 114, 3, 9, 0, 255, 0},
    {116, 116, 3, 9, 85, 256, 0},
    {115, 115, 3, 9, 0, 232, 0},
    {113, 113, 3, 9, 0, 232, 0},
    {117, 117, 3, 9, 0, 232, 0},
    {119, 119, 3, 9, 86, 257, 0},
    {120, 120, 3, 9, 87, 257, 0},
    {28, 121, 3, 9, 0, 232, 0},
    {122, 122, 3, 9, 0, 232, 0},
    {118, 118, 254, 254, 0, 304, 0},
    {222, 222, 4, 10, 84, 303, 0},
    {224, 224, 254, 254, 40, 248, 0},
    {8, 8, 0, 5, 0, 232, 0},
    {554, 554, 254, 254, 0, 223, 0},
    {553, 553, 254, 254, 0, 223, 0},
    {394, 394, 1, 6, 0, 232, 0},
    {395, 395, 1, 6, 0, 232, 0},
    {396, 396, 254, 254, 0, 232, 0},
    {384, 384, 1, 6, 0, 232, 0},
    {385, 385, 1, 6, 0, 232, 0},
    {386, 386, 1, 6, 0, 232, 0},
    {388, 388, 1, 6, 0, 232, 0},
    {392, 392, 1, 6, 0, 232, 0},
    {393, 393, 1, 6, 0, 232, 0},
    {390, 390, 1, 6, 0, 232, 0},
    {391, 391, 1, 6, 0, 232, 0},
    {387, 387, 1, 6, 0, 232, 0},
    {389, 389, 1, 6, 0, 232, 0},
    {398, 398, 1, 6, 0, 232, 0},
    {399, 399, 1, 6, 0, 232, 0},
    {400, 400, 1, 6, 0, 232, 0},
    {401, 401, 1, 6, 0, 232, 0},
    {404, 404, 1, 6, 0, 232, 0},
    {405, 405, 1, 6, 0, 232, 0},
    {402, 402, 1, 6, 0, 232, 0},
    {403, 403, 1, 6, 0, 232, 0},
    {504, 504, 254, 254, 0, 334, 0},
    {4142, 4142, 0, 5, 0, 223, 0},
    {4141, 4141, 0, 5, 0, 223, 0},
    {4106, 4106, 254, 254, 0, 223, 0},
    {4104, 4104, 254, 254, 0, 223, 0},
    {4105, 4105, 254, 254, 0, 223, 0},
    {4103, 4103, 254, 254, 0, 223, 0},
    {4129, 4129, 254, 254, 0, 223, 0},
    {4131, 4131, 254, 254, 0, 223, 0},
    {4130, 4130, 254, 254, 0, 223, 0},
    {4132, 4132, 254, 254, 0, 223, 0},
    {4133, 4133, 254, 254, 94, 4113, 0},
    {4136, 4136, 254, 254, 0, 223, 0},
    {4137, 4137, 254, 254, 0, 223, 0},
    {4134, 4134, 254, 254, 95, 4114, 0},
    {4135, 4135, 254, 254, 95, 4114, 0},
    {4138, 4138, 254, 254, 99, 4115, 0},
    {4121, 4121, 254, 254, 0, 223, 0},
    {4123, 4123, 254, 254, 97, 4110, 0},
    {4124, 4124, 254, 254, 98, 4111, 0},
    {4122, 4122, 254, 254, 96, 4109, 0},
    {4128, 4128, 254, 254, 95, 4114, 0},
    {4125, 4125, 254, 254, 101, 4112, 0},
    {4119, 4119, 254, 254, 100, 4108, 0},
    {4120, 4120, 254, 254, 100, 4108, 0},
    {4139, 4139, 254, 254, 0, 223, 0},
    {4140, 4140, 254, 254, 0, 223, 0},
    {4117, 4117, 254, 254, 102, 4107, 0},
    {4118, 4118, 254, 254, 102, 4107, 0},
    {4102, 4102, 254, 254, 0, 223, 0},
    {4116, 4116, 254, 254, 0, 223, 0},
    {4126, 4126, 0, 5, 0, 223, 0},
    {4127, 4127, 254, 254, 0, 223, 0},
    {177, 177, 254, 254, 93, 291, 0},
    {412, 412, 254, 5, 0, 232, 0},
    {413, 413, 254, 5, 0, 232, 0},
    {406, 406, 0, 5, 0, 232, 0},
    {411, 411, 0, 5, 0, 232, 0},
    {410, 410, 0, 5, 0, 232, 0},
    {409, 409, 0, 5, 0, 232, 0},
    {407, 407, 254, 5, 0, 232, 0},
    {408, 408, 254, 5, 0, 232, 0},
    {8204, 8204, 3, 9, 0, 232, 0},
    {8205, 8205, 3, 9, 0, 232, 0},
    {8206, 8206, 3, 9, 0, 232, 0},
    {8207, 8207, 100, 254, 0, 232, 0},
    {8201, 8201, 100, 9, 103, 232, 0},
    {8202, 8202, 100, 9, 104, 232, 0},
    {8203, 8203, 100, 10, 105, 8200, 0},
    {8208, 8208, 0, 5, 0, 223, 0},
    {20493, 20493, 1, 6, 0, 232, 0},
    {20494, 20494, 1, 6, 0, 232, 0},
    {20490, 20490, 3, 9, 0, 232, 0},
    {20491, 20491, 3, 9, 0, 232, 0},
    {20492, 20492, 100, 254, 0, 232, 0},
    {20487, 20487, 100, 9, 106, 232, 0},
    {20488, 20488, 100, 9, 107, 232, 0},
    {20489, 20489, 100, 10, 108, 20495, 0},
    {515, 515, 2, 5, 111, 232, 0},
    {516, 516, 2, 5, 112, 232, 0},
    {363, 363, 2, 10, 113, 309, 0},
    {606, 606, 3, 9, 39, 234, 0},
    {486, 486, 3, 9, 40, 248, 0},
    {487, 487, 3, 9, 40, 248, 0},
    {422, 422, 4, 5, 116, 330, 0},
    {614, 362, 254, 254, 0, 310, 0},
    {12292, 12292, 1, 6, 0, 12291, 0},
    {101, 101, 254, 254, 0, 223, 0},
    {98, 98, 3, 9, 0, 232, 0},
    {100, 100, 3, 9, 0, 232, 0},
    {99, 99, 3, 9, 0, 232, 0},
    {615, 615, 4, 10, 121, 354, 0},
    {208, 208, 4, 10, 126, 295, 0},
    {375, 375, 254, 254, 0, 223, 0},
    {633, 633, 4, 10, 0, 359, 0},
    {634, 634, 4, 10, 0, 307, 0},
    {207, 207, 0, 6, 0, 232, 0},
    {162, 162, 100, 6, 129, 283, 0},
    {163, 163, 100, 6, 129, 232, 0},
    {160, 160, 100, 6, 131, 281, 0},
    {161, 161, 100, 6, 132, 282, 0},
    {24587, 24587, 0, 10, 133, 24585, 0},
    {24588, 24588, 0, 5, 0, 232, 0},
    {24586, 24586, 100, 5, 0, 24584, 0},
    {28682, 28682, 0, 6, 0, 232, 0},
    {28683, 28683, 0, 6, 0, 232, 0},
    {28684, 28684, 0, 6, 0, 232, 0},
    {28686, 28686, 0, 6, 0, 232, 0},
    {28685, 28685, 0, 6, 0, 232, 0},
    {28680, 28680, 0, 5, 134, 28688, 0},
    {28681, 28681, 0, 5, 0, 28689, 0},
    {614, 28687, 4, 5, 135, 28690, 0},
    {415, 415, 254, 254, 0, 223, 0},
    {414, 414, 254, 254, 0, 223, 0},
    {490, 490, 254, 254, 136, 331, 0},
    {11, 11, 254, 254, 137, 231, 0},
};

/* 80391010-803914A8 -00001 0498+00 4/4 0/0 0/0 .rodata          m_wlAnmDataTable__9daAlink_c */
daAlink_WlAnmData const daAlink_c::m_wlAnmDataTable[147] = {
    {767, 0, 1, 2600, 255, 255},      {778, 0, 2, 270, 255, 255},
    {779, 0, 2, 270, 255, 255},       {692, 0, 12, 65535, 255, 255},
    {716, 1, 12, 65535, 255, 255},    {714, 1, 12, 65535, 255, 255},
    {715, 1, 12, 65535, 255, 255},    {773, 0, 1, 4095, 255, 255},
    {736, 0, 7, 767, 255, 255},       {735, 0, 7, 1568, 255, 255},
    {734, 0, 12, 65535, 255, 255},    {745, 1, 0, 2047, 255, 255},
    {724, 1, 12, 65535, 255, 255},    {725, 2, 12, 65535, 255, 255},
    {774, 1, 0, 511, 255, 255},       {666, 1, 7, 2559, 255, 255},
    {766, 1, 5, 2559, 255, 255},      {668, 1, 5, 1023, 255, 255},
    {667, 1, 12, 65535, 255, 255},    {765, 1, 6, 6655, 255, 255},
    {764, 1, 12, 65535, 255, 255},    {763, 0, 8, 1023, 255, 255},
    {679, 0, 12, 65535, 255, 255},    {771, 0, 3, 2590, 50, 255},
    {768, 0, 3, 1791, 255, 255},      {706, 1, 5, 1791, 255, 255},
    {750, 1, 12, 65535, 255, 255},    {762, 1, 12, 65535, 255, 255},
    {638, 0, 12, 65535, 255, 255},    {780, 1, 2, 274, 255, 255},
    {746, 1, 12, 65535, 255, 255},    {747, 1, 12, 65535, 255, 255},
    {748, 2, 12, 65535, 255, 255},    {743, 0, 2, 270, 255, 255},
    {739, 1, 5, 5375, 255, 255},      {740, 1, 5, 6911, 255, 255},
    {742, 0, 12, 65535, 255, 255},    {744, 8, 1, 6450, 255, 255},
    {741, 9, 2, 270, 30, 45},         {693, 1, 12, 65535, 255, 255},
    {684, 2, 12, 65535, 255, 255},    {682, 2, 12, 65535, 255, 255},
    {686, 2, 12, 65535, 255, 255},    {688, 2, 12, 65535, 255, 255},
    {685, 2, 10, 8447, 255, 255},     {683, 2, 11, 5375, 255, 255},
    {687, 2, 12, 65535, 255, 255},    {689, 2, 12, 65535, 255, 255},
    {752, 0, 12, 65535, 255, 255},    {770, 0, 1, 2600, 255, 255},
    {719, 0, 12, 65535, 255, 255},    {720, 0, 12, 65535, 255, 255},
    {717, 0, 12, 65535, 255, 255},    {718, 0, 12, 65535, 255, 255},
    {759, 1, 12, 65535, 255, 255},    {760, 0, 1, 3583, 255, 255},
    {758, 0, 2, 511, 255, 255},       {755, 0, 4, 1023, 255, 255},
    {753, 1, 12, 65535, 255, 255},    {775, 0, 12, 65535, 255, 255},
    {681, 1, 12, 65535, 255, 255},    {680, 1, 12, 65535, 255, 255},
    {690, 1, 12, 65535, 255, 255},    {691, 1, 12, 65535, 255, 255},
    {653, 1, 12, 65535, 255, 255},    {654, 1, 12, 65535, 255, 255},
    {655, 0, 12, 65535, 255, 255},    {656, 1, 12, 65535, 255, 255},
    {639, 0, 12, 65535, 255, 255},    {641, 0, 12, 65535, 255, 255},
    {640, 0, 12, 65535, 255, 255},    {730, 0, 12, 65535, 255, 255},
    {645, 1, 12, 65535, 255, 255},    {644, 1, 12, 65535, 255, 255},
    {647, 1, 12, 65535, 255, 255},    {646, 1, 12, 65535, 255, 255},
    {643, 1, 12, 65535, 255, 255},    {642, 1, 12, 65535, 255, 255},
    {731, 0, 12, 65535, 255, 255},    {732, 0, 9, 2047, 255, 255},
    {652, 1, 12, 65535, 255, 255},    {648, 1, 12, 65535, 255, 255},
    {649, 1, 12, 65535, 255, 255},    {651, 1, 12, 65535, 255, 255},
    {650, 1, 12, 65535, 255, 255},    {661, 2, 12, 65535, 255, 255},
    {660, 2, 12, 65535, 255, 255},    {707, 1, 12, 65535, 255, 255},
    {709, 1, 12, 65535, 255, 255},    {708, 1, 12, 65535, 255, 255},
    {676, 0, 12, 65535, 255, 255},    {678, 0, 12, 65535, 255, 255},
    {710, 0, 12, 65535, 255, 255},    {711, 1, 12, 65535, 255, 255},
    {712, 1, 12, 65535, 255, 255},    {713, 0, 1, 7935, 255, 255},
    {722, 1, 12, 65535, 255, 255},    {723, 1, 10, 1279, 255, 255},
    {665, 0, 12, 65535, 255, 255},    {662, 1, 12, 65535, 255, 255},
    {663, 1, 12, 65535, 255, 255},    {664, 1, 11, 10495, 255, 255},
    {738, 1, 12, 65535, 255, 255},    {737, 1, 12, 65535, 255, 255},
    {697, 0, 11, 16895, 255, 255},    {698, 13, 12, 65535, 255, 255},
    {761, 0, 5, 14662, 85, 255},      {749, 1, 6, 511, 255, 255},
    {721, 1, 12, 65535, 255, 255},    {733, 0, 12, 65535, 255, 255},
    {677, 0, 12, 65535, 255, 255},    {674, 0, 12, 65535, 255, 255},
    {675, 0, 12, 65535, 255, 255},    {776, 1, 12, 65535, 255, 255},
    {751, 0, 12, 65535, 255, 255},    {694, 2, 4, 511, 255, 255},
    {659, 1, 12, 65535, 255, 255},    {657, 1, 12, 65535, 255, 255},
    {700, 0, 12, 65535, 255, 255},    {703, 0, 12, 65535, 255, 255},
    {670, 2, 12, 65535, 255, 255},    {669, 2, 12, 65535, 255, 255},
    {658, 1, 5, 4351, 255, 255},      {696, 6, 12, 65535, 255, 255},
    {756, 7, 12, 65535, 255, 255},    {757, 7, 12, 65535, 255, 255},
    {772, 2, 12, 65535, 255, 255},    {769, 0, 1, 4095, 255, 255},
    {754, 0, 1, 3885, 255, 255},      {727, 0, 12, 65535, 255, 255},
    {699, 3, 12, 65535, 255, 255},    {705, 1, 12, 65535, 255, 255},
    {704, 1, 0, 1535, 255, 255},      {777, 0, 1, 511, 255, 255},
    {671, 5, 12, 65535, 255, 255},    {728, 0, 12, 65535, 255, 255},
    {729, 2, 12, 65535, 255, 255},    {16387, 0, 12, 65535, 255, 255},
    {672, 0, 12, 65535, 255, 255},    {673, 0, 12, 65535, 255, 255},
    {726, 1, 0, 5178, 255, 255},      {32808, 10, 12, 65535, 255, 255},
    {32807, 10, 12, 65535, 255, 255}, {32810, 11, 12, 65535, 255, 255},
    {32809, 11, 12, 65535, 255, 255}, {32812, 12, 12, 65535, 255, 255},
    {32811, 12, 12, 65535, 255, 255},
};

/* 803914A8-80391734 01DB08 028C+00 2/2 0/0 0/0 .rodata          m_faceTexDataTable__9daAlink_c */
SECTION_RODATA daAlink_FaceTexData const daAlink_c::m_faceTexDataTable[] = {
    0x03DF, 0x0379, 0x03E0, 0x037A, 0x03E1, 0x037B, 0x03DF, 0x0378, 0x03DF, 0x0383, 0x03E2, 0x032C,
    0x03C6, 0x036A, 0x03D5, 0x036B, 0x03B0, 0x032D, 0x03B1, 0x032E, 0x03E6, 0x0382, 0x03E5, 0x0381,
    0x03F2, 0x0398, 0x03C3, 0x0353, 0x03AF, 0x0398, 0x03F0, 0x0396, 0x03F4, 0x032C, 0x03F3, 0x032C,
    0x03C5, 0x035C, 0x03AF, 0x0342, 0x03AF, 0x0343, 0x03EE, 0x038E, 0x03EF, 0x038F, 0x03ED, 0x038D,
    0x03D8, 0x036E, 0x03D9, 0x036F, 0x03DB, 0x0373, 0x03D7, 0x036D, 0x03E9, 0x0388, 0x03E4, 0x037D,
    0x03D1, 0x0367, 0x03D2, 0x0368, 0x03AF, 0x034A, 0x03AF, 0x034B, 0x03AF, 0x034C, 0x03AF, 0x034D,
    0x03AF, 0x034E, 0x03AF, 0x0391, 0x03E7, 0x0386, 0x03B4, 0x032C, 0x03BC, 0x032C, 0x03AF, 0x0390,
    0x03C9, 0x035E, 0x03C7, 0x035D, 0x03CA, 0x035F, 0x03AF, 0x0395, 0x03AF, 0x0341, 0x03AF, 0x0351,
    0x03AF, 0x0352, 0x03AF, 0x0349, 0x03AF, 0x0344, 0x03AF, 0x0345, 0x03AF, 0x0346, 0x03BD, 0x032C,
    0x03BE, 0x032C, 0x03EA, 0x0389, 0x03AF, 0x038A, 0x03CB, 0x032C, 0x03AF, 0x0355, 0x03AF, 0x0354,
    0x03AF, 0x0350, 0x03AF, 0x034F, 0x03B8, 0x0334, 0x03B6, 0x0332, 0x03B7, 0x0333, 0x03B5, 0x0331,
    0x03AF, 0x0336, 0x03AF, 0x0337, 0x03B9, 0x032C, 0x03AF, 0x0338, 0x03AF, 0x0339, 0x03AF, 0x0335,
    0x03DC, 0x0335, 0x03DE, 0x0335, 0x03DA, 0x0370, 0x03AF, 0x033E, 0x03D3, 0x032C, 0x03BB, 0x033C,
    0x03AF, 0x033B, 0x03BA, 0x033A, 0x03CE, 0x0364, 0x03CF, 0x0365, 0x03EB, 0x038B, 0x03EC, 0x038C,
    0x03D4, 0x0369, 0x03C0, 0x032C, 0x03C1, 0x033F, 0x03C1, 0x0340, 0x03D0, 0x0366, 0x03C2, 0x032C,
    0x03AF, 0x035A, 0x03C4, 0x035B, 0x03BF, 0x032C, 0x03C8, 0x032C, 0x1045, 0x103B, 0x1046, 0x032C,
    0x1041, 0x1037, 0x1042, 0x1038, 0x1043, 0x1039, 0x1047, 0x103C, 0x1040, 0x1036, 0x1044, 0x103A,
    0x103F, 0x032C, 0x03AF, 0x2032, 0x03AF, 0x2033, 0x2039, 0x2034, 0x03AF, 0x5054, 0x03AF, 0x5055,
    0x5059, 0x5056, 0x03E8, 0x0387, 0x03AF, 0x0372, 0x03AF, 0x0384, 0x03AF, 0x0385, 0x03D6, 0x036C,
    0x03AF, 0x0392, 0x03AF, 0x0393, 0x03AF, 0x0377, 0x03AF, 0x0361, 0x03AF, 0x0362, 0x03CD, 0x0363,
    0x03AF, 0x033D, 0x03F1, 0x0397, 0x03DC, 0x032C, 0x03DD, 0x032C, 0x03DE, 0x032C, 0x03B3, 0x0330,
    0x03CC, 0x0360, 0x03AF, 0x0348, 0x03AF, 0x0347, 0x03AF, 0x0358, 0x03AF, 0x0359, 0x03AF, 0x0356,
    0x03AF, 0x0357, 0x6018, 0x6015, 0x03AF, 0x7070, 0x03AF, 0x7071, 0x03E3, 0x037C, 0x03B2, 0x032F,
    0x03AF, 0x0394, 0x0417, 0x03A9, 0x0418, 0x03AA, 0x041A, 0x03A7, 0x041E, 0x03A7, 0x041B, 0x03A7,
    0x040E, 0x03A7, 0x040C, 0x03A7, 0x040F, 0x03A7, 0x0410, 0x03A7, 0x0420, 0x03A7, 0x0415, 0x03A7,
    0x0416, 0x03A7, 0x040B, 0x03A7, 0x0411, 0x03A7, 0x041F, 0x03A7, 0x040A, 0x03A7, 0x0409, 0x03A7,
    0x0412, 0x03A7, 0x041C, 0x03A7, 0x041D, 0x03A7, 0x0419, 0x03AB, 0x0413, 0x03A8, 0x0414, 0x03A7,
    0x040D, 0x03A7,
};
COMPILER_STRIP_GATE(0x803914A8, &daAlink_c::m_faceTexDataTable);

/* 80391734-80391740 01DD94 000C+00 1/1 0/0 0/0 .rodata          @5908 */
SECTION_RODATA static u8 const lit_5908[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391734, &lit_5908);

/* 80391740-80391754 01DDA0 0014+00 0/1 0/0 0/0 .rodata          atnNormalType1$6976 */
#pragma push
#pragma force_active on
static int const atnNormalType1[5] = {4, 1, 1, 2, 0};
#pragma pop

/* 80391754-80391768 01DDB4 0014+00 0/1 0/0 0/0 .rodata          atnNormalType2$6977 */
#pragma push
#pragma force_active on
static int const atnNormalType2[5] = {3, 0, 0, 1, 1};
#pragma pop

/* 80391768-8039177C 01DDC8 0014+00 0/1 0/0 0/0 .rodata          atnNormalType3$6978 */
#pragma push
#pragma force_active on
static int const atnNormalType3[5] = {4, 1, 1, 0, 0};
#pragma pop

/* 8039177C-80391790 01DDDC 0014+00 0/1 0/0 0/0 .rodata          atnFinishType$6979 */
#pragma push
#pragma force_active on
static int const atnFinishType[5] = {2, 1, 0, 5, 1};
#pragma pop

/* 80391790-803917A4 01DDF0 0014+00 0/1 0/0 0/0 .rodata          hitType$6980 */
#pragma push
#pragma force_active on
static int const hitType[5] = {4, 0, 5, 0, 1};
#pragma pop

/* 803917A4-803917B8 01DE04 0014+00 0/1 0/0 0/0 .rodata          hitFinishType$6981 */
#pragma push
#pragma force_active on
static int const hitFinishType[5] = {2, 1, 0, 5, 0};
#pragma pop

/* 803917B8-803917CC 01DE18 0014+00 0/1 0/0 0/0 .rodata          normalType1$6982 */
#pragma push
#pragma force_active on
static int const normalType1_6982[5] = {0, 2, 1, 2, 1};
#pragma pop

/* 803917CC-803917E0 01DE2C 0014+00 0/1 0/0 0/0 .rodata          normalType2$6983 */
#pragma push
#pragma force_active on
static int const normalType2[5] = {1, 1, 2, 1, 2};
#pragma pop

/* 803917E0-803917F4 01DE40 0014+00 0/1 0/0 0/0 .rodata          normalType3$6984 */
#pragma push
#pragma force_active on
static int const normalType3[5] = {4, 0, 1, 2, 1};
#pragma pop

/* 803917F4-80391808 01DE54 0014+00 0/1 0/0 0/0 .rodata          finishType$6985 */
#pragma push
#pragma force_active on
static int const finishType[5] = {2, 0, 0, 5, 1};
#pragma pop

/* 80391808-80391858 01DE68 0050+00 0/1 0/0 0/0 .rodata          cutParamTable$7312 */
#pragma push
#pragma force_active on
SECTION_RODATA static daAlink_cutParamTbl const cutParamTable_7312[5] = {
    {
        daAlink_c::ANM_CUT_NM_VERTICAL,
        0x6F,
        daAlink_c::CUT_TYPE_NM_VERTICAL,
        1,
        0,
        0,
        6.0f,
    },
    {
        daAlink_c::ANM_CUT_NM_LEFT,
        0x6F,
        daAlink_c::CUT_TYPE_NM_LEFT,
        1,
        0,
        0,
        5.0f,
    },
    {
        daAlink_c::ANM_CUT_NM_RIGHT,
        0x6F,
        daAlink_c::CUT_TYPE_NM_RIGHT,
        1,
        0,
        0,
        5.0f,
    },
    {
        daAlink_c::ANM_CUT_COMBO_STAB,
        0x6F,
        daAlink_c::CUT_TYPE_COMBO_STAB,
        14,
        0,
        0,
        6.0f,
    },
    {
        daAlink_c::ANM_CUT_NM_STAB,
        0x70,
        daAlink_c::CUT_TYPE_NM_STAB,
        14,
        0,
        0,
        6.0f,
    },
};
COMPILER_STRIP_GATE(0x80391808, &cutParamTable_7312);
#pragma pop

/* 80391858-803918B8 01DEB8 0060+00 0/1 0/0 0/0 .rodata          cutParamTable$7455 */
#pragma push
#pragma force_active on
SECTION_RODATA static daAlink_cutParamTbl const cutParamTable_7455[6] = {
    {
        daAlink_c::ANM_CUT_FINISH_LEFT,
        0x6F,
        daAlink_c::CUT_TYPE_FINISH_LEFT,
        1,
        100,
        100,
        5.0f,
    },
    {
        daAlink_c::ANM_CUT_FINISH_VERTICAL,
        0x6F,
        daAlink_c::CUT_TYPE_FINISH_VERTICAL,
        1,
        100,
        100,
        8.0f,
    },
    {
        daAlink_c::ANM_CUT_FINISH_STAB,
        0x6F,
        daAlink_c::CUT_TYPE_FINISH_STAB,
        14,
        100,
        100,
        10.0f,
    },
    {
        daAlink_c::ANM_CUT_MORTAL_DRAW_A,
        0x6F,
        daAlink_c::CUT_TYPE_MORTAL_DRAW_A,
        1,
        5,
        12,
        10.0f,
    },
    {
        daAlink_c::ANM_CUT_MORTAL_DRAW_B,
        0x6F,
        daAlink_c::CUT_TYPE_MORTAL_DRAW_B,
        1,
        7,
        14,
        10.0f,
    },
    {
        daAlink_c::ANM_CUT_FINISH_RIGHT,
        0x6F,
        daAlink_c::CUT_TYPE_FINISH_RIGHT,
        1,
        100,
        100,
        10.0f,
    },
};
COMPILER_STRIP_GATE(0x80391858, &cutParamTable_7455);
#pragma pop

/* 803918B8-803918C4 01DF18 000C+00 1/1 0/0 0/0 .rodata          localCenter$11047 */
static Vec const localCenter = {-15.0f, 0.0f, 18.0f};

/* 803918C4-803918D0 01DF24 000C+00 1/1 0/0 0/0 .rodata          localPos$11819 */
static Vec const localPos = {3.45f, 45.32f, -7.0f};

/* 803918D0-803918DC 01DF30 000C+00 1/1 0/0 0/0 .rodata          slingLocalPos$12042 */
static Vec const slingLocalPos = {10.0f, 10.0f, 0.0f};

/* 803918DC-803918E8 01DF3C 000C+00 1/1 0/0 0/0 .rodata          localSidePos$14270 */
static Vec const localSidePos = {2.3f, -15.5f, 15.6f};

/* 803918E8-803918F4 01DF48 000C+00 0/1 0/0 0/0 .rodata          m_handLeftOutSidePos__9daAlink_c */
#pragma push
#pragma force_active on
SECTION_RODATA Vec const daAlink_c::m_handLeftOutSidePos = {
    9.0f, -5.0f, 3.0f
};
COMPILER_STRIP_GATE(0x803918E8, &daAlink_c::m_handLeftOutSidePos);
#pragma pop

/* 803918F4-80391900 01DF54 000C+00 0/1 0/0 0/0 .rodata          m_handRightOutSidePos__9daAlink_c
 */
#pragma push
#pragma force_active on
SECTION_RODATA Vec const daAlink_c::m_handRightOutSidePos = {
    9.0f, -5.0f, -3.0f
};
COMPILER_STRIP_GATE(0x803918F4, &daAlink_c::m_handRightOutSidePos);
#pragma pop

/* 80391900-8039190C 01DF60 000C+00 0/1 0/0 1/1 .rodata          m_handLeftInSidePos__9daAlink_c */
SECTION_RODATA Vec const daAlink_c::m_handLeftInSidePos = {
    9.0f, 5.0f, 3.0f
};
COMPILER_STRIP_GATE(0x80391900, &daAlink_c::m_handLeftInSidePos);

/* 8039190C-80391918 01DF6C 000C+00 0/1 0/0 1/1 .rodata          m_handRightInSidePos__9daAlink_c */
SECTION_RODATA Vec const daAlink_c::m_handRightInSidePos = {
    9.0f, 5.0f, -3.0f
};
COMPILER_STRIP_GATE(0x8039190C, &daAlink_c::m_handRightInSidePos);

/* 80391918-80391924 01DF78 000C+00 0/1 0/0 0/0 .rodata          horseLocalLeft$17678 */
#pragma push
#pragma force_active on
static const Vec horseLocalLeft = {20.0f, 0.0f, 0.0f};
#pragma pop

/* 80391924-80391930 01DF84 000C+00 0/1 0/0 0/0 .rodata          horseLocalRight$17679 */
#pragma push
#pragma force_active on
static const Vec horseLocalRight = {-20.0f, 0.0f, 0.0f};
#pragma pop

/* 80391930-8039193C 01DF90 000C+00 0/1 0/0 0/0 .rodata          horseLocalBack$17680 */
#pragma push
#pragma force_active on
static const Vec horseLocalBack = {0.0f, 0.0f, -200.0f};
#pragma pop

/* 8039193C-80391948 01DF9C 000C+00 0/1 0/0 0/0 .rodata          boarLocalLeft$17681 */
#pragma push
#pragma force_active on
static const Vec boarLocalLeft = {200.0f, 0.0f, -18.0f};
#pragma pop

/* 80391948-80391954 01DFA8 000C+00 0/1 0/0 0/0 .rodata          boarLocalRight$17682 */
#pragma push
#pragma force_active on
static const Vec boarLocalRight = {-200.0f, 0.0f, -18.0f};
#pragma pop

/* 80391954-80391960 01DFB4 000C+00 1/1 0/0 0/0 .rodata          localHorseRun$18095 */
static const Vec localHorseRun_18095 = {15.0f, 0.0f, -45.0f};

/* 80391960-8039196C 01DFC0 000C+00 1/1 0/0 0/0 .rodata          localHorseRun$18103 */
static const Vec localHorseRun_18103 = {30.0f, 0.0f, -10.0f};

/* 8039196C-80391978 01DFCC 000C+00 1/1 0/0 0/0 .rodata          localOffset$18237 */
static const Vec localOffset_18237 = {-30.0f, -18.0f, 0.0f};

/* 80391978-80391984 01DFD8 000C+00 1/1 0/0 0/0 .rodata          @18938 */
SECTION_RODATA static u8 const lit_18938[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391978, &lit_18938);

/* 80391984-80391990 01DFE4 000C+00 1/1 0/0 0/0 .rodata          boarRideOffset$19147 */
SECTION_RODATA static Vec const boarRideOffset = {
    -0.87f, 3.3299999f, -23.77f
};
COMPILER_STRIP_GATE(0x80391984, &boarRideOffset);

/* 80391990-8039199C 01DFF0 000C+00 1/1 0/0 0/0 .rodata          leftOffset$19386 */
SECTION_RODATA static Vec const leftOffset = {
    75.0f, 102.0f, 6.224f
};
COMPILER_STRIP_GATE(0x80391990, &leftOffset);

/* 8039199C-803919A8 01DFFC 000C+00 1/1 0/0 0/0 .rodata          rightOffset$19387 */
SECTION_RODATA static Vec const rightOffset = {
    -75.0f, 102.0f, 6.221f
};
COMPILER_STRIP_GATE(0x8039199C, &rightOffset);

/* 803919A8-803919D8 01E008 0030+00 0/1 0/0 0/0 .rodata          cutParamTable$19765 */
#pragma push
#pragma force_active on
static daAlink_cutHorseParamTbl const cutParamTable_19765[] = {
    {
        daAlink_c::FTANM_UNK_20,
        0x91,
        0x10C,
        0x00,
        0x0E,
        0x22,
    },
    {
        daAlink_c::FTANM_UNK_21,
        0x92,
        0x10D,
        0x00,
        0x13,
        0x23,
    },
    {
        daAlink_c::FTANM_UNK_22,
        0x93,
        0x10E,
        0x00,
        0x13,
        0x2A,
    },
    {
        daAlink_c::FTANM_UNK_23,
        0x94,
        0x10F,
        0x00,
        0x00,
        0x2A,
    },
};
COMPILER_STRIP_GATE(0x803919A8, &cutParamTable_19765);
#pragma pop

/* 803919D8-803919E4 01E038 000A+02 1/1 0/0 0/0 .rodata          anmIdx$19945 */
SECTION_RODATA static u16 const anmIdx[] = {
    0x00BA,
    0x00B8,
    0x00BB,
    0x00BC,
    0x00B9,
};
COMPILER_STRIP_GATE(0x803919D8, &anmIdx);

/* 803919E4-803919F0 01E044 000C+00 1/1 0/0 0/0 .rodata          localPaddleTop$20605 */
SECTION_RODATA static Vec const localPaddleTop = {
    0.0f,
    0.0f,
    -158.0f,
};
COMPILER_STRIP_GATE(0x803919E4, &localPaddleTop);

/* 803919F0-803919FC 01E050 000C+00 1/1 0/0 0/0 .rodata          underOffsetY$23302 */
SECTION_RODATA static f32 const underOffsetY[3] = {
    15.0f, 90.0f, 150.0f,
};
COMPILER_STRIP_GATE(0x803919F0, &underOffsetY);

/* 803919FC-80391A08 01E05C 000C+00 1/1 0/0 0/0 .rodata          hsVec$28749 */
SECTION_RODATA static Vec const hsVec = {
    0.0f, 0.0f, 5.0f
};
COMPILER_STRIP_GATE(0x803919FC, &hsVec);

/* 80391A08-80391A14 01E068 000C+00 1/1 0/0 0/0 .rodata          hookRoot$29726 */
SECTION_RODATA static Vec const hookRoot = {
    0.0f,
    0.0f,
    23.5f,
};
COMPILER_STRIP_GATE(0x80391A08, &hookRoot);

/* 80391A14-80391A20 01E074 000C+00 1/1 0/0 0/0 .rodata          bottleTop$32160 */
SECTION_RODATA static Vec const bottleTop = {
    0.0f,
    25.0f,
    0.0f,
};
COMPILER_STRIP_GATE(0x80391A14, &bottleTop);

/* 80391A20-80391A2C 01E080 000C+00 1/1 0/0 0/0 .rodata          kandelaarOffset$32655 */
SECTION_RODATA static Vec const kandelaarOffset = {
    0.0f, -17.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391A20, &kandelaarOffset);

/* 80391A2C-80391A38 01E08C 000C+00 1/1 0/0 0/0 .rodata          @33690 */
SECTION_RODATA static u8 const lit_33690[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391A2C, &lit_33690);

/* 80391A38-80391A44 01E098 000C+00 0/1 0/0 0/0 .rodata          ironBallPosVec$34212 */
static Vec const ironBallPosVec = {
    0.0f, 0.0f, -42.0f
};

/* 80391A44-80391A50 01E0A4 000C+00 0/1 0/0 0/0 .rodata          handCenterOffsetVec$34213 */
static Vec const handCenterOffsetVec = {
    2.0f, -25.0f, 12.5f
};

/* 80391A50-80391A5C 01E0B0 000C+00 1/1 0/0 0/0 .rodata          @34968 */
SECTION_RODATA static u8 const lit_34968[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80391A50, &lit_34968);

/* 80391A5C-80391B5C 01E0BC 00FF+01 1/1 0/0 0/0 .rodata          getSeType$37390 */
SECTION_RODATA static u8 const getSeType[255] = {
    0x08, 0x03, 0x03, 0x03, 0x03, 0x03, 0x02, 0x02, 0x08, 0x08, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03,
    0x03, 0x03, 0x03, 0x08, 0x08, 0x08, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x02, 0x08,
    0x02, 0x02, 0x00, 0x01, 0x01, 0x02, 0x01, 0x08, 0x01, 0x08, 0x01, 0x01, 0x01, 0x08, 0x08, 0x08,
    0x01, 0x01, 0x08, 0x02, 0x08, 0x01, 0x01, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x01, 0x01, 0x02,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x08, 0x08, 0x01,
    0x01, 0x01, 0x08, 0x08, 0x08, 0x01, 0x01, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x01, 0x02, 0x02, 0x02, 0x02, 0x01, 0x02, 0x08, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x08, 0x08, 0x08, 0x01, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x02, 0x02, 0x02, 0x02, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x02, 0x02, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x02, 0x01, 0x02, 0x02,
    0x08, 0x01, 0x01, 0x01, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04,
    0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x06, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x02, 0x02, 0x01, 0x02, 0x02, 0x02, 0x08,
    0x08, 0x08, 0x08, 0x02, 0x03, 0x03, 0x01, 0x08, 0x03, 0x02, 0x02, 0x02, 0x02, 0x01, 0x02,
};
COMPILER_STRIP_GATE(0x80391A5C, &getSeType);

/* 80391B5C-80391B7C 01E1BC 0020+00 1/1 0/0 0/0 .rodata          bgmLabel$37391 */
static u32 const bgmLabel[8] = {
    Z2BGM_HEART_GET,       Z2BGM_ITEM_GET,       Z2BGM_ITEM_GET_MINI, Z2BGM_ITEM_GET_ME,
    Z2BGM_ITEM_GET_INSECT, Z2BGM_ITEM_GET_SMELL, Z2BGM_ITEM_GET_POU,  Z2BGM_ITEM_GET_ME_S,
};

/* 80391B7C-80391B8C 01E1DC 0010+00 1/1 0/0 0/0 .rodata          rupeeCount$37407 */
static int const rupeeCount[4] = {20, 50, 100, 200};

/* 80391B8C-80391BA0 01E1EC 0014+00 0/1 0/0 0/0 .rodata          heartPieceMessage$37580 */
#pragma push
#pragma force_active on
static u32 const heartPieceMessage[5] = {0x86, 0x9C, 0x9D, 0x9E, 0x9F};
#pragma pop

/* 80391BA0-80391BAC 01E200 000C+00 0/1 0/0 0/0 .rodata          effName$39419 */
#pragma push
#pragma force_active on
SECTION_RODATA static u16 const effName_39419[] = {
    0x09F5, 0x09F6, 0x09F7, 0x09F8, 0x09F9, 0x09FA,
};
COMPILER_STRIP_GATE(0x80391BA0, &effName_39419);
#pragma pop

/* 80391BAC-80391BB8 01E20C 000C+00 1/1 0/0 0/0 .rodata          smokeParticleScale$39643 */
SECTION_RODATA static Vec const smokeParticleScale_39643 = {
    0.69999999f, 0.69999999f, 0.69999999f
};
COMPILER_STRIP_GATE(0x80391BAC, &smokeParticleScale_39643);

/* 80391BB8-80391BC4 01E218 000C+00 1/1 0/0 0/0 .rodata          wolfWaterCenterScale$39644 */
SECTION_RODATA static Vec const wolfWaterCenterScale = {
    1.2f, 1.2f, 1.2f
};
COMPILER_STRIP_GATE(0x80391BB8, &wolfWaterCenterScale);

/* 80391BC4-80391BD0 01E224 000C+00 0/1 0/0 0/0 .rodata          waterScale$39762 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const waterScale_39762 = {
    0.57999998f, 0.57999998f, 0.57999998f
};
COMPILER_STRIP_GATE(0x80391BC4, &waterScale_39762);
#pragma pop

/* 80391BD0-80391BDC 01E230 000C+00 0/1 0/0 0/0 .rodata          waterCenterScale$39763 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const waterCenterScale = {
    1.2f, 1.2f, 1.2f
};
COMPILER_STRIP_GATE(0x80391BD0, &waterCenterScale);
#pragma pop

/* 80391BDC-80391BE8 01E23C 000C+00 0/1 0/0 0/0 .rodata          waterSmokeScale$39764 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const waterSmokeScale = {
    0.69999999f, 0.69999999f, 0.69999999f
};
COMPILER_STRIP_GATE(0x80391BDC, &waterSmokeScale);
#pragma pop

/* 80391BE8-80391BF4 01E248 000C+00 0/1 0/0 0/0 .rodata          smokeParticleScale$39891 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const smokeParticleScale_39891 = {
    0.8f, 0.8f, 0.8f
};
COMPILER_STRIP_GATE(0x80391BE8, &smokeParticleScale_39891);
#pragma pop

/* 80391BF4-80391C00 01E254 000C+00 0/1 0/0 0/0 .rodata          waterScale$39892 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const waterScale_39892 = {
    1.25f, 1.25f, 1.25f
};
COMPILER_STRIP_GATE(0x80391BF4, &waterScale_39892);
#pragma pop

/* 80391C00-80391C0C 01E260 000C+00 0/1 0/0 0/0 .rodata          wolfSmokeScale$39893 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const wolfSmokeScale = {
    0.69999999f, 0.69999999f, 0.69999999f
};
COMPILER_STRIP_GATE(0x80391C00, &wolfSmokeScale);
#pragma pop

/* 80391C0C-80391C18 01E26C 000C+00 0/1 0/0 0/0 .rodata          shikoScale$40012 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const shikoScale = {
    0.69999999f, 0.69999999f, 0.69999999f
};
COMPILER_STRIP_GATE(0x80391C0C, &shikoScale);
#pragma pop

/* 80391C18-80391C24 01E278 000C+00 0/1 0/0 0/0 .rodata          pushedSlip$40013 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const pushedSlip = {
    0.8f, 0.8f, 0.8f
};
COMPILER_STRIP_GATE(0x80391C18, &pushedSlip);
#pragma pop

/* 80391C24-80391C30 01E284 000C+00 0/1 0/0 0/0 .rodata          loseScale$40014 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const loseScale = {
    1.1f, 1.1f, 1.1f
};
COMPILER_STRIP_GATE(0x80391C24, &loseScale);
#pragma pop

/* 80391C30-80391C3C 01E290 000C+00 1/1 0/0 0/0 .rodata          releaeScale$40567 */
SECTION_RODATA static Vec const releaeScale = {
    0.8f, 0.8f, 0.8f,
};
COMPILER_STRIP_GATE(0x80391C30, &releaeScale);

/* 80391C3C-80391C48 01E29C 000C+00 0/1 0/0 0/0 .rodata          lightAParticleScale$40829 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const lightAParticleScale = {
    1.0f, 1.171f, 1.0f
};
COMPILER_STRIP_GATE(0x80391C3C, &lightAParticleScale);
#pragma pop

/* 80391C48-80391C54 01E2A8 000C+00 0/1 0/0 0/0 .rodata          lightALocalTrans$40830 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const lightALocalTrans = {
    68.0f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391C48, &lightALocalTrans);
#pragma pop

/* 80391C54-80391C60 01E2B4 000C+00 0/1 0/0 0/0 .rodata          localOffset$40952 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localOffset_40952 = {
    0.0f, -10.0f, -10.0f
};
COMPILER_STRIP_GATE(0x80391C54, &localOffset_40952);
#pragma pop

/* 80391C60-80391C6C 01E2C0 000C+00 0/1 0/0 0/0 .rodata          localScale0$40953 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localScale0 = {
    0.69999999f, 0.85f, 1.5f
};
COMPILER_STRIP_GATE(0x80391C60, &localScale0);
#pragma pop

/* 80391C6C-80391C78 01E2CC 000C+00 0/1 0/0 0/0 .rodata          localScale1$40954 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localScale1 = {
    1.0f, 0.85f, 1.5f
};
COMPILER_STRIP_GATE(0x80391C6C, &localScale1);
#pragma pop

/* 80391C78-80391C84 01E2D8 000C+00 0/1 0/0 0/0 .rodata          waterEffScale$41082 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const waterEffScale = {
    1.5f, 1.5f, 1.5f
};
COMPILER_STRIP_GATE(0x80391C78, &waterEffScale);
#pragma pop

/* 80391C84-80391C9C 01E2E4 0018+00 0/1 0/0 0/0 .rodata          leftTransNormal$41090 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const leftTransNormal[] = {
    {0.0f, 0.0f, 0.0f},
    {0.0f, 30.0f, 0.0f},
};
COMPILER_STRIP_GATE(0x80391C84, &leftTransNormal);
#pragma pop

/* 80391C9C-80391CCC 01E2FC 0030+00 0/1 0/0 0/0 .rodata          leftTransLight$41095 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const leftTransLight[] = {
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 35.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
};
COMPILER_STRIP_GATE(0x80391C9C, &leftTransLight);
#pragma pop

/* 80391CCC-80391CD8 01E32C 000C+00 0/1 0/0 0/0 .rodata          effNameLarge$41096 */
#pragma push
#pragma force_active on
SECTION_RODATA static u16 const effNameLarge[] = {
    0x0BA5, 0x0BA6, 0x0BA7, 0x0BA8, 0x0BA9, 0x0BAA,
};
COMPILER_STRIP_GATE(0x80391CCC, &effNameLarge);
#pragma pop

/* 80391CD8-80391D20 01E338 0048+00 0/1 0/0 0/0 .rodata          leftTransLarge$41100 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const leftTransLarge[] = {
    {0.0f, 0.0f, 0.0f},
    {0.0f, 35.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
    {0.0f, 45.0f, 0.0f},
    {0.0f, 30.0f, 0.0f},
    {0.0f, 50.0f, 0.0f},
};
COMPILER_STRIP_GATE(0x80391CD8, &leftTransLarge);
#pragma pop

/* 80391D20-80391D38 01E380 0018+00 0/1 0/0 0/0 .rodata          leftTransWater$41105 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const leftTransWater[] = {
    {0.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, 0.0f},
};
COMPILER_STRIP_GATE(0x80391D20, &leftTransWater);
#pragma pop

/* 80391D38-80391D44 01E398 000C+00 1/1 0/0 0/0 .rodata          effName$41208 */
SECTION_RODATA static u16 const effName_41208[] = {
    0x09D0, 0x09D1, 0x09D2, 0x09D3, 0x09D4, 0x09D5,
};
COMPILER_STRIP_GATE(0x80391D38, &effName_41208);

/* 80391D44-80391D54 01E3A4 0010+00 1/1 0/0 0/0 .rodata          swordUpColor$41733 */
static GXColorS10 const swordUpColor[2] = {{13, 10, 2, 255}, {28, 16, 4, 255}};

/* 80391D54-80391D60 01E3B4 000C+00 1/1 0/0 0/0 .rodata          swordCutSplashScale$41755 */
SECTION_RODATA static Vec const swordCutSplashScale = {
    0.6f, 0.6f, 0.6f
};
COMPILER_STRIP_GATE(0x80391D54, &swordCutSplashScale);

/* 80391D60-80391D6C 01E3C0 000C+00 0/1 0/0 0/0 .rodata          fairyScale$41951 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const fairyScale = {
    0.5f, 0.5f, 0.5f
};
COMPILER_STRIP_GATE(0x80391D60, &fairyScale);
#pragma pop

/* 80391D6C-80391D78 01E3CC 000C+00 0/1 0/0 0/0 .rodata          chuchuLocalOffset$41952 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const chuchuLocalOffset = {
    0.0f, 15.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391D6C, &chuchuLocalOffset);
#pragma pop

/* 80391D78-80391D84 01E3D8 000C+00 0/1 0/0 0/0 .rodata          chuchuScale$41953 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const chuchuScale = {
    0.8f, 0.8f, 0.8f
};
COMPILER_STRIP_GATE(0x80391D78, &chuchuScale);
#pragma pop

/* 80391D84-80391D94 01E3E4 0010+00 1/1 0/0 0/0 .rodata          effJoint$42070 */
SECTION_RODATA static u16 const effJoint[2][4] = {
    {0x0007, 0x000C, 0x0010, 0x0022},
    {0x0003, 0x0003, 0x0003, 0x0003},
};
COMPILER_STRIP_GATE(0x80391D84, &effJoint);

/* 80391D94-80391DF4 01E3F4 0060+00 1/1 0/0 0/0 .rodata          effOffset$42071 */
SECTION_RODATA static Vec const effOffset[2][4] = {
    {
        {-5.0f, 0.0f, 0.0f},
        {15.0f, 3.0f, 5.0f},
        {4.0f, -10.0f, 15.0f},
        {0.0f, -5.0f, -7.0f},
    },
    {
        {15.0f, 5.0f, -20.0f},
        {0.0f, -25.0f, 5.0f},
        {15.0f, -5.0f, 20.0f},
        {10.0f, -25.0f, -10.0f},
    }
};
COMPILER_STRIP_GATE(0x80391D94, &effOffset);

/* 80391DF4-80391E00 01E454 000C+00 0/1 0/0 0/0 .rodata          effScale$42225 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const effScale = {
    1.0f, 1.8f, 1.0f
};
COMPILER_STRIP_GATE(0x80391DF4, &effScale);
#pragma pop

/* 80391E00-80391E0C 01E460 000C+00 0/1 0/0 0/0 .rodata          wolfEffScale$42226 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const wolfEffScale = {
    1.0f, 1.0f, 1.5f
};
COMPILER_STRIP_GATE(0x80391E00, &wolfEffScale);
#pragma pop

/* 80391E0C-80391E18 01E46C 000C+00 0/1 0/0 0/0 .rodata          offsetPos$42227 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const offsetPos = {
    0.0f, 0.0f, -10.0f
};
COMPILER_STRIP_GATE(0x80391E0C, &offsetPos);
#pragma pop

/* 80391E18-80391E24 01E478 000C+00 1/1 0/0 0/0 .rodata          localFootOffset$45107 */
SECTION_RODATA static Vec const localFootOffset = {
    6.0f, -5.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391E18, &localFootOffset);

/* 80391E24-80391E30 01E484 000C+00 1/1 0/0 0/0 .rodata          frontOffset$45186 */
SECTION_RODATA static Vec const frontOffset = {
    0.0f, 0.0f, 50.0f
};
COMPILER_STRIP_GATE(0x80391E24, &frontOffset);

/* 80391E30-80391E3C 01E490 000C+00 1/1 0/0 0/0 .rodata          wolfChainBaseOffset$45513 */
SECTION_RODATA static Vec const wolfChainBaseOffset = {
    22.0f, 0.0f, -12.0f
};
COMPILER_STRIP_GATE(0x80391E30, &wolfChainBaseOffset);

/* 80391E3C-80391E48 01E49C 000C+00 1/1 0/0 0/0 .rodata          wolfChainVec$45514 */
SECTION_RODATA static Vec const wolfChainVec = {
    0.0f, 0.0f, -9.0f
};
COMPILER_STRIP_GATE(0x80391E3C, &wolfChainVec);

/* 80391E48-80391E78 01E4A8 0030+00 1/1 0/0 0/0 .rodata          label$45760 */
SECTION_RODATA static u32 const label[12] = {
    Z2SE_WL_V_BREATH_SIT, Z2SE_WL_V_BREATH_WAIT, Z2SE_WL_V_BREATH_WALK, Z2SE_WL_V_BREATH_TIRED,
    Z2SE_WL_V_DASH,       Z2SE_WL_V_BREATH_JUMP, Z2SE_WL_V_SLIP_CLIMB,  Z2SE_WL_V_PUSH_ROCK,
    Z2SE_WL_V_TURN_BACK,  Z2SE_WL_V_HOLD_THROW,  Z2SE_WL_V_FAILED,      Z2SE_WL_V_NOSE,
};
COMPILER_STRIP_GATE(0x80391E48, &label);

/* 80391E78-80391E8C 01E4D8 0014+00 1/1 0/0 0/0 .rodata          normalType0$50859 */
SECTION_RODATA static int const normalType0[] = {
    3, 3, 3, 0, 0,
};
COMPILER_STRIP_GATE(0x80391E78, &normalType0);

/* 80391E8C-80391EA0 01E4EC 0014+00 1/1 0/0 0/0 .rodata          normalType1$50860 */
SECTION_RODATA static int const normalType1_50860[] = {
    0, 0, 0, 3, 3,
};
COMPILER_STRIP_GATE(0x80391E8C, &normalType1_50860);

struct daAlink_WCutParamTbl {
    /* 0x0 */ daAlink_c::daAlink_WANM m_anmID;
    /* 0x4 */ u8 m_cutType;
};  // Size: 0x8

/* 80391EA0-80391EC0 01E500 0020+00 0/1 0/0 0/0 .rodata          dataTabl$51470 */
static const daAlink_WCutParamTbl dataTabl[] = {
    {
        daAlink_c::WANM_ATTACK_B_LEFT,
        daAlink_c::CUT_TYPE_WOLF_B_LEFT,
    },
    {
        daAlink_c::WANM_ATTACK_B_FRONT,
        daAlink_c::CUT_TYPE_WOLF_B_FRONT,
    },
    {
        daAlink_c::WANM_ATTACK_B_TAIL,
        daAlink_c::CUT_TYPE_WOLF_B_BACK,
    },
    {
        daAlink_c::WANM_ATTACK_B_RIGHT,
        daAlink_c::CUT_TYPE_WOLF_B_RIGHT,
    },
};

/* 80391EC0-80391ECC 01E520 000C+00 1/1 0/0 0/0 .rodata          arm1Vec$56040 */
SECTION_RODATA static Vec const arm1Vec = {
    29.0f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391EC0, &arm1Vec);

/* 80391ECC-80391ED8 01E52C 000C+00 1/1 0/0 0/0 .rodata          arm2Vec$56041 */
SECTION_RODATA static Vec const arm2Vec = {
    26.5f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391ECC, &arm2Vec);

/* 80453228-8045322C 001828 0004+00 1/1 0/0 0/0 .sdata2          armJointTable$56027 */
static const u16 armJointTable[] = {
    0x0007,
    0x000C,
};

/* 800A2710-800A29DC 09D050 02CC+00 1/1 0/0 0/0 .text            setArmMatrix__9daAlink_cFv */
int daAlink_c::setArmMatrix() {
    daAlink_footData_c* var_r29 = mFootData2;

    int i;
    for (i = 0; i < 2; i++, var_r29++) {
        for (int j = 0; j < 3; j++) {
            cMtx_copy(mpLinkModel->getAnmMtx(j + armJointTable[i]), var_r29->field_0x14[j]);
        }
        
    }

    if (!field_0x2060->getOldFrameFlg()) {
        return 0;
    }

    var_r29 = mFootData2;
    
    cXyz sp2C;
    csXyz* sp18 = field_0x312a;
    csXyz* sp14 = field_0x3136;

    for (i = 0; i < 2; i++, var_r29++, sp18++, sp14++) {
        u16 temp_r28 = armJointTable[i];
        s16 spA;
        s16 sp8 = 0;

        if ((mProcID == PROC_HOOKSHOT_ROOF_SHOOT || mProcID == PROC_HOOKSHOT_WALL_SHOOT) && field_0x3020 == i) {
            spA = mProcVar3.field_0x300e;
            if (mProcID == PROC_HOOKSHOT_WALL_SHOOT) {
                sp8 = (mProcVar4.field_0x3010 - shape_angle.y);
            }
        } else {
            spA = 0;
        }

        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(temp_r28), spA, sp8, var_r29->field_0x6, 0, NULL);

        mDoMtx_stack_c::ZXYrotM(*sp18);
        mDoMtx_copy(mDoMtx_stack_c::get(), mpLinkModel->getAnmMtx(temp_r28));
        mDoMtx_stack_c::multVec(&arm1Vec, &sp2C);
        temp_r28++;

        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(temp_r28), spA, sp8, var_r29->field_0x4, 0, &sp2C);

        mDoMtx_stack_c::ZXYrotM(*sp14);
        mDoMtx_copy(mDoMtx_stack_c::get(), mpLinkModel->getAnmMtx(temp_r28));
        mDoMtx_stack_c::multVec(&arm2Vec, &sp2C);
        temp_r28++;

        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(temp_r28), spA, sp8, var_r29->field_0x2, 0, &sp2C);
        temp_r28++;

        J3DTransformInfo* temp_r3_3 = field_0x2060->getOldFrameTransInfo(temp_r28);
        cXyz sp20(temp_r3_3->mTranslate.x, temp_r3_3->mTranslate.y, temp_r3_3->mTranslate.z);
        mDoMtx_stack_c::multVec(&sp20, &sp2C);

        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(temp_r28), spA, sp8, var_r29->field_0x2, 0, &sp2C);
    }

    return 1;
}

/* 80391ED8-80391EE4 01E538 000C+00 0/1 0/0 0/0 .rodata          leg1Vec$56150 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const leg1Vec = {
    30.0f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391ED8, &leg1Vec);
#pragma pop

/* 80391EE4-80391EF0 01E544 000C+00 0/1 0/0 0/0 .rodata          leg2Vec$56151 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const leg2Vec = {
    39.363499f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391EE4, &leg2Vec);
#pragma pop

/* 80391EF0-80391EFC 01E550 000C+00 0/1 0/0 0/0 .rodata          footVec$56152 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const footVec = {
    14.18f, 0.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391EF0, &footVec);
#pragma pop

/* 8045322C-80453230 00182C 0004+00 1/1 0/0 0/0 .sdata2          footJointTable$56137 */
static const u16 footJointTable[] = {
    0x0012,
    0x0017,
};

/* 800A29DC-800A2C24 09D31C 0248+00 1/1 0/0 0/0 .text            setFootMatrix__9daAlink_cFv */
int daAlink_c::setFootMatrix() {
    daAlink_footData_c* var_r30 = mFootData1;

    int i;
    for (i = 0; i < 2; i++, var_r30++) {
        for (int j = 0; j < 3; j++) {
            cMtx_copy(mpLinkModel->getAnmMtx(j + footJointTable[i]), var_r30->field_0x14[j]);
        }
        
    }

    if (!field_0x2060->getOldFrameFlg()) {
        return 0;
    }

    var_r30 = mFootData1;
    cXyz sp10;

    if (mProcID == PROC_HORSE_GETOFF) {
        current.angle.y = shape_angle.y;
        if (field_0x2fc0 == 0) {
            shape_angle.y -= 0x4000;
        } else {
            shape_angle.y += 0x4000;
        }
    }

    for (i = 0; i < 2; i++, var_r30++) {
        u16 temp_r29 = footJointTable[i];

        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(temp_r29), var_r30->field_0x6, 0, 0, 0, NULL);
        mDoMtx_stack_c::multVec(&leg1Vec, &sp10);
        temp_r29++;

        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(temp_r29), var_r30->field_0x4, 0, 0, 0, &sp10);
        mDoMtx_stack_c::multVec(&leg2Vec, &sp10);
        temp_r29++;

        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(temp_r29), var_r30->field_0x2, 0, 0, 0, &sp10);
        temp_r29++;
        mDoMtx_stack_c::multVec(&footVec, &sp10);

        setMatrixWorldAxisRot(mpLinkModel->getAnmMtx(temp_r29), var_r30->field_0x2, 0, 0, 0, &sp10);
    }

    if (mProcID == PROC_HORSE_GETOFF) {
        shape_angle.y = current.angle.y;
    }

    return 1;
}

/* 800A2C24-800A2CE0 09D564 00BC+00 3/3 0/0 0/0 .text            setMatrixOffset__9daAlink_cFPff */
void daAlink_c::setMatrixOffset(f32* param_0, f32 param_1) {
    if (param_0 != &mSinkShapeOffset) {
        cLib_addCalc(param_0, param_1, 0.5f, 7.5f, 2.5f);
    } else if (mProcID == PROC_TOOL_DEMO) {
        return;
    }

    mpLinkModel->getBaseTRMtx()[1][3] += *param_0;
    mInvMtx[1][3] -= *param_0;

    mDoMtx_stack_c::XrotS(shape_angle.x);
    mDoMtx_stack_c::concat(mInvMtx);
    mDoMtx_copy(mDoMtx_stack_c::get(), field_0x2be8);
}

/* 800A2CE0-800A3430 09D620 0750+00 3/3 0/0 0/0 .text
 * setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi          */
int daAlink_c::setLegAngle(f32 param_0, daAlink_footData_c* param_1, s16* param_2,
                                s16* param_3, int param_4) {
    // NONMATCHING
    return 0;
}

/* 80391EFC-80391F08 01E55C 000C+00 0/1 0/0 0/0 .rodata          localLeftFootOffset$56542 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localLeftFootOffset = {
    -3.0f, 13.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391EFC, &localLeftFootOffset);
#pragma pop

/* 80391F08-80391F14 01E568 000C+00 0/1 0/0 0/0 .rodata          localRightFootOffset$56543 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localRightFootOffset = {
    -3.0f, -13.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F08, &localRightFootOffset);
#pragma pop

/* 80391F14-80391F20 01E574 000C+00 0/1 0/0 0/0 .rodata          localLeftToeOffset$56544 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localLeftToeOffset = {
    10.0f, 5.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F14, &localLeftToeOffset);
#pragma pop

/* 80391F20-80391F2C 01E580 000C+00 0/1 0/0 0/0 .rodata          localRightToeOffset$56545 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localRightToeOffset = {
    10.0f, -5.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F20, &localRightToeOffset);
#pragma pop

/* 80450690-80450694 000110 0004+00 20/20 0/0 0/0 .sdata           l_autoUpHeight */
SECTION_SDATA static f32 l_autoUpHeight = 30.010000228881836f;

/* 80450694-80450698 000114 0004+00 12/12 0/0 0/0 .sdata           l_autoDownHeight */
SECTION_SDATA static f32 l_autoDownHeight = -30.010000228881836f;

/* 800A3430-800A39B8 09DD70 0588+00 1/1 0/0 0/0 .text            footBgCheck__9daAlink_cFv */
void daAlink_c::footBgCheck() {
    // NONMATCHING
}

/* 80391F2C-80391F44 01E58C 0018+00 1/1 0/0 0/0 .rodata          localHandPos$56752 */
SECTION_RODATA static Vec const localHandPos[] = {
    {22.096375f, 5.4923248f, 0.0f},
    {-21.900146f, 5.5253749f, 0.0f},
};
COMPILER_STRIP_GATE(0x80391F2C, &localHandPos);

/* 800A39B8-800A3C8C 09E2F8 02D4+00 1/1 0/0 0/0 .text            handBgCheck__9daAlink_cFv */
// NONMATCHING - stack / regalloc
void daAlink_c::handBgCheck() {
    if (!field_0x2060->getOldFrameFlg() || !checkModeFlg(0x40)) {
        return;
    }

    if (mProcID == PROC_HANG_CLIMB) {
        if (mUnderFrameCtrl[0].getFrame() >= 9.0f) {
            setMatrixOffset(&field_0x2ba4, 0.0f);
            return;
        }
    }

    cXyz sp38;
    cXyz sp44;
    f32 sp20[2];
    s16 sp18[2];

    cXyz* var_r28 = &sp38;
    s16* var_r29 = sp18;
    f32* var_r25 = sp20;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    for (int i = 0; i < 2; i++, var_r28++, var_r25++, var_r29++) {
        mDoMtx_stack_c::multVec(&localHandPos[i], var_r28);

        cXyz sp28(var_r28->x, var_r28->y + l_autoUpHeight, var_r28->z);
        mLinkGndChk.SetPos(&sp28);

        f32 temp_f1 = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        if (-1000000000.0f != temp_f1 && (sp28.y - temp_f1 < l_autoUpHeight - l_autoDownHeight)) {
            *var_r25 = temp_f1;

            if (dComIfG_Bgsp().GetGroundCode(mLinkGndChk) != 8) {
                *var_r29 = getGroundAngle(&mLinkGndChk, (shape_angle.y - 0x4000));
            } else {
                *var_r29 = 0;
            }
        } else {
            *var_r25 = current.pos.y;
            *var_r29 = 0;
        }
    }

    int sp14;
    if (mProcID == PROC_HANG_FALL_START) {
        sp14 = 0;
        sp20[1] += 500.0f;
    } else if (sp20[1] < sp20[0]) {
        sp14 = 0;
    } else {
        sp14 = 1;
    }

    setMatrixOffset(&field_0x2ba4, sp20[sp14] - current.pos.y);

    daAlink_footData_c* var_r26 = mFootData2;
    s16* var_r29_2 = sp18;
    s16 spA;
    s16 sp8;

    for (int i = 0; i < 2; i++, var_r29_2++, var_r26++) {
        f32 temp_f30 = sp20[i] - mpLinkModel->getBaseTRMtx()[1][3];
        if (!(temp_f30 < -1.0f) || !setLegAngle(temp_f30, var_r26, &spA, &sp8, 0)) {
            spA = 0;
            sp8 = 0;
        }

        cLib_addCalcAngleS(&var_r26->field_0x6, spA, 2, 0x1800, 0x10);
        cLib_addCalcAngleS(&var_r26->field_0x4, sp8, 2, 0x1800, 0x10);
        cLib_addCalcAngleS(&var_r26->field_0x2, *var_r29_2, 2, 0x1800, 0x10);
    }
}

/* 800A3C8C-800A3CE4 09E5CC 0058+00 11/11 0/0 0/0 .text            setItemHeap__9daAlink_cFv */
JKRHeap* daAlink_c::setItemHeap() {
    if (!checkResetFlg0(RFLG0_UNK_4000)) {
        field_0x2fa0 ^= 1;
        onResetFlg0(RFLG0_UNK_4000);
    }

    return mItemHeap[field_0x2fa0].setAnimeHeap();
}

/**
 * Sets the animation archive ID and resource ID based on combined ID
 * The left most digit is the arcNo if not 0
 * The latter 3 digits are the resource ID
 */
/* 800A3CE4-800A3D0C 09E624 0028+00 4/4 0/0 0/0 .text            setIdxMask__9daAlink_cFPUsPUs */
void daAlink_c::setIdxMask(u16* o_arcNo, u16* o_resID) {
    if (*o_arcNo == 0xFFFF) {
        u16 arc_id = (*o_resID >> 12) & 0xF;
        *o_resID &= 0xFFF;

        if (arc_id != 0) {
            *o_arcNo = arc_id;
        }
    }
}

/* 800A3D0C-800A3D7C 09E64C 0070+00 5/5 0/0 0/0 .text
 * getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl           */
J3DAnmTransform* daAlink_c::getAnimeResource(daPy_anmHeap_c* p_anmHeap, u16 i_anmID, u32 buf_size) {
    u16 arcNo;
    u16 resID = i_anmID;

    p_anmHeap->setBufferSize(buf_size);
    arcNo = 0xFFFF;

    setIdxMask(&arcNo, &resID);

    if (arcNo == 0xFFFF) {
        return (J3DAnmTransform*)p_anmHeap->loadDataIdx(resID);
    }

    return (J3DAnmTransform*)p_anmHeap->loadDataDemoRID(resID, arcNo);
}

/* 800A3D7C-800A3E30 09E6BC 00B4+00 16/16 0/0 0/0 .text initModel__9daAlink_cFP12J3DModelDataUlUl
 */
J3DModel* daAlink_c::initModel(J3DModelData* i_modelData, u32 mdlFlags, u32 diffFlags) {
    J3DTexture* tex = i_modelData->getTexture();
    int texNo = tex->getNum() - 1;

    int warpMaterial = false;
    if (texNo >= 0) {
        ResTIMG* timg = tex->getResTIMG(texNo);

        if (mpWarpTexData == (void*)((u32)timg + timg->imageOffset)) {
            warpMaterial = true;
        }
    }

    if (warpMaterial) {
        dRes_info_c::onWarpMaterial(i_modelData);
        diffFlags |= 0x2000400;
    }

    J3DModel* model = mDoExt_J3DModel__create(i_modelData, mdlFlags, diffFlags | 0x11000084);

    if (warpMaterial) {
        dRes_info_c::offWarpMaterial(i_modelData);
    }

    return model;
}

/* 800A3E30-800A3E98 09E770 0068+00 1/1 0/0 0/0 .text            initModel__9daAlink_cFUsUl */
J3DModel* daAlink_c::initModel(u16 i_resNo, u32 i_flags) {
    return initModel((J3DModelData*)dComIfG_getObjectRes(l_arcName, i_resNo), i_flags);
}

/* 800A3E98-800A3F00 09E7D8 0068+00 1/1 0/0 0/0 .text            initModelEnv__9daAlink_cFUsUl */
J3DModel* daAlink_c::initModelEnv(u16 i_resNo, u32 i_flags) {
    return initModelEnv((J3DModelData*)dComIfG_getObjectRes(l_arcName, i_resNo), i_flags);
}

/* 800A3F00-800A3F98 09E840 0098+00 1/1 0/0 0/0 .text initDemoModel__9daAlink_cFPP8J3DModelPCcUl
 */
int daAlink_c::initDemoModel(J3DModel** i_ppmodel, char const* i_resname, u32 i_flags) {
    *i_ppmodel = NULL;

    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(dStage_roomControl_c::getDemoArcName(), i_resname);
    if (modelData != NULL) {
        *i_ppmodel = initModel(modelData, i_flags);

        if (*i_ppmodel == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 800A3F98-800A4068 09E8D8 00D0+00 1/1 0/0 1/1 .text initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
 */
int daAlink_c::initDemoBck(mDoExt_bckAnm** p_bck, char const* resName) {
    J3DAnmTransform* res =
        (J3DAnmTransform*)dComIfG_getObjectRes(dStage_roomControl_c::getDemoArcName(), resName);

    if (res != NULL) {
        *p_bck = new mDoExt_bckAnm();

        if (*p_bck == NULL) {
            return 0;
        }

        if (!(*p_bck)->init(res, 1, 2, 1.0f, 0, -1, false)) {
            return 0;
        }
    }

    return 1;
}

/* 80392094-80392094 01E6F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392094 = "Rotary";
SECTION_DEAD static char const* const stringBase_8039209B = "Rampart2";
SECTION_DEAD static char const* const stringBase_803920A4 = "Allay";
SECTION_DEAD static char const* const stringBase_803920AA = "AllayR";
SECTION_DEAD static char const* const stringBase_803920B1 = "AllayR2";
SECTION_DEAD static char const* const stringBase_803920B9 = "AllayS";
SECTION_DEAD static char const* const stringBase_803920C0 = "StreetP";
SECTION_DEAD static char const* const stringBase_803920C8 = "Street";
SECTION_DEAD static char const* const stringBase_803920CF = "D_MN04B";
SECTION_DEAD static char const* const stringBase_803920D7 = "Type";
SECTION_DEAD static char const* const stringBase_803920DC = "D_MN07B";
SECTION_DEAD static char const* const stringBase_803920E4 = "D_MN05A";
SECTION_DEAD static char const* const stringBase_803920EC = "D_MN06A";
SECTION_DEAD static char const* const stringBase_803920F4 = "F_SP117";
SECTION_DEAD static char const* const stringBase_803920FC = "D_MN54";
SECTION_DEAD static char const* const stringBase_80392103 = "F_SP103";
SECTION_DEAD static char const* const stringBase_8039210B = "F_SP00";
SECTION_DEAD static char const* const stringBase_80392112 = "F_SP127";
SECTION_DEAD static char const* const stringBase_8039211A = "D_MN07A";
SECTION_DEAD static char const* const stringBase_80392122 = "D_MN01A";
SECTION_DEAD static char const* const stringBase_8039212A = "D_MN10";
SECTION_DEAD static char const* const stringBase_80392131 = "D_MN10A";
SECTION_DEAD static char const* const stringBase_80392139 = "F_SP108";
SECTION_DEAD static char const* const stringBase_80392141 = "J_Tobi";
SECTION_DEAD static char const* const stringBase_80392148 = "J_Umak";
SECTION_DEAD static char const* const stringBase_8039214F = "D_MN01";
SECTION_DEAD static char const* const stringBase_80392156 = "D_MN06";
SECTION_DEAD static char const* const stringBase_8039215D = "D_MN05";
SECTION_DEAD static char const* const stringBase_80392164 = "R22-opening";
SECTION_DEAD static char const* const stringBase_80392170 = "pos";
SECTION_DEAD static char const* const stringBase_80392174 = "angle";
SECTION_DEAD static char const* const stringBase_8039217A = "prm0";
SECTION_DEAD static char const* const stringBase_8039217F = "prm1";
SECTION_DEAD static char const* const stringBase_80392184 = "stick";
SECTION_DEAD static char const* const stringBase_8039218A = "D_MN09B";
SECTION_DEAD static char const* const stringBase_80392192 = "D_MN05B";
SECTION_DEAD static char const* const stringBase_8039219A = "F_SP115";
SECTION_DEAD static char const* const stringBase_803921A2 = "D_MN11";
SECTION_DEAD static char const* const stringBase_803921A9 = "D_MN07";
SECTION_DEAD static char const* const stringBase_803921B0 = "F_SP102";
SECTION_DEAD static char const* const stringBase_803921B8 = "D_MN08D";
SECTION_DEAD static char const* const stringBase_803921C0 = "D_MN09A";
SECTION_DEAD static char const* const stringBase_803921C8 = "D_MN08C";
SECTION_DEAD static char const* const stringBase_803921D0 = "R_SP161";
SECTION_DEAD static char const* const stringBase_803921D8 = "Obj_kbrg";
SECTION_DEAD static char const* const stringBase_803921E1 = "Obj_obrg";
SECTION_DEAD static char const* const stringBase_803921EA = "M_VolcBom";
SECTION_DEAD static char const* const stringBase_803921F4 = "SCanCrs";
SECTION_DEAD static char const* const stringBase_803921FC = "F_SP125";
SECTION_DEAD static char const* const stringBase_80392204 = "D_MN08";
SECTION_DEAD static char const* const stringBase_8039220B = "F_SP116";
SECTION_DEAD static char const* const stringBase_80392213 = "zelda_v_cursor_new_yellow.blo";
SECTION_DEAD static char const* const stringBase_80392231 = "zelda_v_cursor_new_yellow.bpk";
SECTION_DEAD static char const* const stringBase_8039224F = "zelda_v_cursor_new_yellow.bck";
SECTION_DEAD static char const* const stringBase_8039226D = "zelda_v_cursor_new_yellow_02.brk";
SECTION_DEAD static char const* const stringBase_8039228E = "zelda_v_cursor_new_yellow.brk";
SECTION_DEAD static char const* const stringBase_803922AC = "wl_eye_Hilight";
SECTION_DEAD static char const* const stringBase_803922BB = "midona_eye_Hlight";
SECTION_DEAD static char const* const stringBase_803922CD = "alSumou";
SECTION_DEAD static char const* const stringBase_803922D5 = "bl.bmd";
SECTION_DEAD static char const* const stringBase_803922DC = "bl_head.bmd";
SECTION_DEAD static char const* const stringBase_803922E8 = "bl_hands.bmd";
SECTION_DEAD static char const* const stringBase_803922F5 = "zl.bmd";
SECTION_DEAD static char const* const stringBase_803922FC = "zl_head.bmd";
SECTION_DEAD static char const* const stringBase_80392308 = "al_hands.bmd";
SECTION_DEAD static char const* const stringBase_80392315 = "ml.bmd";
SECTION_DEAD static char const* const stringBase_8039231C = "ml_head.bmd";
SECTION_DEAD static char const* const stringBase_80392328 = "al.bmd";
SECTION_DEAD static char const* const stringBase_8039232F = "al_head.bmd";
SECTION_DEAD static char const* const stringBase_8039233B = "al_face.bmd";
SECTION_DEAD static char const* const stringBase_80392347 = "zl_face.bmd";
SECTION_DEAD static char const* const stringBase_80392353 = "al_bootsH.bmd";
SECTION_DEAD static char const* const stringBase_80392361 = "al_kantera.bmd";
SECTION_DEAD static char const* const stringBase_80392370 = "ef_ktGlow.bmd";
SECTION_DEAD static char const* const stringBase_8039237E = "ef_ktGlow.btk";
SECTION_DEAD static char const* const stringBase_8039238C = "al_SWB.bmd";
SECTION_DEAD static char const* const stringBase_80392397 = "highlight02";
SECTION_DEAD static char const* const stringBase_803923A3 = "F_SP200";
SECTION_DEAD static char const* const stringBase_803923AB = "R_SP30";
SECTION_DEAD static char const* const stringBase_803923B2 = "SMELL_1st";
SECTION_DEAD static char const* const stringBase_803923BC = "SMELL_Child";
SECTION_DEAD static char const* const stringBase_803923C8 = "Always";
SECTION_DEAD static char const* const stringBase_803923CF = "demo00_Link_cut00_HL_tmp.bmd";
SECTION_DEAD static char const* const stringBase_803923EC = "demo00_Link_cut00_HL_tmp.bck";
SECTION_DEAD static char const* const stringBase_80392409 = "demo00_Link_cut00_HR_tmp.bmd";
SECTION_DEAD static char const* const stringBase_80392426 = "demo00_Link_cut00_HR_tmp.bck";
SECTION_DEAD static char const* const stringBase_80392443 = "demo00_Link_cut00_FC_blend.bmd";
SECTION_DEAD static char const* const stringBase_80392462 = "demo00_Link_cut00_FC_tongue.bmd";
SECTION_DEAD static char const* const stringBase_80392482 = "demo00_Link_cut00_FC_tmp.bck";
SECTION_DEAD static char const* const stringBase_8039249F = "demo00_Link_cut00_HD_tmp.bck";
SECTION_DEAD static char const* const stringBase_803924BC = "demo00_Link_cut00_FC_tmp.bls";
SECTION_DEAD static char const* const stringBase_803924D9 = "F_SP118";
SECTION_DEAD static char const* const stringBase_803924E1 = "D_MN08B";
SECTION_DEAD static char const* const stringBase_803924E9 = "F_SP109";
SECTION_DEAD static char const* const stringBase_803924F1 = "F_SP123";
SECTION_DEAD static char const* const stringBase_803924F9 = "SCENE_EXIT";
SECTION_DEAD static char const* const stringBase_80392504 = "R_SP127";
SECTION_DEAD static char const* const stringBase_8039250C = "R_SP01";
SECTION_DEAD static char const* const stringBase_80392513 = "D_MN08A";
SECTION_DEAD static char const* const stringBase_8039251B = "ANGER";
SECTION_DEAD static char const* const stringBase_80392521 = "ANGER2";
SECTION_DEAD static char const* const stringBase_80392528 = "ml_body_power_down.brk";
SECTION_DEAD static char const* const stringBase_8039253F = "ml_body_power_up_a.brk";
SECTION_DEAD static char const* const stringBase_80392556 = "ml_body_power_up_b.brk";
SECTION_DEAD static char const* const stringBase_8039256D = "ml_head_power_down.brk";
SECTION_DEAD static char const* const stringBase_80392584 = "ml_head_power_up_a.brk";
SECTION_DEAD static char const* const stringBase_8039259B = "ml_head_power_up_b.brk";
#pragma pop

/* 803AF990-803AF99C 00CAB0 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803AF99C-803AF9A8 00CABC 000A+02 2/2 0/0 0/0 .data            l_peepEventName */
SECTION_DATA static const char l_peepEventName[10] = "PEEP_HOLE";

/* 80425514-80425520 052234 000C+00 32/35 0/0 0/0 .bss             l_waitBaseAnime */
static cXyz l_waitBaseAnime(1.24279f, 102.0005f, 5.0f);

/* 8042552C-80425538 05224C 000C+00 2/3 0/0 0/0 .bss             l_ironBallBaseAnime */
static cXyz l_ironBallBaseAnime(-4.248938f, 89.0f, -5.267045f);

/* 80425544-80425550 052264 000C+00 15/17 0/0 0/0 .bss             l_halfAtnWaitBaseAnime */
static cXyz l_halfAtnWaitBaseAnime(3.5f, 97.0f, -7.0f);

/* 8042555C-80425568 05227C 000C+00 1/2 0/0 0/0 .bss             l_rWaitBaseAnime */
static cXyz l_rWaitBaseAnime(4.313951f, 93.94436f, -5.207283f);

/* 80425574-80425580 052294 000C+00 0/1 0/0 0/0 .bss             l_lWaitBaseAnime */
static cXyz l_lWaitBaseAnime(-4.300988f, 93.95595f, -5.218504f);

/* 8042558C-80425598 0522AC 000C+00 3/5 0/0 0/0 .bss             l_horseBaseAnime */
static cXyz l_horseBaseAnime(-l_waitBaseAnime.x, 225.7f, 1.81f - l_waitBaseAnime.z);

/* 804255A4-804255B0 0522C4 000C+00 3/5 0/0 0/0 .bss             l_boarBaseAnime */
static cXyz l_boarBaseAnime(-l_waitBaseAnime.x, 186.17f, -20.29f - l_waitBaseAnime.z);

/* 804255BC-804255C8 0522DC 000C+00 1/3 0/0 0/0 .bss             l_localHorseRidePos */
static cXyz l_localHorseRidePos(-68.20898f, 41.60992f, 0.883789f);

/* 804255D4-804255E0 0522F4 000C+00 1/3 0/0 0/0 .bss             l_localBoarRidePos */
static cXyz l_localBoarRidePos(0.0f, 15.0f, 0.0f);

/* 804255EC-804255F8 05230C 000C+00 2/3 0/0 0/0 .bss             l_canoeBaseAnime */
static cXyz l_canoeBaseAnime(1.24279f - l_waitBaseAnime.x, 56.0f, -72.0f - l_waitBaseAnime.z);

/* 80425604-80425610 052324 000C+00 0/1 0/0 0/0 .bss             l_sumouBaseAnimeSp */
static cXyz l_sumouBaseAnimeSp(0.0f, 0.0f, 32.0f - l_waitBaseAnime.z);

/* 8042561C-80425628 05233C 000C+00 37/39 0/0 0/0 .bss             l_wolfBaseAnime */
static cXyz l_wolfBaseAnime(1.0f, 88.63934f, -28.49793f);

/* 80425634-80425640 052354 000C+00 2/3 0/0 0/0 .bss             l_wolfRopeBaseAnime */
static cXyz l_wolfRopeBaseAnime(0.115164f, 68.3363f, -7.667817f);

daAlink_procInitTable daAlink_c::m_procInitTable[] = {
    { &daAlink_c::procPreActionUnequip, 0x21 },
    { &daAlink_c::procServiceWait, 0x10000085 },
    { &daAlink_c::procTiredWait, 0x10001185 },
    { &daAlink_c::procWait, 0x10001185 },
    { &daAlink_c::procMove, 0x10001184 },
    { &daAlink_c::procAtnMove, 0x10001184 },
    { &daAlink_c::procAtnActorWait, 0x10001185 },
    { &daAlink_c::procAtnActorMove, 0x10001184 },
    { &daAlink_c::procWaitTurn, 0x10001085 },
    { &daAlink_c::procMoveTurn, 0x10001084 },
    { &daAlink_c::procSideStep, 0x10001186 },
    { &daAlink_c::procSideStepLand, 0x10001185 },
    { &daAlink_c::procSlide, 0x0 },
    { &daAlink_c::procSlideLand, 0x4 },
    { &daAlink_c::procFrontRoll, 0x8200 },
    { &daAlink_c::procFrontRollCrash, 0x2 },
    { &daAlink_c::procFrontRollSuccess, 0x0 },
    { &daAlink_c::procSideRoll, 0x8000 },
    { &daAlink_c::procBackJump, 0x8001086 },
    { &daAlink_c::procBackJumpLand, 0x1185 },
    { &daAlink_c::procSlip, 0x0 },
    { &daAlink_c::procAutoJump, 0x1006 },
    { &daAlink_c::procDiveJump, 0x2 },
    { &daAlink_c::procRollJump, 0x2 },
    { &daAlink_c::procFall, 0x1006 },
    { &daAlink_c::procLand, 0x1005 },
    { &daAlink_c::procSmallJump, 0x1000 },
    { &daAlink_c::procStepMove, 0x10001184 },
    { &daAlink_c::procCrouch, 0x800001 },
    { &daAlink_c::procGuardSlip, 0x60000000 },
    { &daAlink_c::procGuardAttack, 0x100 },
    { &daAlink_c::procGuardBreak, 0x100 },
    { &daAlink_c::procTurnMove, 0x8000 },
    { &daAlink_c::procCutNormal, 0x20000300 },
    { &daAlink_c::procCutFinish, 0x20000320 },
    { &daAlink_c::procCutFinishJumpUp, 0x102 },
    { &daAlink_c::procCutFinishJumpUpLand, 0x100 },
    { &daAlink_c::procCutReverse, 0x200 },
    { &daAlink_c::procCutJump, 0x8000202 },
    { &daAlink_c::procCutJumpLand, 0x8000201 },
    { &daAlink_c::procCutTurn, 0x200 },
    { &daAlink_c::procCutTurnCharge, 0x101 },
    { &daAlink_c::procCutTurnMove, 0x101 },
    { &daAlink_c::procCutDown, 0x8000022 },
    { &daAlink_c::procCutDownLand, 0x8002001 },
    { &daAlink_c::procCutHead, 0x222 },
    { &daAlink_c::procCutHeadLand, 0x201 },
    { &daAlink_c::procCutLargeJumpCharge, 0x101 },
    { &daAlink_c::procCutLargeJump, 0x200 },
    { &daAlink_c::procCutLargeJumpLand, 0x201 },
    { &daAlink_c::procDamage, 0x8 },
    { &daAlink_c::procLargeDamageUp, 0xa008008 },
    { &daAlink_c::procLandDamage, 0x9 },
    { &daAlink_c::procCrawlStart, 0x300a000 },
    { &daAlink_c::procCrawlMove, 0xb00e000 },
    { &daAlink_c::procCrawlAutoMove, 0xf00a000 },
    { &daAlink_c::procCrawlEnd, 0x300a000 },
    { &daAlink_c::procPullMove, 0x202000 },
    { &daAlink_c::procHorseRide, 0x4002400 },
    { &daAlink_c::procHorseGetOff, 0x4002400 },
    { &daAlink_c::procHorseWait, 0x10003585 },
    { &daAlink_c::procHorseTurn, 0x2500 },
    { &daAlink_c::procHorseJump, 0x2502 },
    { &daAlink_c::procHorseLand, 0x2500 },
    { &daAlink_c::procHorseSubjectivity, 0x60003404 },
    { &daAlink_c::procHorseCut, 0x2500 },
    { &daAlink_c::procHorseCutChargeReady, 0x2500 },
    { &daAlink_c::procHorseCutTurn, 0x2500 },
    { &daAlink_c::procHorseDamage, 0x2408 },
    { &daAlink_c::procHorseBowSubject, 0x60003404 },
    { &daAlink_c::procHorseBowMove, 0x60003404 },
    { &daAlink_c::procHorseGrabMove, 0x3404 },
    { &daAlink_c::procHorseBoomerangSubject, 0x60003404 },
    { &daAlink_c::procHorseBoomerangMove, 0x60003404 },
    { &daAlink_c::procHorseHookshotSubject, 0x60003404 },
    { &daAlink_c::procHorseHookshotMove, 0x60003404 },
    { &daAlink_c::procHorseBottleDrink, 0x2401 },
    { &daAlink_c::procHorseComeback, 0x2409 },
    { &daAlink_c::procHorseKandelaarPour, 0x2401 },
    { &daAlink_c::procHorseRun, 0x2400 },
    { &daAlink_c::procHorseHang, 0x2400 },
    { &daAlink_c::procHorseGetKey, 0x2401 },
    { &daAlink_c::procHorseLookDown, 0x2401 },
    { &daAlink_c::procBoarRun, 0x2400 },
    { &daAlink_c::procSwordUnequipSp, 0x1 },
    { &daAlink_c::procHangStart, 0x4041 },
    { &daAlink_c::procHangFallStart, 0x4041 },
    { &daAlink_c::procHangUp, 0x4041 },
    { &daAlink_c::procHangWait, 0x4041 },
    { &daAlink_c::procHangMove, 0x4040 },
    { &daAlink_c::procHangClimb, 0x4040 },
    { &daAlink_c::procHangWallCatch, 0x4040 },
    { &daAlink_c::procHangReady, 0x1 },
    { &daAlink_c::procHangLeverDown, 0x21 },
    { &daAlink_c::procBowSubject, 0x20001005 },
    { &daAlink_c::procBowMove, 0x20001004 },
    { &daAlink_c::procBoomerangSubject, 0x30001005 },
    { &daAlink_c::procBoomerangMove, 0x30001004 },
    { &daAlink_c::procBoomerangCatch, 0x1001 },
    { &daAlink_c::procCopyRodSubject, 0x30001005 },
    { &daAlink_c::procCopyRodMove, 0x30001004 },
    { &daAlink_c::procCopyRodSwing, 0x1 },
    { &daAlink_c::procCopyRodRevive, 0x1 },
    { &daAlink_c::procLadderUpStart, 0x10000 },
    { &daAlink_c::procLadderUpEnd, 0x10000 },
    { &daAlink_c::procLadderDownStart, 0x10000 },
    { &daAlink_c::procLadderDownEnd, 0x10000 },
    { &daAlink_c::procLadderMove, 0x10000 },
    { &daAlink_c::procGrabReady, 0x100001 },
    { &daAlink_c::procGrabUp, 0x100001 },
    { &daAlink_c::procGrabMiss, 0x100001 },
    { &daAlink_c::procGrabThrow, 0x100201 },
    { &daAlink_c::procGrabPut, 0x100001 },
    { &daAlink_c::procGrabWait, 0x1105 },
    { &daAlink_c::procGrabRebound, 0x100001 },
    { &daAlink_c::procGrabStand, 0x1 },
    { &daAlink_c::procInsectCatch, 0x21 },
    { &daAlink_c::procPickUp, 0x100001 },
    { &daAlink_c::procPickPut, 0x100001 },
    { &daAlink_c::procStEscape, 0x1 },
    { &daAlink_c::procDkCaught, 0x4000000 },
    { &daAlink_c::procSwimUp, 0x40000 },
    { &daAlink_c::procSwimWait, 0x40105 },
    { &daAlink_c::procSwimMove, 0x40104 },
    { &daAlink_c::procSwimDive, 0x40000 },
    { &daAlink_c::procSwimHookshotSubject, 0x20041005 },
    { &daAlink_c::procSwimHookshotMove, 0x20041004 },
    { &daAlink_c::procSwimDamage, 0x40008 },
    { &daAlink_c::procClimbUpStart, 0x10000 },
    { &daAlink_c::procClimbDownStart, 0x10000 },
    { &daAlink_c::procClimbMoveUpDown, 0x10000 },
    { &daAlink_c::procClimbMoveSide, 0x10000 },
    { &daAlink_c::procClimbWait, 0x10000 },
    { &daAlink_c::procClimbToRoof, 0x10000 },
    { &daAlink_c::procRoofHangStart, 0x10 },
    { &daAlink_c::procRoofHangWait, 0x11 },
    { &daAlink_c::procRoofHangFrontMove, 0x10 },
    { &daAlink_c::procRoofHangSideMove, 0x10 },
    { &daAlink_c::procRoofHangTurn, 0x10 },
    { &daAlink_c::procRoofSwitchHang, 0x2030 },
    { &daAlink_c::procCanoeRide, 0x4002400 },
    { &daAlink_c::procCanoeJumpRide, 0x4002400 },
    { &daAlink_c::procCanoeGetOff, 0x4002400 },
    { &daAlink_c::procCanoeWait, 0x14003504 },
    { &daAlink_c::procCanoeRow, 0x4002504 },
    { &daAlink_c::procCanoePaddleShift, 0x4002504 },
    { &daAlink_c::procCanoePaddlePut, 0x4002400 },
    { &daAlink_c::procCanoePaddleGrab, 0x4002400 },
    { &daAlink_c::procCanoeRodGrab, 0x4002400 },
    { &daAlink_c::procCanoeFishingWait, 0x44002404 },
    { &daAlink_c::procCanoeFishingReel, 0x44002500 },
    { &daAlink_c::procCanoeFishingGet, 0x4002400 },
    { &daAlink_c::procCanoeSubjectivity, 0x64002404 },
    { &daAlink_c::procCanoeBowSubject, 0x64003404 },
    { &daAlink_c::procCanoeBowMove, 0x64003404 },
    { &daAlink_c::procCanoeGrabMove, 0x4103404 },
    { &daAlink_c::procCanoeBoomerangSubject, 0x64003404 },
    { &daAlink_c::procCanoeBoomerangMove, 0x64003404 },
    { &daAlink_c::procCanoeHookshotSubject, 0x64003404 },
    { &daAlink_c::procCanoeHookshotMove, 0x64003404 },
    { &daAlink_c::procCanoeBottleDrink, 0x2401 },
    { &daAlink_c::procCanoeKandelaarPour, 0x2401 },
    { &daAlink_c::procFishingCast, 0x2101 },
    { &daAlink_c::procFishingFood, 0x2001 },
    { &daAlink_c::procSpinnerReady, 0x2002 },
    { &daAlink_c::procSpinnerWait, 0x2500 },
    { &daAlink_c::procBoardRide, 0x22 },
    { &daAlink_c::procBoardWait, 0x10001504 },
    { &daAlink_c::procBoardRow, 0x1504 },
    { &daAlink_c::procBoardTurn, 0x1504 },
    { &daAlink_c::procBoardJump, 0x1406 },
    { &daAlink_c::procBoardSubjectivity, 0x60000404 },
    { &daAlink_c::procBoardCut, 0x504 },
    { &daAlink_c::procBoardCutTurn, 0x400 },
    { &daAlink_c::procFmChainUp, 0x101 },
    { &daAlink_c::procFmChainStrongPull, 0x1001 },
    { &daAlink_c::procDoorOpen, 0x4000 },
    { &daAlink_c::procMonkeyMove, 0x800 },
    { &daAlink_c::procDemoBoomerangCatch, 0x10000101 },
    { &daAlink_c::procBottleDrink, 0x2001 },
    { &daAlink_c::procBottleOpen, 0x2001 },
    { &daAlink_c::procBottleSwing, 0x21 },
    { &daAlink_c::procBottleGet, 0x1 },
    { &daAlink_c::procKandelaarSwing, 0x1 },
    { &daAlink_c::procKandelaarPour, 0x2001 },
    { &daAlink_c::procGrassWhistleGet, 0x21 },
    { &daAlink_c::procGrassWhistleWait, 0x2001 },
    { &daAlink_c::procHawkCatch, 0x1 },
    { &daAlink_c::procHawkSubject, 0x20000021 },
    { &daAlink_c::procFloorDownRebound, 0x10001185 },
    { &daAlink_c::procGoronRideWait, 0x101 },
    { &daAlink_c::procGoatMove, 0x4002121 },
    { &daAlink_c::procGoatCatch, 0x400a021 },
    { &daAlink_c::procGoatStroke, 0x2121 },
    { &daAlink_c::procGoronMove, 0x101 },
    { &daAlink_c::procDemoCommon, 0x1 },
    { &daAlink_c::procHookshotSubject, 0x20001005 },
    { &daAlink_c::procHookshotMove, 0x20001004 },
    { &daAlink_c::procHookshotFly, 0x6002 },
    { &daAlink_c::procHookshotRoofWait, 0x6802 },
    { &daAlink_c::procHookshotRoofShoot, 0x6902 },
    { &daAlink_c::procHookshotRoofBoots, 0x6902 },
    { &daAlink_c::procHookshotWallWait, 0x6802 },
    { &daAlink_c::procHookshotWallShoot, 0x6902 },
    { &daAlink_c::procMagneBootsFly, 0x2 },
    { &daAlink_c::procBootsEquip, 0x1103 },
    { &daAlink_c::procSumouReady, 0xa000 },
    { &daAlink_c::procSumouMove, 0xa000 },
    { &daAlink_c::procSumouSideMove, 0xa000 },
    { &daAlink_c::procSumouAction, 0xa000 },
    { &daAlink_c::procSumouStagger, 0xa000 },
    { &daAlink_c::procSumouWinLose, 0x2002 },
    { &daAlink_c::procSumouShiko, 0xa000 },
    { &daAlink_c::procLookUp, 0x101 },
    { &daAlink_c::procLookUpToGetItem, 0x101 },
    { &daAlink_c::procHandPat, 0x101 },
    { &daAlink_c::procIronBallSubject, 0x20001005 },
    { &daAlink_c::procIronBallMove, 0x20001004 },
    { &daAlink_c::procIronBallThrow, 0x20000000 },
    { &daAlink_c::procIronBallReturn, 0x1 },
    { &daAlink_c::procBossBodyHang, 0x6029 },
    { &daAlink_c::procOctaIealSpit, 0x42008 },
    { &daAlink_c::procScreamWait, 0x1 },
    { &daAlink_c::procGoatStopReady, 0x1 },
    { &daAlink_c::procZoraMove, 0xe000 },
    { &daAlink_c::procLookAroundTurn, 0x1 },
    { &daAlink_c::procTradeItemOut, 0x80121 },
    { &daAlink_c::procNotUseItem, 0x2021 },
    { &daAlink_c::procSwordReady, 0x1 },
    { &daAlink_c::procSwordPush, 0x1 },
    { &daAlink_c::procGanonFinish, 0xe000 },
    { &daAlink_c::procCutFastReady, 0x1 },
    { &daAlink_c::procMasterSwordStick, 0x6001 },
    { &daAlink_c::procMasterSwordPull, 0x6001 },
    { &daAlink_c::procDungeonWarpReady, 0x2021 },
    { &daAlink_c::procDungeonWarp, 0x6003 },
    { &daAlink_c::procDungeonWarpSceneStart, 0x6003 },
    { &daAlink_c::procWolfHowlDemo, 0x800021 },
    { &daAlink_c::procWolfServiceWait, 0x1001 },
    { &daAlink_c::procWolfTiredWait, 0x1101 },
    { &daAlink_c::procWolfMidnaRideShock, 0x1 },
    { &daAlink_c::procWolfWait, 0x1101 },
    { &daAlink_c::procWolfMove, 0x1100 },
    { &daAlink_c::procWolfDash, 0x1100 },
    { &daAlink_c::procWolfDashReverse, 0x2 },
    { &daAlink_c::procWolfWaitTurn, 0x1001 },
    { &daAlink_c::procWolfAtnActorMove, 0x1100 },
    { &daAlink_c::procWolfSideStep, 0x1102 },
    { &daAlink_c::procWolfSideStepLand, 0x1101 },
    { &daAlink_c::procWolfBackJump, 0x1002 },
    { &daAlink_c::procWolfBackJumpLand, 0x1001 },
    { &daAlink_c::procWolfHowl, 0x1 },
    { &daAlink_c::procWolfAutoJump, 0x1002 },
    { &daAlink_c::procWolfFall, 0x1002 },
    { &daAlink_c::procWolfLand, 0x1001 },
    { &daAlink_c::procWolfSit, 0x800101 },
    { &daAlink_c::procWolfLieStart, 0x1000100 },
    { &daAlink_c::procWolfLieMove, 0x1000100 },
    { &daAlink_c::procWolfLieAutoMove, 0x5002000 },
    { &daAlink_c::procWolfHangReady, 0x1001 },
    { &daAlink_c::procWolfStepMove, 0x10001100 },
    { &daAlink_c::procWolfHangWallCatch, 0x10005040 },
    { &daAlink_c::procWolfHangFallStart, 0x10005041 },
    { &daAlink_c::procWolfDamage, 0x8 },
    { &daAlink_c::procWolfLargeDamageUp, 0x12008008 },
    { &daAlink_c::procWolfLandDamage, 0x9 },
    { &daAlink_c::procWolfScreamWait, 0x1 },
    { &daAlink_c::procWolfSlip, 0x10001000 },
    { &daAlink_c::procWolfSlipTurn, 0x10001000 },
    { &daAlink_c::procWolfSlipTurnLand, 0x10001000 },
    { &daAlink_c::procWolfSlideReady, 0x10008000 },
    { &daAlink_c::procWolfSlide, 0x1000 },
    { &daAlink_c::procWolfSlideLand, 0x1000 },
    { &daAlink_c::procWolfWaitSlip, 0x1100 },
    { &daAlink_c::procWolfSlopeStart, 0x1000 },
    { &daAlink_c::procWolfRopeMove, 0x23100 },
    { &daAlink_c::procWolfRopeHang, 0x10023000 },
    { &daAlink_c::procWolfRopeTurn, 0x10023000 },
    { &daAlink_c::procWolfRopeStagger, 0x10023000 },
    { &daAlink_c::procWolfRopeSubjectivity, 0x23001 },
    { &daAlink_c::procWolfTagJump, 0x1022 },
    { &daAlink_c::procWolfTagJumpLand, 0x120 },
    { &daAlink_c::procWolfRollAttackCharge, 0x100 },
    { &daAlink_c::procWolfRollAttackMove, 0x100 },
    { &daAlink_c::procWolfJumpAttack, 0x2 },
    { &daAlink_c::procWolfJumpAttackKick, 0x2 },
    { &daAlink_c::procWolfJumpAttackSlideLand, 0x0 },
    { &daAlink_c::procWolfJumpAttackNormalLand, 0x0 },
    { &daAlink_c::procWolfWaitAttack, 0x0 },
    { &daAlink_c::procWolfRollAttack, 0x0 },
    { &daAlink_c::procWolfDownAttack, 0x22 },
    { &daAlink_c::procWolfDownAtLand, 0x8002021 },
    { &daAlink_c::procWolfDownAtMissLand, 0x0 },
    { &daAlink_c::procWolfLockAttack, 0x2002 },
    { &daAlink_c::procWolfLockAttackTurn, 0x0 },
    { &daAlink_c::procWolfSwimUp, 0x40000 },
    { &daAlink_c::procWolfSwimWait, 0x40101 },
    { &daAlink_c::procWolfSwimMove, 0x40100 },
    { &daAlink_c::procWolfSwimEndWait, 0x1001 },
    { &daAlink_c::procWolfGrabUp, 0x100001 },
    { &daAlink_c::procWolfGrabPut, 0x100001 },
    { &daAlink_c::procWolfGrabThrow, 0x100001 },
    { &daAlink_c::procWolfChainUp, 0x1 },
    { &daAlink_c::procWolfPush, 0x20 },
    { &daAlink_c::procWolfChainReady, 0x20000 },
    { &daAlink_c::procWolfChainWait, 0x10020000 },
    { &daAlink_c::procWolfDig, 0xa020 },
    { &daAlink_c::procWolfDigThrough, 0xe000 },
    { &daAlink_c::procWolfAttackReverse, 0x2 },
    { &daAlink_c::procWolfEnemyThrow, 0x0 },
    { &daAlink_c::procWolfEnemyHangBite, 0xe002 },
    { &daAlink_c::procWolfGiantPuzzle, 0x100 },
    { &daAlink_c::procWolfCargoCarry, 0x400e022 },
    { &daAlink_c::procWolfGetSmell, 0xe021 },
    { &daAlink_c::procDemoCommon, 0x1 },
    { &daAlink_c::procWolfSnowEscape, 0xa000 },
    { &daAlink_c::procWolfGanonCatch, 0x4002021 },
    { &daAlink_c::procCoToolDemo, 0x8000 },
    { &daAlink_c::procCoSubjectivity, 0x20001005 },
    { &daAlink_c::procCoSwimSubjectivity, 0x20041001 },
    { &daAlink_c::procCoPeepSubjectivity, 0x2000200b },
    { &daAlink_c::procCoPolyDamage, 0x9 },
    { &daAlink_c::procCoElecDamage, 0x9 },
    { &daAlink_c::procCoPushPullWait, 0x202001 },
    { &daAlink_c::procCoPushMove, 0x202000 },
    { &daAlink_c::procCoTalk, 0x80101 },
    { &daAlink_c::procCoOpenTreasure, 0xe001 },
    { &daAlink_c::procCoUnequip, 0x1 },
    { &daAlink_c::procCoGetItem, 0x800e001 },
    { &daAlink_c::procCoTurnBack, 0x1 },
    { &daAlink_c::procCoLookWait, 0x1101 },
    { &daAlink_c::procDemoCommon, 0x200001 },
    { &daAlink_c::procDemoCommon, 0x200000 },
    { &daAlink_c::procCoMetamorphose, 0x8001 },
    { &daAlink_c::procCoMetamorphoseOnly, 0x6001 },
    { &daAlink_c::procCoWarp, 0x1 },
    { &daAlink_c::procCoDead, 0xa009 },
    { &daAlink_c::procCoFogDead, 0xa009 },
    { &daAlink_c::procCoLookAround, 0x0 },
    { &daAlink_c::procDemoCommon, 0xe000 },
    { &daAlink_c::procCoSandWallHit, 0xa },
    { &daAlink_c::procCoLavaReturn, 0x42009 },
    { &daAlink_c::procCoSwimFreezeReturn, 0x42009 },
    { &daAlink_c::procCoGetReadySit, 0xa001 },
    { &daAlink_c::procCoTwGate, 0xe002 },
    { &daAlink_c::procCoLargeDamage, 0xa },
    { &daAlink_c::procCoLargeDamageWall, 0xa },
    { &daAlink_c::procCoNod, 0x80001 },
    { &daAlink_c::procDemoCommon, 0x80001 },
    { &daAlink_c::procCoGlare, 0x80001 },
    { &daAlink_c::procCoHorseCallWait, 0x1 },
    { &daAlink_c::procDemoCommon, 0x1 },
};

/* 803B22E0-803B2754 00F400 0474+00 1/2 0/0 0/0 .data            m_demoInitTable__9daAlink_c */
daAlink_procFunc daAlink_c::m_demoInitTable[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    &daAlink_c::commonWaitTurnInit,
    NULL,
    NULL,
    NULL,
    NULL,
    &daAlink_c::procCoOpenTreasureInit,
    &daAlink_c::procCoGetItemInit,
    &daAlink_c::procCoUnequipInit,
    &daAlink_c::commonGrabPutInit,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    &daAlink_c::procMonkeyMoveInit,
    &daAlink_c::procCoLookAroundInit,
    NULL,
    NULL,
    NULL,
    NULL,
    &daAlink_c::procCoTurnBackInit,
    NULL,
    NULL,
    &daAlink_c::procDemoBoomerangCatchInit,
    &daAlink_c::procHawkCatchInit,
    &daAlink_c::procSwordUnequipSpInit,
    NULL,
    &daAlink_c::procCoDemoPushPullWaitInit,
    &daAlink_c::procCoDemoPushMoveInit,
    &daAlink_c::procBossAtnWaitInit,
    &daAlink_c::procDoorOpenInit,
    NULL,
    &daAlink_c::procTradeItemOutInit,
    NULL,
    &daAlink_c::procKandelaarSwingInit,
    &daAlink_c::procFrontRollInit,
    &daAlink_c::procCrouchInit,
    NULL,
    NULL,
    NULL,
    NULL,
    &daAlink_c::procCoCaughtInit,
    &daAlink_c::procLookUpInit,
    &daAlink_c::procLookUpToGetItemInit,
    &daAlink_c::procHandPatInit,
    &daAlink_c::procWolfMidnaRideShockInit,
    &daAlink_c::procSumouShikoInit,
    &daAlink_c::procCoFogDeadInit,
    &daAlink_c::procWolfSmellWaitInit,
    NULL,
    NULL,
    &daAlink_c::procWolfCargoCarryInit,
    &daAlink_c::procCoMetamorphoseInit,
    &daAlink_c::procCoMetamorphoseInit,
    &daAlink_c::procHorseGetKeyInit,
    &daAlink_c::procCoNodInit,
    &daAlink_c::procCoGlareInit,
    &daAlink_c::procCoEyeAwayInit,
    &daAlink_c::procGoatStopReadyInit,
    &daAlink_c::procCoGetReadySitInit,
    NULL,
    &daAlink_c::procCoTwGateInit,
    &daAlink_c::procFmChainStrongPullInit,
    &daAlink_c::procWolfSnowEscapeInit,
    &daAlink_c::procZoraMoveInit,
    &daAlink_c::procCoMetamorphoseOnlyInit,
    &daAlink_c::procCoMetamorphoseOnlyInit,
    &daAlink_c::procLookAroundTurnInit,
    NULL,
    &daAlink_c::procCoQuakeWaitInit,
    &daAlink_c::procGuardAttackInit,
    &daAlink_c::procSwordReadyInit,
    &daAlink_c::procDungeonWarpInit,
    &daAlink_c::procDungeonWarpSceneStartInit,
    &daAlink_c::procMasterSwordStickInit,
    &daAlink_c::procMasterSwordPullInit,
    &daAlink_c::procCutDownInit,
    NULL,
    &daAlink_c::procCutHeadInit,
    NULL,
    NULL,
    &daAlink_c::procCutLargeJumpInit,
    &daAlink_c::procCutFastReadyInit,
    &daAlink_c::procCopyRodReviveInit,
    &daAlink_c::procSwordPushInit,
    &daAlink_c::procGanonFinishInit,
    NULL,
    NULL,
    &daAlink_c::procHorseLookDownInit,
    NULL,
};

/* 803B2754-803B2798 00F874 0044+00 0/1 0/0 0/0 .data            l_cylSrc */
static dCcD_SrcCyl l_cylSrc = {
    {
        {0, {{AT_TYPE_WOLF_ATTACK, 3, 0x1A}, {0xD8FFFDFF, 5}, 0x73}},
        {dCcD_SE_WOLF_BITE, 3, 1, 0, {1}},
        {dCcD_SE_NONE, 6, 0, 0, {0}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        35.0f,
        180.0f,
    },
};

/* 803B2798-803B27D8 00F8B8 0040+00 1/2 0/0 0/0 .data            l_sphSrc */
static dCcD_SrcSph l_sphSrc = {
    {
        {0, {{AT_TYPE_NORMAL_SWORD, 3, 0x1A}, {0xD8FBFDFF, 5}, 0x73}},
        {dCcD_SE_SWORD, 3, 1, 0, {1}},
        {dCcD_SE_NONE, 6, 0, 0, {0}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        40.0f,
    }},
};

/* 803B27D8-803B281C 00F8F8 0044+00 0/1 0/0 0/0 .data            l_atCylSrc */
static dCcD_SrcCyl l_atCylSrc = {
    {
        {0, {{AT_TYPE_NORMAL_SWORD, 2, 0x1B}, {0, 0}, 0}},
        {dCcD_SE_SWORD, 3, 1, 0, {1}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        180.0f,
        130.0f,
    },
};

/* 803B281C-803B2868 00F93C 004C+00 0/1 0/0 0/0 .data            l_atCpsSrc */
static dCcD_SrcCps l_atCpsSrc = {
    {
        {0, {{AT_TYPE_NORMAL_SWORD, 1, 0x1B}, {0, 0}, 0}},
        {dCcD_SE_SWORD, 1, 0, 0, {1}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        {0.0f, 0.0f, 0.0f},
        20.0f,
    }},
};

/* 803B2868-803B2880 00F988 0018+00 1/0 0/0 0/0 .data            l_jntColPos0 */
SECTION_DATA static Vec l_jntColPos0[] = {
    {0.0f, 0.0f, 0.0f},
    {44.0f, 0.0f, 0.0f}
};

/* 803B2880-803B288C 00F9A0 000C+00 1/0 0/0 0/0 .data            l_jntColPos1 */
SECTION_DATA static Vec l_jntColPos1 = {
    0.0f, -10.0f, 0.0f
};

/* 803B288C-803B28A4 00F9AC 0018+00 1/0 0/0 0/0 .data            l_jntColPos2 */
SECTION_DATA static Vec l_jntColPos2[] = {
    {-5.0f, 0.0f, 0.0f},
    {28.0f, 0.0f, 0.0f}
};

/* 803B28A4-803B28BC 00F9C4 0018+00 1/0 0/0 0/0 .data            l_jntColPos4 */
SECTION_DATA static Vec l_jntColPos4[] = {
    {-4.0f, 0.0f, 0.0f},
    {28.0f, 0.0f, 0.0f}
};

/* 803B28BC-803B28C8 00F9DC 000C+00 1/0 0/0 0/0 .data            l_jntColPos6 */
SECTION_DATA static Vec l_jntColPos6 = { 8.0f, 0.0f, 0.0f };

/* 803B28C8-803B28E0 00F9E8 0018+00 1/0 0/0 0/0 .data            l_jntColPos8 */
SECTION_DATA static Vec l_jntColPos8[] = {
    {0.0f, 0.0f, 0.0f},
    {38.0f, 0.0f, 0.0f}
};

/* 803B28E0-803B28F8 00FA00 0018+00 1/0 0/0 0/0 .data            l_jntColPos9 */
SECTION_DATA static Vec l_jntColPos9[] = {
    {0.0f, -5.0f, 0.0f},
    {35.0f, 0.0f, 0.0f}
};

/* 803B28F8-803B2910 00FA18 0018+00 1/0 0/0 0/0 .data            l_jntColPos10 */
SECTION_DATA static Vec l_jntColPos10[] = {
    {0.0f, 5.0f, 0.0f},
    {35.0f, 0.0f, 0.0f}
};

/* 803B2910-803B2928 00FA30 0018+00 1/0 0/0 0/0 .data            l_jntColPos11 */
SECTION_DATA static Vec l_jntColPos11[] = {
    {0.0f, 0.0f, 0.0f},
    {48.0f, 2.0f, 0.0f}
};

/* 803B2928-803B2940 00FA48 0018+00 1/0 0/0 0/0 .data            l_jntColPos12 */
SECTION_DATA static Vec l_jntColPos12[] = {
    {0.0f, 0.0f, 0.0f},
    {48.0f, -2.0f, 0.0f}
};

/* 803B2940-803B2958 00FA60 0018+00 1/0 0/0 0/0 .data            l_jntColPos13 */
SECTION_DATA static Vec l_jntColPos13[] = {
    {0.0f, 5.0f, 0.0f},
    {22.0f, 0.0f, 0.0f}
};

/* 803B2958-803B2970 00FA78 0018+00 1/0 0/0 0/0 .data            l_jntColPos14 */
SECTION_DATA static Vec l_jntColPos14[] = {
    {0.0f, -5.0f, 0.0f},
    {22.0f, 0.0f, 0.0f}
};

/* 803B2970-803B2988 00FA90 0018+00 1/0 0/0 0/0 .data            l_jntColPos15 */
SECTION_DATA static Vec l_jntColPos15[] = {
    {-15.0f, 0.0f, 17.0f},
    {0.0f, 0.0f, 1.0f}
};

/* 803B2988-803B29A0 00FAA8 0018+00 1/0 0/0 0/0 .data            l_jntColPos16 */
SECTION_DATA static Vec l_jntColPos16[] = {
    {13.0f, 13.0f, -8.0f},
    {0.0f, 1.0f, 0.0f}
};

/* 803B29A0-803B29AC 00FAC0 000C+00 1/0 0/0 0/0 .data            l_jntColPos17 */
SECTION_DATA static Vec l_jntColPos17 = {
    -15.0f, -10.0f, -30.0f
};

/* 803B29AC-803B2A84 -00001 00D8+00 1/1 0/0 0/0 .data            l_jntColData */
static dJntColData_c l_jntColData[] = {
    {
        1,
        0,
        1,
        18.0f,
        l_jntColPos0,
    },
    {
        0,
        0,
        4,
        16.0f,
        &l_jntColPos1,
    },
    {
        1,
        0,
        7,
        7.0f,
        l_jntColPos2,
    },
    {
        1,
        0,
        12,
        7.0f,
        l_jntColPos2,
    },
    {
        1,
        0,
        8,
        6.0f,
        l_jntColPos4,
    },
    {
        1,
        0,
        13,
        6.0f,
        l_jntColPos4,
    },
    {
        0,
        0,
        9,
        6.0f,
        &l_jntColPos6,
    },
    {
        0,
        0,
        14,
        6.0f,
        &l_jntColPos6,
    },
    {
        1,
        0,
        16,
        18.0f,
        l_jntColPos8,
    },
    {
        1,
        0,
        18,
        8.0f,
        l_jntColPos9,
    },
    {
        1,
        0,
        23,
        8.0f,
        l_jntColPos10,
    },
    {
        1,
        0,
        19,
        7.0f,
        l_jntColPos11,
    },
    {
        1,
        0,
        24,
        7.0f,
        l_jntColPos12,
    },
    {
        1,
        0,
        20,
        6.0f,
        l_jntColPos13,
    },
    {
        1,
        0,
        25,
        6.0f,
        l_jntColPos14,
    },
    {
        2,
        3,
        15,
        40.0f,
        l_jntColPos15,
    },
    {
        2,
        3,
        5,
        40.0f,
        l_jntColPos16,
    },
    {
        0,
        3,
        15,
        45.0f,
        &l_jntColPos17,
    },
};

/* 803B2A84-803B2A9C 00FBA4 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos0 */
SECTION_DATA static Vec l_wolfJntColPos0[] = {
    {-25.0f, 20.0f, 0.0f},
    {80.0f, 0.0f, 0.0f}
};

/* 803B2A9C-803B2AA8 00FBBC 000C+00 1/0 0/0 0/0 .data            l_wolfJntColPos1 */
SECTION_DATA static Vec l_wolfJntColPos1 = {
    5.0f, 3.0f, 0.0f
};

/* 803B2AA8-803B2AC0 00FBC8 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos2 */
SECTION_DATA static Vec l_wolfJntColPos2[] = {
    {0.0f, 0.0f, 0.0f},
    {35.0f, 3.0f, 0.0f}
};

/* 803B2AC0-803B2AD8 00FBE0 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos4 */
SECTION_DATA static Vec l_wolfJntColPos4[] = {
    {0.0f, 2.0f, 0.0f},
    {30.0f, 0.0f, 0.0f}
};

/* 803B2AD8-803B2AF0 00FBF8 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos6 */
SECTION_DATA static Vec l_wolfJntColPos6[] = {
    {0.0f, 0.0f, 0.0f},
    {20.0f, 0.0f, 0.0f}
};

/* 803B2AF0-803B2B08 00FC10 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos8 */
SECTION_DATA static Vec l_wolfJntColPos8[] = {
    {0.0f, -2.0f, 0.0f},
    {12.0f, -2.0f, 0.0f}
};

/* 803B2B08-803B2B20 00FC28 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos10 */
SECTION_DATA static Vec l_wolfJntColPos10[] = {
    {0.0f, 0.0f, 0.0f},
    {33.0f, -2.0f, 0.0f}
};

/* 803B2B20-803B2B38 00FC40 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos12 */
SECTION_DATA static Vec l_wolfJntColPos12[] = {
    {-5.0f, -2.0f, 0.0f},
    {15.0f, 0.0f, 0.0f}
};

/* 803B2B38-803B2B50 00FC58 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos14 */
SECTION_DATA static Vec l_wolfJntColPos14[] = {
    {-4.0f, 0.0f, 0.0f},
    {33.0f, 0.0f, 0.0f}
};

/* 803B2B50-803B2B68 00FC70 0018+00 1/0 0/0 0/0 .data            l_wolfJntColPos16 */
SECTION_DATA static Vec l_wolfJntColPos16[] = {
    {0.0f, -3.0f, 0.0f},
    {13.0f, -3.0f, 0.0f}
};

/* 803B2B68-803B2C40 -00001 00D8+00 1/1 0/0 0/0 .data            l_wolfJntColData */
static dJntColData_c l_wolfJntColData[] = {
    {
        1,
        0,
        1,
        28.0f,
        l_wolfJntColPos0,
    },
    {
        0,
        0,
        4,
        25.0f,
        &l_wolfJntColPos1,
    },
    {
        1,
        0,
        16,
        10.0f,
        l_wolfJntColPos2,
    },
    {
        1,
        0,
        21,
        10.0f,
        l_wolfJntColPos2,
    },
    {
        1,
        0,
        17,
        6.0f,
        l_wolfJntColPos4,
    },
    {
        1,
        0,
        22,
        6.0f,
        l_wolfJntColPos4,
    },
    {
        1,
        0,
        18,
        4.0f,
        l_wolfJntColPos6,
    },
    {
        1,
        0,
        23,
        4.0f,
        l_wolfJntColPos6,
    },
    {
        1,
        0,
        19,
        4.0f,
        l_wolfJntColPos8,
    },
    {
        1,
        0,
        24,
        4.0f,
        l_wolfJntColPos8,
    },
    {
        1,
        0,
        28,
        11.0f,
        l_wolfJntColPos10,
    },
    {
        1,
        0,
        33,
        11.0f,
        l_wolfJntColPos10,
    },
    {
        1,
        0,
        29,
        7.0f,
        l_wolfJntColPos12,
    },
    {
        1,
        0,
        34,
        7.0f,
        l_wolfJntColPos12,
    },
    {
        1,
        0,
        30,
        5.0f,
        l_wolfJntColPos14,
    },
    {
        1,
        0,
        35,
        5.0f,
        l_wolfJntColPos14,
    },
    {
        1,
        0,
        31,
        6.0f,
        l_wolfJntColPos16,
    },
    {
        1,
        0,
        36,
        5.0f,
        l_wolfJntColPos16,
    },
};

/* 803B2C40-803B2C50 00FD60 000D+03 0/1 0/0 0/0 .data            defaultPortal$39238 */
#pragma push
#pragma force_active on
SECTION_DATA static char defaultPortal[13] = "POTAL_WARPIN";
#pragma pop

/* 803B2C50-803B2C64 00FD70 0014+00 0/1 0/0 0/0 .data            kBridgePortal$39239 */
#pragma push
#pragma force_active on
SECTION_DATA static char kBridgePortal[20] = "PORTAL_WARP_KBRIDGE";
#pragma pop

/* 803B2C64-803B2C78 00FD84 0014+00 0/1 0/0 0/0 .data            oBridgePortal$39240 */
#pragma push
#pragma force_active on
SECTION_DATA static char oBridgePortal[20] = "PORTAL_WARP_OBRIDGE";
#pragma pop

/* 803B2C78-803B2C8C 00FD98 0014+00 0/1 0/0 0/0 .data            volcBomPortal$39241 */
#pragma push
#pragma force_active on
SECTION_DATA static char volcBomPortal[20] = "PORTAL_WARP_BIGVOLC";
#pragma pop

/* 803B2C8C-803B2CA4 00FDAC 0016+02 0/1 0/0 0/0 .data            cannonPortal$39242 */
#pragma push
#pragma force_active on
SECTION_DATA static char cannonPortal[22] = "SKY_CANNON_WARP_START";
#pragma pop

/* 803B2CEC-803B2D34 00FE0C 0048+00 1/2 0/0 0/0 .data            m_fEffParamProc__9daAlink_c */
EffParamProc daAlink_c::m_fEffParamProc[] = {
    &daAlink_c::setEffectFrontRollParam,
    &daAlink_c::setEffectSlipParam,
    &daAlink_c::setEffectSmallLandParam,
    &daAlink_c::setEffectRunParam,
    &daAlink_c::setEffectLandParam,
    &daAlink_c::setEffectSumouParam,
};

/* 803B2D34-803B2D40 00FE54 000C+00 0/1 0/0 0/0 .data            leftRotNormal$41087 */
#pragma push
#pragma force_active on
SECTION_DATA static s16 leftRotNormal[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};
#pragma pop

/* 803B2D40-803B2D58 00FE60 0018+00 0/1 0/0 0/0 .data            leftRotLight$41092 */
#pragma push
#pragma force_active on
SECTION_DATA static s16 leftRotLight[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};
#pragma pop

/* 803B2D58-803B2D7C 00FE78 0024+00 0/1 0/0 0/0 .data            leftRotLarge$41097 */
#pragma push
#pragma force_active on
SECTION_DATA static s16 leftRotLarge[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};
#pragma pop

/* 803B2D7C-803B2D88 00FE9C 000C+00 0/1 0/0 0/0 .data            leftRotWater$41102 */
#pragma push
#pragma force_active on
SECTION_DATA static s16 leftRotWater[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};
#pragma pop

/* 803B2D88-803B2D94 00FEA8 000C+00 1/1 0/0 0/0 .data            rodTopOffset$61388 */
SECTION_DATA static Vec rodTopOffset = {
    0.0f, 0.0f, 0.0f
};

/* 803B2D94-803B2DA0 -00001 000C+00 1/1 0/0 0/0 .data            bodyBrkName$69118 */
SECTION_DATA static const char* bodyBrkName[3] = {
    "ml_body_power_down.brk",
    "ml_body_power_up_a.brk",
    "ml_body_power_up_b.brk",
};

/* 803B2DA0-803B2DAC -00001 000C+00 1/1 0/0 0/0 .data            headBrkName$69119 */
SECTION_DATA static const char* headBrkName[3] = {
    "ml_head_power_down.brk",
    "ml_head_power_up_a.brk",
    "ml_head_power_up_b.brk",
};

// move these later
static int daAlink_Create(fopAc_ac_c* i_this);
static int daAlink_Delete(daAlink_c* i_this);
static int daAlink_Execute(daAlink_c* i_this);
static int daAlink_Draw(daAlink_c* i_this);

/* 803B2DAC-803B2DCC -00001 0020+00 1/0 0/0 0/0 .data            l_daAlink_Method */
static actor_method_class l_daAlink_Method = {
    (process_method_func)daAlink_Create,  (process_method_func)daAlink_Delete,
    (process_method_func)daAlink_Execute, (process_method_func)NULL,
    (process_method_func)daAlink_Draw,
};

/* 803B2DCC-803B2E20 -00001 0030+24 0/0 0/0 1/0 .data            g_profile_ALINK */
extern actor_process_profile_definition g_profile_ALINK = {
    fpcLy_CURRENT_e,
    5,
    fpcPi_CURRENT_e,
    PROC_ALINK,
    &g_fpcLf_Method.mBase,
    sizeof(daAlink_c),
    0,
    0,
    &g_fopAc_Method.base,
    91,
    &l_daAlink_Method,
    0x60400,
    fopAc_PLAYER_e,
    fopAc_CULLBOX_0_e,
};

/* 800A4068-800A4820 09E9A8 07B8+00 1/1 0/0 0/0 .text            createHeap__9daAlink_cFv */
int daAlink_c::createHeap() {
    ResTIMG* sp14 = (ResTIMG*)dComIfG_getObjectRes("Always", 0x5D);
    mpWarpTexData = (void*)((u32)sp14 + sp14->imageOffset);

    if (*dStage_roomControl_c::getDemoArcName() != 0) {
        if (!initDemoModel(&mpDemoHLTmpModel, "demo00_Link_cut00_HL_tmp.bmd", 0x1000000)) {
            return 0;
        }

        if (mpDemoHLTmpModel != NULL && !initDemoBck(&mpDemoHLTmpBck, "demo00_Link_cut00_HL_tmp.bck")) {
            return 0;
        }

        if (!initDemoModel(&mpDemoHRTmpModel, "demo00_Link_cut00_HR_tmp.bmd", 0)) {
            return 0;
        }

        if (mpDemoHRTmpModel != NULL && !initDemoBck(&mpDemoHRTmpBck, "demo00_Link_cut00_HR_tmp.bck")) {
            return 0;
        }

        if (!initDemoModel(&mpDemoFCBlendModel, "demo00_Link_cut00_FC_blend.bmd", 0)) {
            return 0;
        }

        if (!initDemoModel(&mpDemoFCTongueModel, "demo00_Link_cut00_FC_tongue.bmd", 0x200)) {
            return 0;
        }

        if (mpDemoFCTongueModel != NULL && !initDemoBck(&mpDemoFCTmpBck, "demo00_Link_cut00_FC_tmp.bck")) {
            return 0;
        }

        if (!initDemoBck(&mpDemoHDTmpBck, "demo00_Link_cut00_HD_tmp.bck")) {
            return 0;
        }

        if (mpDemoHDTmpBck != NULL) {
            field_0x06b4 = mpDemoHDTmpBck->getBckAnm();
            mpDemoHDTmpBck->changeBckOnly(NULL);
        }
    }

    if (!mSight.create()) {
        return 0;
    }

    mpHIO = new daAlinkHIO_c();
    if (mpHIO == NULL) {
        return 0;
    }

    if (!(mpWlChangeModel = initModel(0x2F, 0))) {
        return 0;
    }

    if (!(mpSwAModel = initModel(0x3C, 0x200))) {
        return 0;
    }

    if (!(mpSwMModel = initModelEnv(0x38, 0x1000200))) {
        return 0;
    }

    if (!(mpSwASheathModel = initModel(0x3B, 0))) {
        return 0;
    }

    if (!(mpSwMSheathModel = initModelEnv(0x37, 0))) {
        return 0;
    }

    J3DTransformInfo* sp1C = new J3DTransformInfo[40];
    if (sp1C == NULL) {
        return 0;
    }

    Quaternion* sp30 = new Quaternion[40];
    if (sp30 == NULL) {
        return 0;
    }

    field_0x2060 = new mDoExt_MtxCalcOldFrame(sp1C, sp30);
    if (field_0x2060 == NULL) {
        return 0;
    }

    field_0x1f20 = new mDoExt_MtxCalcAnmBlendTblOld(field_0x2060, 3, mNowAnmPackUnder);
    if (field_0x1f20 == NULL) {
        return 0;
    }

    field_0x1f24 = new mDoExt_MtxCalcAnmBlendTblOld(field_0x2060, 3, mNowAnmPackUpper);
    if (field_0x1f24 == NULL) {
        return 0;
    }

    for (int i = 0; i < 2; i++) {
        field_0x2180[i] = new daAlink_matAnm_c();
        if (field_0x2180[i] == NULL) {
            return 0;
        }
    }

    mUnderAnmHeap[0].setBufferSize(0x10800);
    if (mUnderAnmHeap[0].mallocBuffer() == NULL) {
        return 0;
    }

    field_0x2d78 = new (0x20) u8[0x800];
    if (field_0x2d78 == NULL) {
        return 0;
    }

    if (mFaceBtpHeap.mallocBuffer() == NULL) {
        return 0;
    }
    
    if (mFaceBtkHeap.mallocBuffer() == NULL) {
        return 0;
    }

    if (mFaceBckHeap.mallocBuffer() == NULL) {
        return 0;
    }

    JKRReadIdxResource(mFaceBckHeap.getBuffer(), 0xC00, 0xE8, dComIfGp_getAnmArchive());
    J3DAnmTransform* bck = (J3DAnmTransform*)J3DAnmLoaderDataBase::load(mFaceBckHeap.getBuffer());
    if (!field_0x2164.init(bck, FALSE, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f, 0, -1, false)) {
        return 0;
    }

    if (mAnmHeap9.mallocBuffer() == NULL) {
        return 0;
    }

    if (mpDemoFCBlendModel != NULL) {
        field_0x069c = new mDoExt_blkAnm();
        if (field_0x069c == NULL) {
            return 0;
        }

        mpDemoFCTmpBls = (J3DDeformData*)dComIfG_getObjectRes(dStage_roomControl_c::getDemoArcName(), "demo00_Link_cut00_FC_tmp.bls");
        if (mpDemoFCTmpBls != NULL && mpDemoFCBlendModel->setDeformData(mpDemoFCTmpBls, 1)) {
            return 0;
        }
    }

    return 1;
}

/* 800A48F0-800A4910 09F230 0020+00 1/1 0/0 0/0 .text            daAlink_createHeap__FP10fopAc_ac_c
 */
static int daAlink_createHeap(fopAc_ac_c* i_this) {
    return ((daAlink_c*)i_this)->createHeap();
}

bool daPy_py_c::checkWoodSwordEquip() {
    return dComIfGs_getSelectEquipSword() == WOOD_STICK;
}

bool daPy_py_c::checkLightMasterSwordEquip() {
    return dComIfGs_getSelectEquipSword() == LIGHT_SWORD;
}

BOOL daPy_py_c::i_checkSwordGet() {
    return dComIfGs_getSelectEquipSword() != NO_ITEM;
}

/* 800A4910-800A4BC8 09F250 02B8+00 5/5 0/0 0/0 .text            setSelectEquipItem__9daAlink_cFi */
void daAlink_c::setSelectEquipItem(int param_0) {
    if (!checkWolf()) {
        J3DModel* temp = mSwordModel;

        if (checkWoodSwordEquip()) {
            mSwordModel = mWoodSwordModel;
            mSheathModel = mpSwMSheathModel;
        } else if (checkMasterSwordEquip()) {
            mSwordModel = mpSwMModel;
            mSheathModel = mpSwMSheathModel;
        } else {
            if (!i_checkSwordGet()) {
                mSwordChangeWaitTimer = 100;
            }
            mSwordModel = mpSwAModel;
            mSheathModel = mpSwASheathModel;
        }

        if (!i_checkSwordGet() || checkWoodSwordEquip() || checkNoResetFlg3(FLG3_UNK_1000000)) {
            if (field_0x06ec != NULL) {
                field_0x06ec->hide();
            }
        } else {
            if (field_0x06ec != NULL) {
                field_0x06ec->show();
            }
        }

        if (mClothesChangeWaitTimer == 0 &&
            (temp != mSwordModel || checkNoResetFlg2(FLG2_STATUS_WINDOW_DRAW)))
        {
            if (temp != mSwordModel) {
                mSwordChangeWaitTimer = 5;
            }

            if (checkWoodSwordEquip()) {
                if (mEquipItem == EQUIP_SWORD || param_0 != 0) {
                    mSwordModel->getModelData()->getMaterialNodePointer(1)->getShape()->hide();
                } else {
                    mSwordModel->getModelData()->getMaterialNodePointer(1)->getShape()->show();
                }
            } else if (mEquipItem == EQUIP_SWORD || param_0 != 0) {
                mSwordModel->getModelData()->getMaterialNodePointer(0)->getShape()->show();
            } else {
                mSwordModel->getModelData()->getMaterialNodePointer(0)->getShape()->hide();
            }
        }
    } else if (checkMasterSwordEquip()) {
        mSwordModel = mpSwMModel;
        mSheathModel = mpSwMSheathModel;
    } else {
        mSwordModel = mpSwAModel;
        mSheathModel = mpSwASheathModel;
    }

    if (mClothesChangeWaitTimer == 0) {
        if (checkZoraWearAbility()) {
            if (checkZoraWearMaskDraw()) {
                field_0x06f0->show();
                if (!checkEquipHeavyBoots()) {
                    field_0x06e4->show();
                }
            } else {
                field_0x06f0->hide();
                field_0x06e4->hide();
            }
        }

        simpleAnmPlay(mMagicArmorBodyBrk);
        simpleAnmPlay(mMagicArmorHeadBrk);
    }
}

/* 800A4BC8-800A4C40 09F508 0078+00 2/2 0/0 0/0 .text            checkBoarStart__9daAlink_cFv */
BOOL daAlink_c::checkBoarStart() {
    // Stage: Bulblin Camp   Room: Outside Arbiter's
    return (checkStageName("F_SP118") && getStartRoomNo() == 3) && dComIfGs_getStartPoint() == 0;
}

/* 800A4C40-800A4CB4 09F580 0074+00 2/2 0/0 0/0 .text            checkCanoeStart__9daAlink_cFv */
BOOL daAlink_c::checkCanoeStart() {
    // Stage: Lake Hylia   Room: Lake
    return (checkStageName("F_SP115") && getStartRoomNo() == 0) && dComIfGs_getStartPoint() == 2;
}

u32 daPy_py_c::i_getLastSceneMode() {
    return dComIfGs_getLastSceneMode() & 0xF;
}

/* 800A4CB4-800A54F4 09F5F4 0840+00 1/1 0/0 0/0 .text            playerInit__9daAlink_cFv */
void daAlink_c::playerInit() {
    mHeavySpeedMultiplier = 1.0f;

    if (!checkDungeon() && !checkBossRoom() && checkItemGet(DUNGEON_EXIT, 1)) {
        dComIfGs_setItem(SLOT_18, TKS_LETTER);
    }

    u16 i;
    dCcD_Cyl* cyl1 = field_0x850;
    dCcD_Cyl* cyl2 = field_0xC04;
    for (i = 0; i < 3; i++, cyl1++, cyl2++) {
        cyl1->Set(l_cylSrc);
        cyl1->SetStts(&field_0x814);
        cyl1->OnTgNoConHit();
        cyl1->SetTgShieldFrontRangeYAngle(&field_0x306c);
        cyl1->SetTgHitCallback(daAlink_tgHitCallback);
        cyl1->SetCoHitCallback(daAlink_coHitCallback);

        cyl2->Set(l_cylSrc);
        cyl2->SetStts(&field_0x814);
        cyl2->OffCoSetBit();
        cyl2->SetTgMtrl(3);
        cyl2->OnTgNoHitMark();
        cyl2->SetTgType(0xD8FBFFFF);
        cyl2->OnTgSPrmBit(0x20);
    }
    field_0x850[2].SetH(90.0f);
    field_0x850[1].SetH(90.0f);
    field_0xFB8.Set(l_sphSrc);
    field_0xFB8.SetStts(&field_0x814);
    field_0xFB8.StartCAt(current.pos);

    mAnmHeap3.setBufferSize(0x20000);
    mAnmHeap3.createHeap(daPy_anmHeap_c::HEAP_TYPE_4);

    if (checkWolf()) {
        changeWolf();
    } else {
        changeLink(0);
    }

    mAnmHeap4.setBufferSize(0xB00);
    mAnmHeap4.createHeap(daPy_anmHeap_c::HEAP_TYPE_4);
    setShieldModel();

    mSwordModel = mpSwAModel;
    mSheathModel = mpSwASheathModel;

    field_0x814.Init(120, 0xFF, this);
    field_0x306c = shape_angle.y + mBodyAngle.y;

    for (u16 i = 0; i < 3; i++) {
        mAtCps[i].Set(l_atCpsSrc);
        mAtCps[i].SetStts(&field_0x814);
    }
    mGuardAtCps.Set(l_atCpsSrc);
    mGuardAtCps.SetStts(&field_0x814);
    mGuardAtCps.SetAtType(AT_TYPE_SHIELD_ATTACK);
    mGuardAtCps.OnAtNoHitMark();
    mGuardAtCps.SetAtHitMark(0);
    mGuardAtCps.SetAtAtp(0);
    mAtCyl.Set(l_atCylSrc);
    mAtCyl.SetStts(&field_0x814);

    mLinkAcch.Set(this, 3, mAcchCir);
    mLinkAcch.ClrWaterNone();
    mLinkAcch.SetWaterCheckOffset(10000.0f);
    mLinkAcch.OnLineCheck();
    mLinkAcch.ClrRoofNone();
    mLinkAcch.SetRoofCrrHeight(field_0x598);
    mLinkAcch.SetGndThinCellingOff();
    mLinkAcch.SetWtrChkMode(2);
    mLinkAcch.OnWallSort();
    mAcchCir[0].SetWall(l_autoUpHeight, 35.0f);
    mAcchCir[1].SetWall(129.99000549316406f, 35.0f);
    mAcchCir[2].SetWall(field_0x598, 35.0f);
    field_0x2fe6 = shape_angle.y;

    for (u16 i = 0; i < 3; i++) {
        u8* underBuf = mUnderAnmHeap[0].getBuffer();
        mUnderAnmHeap[i].setBuffer(underBuf + (i * 0x2C00));
        mUnderAnmHeap[i].createHeap(daPy_anmHeap_c::HEAP_TYPE_3);
    }
    mUpperAnmHeap[0].setBuffer(mUnderAnmHeap[0].getBuffer() + 0x8400);

    for (u16 i = 0; i < 3; i++) {
        u8* upperBuf = mUpperAnmHeap[0].getBuffer();
        mUpperAnmHeap[i].setBuffer(upperBuf + (i * 0x2C00));
        mUpperAnmHeap[i].createHeap(daPy_anmHeap_c::HEAP_TYPE_3);
    }

    mFaceBtpHeap.createHeap(daPy_anmHeap_c::HEAP_TYPE_1);
    mFaceBtkHeap.createHeap(daPy_anmHeap_c::HEAP_TYPE_2);
    mFaceBckHeap.createHeap(daPy_anmHeap_c::HEAP_TYPE_3);

    for (u16 i = 0; i < 2; i++) {
        mItemHeap[i].setBufferSize(0x13200);
        mItemHeap[i].createHeap(daPy_anmHeap_c::HEAP_TYPE_4);
    }
    mAnmHeap9.createHeap(daPy_anmHeap_c::HEAP_TYPE_3);
    resetBasAnime();

    mZ2Link.init(&current.pos, &eyePos, &field_0x3720);
    mZ2Link.initKantera(&mKandelaarFlamePos);
    mZ2Link.setKanteraState(0);
    mProcID = 0x160;

    m_swordBlur.m_blurTex = (ResTIMG*)dComIfG_getObjectRes(l_arcName, 0x59);  // blur.bti

    J3DModelData* modelData = mpSwAModel->getModelData();
    m_nSwordBtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 0x44);  // al_swa.btk
    m_nSwordBtk->searchUpdateMaterialID(modelData);
    modelData->entryTexMtxAnimator(m_nSwordBtk);

    J3DModelData* modelData2 = mpSwMModel->getModelData();
    m_mSwordBtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 0x45);  // al_swm.btk
    m_mSwordBtk->searchUpdateMaterialID(modelData2);
    modelData2->entryTexMtxAnimator(m_mSwordBtk);

    m_mSwordBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 0x3F);  // al_swm.brk
    m_mSwordBrk->searchUpdateMaterialID(modelData2);
    modelData2->entryTevRegAnimator(m_mSwordBrk);

    f32 tmp = -1000000000.0f;
    mWaterY = tmp;
    field_0x33b8 = tmp;
    field_0x33bc = tmp;

    mEquipItem = NO_ITEM;
    offSwordModel();

    field_0x3184 = -1;
    mExitID = 0x3F;
    onNoResetFlg0(FLG0_SWIM_UP);
    offOxygenTimer();

    int startMode = getStartMode();
    int startEvent = getStartEvent();

    if (dComIfGp_getStartStagePoint() == -2 || dComIfGp_getStartStagePoint() == -3) {
        field_0x3188 = dComIfGp_evmng_startDemo(-1);
    } else if (dComIfGp_getStartStagePoint() == -4) {
        field_0x3188 = dComIfGp_evmng_startDemo(0xD5);
    } else {
        if (i_getLastSceneMode() == 9) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xD3);
        } else if (startMode == 10) {
            if (startEvent != 0xFF) {
                field_0x3188 = dComIfGp_evmng_startDemo(startEvent);
            } else {
                field_0x3188 = dComIfGp_evmng_startDemo(0xCF);
            }
        } else if (startMode == 11) {
            if (startEvent != 0xFF) {
                field_0x3188 = dComIfGp_evmng_startDemo(startEvent);
            } else {
                field_0x3188 = dComIfGp_evmng_startDemo(0xD0);
            }
        } else if (startMode == 6) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xCD);
        } else if (startMode == 7) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xCE);
        } else if (startMode == 8) {
            if (startEvent != 0xFF) {
                field_0x3188 = dComIfGp_evmng_startDemo(startEvent);
            } else {
                field_0x3188 = dComIfGp_evmng_startDemo(0xD4);
            }
        } else if (startMode == 12) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xC9);
        } else if (i_getLastSceneMode() == 11) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xFF);
        } else if (i_getLastSceneMode() == 12) {
            field_0x3188 = dComIfGp_evmng_startDemo(0xD1);
        } else {
            field_0x3188 = dComIfGp_evmng_startDemo(startEvent);
        }
    }

    dComIfGp_getPEvtManager()->orderStartDemo();
    field_0x2f94 = -1;
    field_0x2f95 = -1;
    field_0x2f96 = -1;
    field_0x2f97 = -1;

    for (int i = 0; i < 0x10; i++) {
        mShieldArrowIDs[i] = -1;
    }
    mAtnActorID = -1;
    mMsgClassID = -1;
    field_0x28f8 = -1;
    field_0x28fc = -1;

    field_0x2e54.init(&mLinkAcch, daAlinkHIO_basic_c0::m.mWaterSurfaceEffectHeight, field_0x598);
    field_0x3108 = shape_angle.y;

    field_0x2f20.setOldPosP(&field_0x3624, &field_0x3630);
    field_0x2fc3 = 10;

    field_0x2f5c.mPosition = current.pos;
    field_0x2f5c.mColor.r = 80;
    field_0x2f5c.mColor.g = 80;
    field_0x2f5c.mColor.b = 200;

    f32 tmp_0 = 0.0f;
    field_0x2f5c.mPow = tmp_0;
    field_0x2f5c.mFluctuation = tmp_0;
    dKy_plight_set(&field_0x2f5c);

    setSelectEquipItem(0);

    if (checkStageName("D_MN08") || checkStageName("D_MN08B") || checkStageName("D_MN08C")) {
        onNoResetFlg3(FLG3_UNK_40000000);
    }
}

/* 800A54F4-800A551C 09FE34 0028+00 3/3 0/0 0/0 .text            checkHorseStart__9daAlink_cFUli */
BOOL daAlink_c::checkHorseStart(u32 pLastMode, int pStartMode) {
    return pLastMode == 1 || pStartMode == 2 || pLastMode == 8;
}

/* 800A551C-800A5CC8 09FE5C 07AC+00 1/1 0/0 0/0 .text            setStartProcInit__9daAlink_cFv */
// small regalloc, equivalent
int daAlink_c::setStartProcInit() {
    BOOL sp10 = 0;
    int start_mode = getStartMode();
    u32 last_mode = getLastSceneMode();
    daHorse_c* horsep = dComIfGp_getHorseActor();
    BOOL horse_start = checkHorseStart(last_mode, start_mode);

    setDamagePoint(getLastSceneDamage(), last_mode == 4, 0, 1);
    mSwordUpTimer = getLastSceneSwordAtUpTime() * 2;

    if (checkWolf()) {
        setFaceBasicAnime(ANM_WAIT);
    } else {
        mEquipItem = (dComIfGs_getLastSceneMode() >> 0x18) & 0xFF;
        if (mEquipItem == SWORD) {
            mEquipItem = 0x103;
        } else if (checkStageName("D_MN09B") && last_mode != 8 && start_mode == 2) {
            mEquipItem = 0x103;
        }

        if (mEquipItem == 0 || !checkCastleTownUseItem(mEquipItem) || (checkCloudSea() && mEquipItem != 0x103) || checkCanoeStart() || (horse_start && mEquipItem != 0x103 && !checkBowAndSlingItem(mEquipItem) && mEquipItem != BOOMERANG && mEquipItem != KANTERA && !checkHookshotItem(mEquipItem))) {
            mEquipItem = NO_ITEM;
        } else {
            setItemModel();
        }

        if (horse_start) {
            horsep->i_setHorsePosAndAngle(&current.pos, shape_angle.y);
            horsep->initHorseMtx();
            initForceRideHorse();
        }
    }

    if (last_mode == 6) {
        procCoPeepSubjectivityInit();
    } else if (last_mode == 11) {
        mLinkAcch.SetGroundHit();
        procBoardWaitInit(fopAcM_SearchByID(field_0x2900));
    } else if (last_mode == 12) {
        procDungeonWarpSceneStartInit();
    } else if (dComIfGp_getStartStagePoint() == -4) {
        procCoWarpInit(1, 1);
    } else if (start_mode == 8 && field_0x3188 == 0xFF) {
        procCoWarpInit(1, 0);
    } else if (last_mode == 4 || start_mode == 12 || last_mode == 5) {
        if (checkHorseRide()) {
            procHorseComebackInit();
        } else {
            commonLargeDamageUpInit(-2, 1, 0, 0);
            if (checkWolf()) {
                sp10 = 1;
            }
        }
    } else if (last_mode == 9) {
        procWolfDigThroughInit(1);
    } else if (last_mode == 8) {
        initForceRideHorse();
        procHorseComebackInit();
    } else if (last_mode == 10) {
        checkWaitAction();
    } else if (start_mode == 9) {
        if (checkWolf()) {
            procWolfTagJumpInit(NULL);
        } else {
            procAutoJumpInit(1);
        }
    } else if (start_mode == 4) {
        if (checkWolf()) {
            procWolfAutoJumpInit(1);
        } else {
            procAutoJumpInit(1);
        }
        mNormalSpeed = 55.0f;
        speed.y = 0.0f;
    } else if (checkCanoeStart()) {
        procCanoeJumpRideInit(NULL);
    } else if (checkBoarStart()) {
        if (!initForceRideBoar()) {
            procWaitInit();
        } else {
            procHorseWaitInit();
        }
    } else if (start_mode == 1 || start_mode == 3 || start_mode == 5 || start_mode == 14 || start_mode == 13 || start_mode == 2 || start_mode == 0) {
        if (start_mode == 3) {
            shape_angle.y = dComIfGs_getLastSceneAngleY();
            current.angle.y = shape_angle.y;
            field_0x2fe6 = shape_angle.y;
        }

        if (field_0x3188 == 0xFF) {
            if (!checkModeFlg(0x400) && start_mode != 0) {
                mNormalSpeed = dComIfGs_getLastSceneSpeedF();
            }

            mDemo.setStartDemoType();
            mDemo.setDemoMode(14);
            mDemo.setMoveAngle(current.angle.y);
            mDemo.setTimer(35);

            if (checkModeFlg(0x400)) {
                daHorse_c* var_r27 = dComIfGp_getHorseActor();
                var_r27->changeOriginalDemo();
                var_r27->changeDemoMode(6, 0);

                if (start_mode == 2) {
                    if (checkStageName("F_SP109") && fopAcM_GetRoomNo(this) == 0 && dComIfGs_getStartPoint() == 35) {
                        var_r27->setSpeedF(var_r27->getNormalMaxSpeedF());
                    } else {
                        var_r27->setSpeedF(0.0f);
                    }
                } else if (start_mode == 1) {
                    var_r27->setWalkSpeedF();
                } else {
                    var_r27->setSpeedF(dComIfGs_getLastSceneSpeedF());
                }

                procHorseWaitInit();
            } else if (checkSwimAction(1)) {
                if (start_mode == 1) {
                    if (checkWolf()) {
                        mNormalSpeed = 0.5f * daAlinkHIO_wlSwim_c0::m.field_0x50;
                    } else {
                        mNormalSpeed = 0.5f * daAlinkHIO_swim_c0::m.mMaxForwardSpeed;
                    }
                }

                speedF = mNormalSpeed;

                if (checkWolf()) {
                    procWolfSwimMoveInit();
                } else if (mNormalSpeed < daAlinkHIO_swim_c0::m.mForwardMinSpeed) {
                    procSwimWaitInit(0);
                } else {
                    procSwimMoveInit();
                }

                field_0x2f99 = 0;
            } else if (start_mode == 1) {
                if (checkWolf()) {
                    mNormalSpeed = daAlinkHIO_wlMove_c0::m.field_0x84 * daAlinkHIO_wlMove_c0::m.field_0x64;
                    speedF = mNormalSpeed;
                    procWolfMoveInit();
                } else {
                    mNormalSpeed = daAlinkHIO_move_c0::m.mWalkChangeRate * daAlinkHIO_move_c0::m.mMaxSpeed;
                    speedF = mNormalSpeed;
                    procMoveInit();
                }
            } else if (start_mode == 0) {
                checkWaitAction();
            } else if (last_mode == 2 || last_mode == 3) {
                mDemo.setStick(dComIfGs_getLastSceneSpeedF());
                field_0x2fe2 = shape_angle.y;

                if (last_mode == 3) {
                    shape_angle.y += 0x8000;
                    current.angle.y = shape_angle.y;
                    field_0x2fe6 = shape_angle.y;
                }

                if (checkWolf()) {
                    procWolfLieMoveInit(0);
                } else {
                    procCrawlMoveInit(0, 0);
                }
            } else if (checkWolf()) {
                if (mNormalSpeed > daAlinkHIO_wlMove_c0::m.field_0x64) {
                    mNormalSpeed = daAlinkHIO_wlMove_c0::m.field_0x64;
                }
                speedF = mNormalSpeed;
                procWolfMoveInit();
            } else {
                if (mNormalSpeed > daAlinkHIO_move_c0::m.mMaxSpeed) {
                    mNormalSpeed = daAlinkHIO_move_c0::m.mMaxSpeed;
                }
                speedF = mNormalSpeed;
                procMoveInit();
            }
        } else {
            checkWaitAction();
        }
    } else {
        checkWaitAction();
    }

    return sp10;
}

#pragma push
#pragma force_active on
static u8 data_80450FD1;
#pragma pop

inline bool checkCasualWearFlg() {
    return dComIfGs_getSelectEquipClothes() == WEAR_CASUAL;
}

inline bool checkZoraWearFlg() {
    return dComIfGs_getSelectEquipClothes() == WEAR_ZORA;
}

inline bool checkMagicArmorWearFlg() {
    return dComIfGs_getSelectEquipClothes() == ARMOR;
}

/* 800A5CC8-800A660C 0A0608 0944+00 1/1 0/0 0/0 .text            create__9daAlink_cFv */
int daAlink_c::create() {
    fopAcM_SetupActor(this, daAlink_c);

    static int bgWaitFlg = 0;

    u32 sceneMode = i_getLastSceneMode();
    s32 startMode = getStartMode();
    s16 startPoint = dComIfGp_getStartStagePoint();
    BOOL horseStart = checkHorseStart(sceneMode, startMode);

    // Stage: City   Room: Entrance   Layer: 0
    BOOL enteringCity = checkStageName("D_MN07") && dComIfGp_roomControl_getStayNo() == 0 &&
        dComIfG_play_c::getLayerNo(0) == 0 && current.pos.y > 7500.0f;

    if (!bgWaitFlg) {
        // Event Flag: Finished Sewers
        if (checkCasualWearFlg() && dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[47])) {
            dComIfGs_setSelectEquipClothes(WEAR_KOKIRI);
        }

        if (enteringCity && checkMagicArmorHeavy()) {
            dComIfGs_setSelectEquipClothes(WEAR_KOKIRI);
        }

        dComIfGp_setPlayer(0, this);
        dComIfGp_setLinkPlayer(this);
        fopAcM_setStageLayer(this);

        if (sceneMode == 7) {
            current.pos = dComIfGs_getTurnRestartPos();
            shape_angle.y = dComIfGs_getTurnRestartAngleY();
            current.angle.y = shape_angle.y;
        }

        if ((!checkBossOctaIealRoom() && dComIfGs_Wolf_Change_Check() == 1) || startPoint == -4 ||
            sceneMode == 9)
        {
            attention_info.position.set(current.pos.x + cM_ssin(shape_angle.y) * 70.0f,
                                         current.pos.y + 80.0f,
                                         current.pos.z + cM_scos(shape_angle.y) * 70.0f);
            onNoResetFlg1(FLG1_IS_WOLF);
        } else if (horseStart) {
            attention_info.position.y = current.pos.y + 150.0f;
        } else {
            attention_info.position.y = current.pos.y + 275.0f;
        }
        attention_info.flags = -1;

        if (!dComIfGp_getEventManager().dataLoaded()) {
            return cPhs_INIT_e;
        }

        setArcName(checkWolf());
        setOriginalHeap(&mpArcHeap, 0xA2800);
        if (dComIfG_resLoad(&mPhaseReq, mArcName, mpArcHeap) != cPhs_COMPLEATE_e) {
            return cPhs_INIT_e;
        }

        setShieldArcName();
        setOriginalHeap(&mpShieldArcHeap, 0x7000);
        if (dComIfG_resLoad(&mShieldPhaseReq, mShieldArcName, mpShieldArcHeap) != cPhs_COMPLEATE_e) {
            return cPhs_INIT_e;
        }

        if (!fopAcM_entrySolidHeap(this, daAlink_createHeap, 0xC003E930)) {
            return cPhs_ERROR_e;
        }

        mAttention = &dComIfGp_getAttention();
        field_0x317c = dComIfGp_getPlayerCameraID(0);

        playerInit();
        bgWaitFlg = 1;

        if (checkCanoeStart()) {
            field_0x2900 = fopAcM_create(PROC_CANOE, 0, &current.pos, fopAcM_GetRoomNo(this),
                                         &shape_angle, NULL, -1);
        } else if (sceneMode == 11) {
            field_0x2900 = fopAcM_create(PROC_Obj_IceLeaf, 0x1FFFF, &current.pos,
                                         fopAcM_GetRoomNo(this), &shape_angle, NULL, -1);
        } else {
            field_0x2900 = -1;
        }
    }

    mLinkAcch.CrrPos(dComIfG_Bgsp());
    void* var_r24 = NULL;

    if (mLinkAcch.GetGroundH() == -1000000000.0f ||
        (startMode == 14 && !dComIfG_Bgsp().ChkMoveBG(mLinkAcch.m_gnd)) ||
        (startPoint == -4 &&
         !(var_r24 = fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchPortal, &current.pos))) ||
        (field_0x2900 != -1 && !fopAcM_SearchByID(field_0x2900)) ||
        (checkCanoeStart() && !fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchCanoe, NULL)) ||
        (checkBoarStart() && !fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchBoar, NULL)) ||
        (startMode == 13 &&
         (!mLinkAcch.ChkWaterHit() || mLinkAcch.m_wtr.GetHeight() < current.pos.y)) ||
        ((checkCarryStartLightBallA() || checkCarryStartLightBallB()) &&
         !fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchLightBall, NULL)) ||
        (horseStart && dComIfGp_getHorseActor() == NULL))
    {
        return cPhs_INIT_e;
    }

    if (var_r24 != NULL) {
        dComIfGp_getEvent().setPtD(var_r24);
    }

    bgWaitFlg = 0;

    dComIfGs_setRestartRoom(current.pos, shape_angle.y, getStartRoomNo());
    field_0x3780 = current.pos;
    mLinkAcch.ClrGndThinCellingOff();
    fopAcM_SetRoomNo(this, dComIfG_Bgsp().GetRoomId(mLinkAcch.m_gnd) + 1);
    setRoomInfo();
    setWaterY();

    if (checkStageName("F_SP102") && fopAcM_GetRoomNo(this) == 0 &&
        dComIfG_play_c::getLayerNo(0) == 4)
    {
        onNoResetFlg2(FLG2_BOAR_SINGLE_BATTLE);
    } else if (checkStageName("F_SP123") && fopAcM_GetRoomNo(this) == 13 &&
               dComIfG_play_c::getLayerNo(0) == 0)
    {
        onNoResetFlg2(FLG2_UNK_1000000);
    }

    J3DAnmTransform* at1;
    J3DAnmTransform* at2;
    getUnderUpperAnime(ANM_WAIT, &at1, &at2, 0, 0x2C00);
    mNowAnmPackUnder[0].setAnmTransform(at1);

    if (at2 != NULL) {
        mNowAnmPackUpper[0].setAnmTransform(at2);
    } else {
        mNowAnmPackUpper[0].setAnmTransform(at1);
    }

    int prm = setStartProcInit();
    setSelectEquipItem(0);
    setMatrix();
    allAnimePlay();
    mpLinkModel->calc();
    playFaceTextureAnime();

    if (!checkWolf()) {
        setItemMatrix(0);
    } else {
        setWolfItemMatrix();
    }

    setBodyPartPos();
    setHangWaterY();

    field_0x850[0].SetC(current.pos);
    field_0x3454 = field_0x3834.y;
    setAttentionPos();
    setItemActor();

    if ((dComIfGs_getLastSceneMode() & 0x400000) && !checkWolf() && !checkNotHeavyBootsStage() &&
        !horseStart && !enteringCity)
    {
        setHeavyBoots(1);
    }

    if ((dComIfGs_getLastSceneMode() & 0x200000) && !checkCloudSea()) {
        onNoResetFlg2(FLG2_UNK_1);
        mZ2Link.setKanteraState(2);
    }

    if (checkCarryStartLightBallA() || checkCarryStartLightBallB()) {
        setForceGrab((fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchLightBall, NULL),
                     1, 1);
    }

    fopAcM_create(PROC_MIDNA, prm, &current.pos, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1);
    checkSetNpcTks(&current.pos, fopAcM_GetRoomNo(this), 1);

    if (startPoint == -4 && dComIfGp_TargetWarpPt_get() != 0xFF && !dComIfGp_TransportWarp_check()) {
        daTagMhint_c::createPortalWarpMissTag(0xBBE, fopAcM_GetID(this));
    }

    if (i_dStage_stagInfo_GetSaveTbl(dComIfGp_getStage()->getStagInfo()) == 0x11) {
        if (!dComIfGs_isItemFirstBit(HYLIA_SHIELD) && !dComIfGs_isItemFirstBit(SHIELD) &&
            !dComIfGs_isItemFirstBit(WOOD_SHIELD))
        {
            fopAcM_onSwitch(this, 0x6F);
        } else {
            fopAcM_offSwitch(this, 0x6F);
        }
    }

    return cPhs_COMPLEATE_e;
}

/* 800A660C-800A662C 0A0F4C 0020+00 1/0 0/0 0/0 .text            daAlink_Create__FP10fopAc_ac_c */
static int daAlink_Create(fopAc_ac_c* i_this) {
    return static_cast<daAlink_c*>(i_this)->create();
}

/* 800A662C-800A67E0 0A0F6C 01B4+00 2/2 0/0 0/0 .text            setRoomInfo__9daAlink_cFv */
s32 daAlink_c::setRoomInfo() {
    s32 roomID;

    if (mProcID != PROC_TW_GATE) {
        roomID = dComIfG_Bgsp().GetRoomId(mLinkAcch.m_gnd);

        if (roomID != fopAcM_GetRoomNo(this)) {
            tevStr.mRoomNo = roomID;
            mVoiceReverbIntensity = dComIfGp_getReverb(roomID);
            field_0x814.SetRoomId(roomID);
            fopAcM_SetRoomNo(this, roomID);
        }

        dStage_RoomCheck(&mLinkAcch.m_gnd);
    } else {
        roomID = fopAcM_GetRoomNo(this);
    }

    tevStr.mEnvrIdxOverride = dComIfG_Bgsp().GetPolyColor(mLinkAcch.m_gnd);
    field_0x3174 = dComIfG_Bgsp().GetGroundCode(mLinkAcch.m_gnd);
    field_0x2fbb = dComIfG_Bgsp().GetPolyAtt0(mLinkAcch.m_gnd);
    mGndPolySpecialCode = dComIfG_Bgsp().GetSpecialCode(mLinkAcch.m_gnd);

    if (mGndPolySpecialCode == dBgW_SPCODE_HEAVY_SNOW && checkWolf()) {
        mGndPolySpecialCode = dBgW_SPCODE_LIGHT_SNOW;
    }

    if (field_0x2fbd != 0xFF) {
        if (field_0x2fbb == 3) {
            field_0x2fbd = dComIfG_Bgsp().GetPolyAtt1(mLinkAcch.m_gnd);

            if (field_0x2fbd == 4 && checkWolf()) {
                field_0x2fbd = 0;
            }

            if (!checkEventRun() && (field_0x2fbd == 1 || field_0x2fbd == 3) &&
                (checkBootsOrArmorHeavy() || mSinkShapeOffset < 1.0f + field_0x3458))
            {
                field_0x2fbd = 2;
            }
        } else {
            field_0x2fbd = 0;
        }
    }

    return roomID;
}

/* 800A67E0-800A6B0C 0A1120 032C+00 1/1 0/0 0/0 .text            setShapeAngleOnGround__9daAlink_cFv
 */
void daAlink_c::setShapeAngleOnGround() {
    field_0x33cc = cLib_minMaxLimit<f32>(field_0x33cc, 0.0f, 1.0f);

    if (checkModeFlg(0x01000000)) {
        cXyz sp20;
        cXyz sp14;
        cM3dGPla sp2C;

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::multVec(&l_crawlFrontUpOffset, &sp20);
        mDoMtx_stack_c::multVec(&l_crawlBackUpOffset, &sp14);
    
        mLinkGndChk.SetPos(&sp20);

        sp20.y = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        bool var_r29;
        if (-1000000000.0f != sp20.y) {
            var_r29 = dComIfG_Bgsp().GetTriPla(mLinkGndChk, &sp2C);
        } else {
            var_r29 = 0;
        }

        f32 var_f31;
        if (var_r29) {
            var_f31 = sp2C.mNormal.y;
        } else {
            var_f31 = -1.0f;
        }

        mLinkGndChk.SetPos(&sp14);
    
        sp14.y = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        bool var_r29_2;
        if (-1000000000.0f != sp14.y) {
            var_r29_2 = dComIfG_Bgsp().GetTriPla(mLinkGndChk, &sp2C);
        } else {
            var_r29_2 = 0;
        }
    
        f32 var_f30;
        if (var_r29_2 != 0) {
            var_f30 = sp2C.mNormal.y;
        } else {
            var_f30 = -1.0f;
        }
    
        cXyz sp8 = sp20 - sp14;
        s16 temp_r3 = sp8.atan2sY_XZ();

        if (cLib_distanceAngleS(temp_r3, shape_angle.x) < 0x1000 && var_f31 > 0.0f && var_f30 > 0.0f && fabsf(var_f31 - var_f30) > 0.05f) {
            shape_angle.x = temp_r3 * field_0x33cc;
        } else {
            shape_angle.x = field_0x2ff0 * field_0x33cc;
        }
    } else {
        shape_angle.x = field_0x2ff0 * field_0x33cc;
    }

    shape_angle.z = field_0x33cc * getGroundAngle(&mLinkAcch.m_gnd, (shape_angle.y - 0x4000));

    if (mProcID == PROC_SLIDE) {
        mBodyAngle.x = -shape_angle.x;
    }
}

/* 800A6B0C-800A6DCC 0A144C 02C0+00 1/1 0/0 0/0 .text            setStepsOffset__9daAlink_cFv */
void daAlink_c::setStepsOffset() {
    field_0x2b9c = 0.0f;
    cLib_addCalc(&field_0x2b98, 0.0f, 0.5f, 25.0f, 5.0f);

    if (!(fabsf(speedF) < 1.0f)) {
        s16 temp_r3 = getGroundAngle(&mLinkAcch.m_gnd, current.angle.y);
        f32 temp_f30 = cM_ssin(temp_r3) / cM_scos(temp_r3);

        cXyz sp14(current.pos.x + (speedF * cM_ssin(current.angle.y)), current.pos.y + l_autoUpHeight, current.pos.z + (speedF * cM_scos(current.angle.y)));
        mLinkGndChk.SetPos(&sp14);

        f32 temp_f1 = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        f32 temp_f31 = (temp_f1 - current.pos.y) - (-speedF * temp_f30);
        if (temp_f31 > 1.0f) {
            field_0x2b9c = temp_f1 - current.pos.y;
            field_0x2b98 -= 0.7f * temp_f31;
        } else {
            sp14 = field_0x3798 - current.pos;

            temp_f31 = sp14.y - (temp_f30 * sp14.absXZ());
            if (temp_f31 >= 0.0f) {
                field_0x2b98 += 0.7f * temp_f31;
            }
        }

        field_0x2b98 = cLib_minMaxLimit<f32>(field_0x2b98, l_autoDownHeight, l_autoUpHeight);
    }
}

/* 800A6DCC-800A7050 0A170C 0284+00 1/1 0/0 0/0 .text            iceSlipBgCheck__9daAlink_cFv */
void daAlink_c::iceSlipBgCheck() {
    if (mLinkAcch.i_ChkGroundHit() && checkModeFlg(1)) {
        f32 var_f30 = field_0x35c4.absXZ();
        if (var_f30 > 0.1f) {
            cXyz sp3C(field_0x3798.x, field_0x3798.y + 10.0f, field_0x3798.z);
            cXyz sp48(current.pos.x, current.pos.y + 10.0f, current.pos.z);

            f32 var_f31 = mAcchCir[0].GetWallR();

            if (checkWolf()) {
                s16 temp_r29 = field_0x35c4.atan2sX_Z() - shape_angle.y;
                var_f31 += fabsf((90.0f - var_f31) * cM_scos(temp_r29));
            }

            var_f31 *= 1.0f / var_f30;

            sp48.x += field_0x35c4.x * var_f31;
            sp48.z += field_0x35c4.z * var_f31;

            if (commonLineCheck(&sp3C, &sp48) && dBgS_CheckBWallPoly(mLinkLinChk)) {
                current.pos.x = mLinkLinChk.i_GetCross().x - field_0x35c4.x * var_f31;
                current.pos.z = mLinkLinChk.i_GetCross().z - field_0x35c4.z * var_f31;
            }
        }
    }
}

/* 800A7050-800A7358 0A1990 0308+00 1/1 0/0 0/0 .text            setIceSlipSpeed__9daAlink_cFv */
void daAlink_c::setIceSlipSpeed() {
    field_0x35d0 = field_0x35c4;

    if (!checkModeFlg(0x1210C52) && !checkEventRun() && !checkHeavyStateOn(1, 1) && mGndPolySpecialCode == dBgW_SPCODE_ICE && !mLinkAcch.ChkWallHit() && mLinkAcch.i_ChkGroundHit()) {
        f32 var_f31, var_f30, var_f29;
        if (checkWolf()) {
            var_f31 = 0.1f;
            var_f30 = 1.0f;
            var_f29 = 0.5f;
        } else {
            var_f31 = 0.03f;
            var_f30 = 0.5f;
            var_f29 = 0.75f;
        }

        cLib_addCalc(&field_0x35c4.x, 0.0f, var_f31, 100.0f, var_f30);
        cLib_addCalc(&field_0x35c4.z, 0.0f, var_f31, 100.0f, var_f30);

        cXyz sp58 = field_0x3528 - speed;
        f32 var_f28 = sp58.absXZ();
        if (var_f28 > 30.0f) {
            sp58 *= 30.0f / var_f28;
        }

        field_0x35c4 += sp58 * var_f29;
        speed += sp58 * (1.0f - var_f29);

        if (mProcVar4.field_0x3010 != 0 && (mProcID == PROC_LARGE_DAMAGE_UP || mProcID == PROC_WOLF_LARGE_DAMAGE_UP)) {
            sp58.normalizeZP();
            field_0x35c4 += sp58 * 20.0f;
        }
    } else {
        field_0x35c4.x = 0.0f;
        field_0x35c4.z = 0.0f;
    }

    field_0x35c4.y = 0.0f;
}

/* 800A7358-800A7950 0A1C98 05F8+00 1/1 0/0 0/0 .text            setPolygonSpeed__9daAlink_cFv */
void daAlink_c::setPolygonSpeed() {
    offNoResetFlg3(daPy_FLG3(FLG3_UNK_1000 | FLG3_UNK_2000));
    if ((!checkEventRun() || checkNoResetFlg0(FLG0_UNK_14000)) && !checkMagneBootsOn()) {
        cM3dGPla sp24;
        if (checkNoResetFlg3(FLG3_MIDNA_TALK_POLY_SPEED)) {
            offNoResetFlg3(FLG3_MIDNA_TALK_POLY_SPEED);
            field_0x3594 = field_0x35a0;
            field_0x35a0 = cXyz::Zero;
        }

        if ((mLinkAcch.i_ChkGroundHit() && !checkHeavyStateOn(1, 1) && mWaterY > 30.0f + current.pos.y) || checkModeFlg(0x40000)) {
            cXyz sp18;
            int sp8;
            if (fopAcM_getWaterStream(&current.pos, mLinkAcch.m_gnd, &sp18, &sp8, 0)) {
                onNoResetFlg3(FLG3_UNK_2000);
            }
    
            f32 var_f31;
            f32 var_f30;
            if (checkHeavyStateOn(1, 1)) {
                sp18 = cXyz::Zero;
                var_f30 = 0.5f;
            } else if (!checkModeFlg(0x40000)) {
                onNoResetFlg3(FLG3_UNK_1000);

                var_f31 = fabsf(mNormalSpeed / daAlinkHIO_move_c0::m.mMaxSpeed);
                if (var_f31 > 1.0f) {
                    var_f31 = 1.0f;
                }

                var_f31 *= cM_scos((sp18.atan2sX_Z() - current.angle.y) + 0x8000);
                if (var_f31 < 0.0f) {
                    var_f31 = 0.0f;
                }

                var_f31 *= 0.2f * (f32)sp8;
                if (var_f31 > 0.5f) {
                    var_f31 = 0.5f;
                }

                sp18 *= var_f31 * mNormalSpeed;
                f32 temp_f25 = sp18.abs2();
                if (field_0x3594.abs2() > temp_f25) {
                    var_f30 = 5.0f;
                } else {
                    var_f30 = 3.0f;
                }
            } else {
                sp18 *= (f32)sp8;
                f32 temp_f25 = sp18.abs2();
                if (field_0x3594.abs2() > temp_f25) {
                    var_f30 = 3.0f;
                } else {
                    var_f30 = 1.0f;
                }
            }

            cLib_addCalcPos(&field_0x3594, sp18, 0.5f, var_f30, 0.5f);
        } else if (field_0x2fbd == 4 && mLinkAcch.i_ChkGroundHit() && dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd) && dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, &sp24) && sp24.mNormal.y <= cM_scos(cM_deg2s(29.9f))) {
            f32 temp_f26 = sp24.mNormal.y;
            f32 temp_f27 = cM_sht2d(cM_atan2s(sp24.mNormal.absXZ(), sp24.mNormal.y)) - 29.9f;
            sp24.mNormal.y = 0.0f;
            sp24.mNormal.normalizeZP();

            f32 sp3C = cM_deg2s(field_0x3122);
            f32 var_f29;
            if (temp_f27 < sp3C - 29.9f) {
                if (checkWolf()) {
                    var_f29 = daAlinkHIO_wlMoveNoP_c0::m.field_0x8;
                } else {
                    var_f29 = daAlinkHIO_move_c0::m.mMaxSpeed;
                }
            } else if (checkWolf()) {
                var_f29 = daAlinkHIO_wlSlide_c0::m.field_0x70;
            } else {
                var_f29 = daAlinkHIO_slide_c0::m.mMaxClimbSpeed;
            }

            f32 var_f28 = 0.016887419f * (temp_f27 * temp_f26);
            if (var_f28 > 1.0f) {
                var_f28 = 1.0f;
            }

            sp24.mNormal *= 0.5f + (var_f29 * var_f28);
            cLib_addCalcPos(&field_0x3594, sp24.mNormal, 0.5f, 1.0f, 0.2f);
        } else {
            field_0x3594 = cXyz::Zero;
        }
    } else {
        field_0x3594 = cXyz::Zero;
    }
}

/* 800A7950-800A79EC 0A2290 009C+00 4/4 0/0 0/0 .text checkWindSpeedOnAngle__9daAlink_cCFv */
bool daAlink_c::checkWindSpeedOnAngle() const {
    if (!checkWindSpeedOnXZ()) {
        return false;
    }

    int tmp = cLib_distanceAngleS(field_0x30cc, shape_angle.y);
    return tmp >= 0x6000 || (tmp >= 0x4000 && checkWindDashAnime());
}

/* 800A79EC-800A7A5C 0A232C 0070+00 2/2 0/0 0/0 .text checkWindSpeedOnAngleAnime__9daAlink_cCFi */
bool daAlink_c::checkWindSpeedOnAngleAnime(int param_0) const {
    return checkWindSpeedOnAngle() &&
           ((field_0x2f8c == 1 || field_0x2f8c == 3) || (param_0 != 0 && field_0x2f8c == 2));
}

/* 800A7A5C-800A7ABC 0A239C 0060+00 7/7 0/0 0/0 .text            checkDashAnime__9daAlink_cCFv */
bool daAlink_c::checkDashAnime() const {
    return checkUnderMove0BckNoArc(ANM_RUN) || checkUnderMove0BckNoArc(ANM_RUN_B);
}

/* 800A7ABC-800A7CB0 0A23FC 01F4+00 1/1 0/0 0/0 .text checkWindWallRate__9daAlink_cFRC4cXyz */
f32 daAlink_c::checkWindWallRate(cXyz const& param_0) {
    cXyz sp24(current.pos.x, current.pos.y + (0.5f * field_0x598), current.pos.z);
    cXyz sp18 = sp24 - (param_0 * daAlinkHIO_basic_c0::m.mMaxWindInfluenceDist);

    f32 var_f31;
    if (commonLineCheck(&sp24, &sp18) && dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 0xA) {
        var_f31 = (1.0f / (daAlinkHIO_basic_c0::m.mMaxWindInfluenceDist - daAlinkHIO_basic_c0::m.mNoWindInfluenceDist)) * (sp24.abs(mLinkLinChk.i_GetCross()) - daAlinkHIO_basic_c0::m.mNoWindInfluenceDist);
        if (var_f31 < 0.0f) {
            var_f31 = 0.0f;
        }
    } else {
        var_f31 = 1.0f;
    }

    return var_f31;
}

/* 800A7CB0-800A8310 0A25F0 0660+00 1/1 0/0 0/0 .text            setWindSpeed__9daAlink_cFv */
void daAlink_c::setWindSpeed() {
    if (!checkModeFlg(0x40000) && !checkNoResetFlg0(FLG0_UNDERWATER)) {
        cXyz sp3C;
        f32 var_f31;
        f32 sp8;

        if (field_0xC04[0].ChkTgHit() || field_0xC04[1].ChkTgHit() || field_0xC04[2].ChkTgHit()) {
            int i = 0;
            for (; i < 3; i++) {
                if (field_0xC04[i].ChkTgHit()) {
                    break;
                }
            }

            sp3C = *field_0xC04[i].GetTgRVecP();
            f32 temp_f1 = sp3C.absXZ();

            if (temp_f1 < 1.0f && !checkGrabGlide()) {
                if (field_0xC04[i].GetTgHitAc() != NULL) {
                    sp3C = current.pos - field_0xC04[i].GetTgHitAc()->current.pos;
                } else {
                    sp3C = current.pos - *field_0xC04[i].GetTgHitPosP();
                }

                sp3C.y = 0.0f;
                sp3C.normalizeZP();
                sp3C *= field_0xC04[i].GetTgRVecP()->abs();
            }

            sp8 = sp3C.abs();

            if (temp_f1 >= 1.0f) {
                sp3C.normalizeZP();
                sp8 *= checkWindWallRate(sp3C);
                sp3C *= sp8;
            }

            if (mWindSpeed.abs2() > sp8 * sp8) {
                var_f31 = 4.0f;
            } else {
                var_f31 = 2.5f;
            }
        } else {
            dKyw_get_AllWind_vec(&current.pos, &sp3C, &sp8);

            if (dKy_TeachWind_existence_chk() == 0 || sp8 < 0.3f) {
                sp8 = 0.0f;
            } else if (sp8 > 0.0f && dKy_TeachWind_existence_chk() != -1) {
                sp8 *= checkWindWallRate(sp3C);
            }

            sp8 *= daAlinkHIO_basic_c0::m.mMaxWindSpeed;
            sp3C *= sp8;

            if (mWindSpeed.abs2() > sp8 * sp8) {
                var_f31 = 3.0f;
            } else {
                var_f31 = 1.0f;
            }
        }

        cLib_addCalcPos(&field_0x35b8, sp3C, 0.5f, var_f31, 0.5f);
        field_0x30cc = field_0x35b8.atan2sX_Z();

        if (!checkHeavyStateOn(1, 1) && !checkNoCollisionCorret() && !checkEventRun() && !checkModeFlg(0x10)) {
            cLib_addCalcPos(&mWindSpeed, sp3C, 0.5f, var_f31, 0.5f);
        } else {
            mWindSpeed = cXyz::Zero;
        }
    } else {
        mWindSpeed = cXyz::Zero;
        field_0x35b8 = cXyz::Zero;
        field_0x30cc = 0;
    }
}

/* 80391F44-80391F50 01E5A4 000C+00 0/1 0/0 0/0 .rodata          localHeadCenter$59872 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localHeadCenter = {
    0.0f, -8.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F44, &localHeadCenter);
#pragma pop

/* 80391F50-80391F5C 01E5B0 000C+00 0/1 0/0 0/0 .rodata          localEye$59873 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localEye = {
    12.0f, -8.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F50, &localEye);
#pragma pop

/* 80391F5C-80391F68 01E5BC 000C+00 0/1 0/0 0/0 .rodata          localHeadTop$59874 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localHeadTop = {
    0.0f, -28.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F5C, &localHeadTop);
#pragma pop

/* 80391F68-80391F74 01E5C8 000C+00 0/1 0/0 0/0 .rodata          wlLocalHeadCenter$59875 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const wlLocalHeadCenter = {
    0.0f, -5.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F68, &wlLocalHeadCenter);
#pragma pop

/* 80391F74-80391F80 01E5D4 000C+00 0/1 0/0 0/0 .rodata          wlLocalEye$59876 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const wlLocalEye = {
    30.0f, -5.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F74, &wlLocalEye);
#pragma pop

/* 80391F80-80391F8C 01E5E0 000C+00 0/1 0/0 0/0 .rodata          wlLocalHeadTop$59877 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const wlLocalHeadTop = {
    0.0f, -20.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391F80, &wlLocalHeadTop);
#pragma pop

/* 80391F8C-80391F98 01E5EC 000C+00 0/1 0/0 0/0 .rodata          localEyeFromRoot$59878 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localEyeFromRoot = {
    0.0f, 55.75f, 15.0f
};
COMPILER_STRIP_GATE(0x80391F8C, &localEyeFromRoot);
#pragma pop

/* 80391F98-80391FA4 01E5F8 000C+00 0/1 0/0 0/0 .rodata          boardLocalEyeFromRoot$59879 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const boardLocalEyeFromRoot = {
    9.5f, 47.0f, 24.5f
};
COMPILER_STRIP_GATE(0x80391F98, &boardLocalEyeFromRoot);
#pragma pop

/* 80391FA4-80391FB0 01E604 000C+00 0/1 0/0 0/0 .rodata          horseLocalEyeFromRoot$59880 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const horseLocalEyeFromRoot = {
    1.75f, 55.0f, 25.5f
};
COMPILER_STRIP_GATE(0x80391FA4, &horseLocalEyeFromRoot);
#pragma pop

/* 80391FB0-80391FBC 01E610 000C+00 0/1 0/0 0/0 .rodata          canoeLocalEyeFromRoot$59881 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const canoeLocalEyeFromRoot = {
    0.0f, 55.0f, 25.0f
};
COMPILER_STRIP_GATE(0x80391FB0, &canoeLocalEyeFromRoot);
#pragma pop

/* 800A8310-800A87D8 0A2C50 04C8+00 2/2 0/0 0/0 .text            setBodyPartPos__9daAlink_cFv */
void daAlink_c::setBodyPartPos() {
    // NONMATCHING
}

/* 800A87D8-800A87F8 0A3118 0020+00 1/0 0/0 0/0 .text            setRollJump__9daAlink_cFffs */
int daAlink_c::setRollJump(f32 param_0, f32 param_1, s16 param_2) {
    field_0x3410 = param_0;
    field_0x3414 = param_1;
    field_0x30ee = param_2;
    onEndResetFlg0(ERFLG0_UNK_100);
    return 1;
}

/* 80391FBC-80391FC8 01E61C 000C+00 0/0 0/0 0/0 .rodata          wlLocalEyeFromRoot$59882 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const wlLocalEyeFromRoot = {
    0.0f, -6.0f, 85.5f
};
COMPILER_STRIP_GATE(0x80391FBC, &wlLocalEyeFromRoot);
#pragma pop

/* 80391FC8-80391FD4 01E628 000C+00 0/1 0/0 0/0 .rodata          normalOffset$60101 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const normalOffset = {
    0.0f, 150.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391FC8, &normalOffset);
#pragma pop

/* 80391FD4-80391FE0 01E634 000C+00 0/1 0/0 0/0 .rodata          crawlOffset$60141 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const crawlOffset = {
    0.0f, 40.0f, 30.0f
};
COMPILER_STRIP_GATE(0x80391FD4, &crawlOffset);
#pragma pop

/* 80391FE0-80391FEC 01E640 000C+00 0/1 0/0 0/0 .rodata          crouchOffset$60142 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const crouchOffset = {
    0.0f, 95.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391FE0, &crouchOffset);
#pragma pop

/* 80391FEC-80391FF8 01E64C 000C+00 0/1 0/0 0/0 .rodata          swimOffset$60143 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const swimOffset = {
    0.0f, 14.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80391FEC, &swimOffset);
#pragma pop

/* 800A87F8-800A8CE4 0A3138 04EC+00 2/2 0/0 0/0 .text            setAttentionPos__9daAlink_cFv */
void daAlink_c::setAttentionPos() {
    if (mProcID == PROC_METAMORPHOSE) {
        attention_info.position = field_0x34e0;
    } else if (checkModeFlg(0x400)) {
        fopAc_ac_c* temp_r29 = mRideAcKeep.getActor();

        if (mProcID == PROC_CANOE_RIDE || mProcID == PROC_CANOE_GETOFF || (mProcID == PROC_CANOE_WAIT && mProcVar0.field_0x3008 != 0)) {
            attention_info.position = field_0x34e0;
        } else if (checkSpinnerRide() || checkBoardRide()) {
            attention_info.position.set(current.pos.x, 150.0f + current.pos.y, current.pos.z);
        } else if (temp_r29 != NULL) {
            if (checkCanoeRide()) {
                f32 var_f31 = l_canoeBaseAnime.z;
                if (((daCanoe_c*)temp_r29)->checkTandem()) {
                    var_f31 += 175.0f;
                }

                attention_info.position.set(temp_r29->current.pos.x + (var_f31 * cM_ssin(shape_angle.y)), 50.0f + (temp_r29->current.pos.y + l_canoeBaseAnime.y), temp_r29->current.pos.z + (var_f31 * cM_scos(shape_angle.y)));
            } else {
                attention_info.position.set(temp_r29->current.pos.x, 275.0f + temp_r29->current.pos.y, temp_r29->current.pos.z);
            }
        } else {
            attention_info.position.set(current.pos.x, 50.0f + current.pos.y, current.pos.z);
        }
    } else if (checkWolf()) {
        if (checkModeFlg(0x10000000)) {
            attention_info.position = field_0x34e0;
        } else {
            Vec sp8;
            sp8.x = 0.0f;
            sp8.z = 70.0f;

            if (checkModeFlg(0x40000) || mProcID == PROC_LAVA_RETURN) {
                sp8.y = 20.0f;
            } else if (checkModeFlg(0x01000000)) {
                sp8.y = 50.0f;
            } else {
                sp8.y = 80.0f;
            }

            cMtx_multVec(mpLinkModel->getBaseTRMtx(), &sp8, &attention_info.position);

            if (checkModeFlg(0x40000)) {
                attention_info.position.y = current.pos.y + sp8.y;
            }
        }
    } else if (mProcID == PROC_HOOKSHOT_FLY) {
        attention_info.position = eyePos;
    } else if (dComIfGp_checkPlayerStatus1(0, 0x02000000)) {
        attention_info.position.set(current.pos.x + (100.0f * cM_ssin(shape_angle.y)), -50.0f + current.pos.y, current.pos.z + (100.0f * cM_scos(shape_angle.y)));
    } else if (dComIfGp_checkPlayerStatus1(0, 0x10000)) {
        attention_info.position.set(current.pos.x, -100.0f + current.pos.y, current.pos.z);
    } else if (checkModeFlg(0x800)) {
        attention_info.position = current.pos;
    } else if (checkModeFlg(0x40) || mProcID == PROC_BOSS_BODY_HANG) {
        mDoMtx_multVecZero(mpLinkHatModel->getBaseTRMtx(), &attention_info.position);
    } else if (mProcID == PROC_ROLL_JUMP) {
        mDoMtx_multVecZero(mpLinkModel->getBaseTRMtx(), &attention_info.position);
        attention_info.position.y += 150.0f;
    } else {
        const Vec* var_r28;
        f32 var_f30;
        if (checkModeFlg(0x800000)) {
            var_r28 = &crouchOffset;
            var_f30 = current.pos.y;
        } else if (checkModeFlg(0x40000)) {
            var_r28 = &swimOffset;
            var_f30 = current.pos.y;
        } else {
            if (mProcID == PROC_LAVA_RETURN) {
                var_r28 = &swimOffset;
            } else if (checkModeFlg(0x01000000)) {
                var_r28 = &crawlOffset;
            } else {
                var_r28 = &normalOffset;
            }

            var_f30 = mpLinkModel->getBaseTRMtx()[1][3];
        }

        cMtx_multVecSR(mpLinkModel->getBaseTRMtx(), var_r28, &attention_info.position);
        attention_info.position.x += current.pos.x;
        attention_info.position.y += var_f30;
        attention_info.position.z += current.pos.z;

        if (mProcID == PROC_CLIMB_MOVE_SIDE) {
            attention_info.position.y = field_0x347c;
        } else if (mProcID == PROC_SWIM_DIVE) {
            attention_info.position.y = (field_0x3478 * attention_info.position.y) + (eyePos.y * (1.0f - field_0x3478));
        }
    }

    if (mSinkShapeOffset < field_0x3458) {
        attention_info.position.y += field_0x3458 - mSinkShapeOffset;
    }
}

/* 800A8CE4-800A9248 0A3624 0564+00 3/3 0/0 0/0 .text            setMatrix__9daAlink_cFv */
void daAlink_c::setMatrix() {
    f32 var_f31;
    if (field_0x3174 == 8 && mLinkAcch.i_ChkGroundHit() && !checkModeFlg(0x70C52)) {
        var_f31 = 20.0f;
    } else {
        var_f31 = 0.0f;
    }

    cLib_addCalc(&field_0x2ba0, var_f31, 0.5f, 12.0f, 3.0f);

    f32 var_f30;
    if (checkBoardRide()) {
        var_f30 = 13.0f;
    } else {
        var_f30 = 0.0f;
    }

    mDoMtx_stack_c::transS(current.pos.x, field_0x2ba0 + (field_0x2b9c + (var_f30 + (current.pos.y + field_0x2b98))), current.pos.z);
    concatMagneBootMtx();
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, (shape_angle.y + field_0x308c), shape_angle.z);

    if (mProcID == PROC_BOAR_RUN || mProcID == PROC_ZORA_MOVE) {
        mDoMtx_stack_c::transM(0.0f, 50.0f, 100.0f);
        mDoMtx_stack_c::ZXYrotM(mProcVar4.field_0x3010, mProcVar5.field_0x3012, (1.5f * mProcVar5.field_0x3012));
        mDoMtx_stack_c::transM(0.0f, -50.0f, -100.0f);
    } else if (mProcID == PROC_HORSE_RUN) {
        mDoMtx_stack_c::transM(0.0f, 20.0f, 70.0f);
        mDoMtx_stack_c::ZXYrotM(mProcVar4.field_0x3010, mProcVar5.field_0x3012, (0.5f * mProcVar5.field_0x3012));
        mDoMtx_stack_c::transM(0.0f, -20.0f, -70.0f);
    } else if (mProcID == PROC_WOLF_CHAIN_WAIT) {
        mDoMtx_stack_c::transM(0.0f, 5.0f, -3.0f);
    }

    if (mProcID == PROC_MAGNE_BOOTS_FLY) {
        mDoMtx_stack_c::YrotM(mProcVar2.field_0x300c);
    }

    mpLinkModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_inverse(mDoMtx_stack_c::get(), mInvMtx);
    mDoMtx_stack_c::XrotS(shape_angle.x);
    mDoMtx_stack_c::concat(mInvMtx);
    mDoMtx_copy(mDoMtx_stack_c::get(), field_0x2be8);

    field_0x2fb6 = 0;

    if (!checkWolf()) {
        if (checkKandelaarEquipAnime() || checkSwordTwirlAnime() || checkNoResetFlg0(FLG0_UNK_1000000) || (checkModeFlg(0x10000) && checkEquipAnime()) || (checkBoardRide() && checkSwordEquipAnime()) || (checkUpperGuardAnime() && checkEquipAnime())) {
            field_0x2fb6 = 5;
        } else if (checkReelAnime()) {
            field_0x2fb6 = 4;
        } else if (checkEquipAnime() && !checkModeFlg(1)) {
            if (checkSwordEquipAnime() && !i_checkShieldGet()) {
                field_0x2fb6 = 5;
            } else {
                field_0x2fb6 = 1;
            }
        } else if (checkAnmEnd(&mUnderFrameCtrl[0]) && (checkUnderMove0BckNoArc(ANM_HORSE_TURN_LEFT) || checkUnderMove0BckNoArc(ANM_HORSE_TURN_B) || checkUnderMove0BckNoArc(ANM_HORSE_TURN_RIGHT))) {
            field_0x2fb6 = 6;
        } else if (checkCokkoGlide()) {
            field_0x2fb6 = 8;
        } else if ((mProcID == PROC_SLIDE && field_0x3198 != 0) || (checkWindDashAnime() && checkUnderMove1BckNoArc(ANM_WALK_HEAVY) && (checkModeFlg(1) || checkZeroSpeedF()))) {
            field_0x2fb6 = 7;
        } else if (checkUpperAnime(0x96) || checkCutDashChargeAnime() || (checkReinRide() && (checkUpperReadyThrowAnime() || checkGrabAnime()))) {
            field_0x2fb6 = 3;
        } else if (checkSwordEquipAnime() && !i_checkShieldGet()) {
            field_0x2fb6 = 2;
        } else if (checkIronBallWaitAnime()) {
            if (checkUnderMove0BckNoArc(ANM_IRONBALL_WAIT)) {
                mNowAnmPackUpper[2].setRatio(0.0f);
            } else {
                mNowAnmPackUpper[2].setRatio(1.0f);
            }
        }

        if (field_0x2fb6 != 0) {
            field_0x3444 = mNowAnmPackUpper[2].getRatio();
        }
    }
}

/* 800A9248-800A92F0 0A3B88 00A8+00 15/15 0/0 5/5 .text simpleAnmPlay__9daAlink_cFP10J3DAnmBase */
int daAlink_c::simpleAnmPlay(J3DAnmBase* i_anm) {
    if (i_anm == NULL) {
        return 0;
    }

    int ret = 0;
    f32 frame = i_anm->getFrame() + 1.0f;

    if (frame >= i_anm->getFrameMax()) {
        if (i_anm->getAttribute() == 2) {
            frame -= i_anm->getFrameMax();
        } else {
            frame = i_anm->getFrameMax();
            ret = 1;
        }
    }

    i_anm->setFrame(frame);

    return ret;
}

/* 80391FF8-80392004 01E658 000C+00 0/1 0/0 0/0 .rodata          swordMoveLocal0$60438 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const swordMoveLocal0 = {
    0.0f, 0.0f, -1.0f
};
COMPILER_STRIP_GATE(0x80391FF8, &swordMoveLocal0);
#pragma pop

/* 80392004-80392010 01E664 000C+00 0/1 0/0 0/0 .rodata          swordMoveLocal1$60439 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const swordMoveLocal1 = {
    0.0f, 0.0f, 1.0f
};
COMPILER_STRIP_GATE(0x80392004, &swordMoveLocal1);
#pragma pop

/* 80392010-8039201C 01E670 000C+00 0/1 0/0 0/0 .rodata          copyRodTop$60447 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const copyRodTop = {
    27.5f, -5.0f, -12.5f
};
COMPILER_STRIP_GATE(0x80392010, &copyRodTop);
#pragma pop

/* 800A92F0-800A9450 0A3C30 0160+00 2/2 0/0 0/0 .text            setSwordPos__9daAlink_cFv */
void daAlink_c::setSwordPos() {
    field_0x34b0 = mSwordTopPos;
    field_0x34bc = field_0x3498;
    mDoMtx_multVecZero(mSwordModel->getBaseTRMtx(), &field_0x3498);

    if (mCutType == CUT_TYPE_TWIRL || mCutType == CUT_TYPE_FINISH_RIGHT) {
        mDoMtx_multVecSR(mSwordModel->getBaseTRMtx(), &swordMoveLocal1, &field_0x34a4);
    } else {
        mDoMtx_multVecSR(mSwordModel->getBaseTRMtx(), &swordMoveLocal0, &field_0x34a4);
    }

    if (checkMasterSwordEquip()) {
        mDoMtx_multVec(mSwordModel->getBaseTRMtx(), &l_swordTopLocalM, &mSwordTopPos);
    } else {
        mDoMtx_multVec(mSwordModel->getBaseTRMtx(), &l_swordTopLocalN, &mSwordTopPos);
    }

    if (mEquipItem == 0x10B) {
        mDoMtx_multVec(getCanoePaddleMatrix(), getCanoeLocalPaddleTop(), &field_0x3720);
    } else if (mEquipItem == COPY_ROD) {
        mDoMtx_multVec(mHeldItemModel->getBaseTRMtx(), &copyRodTop, &field_0x3720);
    } else {
        field_0x3720 = mSwordTopPos;
    }
}

/* 800A9450-800A9F4C 0A3D90 0AFC+00 4/4 0/0 0/0 .text            setItemMatrix__9daAlink_cFi */
void daAlink_c::setItemMatrix(int param_0) {
    // NONMATCHING
}

/* 8039201C-80392028 01E67C 000C+00 1/1 0/0 0/0 .rodata          @61047 */
SECTION_RODATA static u8 const lit_61047[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8039201C, &lit_61047);

/* 800A9F4C-800AA2BC 0A488C 0370+00 4/4 0/0 0/0 .text            setWolfItemMatrix__9daAlink_cFv */
void daAlink_c::setWolfItemMatrix() {
    // NONMATCHING
}

/* 800AA2BC-800AA2E0 0A4BFC 0024+00 3/3 0/0 0/0 .text
 * setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM           */
void daAlink_c::setHandIndex(daAlink_c::daAlink_ANM i_anmID) {
    field_0x2f92 = getAnmData(i_anmID)->field_0x4;
    field_0x2f93 = getAnmData(i_anmID)->field_0x5;
}

/* 800AA2E0-800AA5E8 0A4C20 0308+00 1/1 0/0 0/0 .text            setSwordAtCollision__9daAlink_cFi
 */
void daAlink_c::setSwordAtCollision(int param_0) {
    cXyz sp74;

    if (checkCutDashAnime() && (checkCutDashEnemyHit(mAtCps[0]) ||
                                checkCutDashEnemyHit(mAtCps[1]) || checkCutDashEnemyHit(mAtCps[2])))
    {
        onNoResetFlg1(FLG1_UNK_4000000);
    }

    if (mProcID == PROC_CUT_FINISH_JUMP_UP) {
        sp74.set(current.pos.x + daAlinkHIO_cutFnJU_c0::m.mAttackOffset * cM_ssin(shape_angle.y),
                 field_0x3478,
                 current.pos.z + daAlinkHIO_cutFnJU_c0::m.mAttackOffset * cM_scos(shape_angle.y));
        f32 height = mSwordTopPos.y - field_0x3478;

        if (height < 10.0f) {
            height = 10.0f;
        }

        mAtCyl.SetH(height);

        if (param_0 != 0) {
            mAtCyl.StartCAt(sp74);
        } else {
            mAtCyl.MoveCAt(sp74);
        }

        g_dComIfG_gameInfo.play.mCcs.Set(&mAtCyl);
        g_dComIfG_gameInfo.play.mCcs.SetMass(&mAtCyl, 1);
        return;
    }

    sp74 = ((mSwordTopPos - field_0x3498) * field_0x33d0) + field_0x3498;
    cXyz sp68 = ((field_0x34b0 - field_0x34bc) * field_0x33d0) + field_0x34bc;

    mAtCps[0].SetStartEnd(field_0x3498, sp74);
    mAtCps[1].SetStartEnd(sp68, sp74);
    mAtCps[2].SetStartEnd(field_0x3498, sp68);
    mAtCps[0].OnAtSetBit();

    cXyz sp5C;
    if (param_0 != 0) {
        sp5C = cXyz::Zero;
    } else {
        sp5C = mSwordTopPos - field_0x34b0;
        mAtCps[1].OnAtSetBit();
        mAtCps[2].OnAtSetBit();
    }

    mAtCps[0].SetAtVec(sp5C);
    mAtCps[1].SetAtVec(sp5C);
    mAtCps[2].SetAtVec(sp5C);

    for (int i = 0; i < 3; i++) {
        g_dComIfG_gameInfo.play.mCcs.Set(&mAtCps[i]);
        g_dComIfG_gameInfo.play.mCcs.SetMass(&mAtCps[i], 1);
    }
}

/* 800AA5E8-800AA6B4 0A4F28 00CC+00 4/4 0/0 0/0 .text checkNoCollisionCorret__9daAlink_cFv */
BOOL daAlink_c::checkNoCollisionCorret() {
    if (checkModeFlg(0x12800) || mDemo.getDemoType() == 1 || mProcID == PROC_DOOR_OPEN ||
        (checkEventRun() &&
         (!strcmp(dComIfGp_getEventManager().getRunEventName(), "SCENE_EXIT") ||
          (fopAcM_getTalkEventPartner(this) &&
           fopAcM_getTalkEventPartner(this) == getMidnaActor()))) ||
        eventInfo.i_checkCommandDoor())
    {
        return true;
    }

    return false;
}

/* 800AA6B4-800AA714 0A4FF4 0060+00 1/1 0/0 0/0 .text            decSwordBlur__9daAlink_cFv */
void daAlink_c::decSwordBlur() {
    if (m_swordBlur.field_0x14 < 10) {
        m_swordBlur.field_0x14 = 0;
    } else {
        m_swordBlur.field_0x14 -= 10;
        m_swordBlur.traceBlur(&current.pos, &old.pos, shape_angle.y - field_0x2fe6);
    }
}

/* 800AA714-800AA7EC 0A5054 00D8+00 2/2 0/0 0/0 .text            resetWolfAtCollision__9daAlink_cFv
 */
void daAlink_c::resetWolfAtCollision() {
    if (checkNoResetFlg0(FLG0_UNK_40)) {
        if (!setSwordHitVibration(&mAtCyl) && !setSwordHitVibration(&field_0x850[0]) &&
            !setSwordHitVibration(&field_0x850[1]))
        {
            setSwordHitVibration(&field_0x850[2]);
        }

        field_0xFB8.OffTgWolfSpNoDamage();
        mAtCyl.ResetAtHit();
        offNoResetFlg0(FLG0_UNK_40);

        dCcD_Cyl* cyl = field_0x850;
        for (int i = 0; i < 3; i++) {
            cyl->OffAtSetBit();
            cyl->ResetAtHit();
            cyl->OffTgWolfSpNoDamage();
            cyl++;
        }
    }
}

/* 800AA7EC-800AA9DC 0A512C 01F0+00 1/1 0/0 0/0 .text            setWolfAtCollision__9daAlink_cFv */
void daAlink_c::setWolfAtCollision() {
    cXyz sp8;

    if (checkResetFlg0(RFLG0_UNK_2)) {
        if (!setSwordHitVibration(&mAtCyl) && !setSwordHitVibration(&field_0x850[0]) &&
            !setSwordHitVibration(&field_0x850[1]))
        {
            setSwordHitVibration(&field_0x850[2]);
        }

        if (mProcID == PROC_WOLF_ROLL_ATTACK) {
            mAtCyl.SetC(current.pos);

            g_dComIfG_gameInfo.play.mCcs.Set(&mAtCyl);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&mAtCyl, 1);
        } else {
            sp8.set(current.pos.x + field_0x3438 * cM_ssin(shape_angle.y), current.pos.y,
                    current.pos.z + field_0x3438 * cM_scos(shape_angle.y));

            if (!checkNoResetFlg0(FLG0_UNK_40)) {
                mAtCyl.StartCAt(sp8);

                if (mProcID == PROC_WOLF_LOCK_ATTACK || mProcID == PROC_WOLF_JUMP_ATTACK) {
                    field_0xFB8.OnTgWolfSpNoDamage();

                    for (int i = 0; i < 3; i++) {
                        field_0x850[i].OnTgWolfSpNoDamage();
                    }
                }

                if (mCutType == 0x32 || mProcID == PROC_WOLF_LOCK_ATTACK) {
                    for (int i = 0; i < 3; i++) {
                        field_0x850[i].OnAtSetBit();
                    }
                }
            } else {
                mAtCyl.MoveCAt(sp8);
            }

            g_dComIfG_gameInfo.play.mCcs.Set(&mAtCyl);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&mAtCyl, 1);
        }

        onNoResetFlg0(FLG0_UNK_40);
    } else {
        resetWolfAtCollision();
    }
}

/* 800AA9DC-800AAABC 0A531C 00E0+00 3/3 0/0 0/0 .text            resetAtCollision__9daAlink_cFi */
void daAlink_c::resetAtCollision(int param_0) {
    if (checkNoResetFlg0(FLG0_UNK_40)) {
        if (param_0 && !setSwordHitVibration(&mAtCps[0]) && !setSwordHitVibration(&mAtCps[1]) &&
            !setSwordHitVibration(&mAtCps[2]) && !setSwordHitVibration(&mAtCyl))
        {
            setSwordHitVibration(&field_0xFB8);
        }

        offNoResetFlg0(FLG0_UNK_40);

        for (int i = 0; i < 3; i++) {
            mAtCps[i].ResetAtHit();
            mAtCps[i].OffAtSetBit();
        }

        field_0xFB8.ResetAtHit();
    }
}

/* 80392028-80392034 01E688 000C+00 0/1 0/0 0/0 .rodata          bottleTopPos$61387 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const bottleTopPos = {
    0.0f, 20.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80392028, &bottleTopPos);
#pragma pop

/* 800AAABC-800AB878 0A53FC 0DBC+00 1/1 0/0 0/0 .text            setAtCollision__9daAlink_cFv */
void daAlink_c::setAtCollision() {
    // NONMATCHING
}

/* 80392034-80392040 01E694 000C+00 1/1 0/0 0/0 .rodata          localHead$61779 */
SECTION_RODATA static Vec const localHead = {
    15.0f, 5.0f, 0.0f
};
COMPILER_STRIP_GATE(0x80392034, &localHead);

/* 800AB878-800ABAE0 0A61B8 0268+00 1/1 0/0 0/0 .text            setWolfCollisionPos__9daAlink_cFv
 */
void daAlink_c::setWolfCollisionPos() {
    // NONMATCHING
}

/* 800ABAE0-800ABB28 0A6420 0048+00 2/2 0/0 0/0 .text            initLockAt__9daAlink_cFv */
void daAlink_c::initLockAt() {
    mAtCps[0].OnAtSPrmBit(0x20);
    mAtCps[0].OnAtNoHitMark();
    mAtCps[0].OffAtNoConHit();
    mAtCps[0].ResetAtHit();
}

/* 800ABB28-800ABB84 0A6468 005C+00 3/3 0/0 0/0 .text            cancelLockAt__9daAlink_cFv */
void daAlink_c::cancelLockAt() {
    mAtCps[0].OffAtSPrmBit(0x20);
    mAtCps[0].OffAtNoHitMark();
    mAtCps[0].OnAtNoConHit();
    mAtCps[0].ResetAtHit();
    field_0x814.SetAtApid(0xFFFFFFFF);
}

/* 800ABB84-800ABDB8 0A64C4 0234+00 1/1 0/0 0/0 .text            setCollisionPos__9daAlink_cFv */
void daAlink_c::setCollisionPos() {
    cXyz sp74;
    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(0), &sp74);
    cXyz sp68 = (sp74 + mHeadTopPos) * 0.5f;

    f32 var_f31;
    if (sp74.y > mHeadTopPos.y) {
        sp68.y = mHeadTopPos.y;
        var_f31 = sp74.y - mHeadTopPos.y;
    } else {
        sp68.y = sp74.y;
        var_f31 = mHeadTopPos.y - sp74.y;
    }

    if (var_f31 < 60.0f) {
        sp68.y -= 0.5f * (60.0f - var_f31);
        var_f31 = 60.0f;
    }

    field_0x850[2].SetC(sp68);
    field_0x850[2].SetH(var_f31);

    sp68 = (((mLeftFootPos + mRightFootPos) * 0.5f) + sp74) * 0.5f;
    f32 var_f0 = mLeftFootPos.y > mRightFootPos.y ? mRightFootPos.y : mLeftFootPos.y;

    f32 var_f31_2;
    if (sp74.y > var_f0) {
        sp68.y = var_f0;
        var_f31_2 = sp74.y - var_f0;
    } else {
        sp68.y = sp74.y;
        var_f31_2 = var_f0 - sp74.y;
    }

    if (var_f31_2 < 60.0f) {
        sp68.y -= 0.5f * (60.0f - var_f31_2);
        var_f31_2 = 60.0f;
    }

    field_0x850[0].SetC(sp68);
    field_0x850[0].SetH(var_f31_2);

    sp68 = (field_0x850[0].GetC() + field_0x850[2].GetC()) * 0.5f;
    f32 temp_f31 = 0.5f * (field_0x850[0].GetH() + field_0x850[2].GetH());

    field_0x850[1].SetC(sp68);
    field_0x850[1].SetH(temp_f31);
    field_0x3454 = field_0x3834.y;
}

/* 800ABDB8-800AC328 0A66F8 0570+00 1/1 0/0 0/0 .text            setCollision__9daAlink_cFv */
// NONMATCHING - regalloc / minor issues
void daAlink_c::setCollision() {
    field_0x814.Move();
    field_0x173c.Move();

    dCcD_Cyl* var_r26 = field_0x850;
    CcG_Tg_HitMark var_r3 = checkMagicArmorNoDamage() ? CcG_Tg_UNK_MARK_8 : CcG_Tg_UNK_MARK_6;

    if (checkIronBallWaitAnime()) {
        field_0x2e44.offPassNum(0x11);
    } else {
        field_0x2e44.onPassNum(0x11);
    }

    for (int i = 0; i < 3; i++) {
        var_r26->SetTgHitMark(var_r3);
        var_r26++;
    }

    dCcD_Cyl* var_r31 = field_0x850;
    if (checkIronBallWaitAnime() ||
        (checkPlayerGuardAndAttack() && !checkEndResetFlg1(ERFLG1_UNK_20)))
    {
        BOOL var_r27;
        if (field_0x3114 >= 0x3000 && field_0x3114 <= 0x5000) {
            var_r27 = 1;
        } else {
            var_r27 = 0;
        }

        for (int i = 0; i < 3; i++) {
            if (var_r27) {
                var_r31->OnTgSpShield();
                var_r31->OffTgShield();
            } else {
                var_r31->OffTgSpShield();
                var_r31->OnTgShield();
            }

            if (checkHorseRide()) {
                var_r31->OffTgShieldFrontRange();
            } else {
                var_r31->OnTgShieldFrontRange();
            }

            var_r31++;
        }
    } else {
        for (int i = 0; i < 3; i++) {
            var_r31->OffTgShield();
            var_r31->OffTgSpShield();

            if (checkWolf()) {
                var_r31->OffTgShieldFrontRange();
            } else {
                var_r31->OnTgShieldFrontRange();
            }

            var_r31++;
        }
    }

    if (checkNoCollisionCorret() && !checkOctaIealSpecialCollect()) {
        onNoResetFlg3(FLG3_UNK_20000000);
    }

    if (checkWolf()) {
        setWolfCollisionPos();
    } else {
        setCollisionPos();
    }

    if (mDamageTimer != 0 || checkModeFlg(8)) {
        for (int i = 0; i < 3; i++) {
            field_0x850[i].OffTgSetBit();
            field_0x850[i].ResetTgHit();
        }

        if (checkWolf()) {
            field_0xFB8.OffTgSetBit();
            field_0xFB8.ResetTgHit();
        }
    } else {
        for (int i = 0; i < 3; i++) {
            field_0x850[i].OnTgSetBit();
        }

        if (checkWolf()) {
            field_0xFB8.OnTgSetBit();
        }
    }

    mDoMtx_multVecSR(getShieldMtx(), &cXyz::BaseZ, &field_0x351c);

    if (checkIronBallWaitAnime() || field_0x351c.absXZ() > 0.0099999998f) {
        field_0x306c = field_0x351c.atan2sX_Z();
    } else {
        field_0x306c = shape_angle.y + mBodyAngle.y;
    }

    g_dComIfG_gameInfo.play.mCcs.Set(&field_0x850[0]);
    g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0x850[0], 1);

    if (checkWolf()) {
        setWolfAtCollision();

        for (int i = 0; i < 3; i++) {
            g_dComIfG_gameInfo.play.mCcs.Set(&field_0x850[i]);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0x850[i], 1);
        }

        if (checkModeFlg(0x100000)) {
            field_0xFB8.OffCoSetBit();
            field_0xFB8.ResetCoHit();
        } else {
            field_0xFB8.OnCoSetBit();
        }

        g_dComIfG_gameInfo.play.mCcs.Set(&field_0xFB8);
        g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0xFB8, 1);
    } else {
        for (int i = 0; i < 3; i++) {
            g_dComIfG_gameInfo.play.mCcs.Set(&field_0x850[i]);
            g_dComIfG_gameInfo.play.mCcs.SetMass(&field_0x850[i], 1);
        }

        setAtCollision();
    }

    dCcD_Cyl* var_r27_2 = field_0x850;
    dCcD_Cyl* var_r26_6 = field_0xC04;
    for (int i = 0; i < 3; i++) {
        var_r26_6->SetC(var_r27_2->GetC());
        var_r26_6->SetR(var_r27_2->GetR());
        var_r26_6->SetH(var_r27_2->GetH());
        g_dComIfG_gameInfo.play.mCcs.Set(var_r26_6);

        var_r27_2++;
        var_r26_6++;
    }
}

/* 800AC328-800AC378 0A6C68 0050+00 1/0 0/0 0/0 .text            getBaseAnimeFrame__9daAlink_cCFv */
f32 daAlink_c::getBaseAnimeFrame() const {
    if (mProcID == PROC_SUMOU_ACTION && mSpeedModifier > 0.0f) {
        return mProcVar2.field_0x300c;
    }

    return mUnderFrameCtrl[0].getFrame();
}

/* 800AC378-800AC394 0A6CB8 001C+00 1/0 0/0 0/0 .text            setAnimeFrame__9daAlink_cFf */
void daAlink_c::setAnimeFrame(f32 frame) {
    mUnderFrameCtrl[0].setFrame(frame);
    mUnderFrameCtrl[1].setFrame(frame);
    mUnderFrameCtrl[2].setFrame(frame);

    mUpperFrameCtrl[0].setFrame(frame);
    mUpperFrameCtrl[1].setFrame(frame);
    mUpperFrameCtrl[2].setFrame(frame);
}

/* 800AC394-800AC450 0A6CD4 00BC+00 6/6 0/0 0/0 .text
 * setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff           */
void daAlink_c::setFrameCtrl(daPy_frameCtrl_c* i_ctrl, u8 i_attr, s16 i_start, s16 i_end,
                             f32 i_rate, f32 i_frame) {
    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        if (checkZoraWearAbility()) {
            i_rate *= daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed;
        } else {
            i_rate *= daAlinkHIO_magneBoots_c0::m.mWaterWalkAnmRate;
        }
    }

    i_ctrl->setFrameCtrl(i_attr, i_start, i_end, i_rate, i_frame);
}

/* 80453278-80453280 001878 0008+00 1/1 0/0 0/0 .sdata2          kandelaarAnm$62207 */
static const daAlink_BckData kandelaarAnm[2] = {
    {0x026A, 0x0268},  // waits, waitk
    {0x0266, 0x0264},  // waiths, waithk
};

/* 800AC450-800AC558 0A6D90 0108+00 23/23 0/0 0/0 .text
 * getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM        */
const daAlink_BckData* daAlink_c::getMainBckData(daAlink_c::daAlink_ANM i_anmID) const {
    if (mEquipItem == KANTERA) {
        if (i_anmID == ANM_WAIT) {
            return &kandelaarAnm[0];
        }

        if (i_anmID == ANM_HORSE_WAIT) {
            return &kandelaarAnm[1];
        }
    }

    if (checkUpperGuardAnime() && i_anmID < 0x14) {
        return &m_mainBckShield[i_anmID];
    }

    if ((mEquipItem == EQUIP_SWORD && i_anmID < 0x15 && i_anmID >= 0x10) ||
        (i_anmID == ANM_SWIM_WAIT && mEquipItem != NO_ITEM))
    {
        return &m_mainBckSword[i_anmID - 0x10];
    }

    if (checkFishingRodAndLureItem() && i_anmID < 0x1C) {
        return &m_mainBckFishing[i_anmID];
    }

    return &m_anmDataTable[i_anmID].field_0x0;
}

/* 800AC558-800AC5B4 0A6E98 005C+00 51/51 0/0 2/2 .text
 * checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM */
BOOL daAlink_c::checkUnderMove0BckNoArc(daAlink_c::daAlink_ANM i_anmID) const {
    return mUnderAnmHeap[0].checkNoSetArcNo() &&
           mUnderAnmHeap[0].getIdx() == getMainBckData(i_anmID)->m_underID;
}

/* 800AC5B4-800AC610 0A6EF4 005C+00 4/4 0/0 0/0 .text
 * checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM */
BOOL daAlink_c::checkUnderMove1BckNoArc(daAlink_c::daAlink_ANM i_anmID) const {
    return mUnderAnmHeap[1].checkNoSetArcNo() &&
           mUnderAnmHeap[1].getIdx() == getMainBckData(i_anmID)->m_underID;
}

/* 800AC610-800AC738 0A6F50 0128+00 3/3 0/0 0/0 .text
 * getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl
 */
int daAlink_c::getUnderUpperAnime(daAlink_c::daAlink_ANM i_anmID, J3DAnmTransform** i_underBck,
                                  J3DAnmTransform** i_upperBck, int i_anmPackID, u32 i_bufSize) {
    s32 var_r31;

    const daAlink_BckData* bck_data = getMainBckData(i_anmID);
    offNoResetFlg0(FLG0_UNK_2);

    *i_underBck = (J3DAnmTransform*)getAnimeResource(&mUnderAnmHeap[i_anmPackID],
                                                     bck_data->m_underID, i_bufSize);

    if (*i_underBck != NULL) {
        var_r31 = 1;
    } else {
        *i_underBck = getNowAnmPackUnder((daAlink_UNDER)i_anmPackID);
        var_r31 = 0;
    }

    if (bck_data->m_underID != bck_data->m_upperID) {
        if (i_bufSize == 0x10800) {
            i_bufSize = (3 - i_anmPackID) * 0x2C00;
        }

        *i_upperBck = (J3DAnmTransform*)getAnimeResource(&mUpperAnmHeap[i_anmPackID],
                                                         bck_data->m_upperID, i_bufSize);
        if (*i_upperBck != NULL) {
            var_r31 |= 1;
        } else {
            *i_upperBck = getNowAnmPackUpper((daAlink_UPPER)i_anmPackID);
        }
    } else {
        if (!mUpperAnmHeap[i_anmPackID].checkNoSetIdx()) {
            var_r31 |= 1;
        }

        *i_upperBck = NULL;
        mUpperAnmHeap[i_anmPackID].resetIdx();
    }

    return var_r31;
}

/* 800AC738-800AC754 0A7078 001C+00 7/7 0/0 0/0 .text setDoubleAnimeBlendRatio__9daAlink_cFf */
void daAlink_c::setDoubleAnimeBlendRatio(f32 param_0) {
    mNowAnmPackUnder[0].setRatio(1.0f - param_0);
    mNowAnmPackUnder[1].setRatio(param_0);
    mNowAnmPackUpper[0].setRatio(1.0f - param_0);
    mNowAnmPackUpper[1].setRatio(param_0);
}

/* 800AC754-800ACA14 0A7094 02C0+00 2/2 0/0 0/0 .text
 * commonDoubleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformfffi
 */
void daAlink_c::commonDoubleAnime(J3DAnmTransform* param_0, J3DAnmTransform* param_1,
                                      J3DAnmTransform* param_2, J3DAnmTransform* param_3,
                                      f32 param_4, f32 param_5, f32 param_6, int param_7) {
    daPy_frameCtrl_c* temp_r29 = &mUnderFrameCtrl[0];
    daPy_frameCtrl_c* temp_r24 = &mUnderFrameCtrl[1];

    f32 var_f31;
    if (field_0x2f8c == 0) {
        var_f31 = 0.0f;
    } else {
        var_f31 = temp_r29->getFrame() / temp_r29->getEnd();
    }

    setDoubleAnimeBlendRatio(param_4);

    f32 temp_f30;
    f32 temp_f29 = param_0->getFrameMax();
    f32 temp_f28 = param_2->getFrameMax();
    f32 temp_f27 = 1.0f / temp_f29;
    temp_f30 = param_5 + (param_4 * (((param_6 * temp_f29) / temp_f28) - param_5));

    setFrameCtrl(temp_r29, param_0->getAttribute(), 0, temp_f29, temp_f30, var_f31 * temp_f29);
    param_0->setFrame(temp_r29->getFrame());

    setFrameCtrl(temp_r24, param_2->getAttribute(), 0, temp_f28, temp_f27 * (temp_f30 * temp_f28), var_f31 * temp_f28);
    param_2->setFrame(temp_r24->getFrame());

    mNowAnmPackUnder[0].setAnmTransform(param_0);
    mNowAnmPackUnder[1].setAnmTransform(param_2);

    if (param_1 != NULL) {
        f32 temp_f26 = param_1->getFrameMax();
        mNowAnmPackUpper[0].setAnmTransform(param_1);

        setFrameCtrl(&mUpperFrameCtrl[0], param_1->getAttribute(), 0, temp_f26, temp_f27 * (temp_f30 * temp_f26), var_f31 * temp_f26);
        param_1->setFrame(mUpperFrameCtrl[0].getFrame());
    } else {
        mNowAnmPackUpper[0].setAnmTransform(param_0);
    }

    if (param_3 != NULL) {
        f32 temp_f25 = param_3->getFrameMax();
        mNowAnmPackUpper[1].setAnmTransform(param_3);

        setFrameCtrl(&mUpperFrameCtrl[1], param_3->getAttribute(), 0, temp_f25, temp_f27 * (temp_f30 * temp_f25), var_f31 * temp_f25);
        param_3->setFrame(mUpperFrameCtrl[1].getFrame());
    } else {
        mNowAnmPackUpper[1].setAnmTransform(param_2);
    }

    if (param_7 == 4 || param_7 == 2) {
        setBasAnime(UNDER_0);
    } else {
        setBasAnime(UNDER_1);
    }

    field_0x2f8c = param_7;
}

/* 800ACA14-800ACD40 0A7354 032C+00 14/14 0/0 0/0 .text
 * setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif */
int daAlink_c::setDoubleAnime(f32 i_blendRate, f32 i_anmSpeedA, f32 i_anmSpeedB,
                              daAlink_c::daAlink_ANM i_anmA, daAlink_c::daAlink_ANM i_anmB,
                              int param_5, f32 i_morf) {
#ifdef DEBUG
    if (checkWolf()) {
        // "Player is Wolf, but setting Link animation\n"
        OSReport("狼なのにリンクアニメ設定\n");
        JUT_ASSERT(8591, 0);
    }
#endif

    J3DAnmTransform* under_bckA;
    J3DAnmTransform* upper_bckA;
    J3DAnmTransform* under_bckB;
    J3DAnmTransform* upper_bckB;

    int temp_r3 = getUnderUpperAnime(i_anmA, &under_bckA, &upper_bckA, 0, 0x2C00);
    int temp_r0 = getUnderUpperAnime(i_anmB, &under_bckB, &upper_bckB, 1, 0x2C00);

    if ((temp_r3 | temp_r0) != 0 && i_morf < 0.0f) {
        if (i_anmA == ANM_WAIT_B && checkModeFlg(1)) {
            i_morf = daAlinkHIO_move_c0::m.mWaitBInterpolation;
        } else {
            i_morf = daAlinkHIO_basic_c0::m.mAnmBlendFactor;
        }

        if (checkNoResetFlg0(FLG0_UNDERWATER)) {
            if (checkZoraWearAbility()) {
                i_morf *= (1.0f / daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed);
            } else {
                i_morf *= (1.0f / daAlinkHIO_magneBoots_c0::m.mWaterStartWalkAnmRate);
            }
        }
    } else if (i_anmA == ANM_WAIT_B && checkModeFlg(1) && i_morf > 0.0f) {
        i_morf = daAlinkHIO_move_c0::m.mWaitBInterpolation;

        if (checkNoResetFlg0(FLG0_UNDERWATER)) {
            if (checkZoraWearAbility()) {
                i_morf *= (1.0f / daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed);
            } else {
                i_morf *= (1.0f / daAlinkHIO_magneBoots_c0::m.mWaterStartWalkAnmRate);
            }
        }
    }

    commonDoubleAnime(under_bckA, upper_bckA, under_bckB, upper_bckB, i_blendRate, i_anmSpeedA,
                      i_anmSpeedB, param_5);
    if (i_morf >= 0.0f) {
        field_0x2060->initOldFrameMorf(i_morf, 0, 35);
    }

    setHandIndex(i_anmA);

    if (checkReinRide()) {
        if (checkRestHPAnime() &&
            (checkUnderMove0BckNoArc(ANM_HORSE_WAIT) || checkUnderMove0BckNoArc(ANM_HORSE_WALK_A) ||
             checkUnderMove0BckNoArc(ANM_HORSE_WALK_B)))
        {
            if (checkNoUpperAnime()) {
                setUpperAnimeBaseMorf(0x263, daAlinkHIO_horse_c0::m.mTiredWaitInterpolation);
            }

            setFaceBasicAnime(ANM_WAIT_TIRED);
            setTiredVoice(&mUpperFrameCtrl[2]);
        } else {
            if (checkHorseTiredAnime()) {
                resetUpperAnime(UPPER_2, 3.0f);
            }

            setFaceBasicAnime(i_anmA);
        }
    } else if ((i_anmB == ANM_WALK_HEAVY && i_anmA == ANM_WAIT) || i_anmB == ANM_HORSE_DASH_B) {
        setFaceBasicAnime(i_anmB);
    } else {
        setFaceBasicAnime(i_anmA);
    }

    return 1;
}

/* 800ACD40-800ACF80 0A7680 0240+00 2/2 0/0 0/0 .text
 * commonSingleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformffs */
void daAlink_c::commonSingleAnime(J3DAnmTransform* param_0, J3DAnmTransform* param_1,
                                      f32 param_2, f32 param_3, s16 param_4) {
    mUnderAnmHeap[1].resetIdx();
    mUpperAnmHeap[1].resetIdx();
    setDoubleAnimeBlendRatio(0.0f);

    mNowAnmPackUnder[0].setAnmTransform(param_0);
    mNowAnmPackUnder[1].setAnmTransform(NULL);

    s16 var_r30;
    if (param_4 < 0) {
        var_r30 = param_0->getFrameMax();
    } else {
        var_r30 = param_4;
    }

    f32 var_f31;
    if (param_2 < 0.0f) {
        var_f31 = var_r30;
    } else {
        var_f31 = param_3;
    }

    if (checkNoResetFlg0(FLG0_UNDERWATER) && checkModeFlg(0x200)) {
        if (checkZoraWearAbility() && mProcID != PROC_FRONT_ROLL && mEquipItem == 0x103) {
            param_2 *= daAlinkHIO_magneBoots_c0::m.mWaterVelRateSword * (1.0f / daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed);
        } else if (!checkZoraWearAbility()) {
            param_2 *= daAlinkHIO_magneBoots_c0::m.mWaterStartWalkAnmRate * (1.0f / daAlinkHIO_magneBoots_c0::m.mWaterWalkAnmRate);
        }
    }

    setFrameCtrl(&mUnderFrameCtrl[0], param_0->getAttribute(), param_3, var_r30, param_2, var_f31);
    param_0->setFrame(var_f31);

    if (param_1 != NULL) {
        mNowAnmPackUpper[0].setAnmTransform(param_1);

        if (param_4 < 0) {
            var_r30 = param_1->getFrameMax();
        } else {
            var_r30 = param_4;
        }

        if (param_2 < 0.0f) {
            var_f31 = var_r30;
        } else {
            var_f31 = param_3;
        }
    
        setFrameCtrl(&mUpperFrameCtrl[0], param_1->getAttribute(), param_3, var_r30, param_2, var_f31);
        param_1->setFrame(var_f31);
    } else {
        mNowAnmPackUpper[0].setAnmTransform(param_0);
    }

    mNowAnmPackUpper[1].setAnmTransform(NULL);
    setBasAnime(UNDER_0);
    field_0x2f8c = 0;
}

/* 800ACF80-800ACFB0 0A78C0 0030+00 88/88 0/0 0/0 .text
 * setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM     */
void daAlink_c::setSingleAnimeBase(daAlink_c::daAlink_ANM i_anmID) {
    setSingleAnime(i_anmID, 1.0f, 0.0f, -1, 3.0f);
}

/* 800ACFB0-800ACFE0 0A78F0 0030+00 27/27 0/0 0/0 .text
 * setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf */
void daAlink_c::setSingleAnimeBaseMorf(daAlink_c::daAlink_ANM i_anmID, f32 param_1) {
    setSingleAnime(i_anmID, 1.0f, 0.0f, -1, param_1);
}

/* 800ACFE0-800AD00C 0A7920 002C+00 77/77 0/0 0/0 .text
 * setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff */
void daAlink_c::setSingleAnimeBaseSpeed(daAlink_c::daAlink_ANM i_anmID, f32 param_1, f32 param_2) {
    setSingleAnime(i_anmID, param_1, 0.0f, -1, param_2);
}

/* 800AD00C-800AD0F4 0A794C 00E8+00 58/58 0/0 0/0 .text
 * setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf     */
int daAlink_c::setSingleAnime(daAlink_c::daAlink_ANM i_anmID, f32 i_rate, f32 i_start, s16 i_end,
                              f32 i_morf) {
    J3DAnmTransform* under_bck;
    J3DAnmTransform* upper_bck;

    getUnderUpperAnime(i_anmID, &under_bck, &upper_bck, 0, 0x10800);
    commonSingleAnime(under_bck, upper_bck, i_rate, i_start, i_end);

    if (i_morf >= 0.0f) {
        field_0x2060->initOldFrameMorf(i_morf, 0, 35);
    }

    setHandIndex(i_anmID);
    setFaceBasicAnime(i_anmID);

    return 1;
}

/* 800AD0F4-800AD128 0A7A34 0034+00 93/93 0/0 0/0 .text
 * setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c */
int daAlink_c::setSingleAnimeParam(daAlink_c::daAlink_ANM i_anmID,
                                   daAlinkHIO_anm_c const* i_anmData) {
    return setSingleAnime(i_anmID, i_anmData->mSpeed, i_anmData->mStartFrame, i_anmData->mEndFrame,
                          i_anmData->mInterpolation);
}

/* 800AD128-800AD170 0A7A68 0048+00 1/1 0/0 0/0 .text
 * animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c  */
void daAlink_c::animePlay(J3DAnmTransform* i_anm, daPy_frameCtrl_c* i_frameCtrl) {
    if (i_anm != NULL) {
        i_frameCtrl->updateFrame();
        i_anm->setFrame(i_frameCtrl->getFrame());
    }
}

/* 800AD170-800AD2D8 0A7AB0 0168+00 2/2 0/0 0/0 .text            allAnimePlay__9daAlink_cFv */
void daAlink_c::allAnimePlay() {
    J3DAnmTransform* under0_bck = getNowAnmPackUnder(UNDER_0);
    J3DAnmTransform* under1_bck = getNowAnmPackUnder(UNDER_1);
    J3DAnmTransform* upper0_bck = getNowAnmPackUpper(UPPER_0);
    J3DAnmTransform* upper1_bck = getNowAnmPackUpper(UPPER_1);

    if (checkWolf()) {
        setWolfAnmVoice();
    }

    for (int i = 0; i < 3; i++) {
        animePlay(getNowAnmPackUnder((daAlink_UNDER)i), &mUnderFrameCtrl[i]);
    }

    if (upper0_bck != under0_bck) {
        animePlay(upper0_bck, &mUpperFrameCtrl[0]);
    }

    if (upper1_bck != under1_bck) {
        animePlay(upper1_bck, &mUpperFrameCtrl[1]);
    }

    animePlay(getNowAnmPackUpper((daAlink_UPPER)2), &mUpperFrameCtrl[2]);

    if (field_0x2f92 == 0xFB && mpDemoHLTmpBck != NULL) {
        mpDemoHLTmpBck->play();
    }

    if (field_0x2f93 == 0xFB && mpDemoHRTmpBck != NULL) {
        mpDemoHRTmpBck->play();
    }

    if (checkNoResetFlg1(FLG1_UNK_10)) {
        if (field_0x069c != NULL && field_0x069c->getBlkAnm() != NULL) {
            simpleAnmPlay(field_0x069c->getBlkAnm());
        }

        if (field_0x068c != NULL) {
            simpleAnmPlay(field_0x068c);
        }

        if (mpDemoFCTmpBck != NULL) {
            mpDemoFCTmpBck->play();
        }
    }

    if (mpDemoHDTmpBck != NULL) {
        mpDemoHDTmpBck->play();
    }

    simpleAnmPlay(field_0x06f4);
    simpleAnmPlay(field_0x06f8);
}

/* 800AD2D8-800AD340 0A7C18 0068+00 2/2 0/0 0/0 .text            setUpperAnimeMorf__9daAlink_cFf */
void daAlink_c::setUpperAnimeMorf(f32 param_0) {
    if (param_0 >= 0.0f) {
        u16 temp_r29;
        u16 temp_r28;

        if (field_0x2060->getOldFrameRate() > 0.1f &&
            field_0x2060->getOldFrameStartJoint() == 0)
        {
            temp_r29 = 0;
            temp_r28 = field_0x30c6;
        } else {
            temp_r29 = field_0x30a8;
            temp_r28 = field_0x30aa;
        }

        field_0x2060->initOldFrameMorf(param_0, temp_r29, temp_r28);
    }
}

/* 800AD340-800AD374 0A7C80 0034+00 15/15 0/0 0/0 .text            setUpperAnimeBase__9daAlink_cFUs
 */
void daAlink_c::setUpperAnimeBase(u16 i_anmResID) {
    setUpperAnime(i_anmResID, UPPER_2, 1.0f, 0.0f, -1, 3.0f);
}

/* 800AD374-800AD3A8 0A7CB4 0034+00 7/7 0/0 0/0 .text setUpperAnimeBaseMorf__9daAlink_cFUsf */
void daAlink_c::setUpperAnimeBaseMorf(u16 i_anmResID, f32 i_morf) {
    setUpperAnime(i_anmResID, UPPER_2, 1.0f, 0.0f, -1, i_morf);
}

/* 800AD3A8-800AD3D8 0A7CE8 0030+00 18/18 0/0 0/0 .text setUpperAnimeBaseSpeed__9daAlink_cFUsff */
void daAlink_c::setUpperAnimeBaseSpeed(u16 i_anmResID, f32 i_speed, f32 i_morf) {
    setUpperAnime(i_anmResID, UPPER_2, i_speed, 0.0f, -1, i_morf);
}

/* 800AD3D8-800AD6F0 0A7D18 0318+00 13/13 0/0 0/0 .text
 * setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf  */
int daAlink_c::setUpperAnime(u16 i_anmResID, daAlink_c::daAlink_UPPER param_1, f32 i_speed,
                                  f32 i_startFrame, s16 i_endFrame, f32 i_morf) {
    BOOL var_r28 = 0;

    if (param_1 == 2) {
        resetFacePriAnime();
        offNoResetFlg1(daPy_FLG1(FLG1_UNK_10000000 | FLG1_UNK_4000000 | FLG1_UNK_100000 | FLG1_UNK_40000 | FLG1_UNK_20000 | FLG1_UNK_10000 | FLG1_UNK_40 | FLG1_UNK_8 | FLG1_UNK_2));
        cancelItemUseQuake(0);

        if (checkFmChainGrabAnime()) {
            var_r28 = 1;
        }
    }

    if (checkDkCaught2Anime()) {
        offNoResetFlg0(FLG0_UNK_20000);
    }

    J3DAnmTransform* var_r30 = getAnimeResource(&mUpperAnmHeap[param_1], i_anmResID, 0x2C00);
    if (var_r30 == NULL) {
        var_r30 = getNowAnmPackUpper(param_1);
    }

    mNowAnmPackUpper[param_1].setAnmTransform(var_r30);
    mNowAnmPackUpper[param_1].setRatio(1.0f);
    mUpperAnmHeap[param_1].setIdx(i_anmResID);

    if (i_endFrame < 0) {
        i_endFrame = var_r30->getFrameMax();
    }

    f32 var_f31;
    if (i_speed < 0.0f) {
        var_f31 = i_endFrame;
    } else {
        var_f31 = i_startFrame;
    }

    if (!checkZoraWearAbility() && (checkEquipAnime() || checkCutDashAnime()) && (checkNoResetFlg0(FLG0_UNDERWATER) || !checkNoResetFlg0(FLG0_SWIM_UP))) {
        i_speed *= daAlinkHIO_magneBoots_c0::m.mWaterStartWalkAnmRate * (1.0f / daAlinkHIO_magneBoots_c0::m.mWaterWalkAnmRate);
    }

    setFrameCtrl(&mUpperFrameCtrl[param_1], var_r30->getAttribute(), i_startFrame, i_endFrame, i_speed, var_f31);
    var_r30->setFrame(var_f31);
    setUpperAnimeMorf(i_morf);

    if (!checkBowAnime()) {
        setBowNormalAnime();
        deleteArrow();
    }

    if (!checkGrabAnimeAndThrow() && !checkWolfGrabAnime()) {
        freeGrabItem();
    }

    if (!checkWolfEnemyThrowAnime() && checkNoResetFlg2(FLG2_UNK_8)) {
        resetWolfEnemyBiteAll();
    }

    if (var_r28 != 0 && !checkFmChainGrabAnime()) {
        cancelFmChainGrabFromOut();
    }

    offNoResetFlg0(FLG0_UNK_1000000);
    return 1;
}

/* 800AD6F0-800AD724 0A8030 0034+00 21/21 0/0 0/0 .text
 * setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c */
void daAlink_c::setUpperAnimeParam(u16 i_anmResID, daAlink_c::daAlink_UPPER param_1,
                                   daAlinkHIO_anm_c const* i_anmParam) {
    setUpperAnime(i_anmResID, param_1, i_anmParam->mSpeed, i_anmParam->mStartFrame,
                  i_anmParam->mEndFrame, i_anmParam->mInterpolation);
}

/* 800AD724-800AD8F4 0A8064 01D0+00 65/65 0/0 0/0 .text
 * resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf     */
int daAlink_c::resetUpperAnime(daAlink_c::daAlink_UPPER param_0, f32 param_1) {
    BOOL var_r29 = 0;
    if (checkFmChainGrabAnime()) {
        cancelFmChainGrabFromOut();
    } else if (!checkModeFlg(0x100000) && (checkGrabAnime() || checkWolfGrabAnime())) {
        var_r29 = 1;
    }

    if (checkDkCaught2Anime()) {
        offNoResetFlg0(FLG0_UNK_20000);
    } else if (checkWolfEnemyThrowAnime()) {
        resetWolfEnemyBiteAll();
    }

    mNowAnmPackUpper[param_0].setAnmTransform(NULL);
    mNowAnmPackUpper[param_0].setRatio(0.0f);
    mUpperAnmHeap[param_0].resetIdx();
    mUpperFrameCtrl[param_0].init(0);

    setUpperAnimeMorf(param_1);

    if (param_0 == 2) {
        resetFacePriAnime();
    }

    field_0x2f96 = 0xFF;
    field_0x2f97 = 0xFF;
    deleteArrow();
    setBowNormalAnime();
    offNoResetFlg1(daPy_FLG1(FLG1_UNK_10000000 | FLG1_UNK_4000000 | FLG1_UNK_100000 | FLG1_UNK_40000 | FLG1_UNK_20000 | FLG1_UNK_10000 | FLG1_UNK_40 | FLG1_UNK_8 | FLG1_UNK_2));

    if (var_r29) {
        freeGrabItem();
    }

    offNoResetFlg0(FLG0_UNK_1000000);
    cancelItemUseQuake(0);
    return 1;
}

/* 800AD8F4-800AD964 0A8234 0070+00 2/2 0/0 0/0 .text            setUnderAnimeMorf__9daAlink_cFf */
void daAlink_c::setUnderAnimeMorf(f32 param_0) {
    if (param_0 >= 0.0f) {
        if (field_0x2060->getOldFrameRate() > 0.1f &&
            (field_0x2060->getOldFrameStartJoint() == 0 ||
             field_0x2060->getOldFrameStartJoint() == 1))
        {
            field_0x2060->initOldFrameMorf(param_0, 0, 35);
        } else {
            field_0x2060->initOldFrameMorf(param_0, 16, 35);
        }
    }
}

/* 800AD964-800ADAB8 0A82A4 0154+00 5/5 0/0 0/0 .text
 * setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf  */
int daAlink_c::setUnderAnime(u16 i_resID, daAlink_c::daAlink_UNDER i_packIdx, f32 i_speed,
                                 f32 i_startF, s16 i_endF, f32 i_morf) {
    J3DAnmTransform* var_r30 = getAnimeResource(&mUnderAnmHeap[i_packIdx], i_resID, 0x2C00);
    if (var_r30 == NULL) {
        var_r30 = getNowAnmPackUnder(i_packIdx);
    }

    mNowAnmPackUnder[i_packIdx].setAnmTransform(var_r30);
    mNowAnmPackUnder[i_packIdx].setRatio(1.0f);
    mUnderAnmHeap[i_packIdx].setIdx(i_resID);

    if (i_endF < 0) {
        i_endF = var_r30->getFrameMax();
    }

    f32 var_f31;
    if (i_speed < 0.0f) {
        var_f31 = i_endF;
    } else {
        var_f31 = i_startF;
    }

    setFrameCtrl(&mUnderFrameCtrl[i_packIdx], var_r30->getAttribute(), i_startF, i_endF, i_speed, var_f31);
    var_r30->setFrame(var_f31);
    setUnderAnimeMorf(i_morf);
    return 1;
}

/* 800ADAB8-800ADAEC 0A83F8 0034+00 2/2 0/0 0/0 .text
 * setUnderAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERPC16daAlinkHIO_anm_c */
int daAlink_c::setUnderAnimeParam(u16 i_resID, daAlink_c::daAlink_UNDER i_packIdx,
                                  daAlinkHIO_anm_c const* i_anmData) {
    return setUnderAnime(i_resID, i_packIdx, i_anmData->mSpeed, i_anmData->mStartFrame,
                         i_anmData->mEndFrame, i_anmData->mInterpolation);
}

/* 800ADAEC-800ADB78 0A842C 008C+00 17/17 0/0 0/0 .text
 * resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf     */
int daAlink_c::resetUnderAnime(daAlink_c::daAlink_UNDER param_0, f32 i_morf) {
    mNowAnmPackUnder[param_0].setAnmTransform(NULL);
    mNowAnmPackUnder[param_0].setRatio(0.0f);
    mUnderAnmHeap[param_0].resetIdx();
    mUnderFrameCtrl[param_0].init(0);
    setUnderAnimeMorf(i_morf);
    return 1;
}

/* 800ADB78-800ADC50 0A84B8 00D8+00 34/34 0/0 0/0 .text setOldRootQuaternion__9daAlink_cFsss */
void daAlink_c::setOldRootQuaternion(s16 param_0, s16 param_1, s16 param_2) {
    Quaternion quat;
    Quaternion quat2;
    Quaternion* old_frame_quat = field_0x2060->getOldFrameQuaternion(0);

    if (param_0 != 0 || param_1 != 0) {
        JMAEulerToQuat(param_0, param_1, 0, &quat);
        quat2 = *old_frame_quat;
        mDoMtx_QuatConcat(&quat, &quat2, old_frame_quat);
    }

    if (param_2 != 0) {
        JMAEulerToQuat(0, 0, param_2, &quat);
        quat2 = *old_frame_quat;
        mDoMtx_QuatConcat(&quat, &quat2, old_frame_quat);
    }
}

/* 800ADC50-800ADCEC 0A8590 009C+00 2/2 0/0 0/0 .text            checkAtnLeftAnime__9daAlink_cFv */
BOOL daAlink_c::checkAtnLeftAnime() {
    return checkUnderMove0BckNoArc(ANM_ATN_WAIT_LEFT) ||
           checkUnderMove0BckNoArc(ANM_ATN_WALK_LEFT) ||
           checkUnderMove0BckNoArc(ANM_ATN_RUN_LEFT) ||
           checkUnderMove0BckNoArc(ANM_ATN_LOCK_WALK_LEFT) ||
           checkUnderMove0BckNoArc(ANM_ATN_LOCK_RUN_LEFT);
}

/* 800ADCEC-800ADD88 0A862C 009C+00 1/1 0/0 0/0 .text            checkAtnRightAnime__9daAlink_cFv */
BOOL daAlink_c::checkAtnRightAnime() {
    return checkUnderMove0BckNoArc(ANM_ATN_WAIT_RIGHT) ||
           checkUnderMove0BckNoArc(ANM_ATN_WALK_RIGHT) ||
           checkUnderMove0BckNoArc(ANM_ATN_RUN_RIGHT) ||
           checkUnderMove0BckNoArc(ANM_ATN_LOCK_WALK_RIGHT) ||
           checkUnderMove0BckNoArc(ANM_ATN_LOCK_RUN_RIGHT);
}

/* 800ADD88-800ADE14 0A86C8 008C+00 3/3 0/0 0/0 .text getMoveGroundAngleSpeedRate__9daAlink_cFv */
f32 daAlink_c::getMoveGroundAngleSpeedRate() {
    s16 gnd_angle;

    if (field_0x3174 == 8 || checkMagneBootsOn() || !mLinkAcch.ChkGroundHit()) {
        gnd_angle = 0;
    } else {
        gnd_angle = getGroundAngle(&mLinkAcch.m_gnd, current.angle.y);
    }

    return fabsf((mNormalSpeed * cM_scos(gnd_angle)) / field_0x594);
}

/* 800ADE14-800AEA70 0A8754 0C5C+00 20/20 0/0 0/0 .text            setBlendMoveAnime__9daAlink_cFf
 */
void daAlink_c::setBlendMoveAnime(f32 param_0) {
    // NONMATCHING
}

/* 800AEA70-800AF11C 0A93B0 06AC+00 17/17 0/0 0/0 .text setBlendAtnMoveAnime__9daAlink_cFf */
void daAlink_c::setBlendAtnMoveAnime(f32 param_0) {
    // NONMATCHING
}

/* 800AF11C-800AF4B0 0A9A5C 0394+00 1/1 0/0 0/0 .text setBlendAtnBackMoveAnime__9daAlink_cFf */
void daAlink_c::setBlendAtnBackMoveAnime(f32 param_0) {
    // NONMATCHING
}

/* 800AF4B0-800AF61C 0A9DF0 016C+00 29/29 0/0 0/0 .text            setFaceBck__9daAlink_cFUsiUs */
void daAlink_c::setFaceBck(u16 param_0, int param_1, u16 param_2) {
    if (!checkNoResetFlg0(FLG0_SWIM_UP) && mProcID != PROC_GET_ITEM) {
        param_0 = 0x157;
    } else if (param_0 == 0) {
        fopAc_ac_c* temp_r28 = mAttention->LockonTarget(0);
        if (checkAttentionState() || (checkHorseRide() && checkEnemyGroup(temp_r28)) || checkEndResetFlg0(ERFLG0_UNK_400)) {
            param_0 = 0xE8;
        } else {
            param_0 = 0xDF;
        }
    } else {
        setIdxMask(&param_2, &param_0);
    }

    J3DAnmTransform* var_r29;
    if (param_2 != 0xFFFF) {
        var_r29 = (J3DAnmTransform*)mFaceBckHeap.loadDataDemoRID(param_0, param_2);
    } else if (param_1 != 0) {
        var_r29 = (J3DAnmTransform*)mFaceBckHeap.loadDataPriIdx(param_0);
    } else {
        var_r29 = (J3DAnmTransform*)mFaceBckHeap.loadDataIdx(param_0);
    }

    if (var_r29 != NULL) {
        field_0x2164.init(var_r29, 0, var_r29->getAttribute(), 1.0f, 0, -1, 1);
        var_r29->setFrame(0.0f);
    }
}

/* 800AF61C-800AF7D0 0A9F5C 01B4+00 7/7 0/0 0/0 .text            setFaceBtp__9daAlink_cFUsiUs */
void daAlink_c::setFaceBtp(u16 param_0, int param_1, u16 param_2) {
    setIdxMask(&param_2, &param_0);

    J3DAnmTexPattern* var_r30;
    if (param_2 != 0xFFFF) {
        var_r30 = (J3DAnmTexPattern*)mFaceBtpHeap.loadDataDemoRID(param_0, param_2);
    } else if (param_1 != 0) {
        var_r30 = (J3DAnmTexPattern*)mFaceBtpHeap.loadDataPriIdx(param_0);
    } else {
        var_r30 = (J3DAnmTexPattern*)mFaceBtpHeap.loadDataIdx(param_0);
    }

    if (var_r30 != NULL) {
        field_0x2154 = var_r30;
        field_0x2154->searchUpdateMaterialID(field_0x06c0);
        field_0x06c0->entryTexNoAnimator(field_0x2154);

        if (param_2 == 0xFFFF) {
            if (param_0 == 0x3E1 || (param_0 == 0x417 && checkUnderMove0BckNoArcWolf(WANM_WAIT_WIND))) {
                field_0x3440 = 0.02f;
                onNoResetFlg1(FLG1_UNK_2000);
            } else if (param_0 == 0x417 || param_0 == 0x418 || param_0 == 0x3E2 || param_0 == 0x3DF || param_0 == 0x3E0) {
                onNoResetFlg1(FLG1_UNK_2000);
                field_0x3440 = 0.012f;
            } else {
                offNoResetFlg1(FLG1_UNK_2000);
            }
        } else {
            offNoResetFlg1(FLG1_UNK_2000);
        }

        field_0x2fea = 0;
        field_0x2154->setFrame(0.0f);
    } else if (param_2 == 0xFFFF && param_0 == 0x417) {
        if (checkUnderMove0BckNoArcWolf(WANM_WAIT_WIND)) {
            field_0x3440 = 0.02f;
        } else {
            field_0x3440 = 0.012f;
        }
    }
}

/* 800AF7D0-800AF8A0 0AA110 00D0+00 6/6 0/0 0/0 .text            setFaceBtk__9daAlink_cFUsiUs */
void daAlink_c::setFaceBtk(u16 i_resID, int param_1, u16 i_arcNo) {
    setIdxMask(&i_arcNo, &i_resID);

    J3DAnmTextureSRTKey* btk;
    if (i_arcNo != 0xFFFF) {
        btk = (J3DAnmTextureSRTKey*)mFaceBtkHeap.loadDataDemoRID(i_resID, i_arcNo);
        offNoResetFlg1(FLG1_UNK_2000);
    } else if (param_1 != 0) {
        btk = (J3DAnmTextureSRTKey*)mFaceBtkHeap.loadDataPriIdx(i_resID);
    } else {
        btk = (J3DAnmTextureSRTKey*)mFaceBtkHeap.loadDataIdx(i_resID);
    }

    if (btk != NULL) {
        mpFaceBtk = btk;
        mpFaceBtk->searchUpdateMaterialID(field_0x06c0);
        field_0x06c0->entryTexMtxAnimator(mpFaceBtk);
        daAlink_matAnm_c::setMorfFrame(3);
        mpFaceBtk->setFrame(0.0f);
    }
}

/* 800AF8A0-800AF9A8 0AA1E0 0108+00 31/31 0/0 0/0 .text
 * setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM  */
daAlink_c::daAlink_FTANM daAlink_c::setFaceBasicTexture(daAlink_c::daAlink_FTANM param_0) {
    if (checkWindSpeedOnAngleAnime(0)) {
        if (param_0 == FTANM_UNK_0) {
            param_0 = FTANM_UNK_39;
        } else if (param_0 == FTANM_UNK_8B) {
            param_0 = FTANM_UNK_98;
        }
    } else if ((!checkPlayerDemoMode() && dComIfGs_getLife() <= 4) || mDemo.getDemoMode() == 0x12) {
        if (param_0 == FTANM_UNK_0) {
            param_0 = FTANM_UNK_1;
        } else if (param_0 == FTANM_UNK_8B) {
            param_0 = FTANM_UNK_8C;
        }
    }

    if (checkWolf() && param_0 == FTANM_UNK_0) {
        param_0 = FTANM_UNK_8B;
    }

    setFaceBasicBtp(getFaceTexData(param_0)->m_btpID);
    setFaceBasicBtk(getFaceTexData(param_0)->m_btkID);
    return param_0;
}

/* 800AF9A8-800AFAA8 0AA2E8 0100+00 5/5 0/0 0/0 .text
 * setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM      */
void daAlink_c::setFaceBasicAnime(daAlink_c::daAlink_ANM param_0) {
    const daAlink_AnmData* temp_r3 = getAnmData(param_0);

    daAlink_FTANM temp_r3_2 = setFaceBasicTexture((daAlink_c::daAlink_FTANM)temp_r3->m_faceTexID);
    if ((temp_r3_2 != temp_r3->m_faceTexID) && !checkWolf()) {
        if (temp_r3_2 == FTANM_UNK_39) {
            setFaceBasicBck(0x126);
        } else if (temp_r3_2 == FTANM_UNK_1) {
            setFaceBasicBck(0x120);
        } else if (temp_r3_2 == FTANM_UNK_5) {
            setFaceBasicBck(0x137);
        } else {
            setFaceBasicBck(temp_r3->m_faceBckID);
        }
    } else {
        setFaceBasicBck(temp_r3->m_faceBckID);
    }
}

/* 800AFAA8-800AFB14 0AA3E8 006C+00 16/16 0/0 0/0 .text
 * setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM    */
void daAlink_c::setFacePriTexture(daAlink_c::daAlink_FTANM i_anmID) {
    setFacePriBtp(getFaceTexData(i_anmID)->m_btpID);
    setFacePriBtk(getFaceTexData(i_anmID)->m_btkID);
}

/* 800AFB14-800AFB74 0AA454 0060+00 6/6 0/0 0/0 .text
 * setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM        */
void daAlink_c::setFacePriAnime(daAlink_c::daAlink_ANM i_anmID) {
    const daAlink_AnmData* anm_data = getAnmData(i_anmID);

    setFacePriTexture((daAlink_FTANM)anm_data->m_faceTexID);
    setFacePriBck(anm_data->m_faceBckID);
}

/* 800AFB74-800AFBD0 0AA4B4 005C+00 1/1 0/0 0/0 .text            resetFacePriBck__9daAlink_cFv */
void daAlink_c::resetFacePriBck() {
    if (!mFaceBckHeap.checkNoSetPriIdx()) {
        mFaceBckHeap.resetPriIdx();
        u16 bck_idx = mFaceBckHeap.getIdx();

        if (bck_idx == 0xFFFF) {
            bck_idx = 0xDF;
        }

        mFaceBckHeap.resetIdx();
        setFaceBasicBck(bck_idx);
    }
}

/* 800AFBD0-800AFC2C 0AA510 005C+00 1/1 0/0 0/0 .text            resetFacePriBtp__9daAlink_cFv */
void daAlink_c::resetFacePriBtp() {
    if (!mFaceBtpHeap.checkNoSetPriIdx()) {
        mFaceBtpHeap.resetPriIdx();
        u16 btp_idx = mFaceBtpHeap.getIdx();

        if (btp_idx == 0xFFFF) {
            btp_idx = 0x3DF;
        }

        mFaceBtpHeap.resetIdx();
        setFaceBasicBtp(btp_idx);
    }
}

/* 800AFC2C-800AFC88 0AA56C 005C+00 1/1 0/0 0/0 .text            resetFacePriBtk__9daAlink_cFv */
void daAlink_c::resetFacePriBtk() {
    if (!mFaceBtkHeap.checkNoSetPriIdx()) {
        mFaceBtkHeap.resetPriIdx();
        u16 btk_idx = mFaceBtkHeap.getIdx();

        if (btk_idx == 0xFFFF) {
            btk_idx = 0x379;
        }

        mFaceBtkHeap.resetIdx();
        setFaceBasicBtk(btk_idx);
    }
}

/* 800AFC88-800AFCBC 0AA5C8 0034+00 1/1 0/0 0/0 .text            resetFacePriTexture__9daAlink_cFv
 */
void daAlink_c::resetFacePriTexture() {
    resetFacePriBtp();
    resetFacePriBtk();
}

/* 800AFCBC-800AFCF0 0AA5FC 0034+00 7/7 0/0 0/0 .text            resetFacePriAnime__9daAlink_cFv */
void daAlink_c::resetFacePriAnime() {
    resetFacePriTexture();
    resetFacePriBck();
}

/* 800AFCF0-800B0098 0AA630 03A8+00 2/2 0/0 0/0 .text            playFaceTextureAnime__9daAlink_cFv
 */
void daAlink_c::playFaceTextureAnime() {
    // NONMATCHING
}

/* 800B0098-800B0150 0AA9D8 00B8+00 14/14 0/0 0/0 .text
 * getGroundAngle__9daAlink_cFP13cBgS_PolyInfos                 */
s16 daAlink_c::getGroundAngle(cBgS_PolyInfo* i_poly, s16 i_angle) {
    if (!dComIfG_Bgsp().ChkPolySafe(*i_poly)) {
        return 0;
    }

    cM3dGPla plane;
    if (!dComIfG_Bgsp().GetTriPla(*i_poly, &plane) || !cBgW_CheckBGround(plane.mNormal.y)) {
        return 0;
    }

    return fopAcM_getPolygonAngle(&plane, i_angle);
}

/* 800B0150-800B01FC 0AAA90 00AC+00 1/1 0/0 0/0 .text getRoofAngle__9daAlink_cFP13cBgS_PolyInfos
 */
s16 daAlink_c::getRoofAngle(cBgS_PolyInfo* param_0, s16 param_1) {
    cM3dGPla plane;

    if (!dComIfG_Bgsp().GetTriPla(*param_0, &plane) || !dComIfG_Bgsp().ChkPolySafe(*param_0)) {
        return 0;
    }

    return fopAcM_getPolygonAngle(&plane, param_1) + 0x8000;
}

/* 800B01FC-800B02BC 0AAB3C 00C0+00 2/2 0/0 0/0 .text
 * getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi */
BOOL daAlink_c::getWallEdgePos(cXyz const& param_0, cM3dGPla* param_1, cM3dGPla* param_2,
                                   cXyz* param_3, int param_4) {
    cXyz sp20(param_1->mNormal.z, 0.0f, -param_1->mNormal.x);
    sp20.normalizeZP();

    cM3dGPla sp2C(&sp20, -((sp20.z * param_0.z) + ((sp20.x * param_0.x) + (sp20.y * param_0.y))));
    
    return cM3d_3PlaneCrossPos(*param_1, *param_2, sp2C, param_3);
}

/* 800B02BC-800B146C 0AABFC 11B0+00 9/9 0/0 0/0 .text            setFrontWallType__9daAlink_cFv */
void daAlink_c::setFrontWallType() {
    f32 var_f31;
    if (checkWolf()) {
        var_f31 = 90.0f;
    } else if (mProcID == PROC_HOOKSHOT_FLY) {
        var_f31 = 50.0f;
    } else if (checkModeFlg(0x200000)) {
        var_f31 = 50.0f;
    } else {
        var_f31 = mAcchCir[0].GetWallR();
    }

    if (field_0x2f91 == 0) {
        field_0x2f91 = 1;
        if (!checkMagneBootsOn()) {
            cXyz sp98;
            cXyz sp8C;
            f32 sp64 = cM_ssin(shape_angle.y);
            f32 sp60 = cM_scos(shape_angle.y);

            int var_r27;
            int i;
            BOOL sp5C = 0;
            BOOL sp58 = 0;

            f32 sp54;
            f32 sp50;

            if (mProcID == PROC_HOOKSHOT_FLY) {
                if (mProcVar2.field_0x300c == 4 && dComIfG_Bgsp().ChkPolySafe(mPolyInfo2)) {
                    cM3dGPla spF4;
                    dComIfG_Bgsp().GetTriPla(mPolyInfo2, &spF4);

                    if (cBgW_CheckBWall(spF4.mNormal.y)) {
                        spF4.mNormal.y = 0.0f;
                        spF4.mNormal.normalizeZP();

                        sp64 = -spF4.mNormal.x;
                        sp60 = -spF4.mNormal.z;
                    }
                }

                sp98.x = mHookshotTopPos.x - (sp64 * var_f31);
                sp98.z = mHookshotTopPos.z - (sp60 * var_f31);
                sp8C.x = (2.0f * mHookshotTopPos.x) - sp98.x;
                sp8C.z = (2.0f * mHookshotTopPos.z) - sp98.z;
                sp50 = mHookshotTopPos.y;
                sp54 = 10.0f + mHookshotTopPos.y;
            } else {
                sp98.x = current.pos.x;
                sp98.z = current.pos.z;
                sp8C.x = sp98.x + (sp64 * (25.0f + var_f31));
                sp8C.z = sp98.z + (sp60 * (25.0f + var_f31));
                sp50 = current.pos.y;
                sp54 = 100.0f + current.pos.y;
            }

            BOOL sp4C = 0;

            
            for (i = 0; i < 3; i++) {
                sp98.y = sp50 + mAcchCir[i].GetWallH();
                sp8C.y = sp98.y;

                if (commonLineCheck(&sp98, &sp8C)) {
                    var_r27 = dComIfG_Bgsp().GetWallCode(mLinkLinChk);
    
                    if (i == 0 && var_r27 == 3 && checkStageName("D_MN10") != 0 && fopAcM_GetRoomNo(this) == 6) {
                        sp4C = 1;
                    } else if (!checkWolf() && sp5C == 0 && ((i == 0 && mLinkAcch.i_ChkGroundHit() && !checkModeFlg(0x70C52)) || mProcID == PROC_HOOKSHOT_FLY) && var_r27 == 0) {
                        sp5C = 1;
                        sp98.y = sp54;
                        sp8C.y = sp98.y;

                        if (commonLineCheck(&sp98, &sp8C) && checkClimbCode(mLinkLinChk)) {
                            sp58 = 1;
                            break;
                        }
                        
                        i = -1;
                    } else if (!checkWolf() || ((i != 0 && i != 1) || var_r27 != 7)) {
                        break;
                    }
                }
            }

            if (i == 3) {
                if (sp4C == 0) {
                    offNoResetFlg3(FLG3_UNK_400000);
                    return;
                }

                sp98.y = sp50 + mAcchCir[0].GetWallH();
                sp8C.y = sp98.y;

                if (!commonLineCheck(&sp98, &sp8C)) {
                    return;
                }
            } else {
                sp4C = 0;
            }

            cM3dGPla spE0;
            dComIfG_Bgsp().GetTriPla(mLinkLinChk, &spE0);

            if ((fabsf(spE0.mNormal.y) > 0.05f)) {
                return;
            }

            field_0x306e = spE0.mNormal.atan2sX_Z();
            BOOL sp48 = 0;

            s16 spA;
            if (mProcID == PROC_HOOKSHOT_FLY) {
                spA = 0x7FFF;
            } else if (mProcID == PROC_WOLF_JUMP_ATTACK || (checkWolf() && var_r27 == 3)) {
                if (mProcID != PROC_WOLF_JUMP_ATTACK) {
                    sp48 = 1;
                }
                spA = 0x2000;
            } else {
                spA = field_0x30ae;
            }

            int sp44 = cLib_distanceAngleS(field_0x306e, (shape_angle.y + 0x8000));
            if (sp44 > spA) {
                return;
            }

            cM3dGPla spCC;
            f32 sp40;

            if (checkModeFlg(2)) {
                field_0x34ec = mLinkLinChk.i_GetCross();
            } else {
                sp40 = spE0.getSignedLenPos(&current.pos);
                field_0x34ec.set(current.pos.x - (sp40 * spE0.mNormal.x), current.pos.y, current.pos.z - (sp40 * spE0.mNormal.z));

                int temp_r3 = dComIfG_Bgsp().GetWallCode(mLinkLinChk);
                if (temp_r3 != 4 && temp_r3 != 5) {
                    sp98.x = current.pos.x;
                    sp98.z = current.pos.z;
                    sp8C.x = sp98.x - (2.0f * sp40 * spE0.mNormal.x);
                    sp8C.z = sp98.z - (2.0f * sp40 * spE0.mNormal.z);

                    //int i;
                    for (i = 0; i < 3; i++) {
                        if (i == 0 && sp58 != 0) {
                            sp98.y = sp54;
                        } else {
                            sp98.y = current.pos.y + mAcchCir[i].GetWallH();
                        }

                        sp8C.y = sp98.y;

                        if (commonLineCheck(&sp98, &sp8C)) {
                            dComIfG_Bgsp().GetTriPla(mLinkLinChk, &spCC);
                            cXyz sp80 = spE0.mNormal - spCC.mNormal;

                            if (sp80.abs() < 0.001f) {
                                break;
                            }
                        }
                    }

                    if (i == 3) {
                        offNoResetFlg3(FLG3_UNK_400000);
                        return;
                    }
                }
            }

            int var_r29 = dComIfG_Bgsp().GetWallCode(mLinkLinChk);
            dBgW_Base* sp3C = dComIfG_Bgsp().GetBgWBasePointer(mLinkLinChk);

            if ((var_r29 == 3 || var_r29 == 1) && (sp4C != 0 || (sp3C != NULL && !sp3C->ChkPushPullOk()))) {
                var_r29 = 0;
            } else if (var_r29 == 1 && mSpecialMode == 0x2B) {
                var_r29 = 0;
            }

            if (sp48 != 0 && var_r29 != 3 && sp44 > field_0x30ae) {
                return;
            }

            cXyz sp74;
            if (var_r29 != 1 && var_r29 != 5 && var_r29 != 4) {
                offNoResetFlg3(FLG3_UNK_400000);
            }

            if (!mLinkAcch.ChkWallHit() && !checkWolf() && (var_r29 != 1 || mProcID != PROC_HANG_READY) && (var_r29 != 3 || checkModeFlg(0x40000) || checkModeFlg(2) || !(sp40 <= 51.0f)) && mProcID != PROC_HOOKSHOT_FLY && !checkModeFlg(0x200000)) {
                offNoResetFlg3(FLG3_UNK_400000);
                return;
            }

            if (var_r29 == 2) {
                return;
            }

            if (var_r29 == 3 && dComIfG_Bgsp().ChkMoveBG_NoDABg(mLinkLinChk)) {
                field_0x27fc = dComIfG_Bgsp().GetActorPointer(mLinkLinChk);
            }

            if (checkNoResetFlg0(daPy_FLG0(FLG0_UNDERWATER | FLG0_SWIM_UP))) {
                if (var_r29 == 6 && !checkModeFlg(0x40002)) {
                    setDoStatus(7);
                    setLadderPosInit();
                    return;
                }

                if (var_r29 == 3 && !checkModeFlg(0x40000) && !checkModeFlg(2)) {
                    onResetFlg0(RFLG0_UNK_8);
                    mPolyInfo1.SetPolyInfo(mLinkLinChk);

                    if (checkModeFlg(0x200000)) {
                        return;
                    }

                    if (!mLinkAcch.ChkWallHit() && !checkWolf()) {
                        return;
                    }
                } else if (!checkWolf()) {
                    if (var_r29 == 1) {
                        if (checkModeFlg(0x40002)) {
                            if (checkModeFlg(2) && mProcID != PROC_HOOKSHOT_FLY) {
                                setDoStatus(0x8E);
                            }

                            f32 sp34;
                            if (checkModeFlg(0x40000)) {
                                sp34 = current.pos.y - 90.0f;
                            } else {
                                sp34 = current.pos.y;
                            }

                            sp98.set(field_0x34ec.x - (15.0f * spE0.mNormal.x), 150.0f + sp34, field_0x34ec.z - (15.0f * spE0.mNormal.z));
                            mLinkGndChk.SetPos(&sp98);
                            f32 sp38 = dComIfG_Bgsp().GroundCross(&mLinkGndChk);

                            if (sp38 >= current.pos.y && dBgS_CheckBGroundPoly(mLinkGndChk)) {
                                cM3dGPla spB8;
                                dComIfG_Bgsp().GetTriPla(mLinkGndChk, &spB8);

                                if (getWallEdgePos(field_0x34ec, &spE0, &spB8, &sp74, 0)) {
                                    if (sp74.y - sp34 <= 150.0f) {
                                        if (checkModeFlg(0x40000)) {
                                            field_0x34ec = sp74;
                                            field_0x2f91 = 7;
                                            return;
                                        } else if (mProcID != PROC_HOOKSHOT_FLY) {
                                            field_0x34ec = sp74;
                                            field_0x2f91 = 0xA;
                                            return;
                                        } else {
                                            current.pos.y = sp74.y - 150.0f;
                                        }
                                    }
                                }
                            }
                        }
                        mPolyInfo1.SetPolyInfo(mLinkLinChk);
                        field_0x2f91 = 3;
                        return;
                    }

                    if (var_r29 == 4 || (var_r29 == 5 && !checkModeFlg(2))) {
                        if (var_r29 == 4) {
                            field_0x2f91 = 4;
                            if (checkModeFlg(2)) {
                                setDoStatus(0x8E);
                            }
                        } else {
                            field_0x2f91 = 5;
                        }
                        setLadderPosInit();
                        return;
                    }
                }
            }

            if (checkRoomOnly() && !checkWolf()) {
                return;
            }

            f32 var_f30;
            f32 sp30;
            f32 sp2C;
            f32 sp28;

            if (checkWolf()) {
                if (checkModeFlg(2)) {
                    var_f30 = daAlinkHIO_wlAutoJump_c0::m.field_0x78;
                } else {
                    var_f30 = daAlinkHIO_wlWallHang_c0::m.field_0x84;
                }
                sp30 = daAlinkHIO_wlWallHang_c0::m.field_0x7C;
                sp2C = daAlinkHIO_wlWallHang_c0::m.field_0x80;
            } else {
                if (checkModeFlg(2)) {
                    var_f30 = daAlinkHIO_autoJump_c0::m.mHangHeightLimit;
                } else {
                    var_f30 = daAlinkHIO_wallHang_c0::m.field_0x14;
                }
                sp30 = daAlinkHIO_wallHang_c0::m.field_0x8;
                sp2C = daAlinkHIO_wallHang_c0::m.field_0xC;
            }

            sp28 = current.pos.y + mSinkShapeOffset;
            sp98.set(current.pos.x, sp28 + (0.01f + var_f30), current.pos.z);
            sp8C.set(sp98.x + (sp64 * (50.0f + var_f31)), sp98.y, sp98.z + (sp60 * (50.0f + var_f31)));

            BOOL sp24 = commonLineCheck(&sp98, &sp8C);
            if (sp24) {
                sp98 = mLinkLinChk.i_GetCross();
                dComIfG_Bgsp().GetTriPla(mLinkLinChk, &spCC);
                sp98.x = (sp98.x + (25.0f * spCC.mNormal.x));
                sp98.z = (sp98.z + (25.0f * spCC.mNormal.z));
                mLinkGndChk.SetPos(&sp98);

                if (dComIfG_Bgsp().GroundCross(&mLinkGndChk) > current.pos.y + l_autoUpHeight) {
                    dComIfG_Bgsp().GetTriPla(mLinkGndChk, &spCC);
                    if (cBgW_CheckBGround(spCC.mNormal.y)) {
                        sp24 = 0;
                    }
                }
            }

            if (sp24 == 0) {
                mLinkRoofChk.SetPos(current.pos);
                sp24 = dComIfG_Bgsp().RoofChk(&mLinkRoofChk) - sp28 > 10.0f + var_f30 ? 0 : 1;
            }

            if (sp24 != 0) {
                return;
            }

            cM3dGPla spA4;
            bool sp8 = 0;
            int sp20 = 0;

            sp98.set(field_0x34ec.x - (7.5f * spE0.mNormal.x), sp28 + (0.01f + var_f30), field_0x34ec.z - (7.5f * spE0.mNormal.z));
            mLinkGndChk.SetPos(&sp98);
            f32 sp1C = dComIfG_Bgsp().GroundCross(&mLinkGndChk);

            sp98.set(field_0x34ec.x - (1.5f * spE0.mNormal.x), sp28 + (0.01f + var_f30), field_0x34ec.z - (1.5f * spE0.mNormal.z));
            mLinkGndChk.SetPos(&sp98);
            f32 sp38 = dComIfG_Bgsp().GroundCross(&mLinkGndChk);

            if (-1000000000.0f != sp38 && fabsf(sp1C - sp38) < l_autoUpHeight) {
                sp8 = dComIfG_Bgsp().GetTriPla(mLinkGndChk, &spA4);
            }
            if ((!checkModeFlg(0x40000) && sp38 < sp28) || sp8 == 0) {
                return;
            }
            if (-1000000000.0f == sp38 || !cBgW_CheckBGround(spA4.mNormal.y)) {
                return;
            }

            if (!getWallEdgePos(field_0x34ec, &spE0, &spA4, &sp74, sp20)) {
                return;
            }

            if (dComIfG_Bgsp().GetGroundCode(mLinkGndChk) != 6) {
                f32 sp18 = 36.5f;
                sp98.set(sp74.x + (10.0f * spE0.mNormal.x), sp74.y + l_autoUpHeight, sp74.z + (10.0f * spE0.mNormal.z));
                sp8C.set(sp74.x - (spE0.mNormal.x * sp18), sp98.y, sp74.z - (spE0.mNormal.z * sp18));
                
                if (commonLineCheck(&sp98, &sp8C)) {
                    return;
                }
            }

            field_0x34ec = sp74;
            f32 temp_f29 = field_0x34ec.y - sp28;

            if (checkModeFlg(0x40000)) {
                f32 sp14;
                f32 sp10;
                if (checkWolf()) {
                    sp14 = 0.01f + daAlinkHIO_wlSwim_c0::m.field_0x7C;
                    sp10 = daAlinkHIO_wlSwim_c0::m.field_0x94;
                } else {
                    sp14 = 0.01f + daAlinkHIO_swim_c0::m.mClimbHeight;
                    sp10 = daAlinkHIO_swim_c0::m.mUnderwaterClimbHeight;
                }

                if (checkNoResetFlg0(FLG0_SWIM_UP)) {
                    if (temp_f29 <= sp14) {
                        if (temp_f29 >= sp10) {
                            field_0x2f91 = 7;
                        }
                    }
                }
            } else if (checkModeFlg(2)) {
                if (sp38 - mLinkAcch.GetGroundH() > field_0x598 && temp_f29 < var_f30) {
                    if (!checkWolf() && mProcID != PROC_HOOKSHOT_FLY && temp_f29 < daAlinkHIO_autoJump_c0::m.mGrabHeightLimit) {
                        field_0x2f91 = 0xB;
                    } else {
                        field_0x2f91 = 0xA;
                    }
                }
            } else if (!(temp_f29 >= 0.01f + var_f30) && (!checkGrabAnime() || !(temp_f29 >= 0.01f + sp30))) {
                if (temp_f29 < 0.01f + sp30) {
                    field_0x2f91 = 6;
                } else if (temp_f29 < 0.01f + sp2C) {
                    field_0x2f91 = 7;
                } else if (checkWolf() || (temp_f29 < 0.01f + daAlinkHIO_wallHang_c0::m.field_0x10)) {
                    field_0x2f91 = 8;
                } else {
                    field_0x2f91 = 9;
                }
            }
        }
    }
}

/* 800B146C-800B1488 0ABDAC 001C+00 1/1 0/0 0/0 .text            SetPos__12dBgS_RoofChkFRC4cXyz */
void dBgS_RoofChk::SetPos(cXyz const& pos) {
    m_pos = pos;
}

/* 800B1488-800B14B4 0ABDC8 002C+00 4/4 0/0 0/0 .text checkWaterPolygonUnder__9daAlink_cFv */
BOOL daAlink_c::checkWaterPolygonUnder() {
    return checkModeFlg(MODE_SWIMMING) || current.pos.y < mWaterY;
}

/* 800B14B4-800B154C 0ABDF4 0098+00 2/2 0/0 0/0 .text            setWaterY__9daAlink_cFv */
void daAlink_c::setWaterY() {
    if (mLinkAcch.ChkWaterHit()) {
        onNoResetFlg0(FLG0_UNK_80);
        field_0x2fbc = dComIfG_Bgsp().GetPolyAtt0(mLinkAcch.m_wtr);
        mWaterY = mLinkAcch.m_wtr.GetHeight();
        if (field_0x2fbc != 6) {
            checkWaterInKandelaar(mWaterY);
        }
    } else {
        offNoResetFlg0(FLG0_UNK_80);
        field_0x2fbc = 16;
        mWaterY = -1000000000.0f;
    }
}

/* 800B154C-800B172C 0ABE8C 01E0+00 2/2 0/0 0/0 .text            setHangWaterY__9daAlink_cFv */
void daAlink_c::setHangWaterY() {
    cXyz sp14;
    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(0), &sp14);

    u32 var_r29;
    u32 var_r28;
    if (checkWolf()) {
        var_r29 = Z2SE_WL_OUTOF_WATER;
        var_r28 = Z2SE_WL_INTO_WATER;
    } else {
        f32 var_f31;
        if (mLeftFootPos.y < mRightFootPos.y) {
            var_f31 = mLeftFootPos.y;
        } else {
            var_f31 = mRightFootPos.y;
        }

        sp14.y = var_f31;
        var_r29 = Z2SE_AL_OUTOF_WATER;
        var_r28 = Z2SE_AL_INTO_WATER;
    }

    if (fopAcM_wt_c::waterCheck(&sp14)) {
        field_0x33b8 = fopAcM_wt_c::getWaterY();
        field_0x2fc5 = fopAcM_wt_c::getPolyAtt0();
        field_0x2fc6 = dKy_pol_argument_get(fopAcM_wt_c::getWaterCheck());

        if (field_0x2fc5 != 6) {
            if (checkModeFlg(0x40)) {
                cXyz sp8(sp14.x, field_0x33b8, sp14.z);

                if (field_0x33bc < field_0x33b8 && sp14.y >= field_0x33b8) {
                    seStartMapInfo(var_r29);
                } else if (field_0x33bc > field_0x33b8 && sp14.y <= field_0x33b8) {
                    seStartMapInfo(var_r28);
                    fopKyM_createWpillar(&sp8, field_0x3420, 0);
                }
                if (field_0x33bc < field_0x33b8) {
                    dComIfGp_particle_setWaterRipple(field_0x31a8, *fopAcM_wt_c::getWaterCheck(), &sp8, 0.0f, &tevStr, NULL, fopAcM_GetRoomNo(this));
                }
            }

            checkWaterInKandelaar(field_0x33b8);
        }
    } else {
        field_0x33b8 = -1000000000.0f;
        field_0x2fc5 = 0x10;
        field_0x2fc6 = 0;
    }

    field_0x33bc = sp14.y;

}

/* 800B172C-800B1770 0AC06C 0044+00 3/3 0/0 0/0 .text setSandDownBgCheckWallH__9daAlink_cFv */
void daAlink_c::setSandDownBgCheckWallH() {
    if (!checkModeFlg(0x400)) {
        for (int i = 0; i < 3; i++) {
            mAcchCir[i].SetWallH(mAcchCirWallH[i] + mSinkShapeOffset);
        }
    }
}

/* 800B1770-800B1B28 0AC0B0 03B8+00 2/2 0/0 0/0 .text            setBgCheckParam__9daAlink_cFv */
void daAlink_c::setBgCheckParam() {
    mAcchCir[0].SetWallH(l_autoUpHeight);
    mAcchCir[1].SetWallH(129.99f);
    mAcchCir[2].SetWallH(field_0x598);

    if (checkSpinnerRide()) {
        mLinkAcch.SetRoofCrrHeight(80.0f);
    } else {
        mLinkAcch.SetRoofCrrHeight(field_0x598);
    }

    if (checkWolf()) {
        if (checkModeFlg(0x40000)) {
            mAcchCir[0].SetWallH(-50.0f);
            mAcchCir[1].SetWallH(-25.0f);
            mAcchCir[2].SetWallH(0.0f);
            mAcchCir[0].SetWallR(35.0f);
        } else if (checkModeFlg(0x1000000)) {
            if (mProcID == PROC_WOLF_LIE_AUTO_MOVE) {
                mAcchCir[0].SetWallR(11.655f);
            } else {
                mAcchCir[0].SetWallR(35.0f);
            }

            mAcchCir[0].SetWallH(10.0f);
            mAcchCir[1].SetWallH(75.0f);
            mAcchCir[2].SetWallH(75.0f);
        } else if (mProcID == PROC_WOLF_TAG_JUMP) {
            mAcchCir[0].SetWallH(0.5f * (field_0x598 + l_autoUpHeight));
            mAcchCir[1].SetWallH(0.75f * (field_0x598 + l_autoUpHeight));
            mAcchCir[0].SetWallR(35.0f);
        } else {
            mAcchCir[1].SetWallH(0.5f * (field_0x598 + l_autoUpHeight));
            mAcchCir[0].SetWallR(35.0f);
        }
    } else if (checkModeFlg(0x200000)) {
        mAcchCir[0].SetWallR(20.0f);
    } else if (mProcID == PROC_LARGE_DAMAGE_WALL || checkModeFlg(0x10000)) {
        mAcchCir[0].SetWallR(5.0f);
    } else if (checkModeFlg(0x10)) {
        mAcchCir[0].SetWallR(50.0f);
    } else if (checkModeFlg(0x40000)) {
        mAcchCir[0].SetWallR(50.0f);
        mAcchCir[0].SetWallH(-60.0f);
        mAcchCir[1].SetWallH(-30.0f);
        mAcchCir[2].SetWallH(0.0f);
        mLinkAcch.SetRoofCrrHeight(40.0f);
    } else if (checkModeFlg(0x1000000) && mProcID != PROC_CRAWL_END) {
        if (mProcID == PROC_CRAWL_AUTO_MOVE) {
            mAcchCir[0].SetWallR(11.655f);
        } else {
            mAcchCir[0].SetWallR(35.0f);
        }

        mAcchCir[0].SetWallH(30.0f);
        mAcchCir[1].SetWallH(80.0f);
        mAcchCir[2].SetWallH(80.0f);
    } else if (mProcID == PROC_DAMAGE) {
        mAcchCir[0].SetWallR(70.0f);
    } else if (mProcID == PROC_HOOKSHOT_FLY) {
        mAcchCir[0].SetWallR(140.0f);
        mAcchCir[0].SetWallH(-25.0f);
        mAcchCir[1].SetWallH(0.0f);
        mAcchCir[2].SetWallH(50.0f);
    } else if (mProcID == PROC_HOOKSHOT_ROOF_WAIT || mProcID == PROC_HOOKSHOT_ROOF_SHOOT) {
        mAcchCir[0].SetWallH(-260.0f);
        mAcchCir[1].SetWallH(-140.0f);
        mAcchCir[2].SetWallH(-20.0f);

        mLinkAcch.SetRoofCrrHeight(0.0f);
        mAcchCir[0].SetWallR(35.0f);
    } else {
        if (checkModeFlg(0x40)) {
            mAcchCir[0].SetWallH(25.0f);
            mAcchCir[1].SetWallH(25.0f);
            mAcchCir[2].SetWallH(25.0f);
        } else if (checkModeFlg(0x400) && !checkSpinnerRide() && !checkBoardRide() && mProcID != PROC_SPINNER_WAIT && mProcID != PROC_BOARD_WAIT) {
            mAcchCir[0].SetWallH(l_autoUpHeight - 80.0f);
            mAcchCir[1].SetWallH(49.990005f);
            mAcchCir[2].SetWallH(field_0x598 - 80.0f);
        }

        mAcchCir[0].SetWallR(35.0f);
    }

    mAcchCir[1].SetWallR(mAcchCir[0].GetWallR());
    mAcchCir[2].SetWallR(mAcchCir[0].GetWallR());

    for (int i = 0; i < 3; i++) {
        mAcchCirWallH[i] = mAcchCir[i].GetWallH();
    }

    setSandDownBgCheckWallH();
}

/* 800B1B28-800B1B68 0AC468 0040+00 4/4 0/0 0/0 .text            checkNotJumpSinkLimit__9daAlink_cFv
 */
BOOL daAlink_c::checkNotJumpSinkLimit() {
    return mSinkShapeOffset < -30.0f || field_0x2fbd == 3 ||
           (field_0x2fbd == 4 && mSinkShapeOffset < -15.0f);
}

/* 800B1B68-800B1BAC 0AC4A8 0044+00 2/2 0/0 0/0 .text            checkNotItemSinkLimit__9daAlink_cFv
 */
BOOL daAlink_c::checkNotItemSinkLimit() {
    return mSinkShapeOffset < -34.0f &&
           (field_0x2fbd == 1 || field_0x2fbd == 2 || field_0x2fbd == 3 || field_0x2fbd == 4);
}

/* 800B1BAC-800B1FB8 0AC4EC 040C+00 2/2 0/0 0/0 .text            setSandShapeOffset__9daAlink_cFv */
void daAlink_c::setSandShapeOffset() {
    // NONMATCHING
}

/* 800B1FB8-800B1FD8 0AC8F8 0020+00 2/2 0/0 0/0 .text checkLv2MiddleBossBgRide__9daAlink_cFs */
bool daAlink_c::checkLv2MiddleBossBgRide(s16 i_procName) {
    return i_procName == PROC_OBJ_MSIMA || i_procName == PROC_B_ZANTS;
}

/* 800B1FD8-800B21EC 0AC918 0214+00 11/11 0/0 0/0 .text getSlidePolygon__9daAlink_cFP8cM3dGPla */
bool daAlink_c::getSlidePolygon(cM3dGPla* param_0) {
    if (!checkMagneBootsOn() && mLinkAcch.i_ChkGroundHit() && !checkModeFlg(0x40000) && (mGndPolySpecialCode != 6) && dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd)) {
        if ((checkEquipHeavyBoots() && daTagMagne_c::checkMagnetCode(mLinkAcch.m_gnd)) || mProcID == PROC_GORON_MOVE) {
            return 0;
        }

        s16 temp_r28 = getMoveBGActorName(mLinkAcch.m_gnd, 1);
        if (dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, param_0) &&
            (!checkBootsOrArmorHeavy() || (temp_r28 != PROC_Obj_RotStair && temp_r28 != PROC_Obj_Lv3R10Saka)) &&
            ((field_0x3174 != 8 && (mGndPolySpecialCode == 1 || (param_0->mNormal.y < field_0x3470 && mGndPolySpecialCode != 2))) ||
            (mGndPolySpecialCode == 5 && !checkWolf() && (!checkInputOnR() || mProcID == PROC_SLIDE) && (param_0->mNormal.y < cM_scos(field_0x3122))) ||
            (!checkEquipHeavyBoots() && !dComIfGp_checkPlayerStatus0(0, 0x100) && checkLv2MiddleBossBgRide(temp_r28) &&
            (param_0->mNormal.y < cM_scos(cM_deg2s(daAlinkHIO_slide_c0::m.mLV2MinibossFloorSlideAngle))))))
        {
            return 1;
        }
    }

    return 0;
}

/* 800B21EC-800B221C 0ACB2C 0030+00 4/4 0/0 0/0 .text            checkSlope__9daAlink_cCFv */
BOOL daAlink_c::checkSlope() const {
    return field_0x3174 != 8 && field_0x2ff0 < -field_0x3122;
}

/* 800B221C-800B23FC 0ACB5C 01E0+00 1/0 0/0 0/0 .text setPlayerPosAndAngle__9daAlink_cFPC4cXyzsi
 */
void daAlink_c::setPlayerPosAndAngle(cXyz const* p_pos, s16 i_angle, int param_2) {
    if (checkEventRun() || param_2 != 0 || mSpecialMode != 0) {
        if (p_pos != NULL) {
            current.pos = *p_pos;
            old.pos = current.pos;
            field_0x3798 = current.pos;
            onEndResetFlg0(ERFLG0_UNK_800000);
            onEndResetFlg2(ERFLG2_UNK_100);
            if (mDemo.getDemoMode() != 0x59) {
                speed.y = 0.0f;
            }
        }

        shape_angle.y = i_angle;
        current.angle.y = i_angle;
        field_0x2fe6 = shape_angle.y;
        if ((mProcID == PROC_TALK || mProcID == PROC_TRADE_ITEM_OUT) && !checkWolf()) {
            if (field_0x3198 != 0) {
                field_0x37c8.x = current.pos.x;
                field_0x37c8.z = current.pos.z;
            }
        }

        if (checkMagneBootsOn() && cBgW_CheckBGround(mMagneBootsTopVec.y)) {
            field_0x3118 = shape_angle.y;
        }

        if (checkHorseRide()) {
            dComIfGp_getHorseActor()->i_setHorsePosAndAngle(&current.pos, shape_angle.y);
        } else if (checkSpinnerRide()) {
            fopAc_ac_c* rideAc = mRideAcKeep.getActor();
            rideAc->current.pos = current.pos;
            rideAc->shape_angle.y = shape_angle.y;
            rideAc->current.angle.y = shape_angle.y;
            rideAc->speed.y = 0.0f;
        }

        field_0x814.ClrCcMove();
    }
}

/* 800B23FC-800B24F4 0ACD3C 00F8+00 1/0 0/0 0/0 .text
 * setPlayerPosAndAngle__9daAlink_cFPC4cXyzPC5csXyz             */
void daAlink_c::setPlayerPosAndAngle(cXyz const* p_pos, csXyz const* p_angle) {
    if (checkEventRun() || mSpecialMode != 0) {
        if (p_pos != NULL) {
            current.pos = *p_pos;
            old.pos = current.pos;
            field_0x3798 = current.pos;
            onEndResetFlg0(ERFLG0_UNK_800000);
            onEndResetFlg2(ERFLG2_UNK_100);
            speed.y = 0.0f;
        }

        if (p_angle != NULL) {
            shape_angle = *p_angle;
            current.angle.y = shape_angle.y;
            field_0x2fe6 = shape_angle.y;
        }

        field_0x814.ClrCcMove();
    }
}

/* 800B24F4-800B25CC 0ACE34 00D8+00 1/0 0/0 0/0 .text setPlayerPosAndAngle__9daAlink_cFPA4_f */
void daAlink_c::setPlayerPosAndAngle(Mtx param_0) {
    if (checkEventRun() || mSpecialMode != 0) {
        current.pos.x = param_0[0][3];
        current.pos.y = param_0[1][3];
        current.pos.z = param_0[2][3];
        old.pos = current.pos;
        field_0x3798 = current.pos;
        onEndResetFlg0(ERFLG0_UNK_800000);
        onEndResetFlg2(ERFLG2_UNK_100);
        mDoMtx_MtxToRot(param_0, &shape_angle);
        current.angle.y = shape_angle.y;
        field_0x2fe6 = shape_angle.y;
        speed.y = 0.0f;
        field_0x814.ClrCcMove();
    }
}

/* 800B25CC-800B25E8 0ACF0C 001C+00 16/16 0/0 0/0 .text            itemTriggerCheck__9daAlink_cFUc
 */
BOOL daAlink_c::itemTriggerCheck(u8 btnFlag) {
    field_0x2fae |= btnFlag;
    return mItemTrigger & btnFlag;
}

/* 800B25E8-800B2604 0ACF28 001C+00 11/11 0/0 0/0 .text            itemButtonCheck__9daAlink_cFUc */
BOOL daAlink_c::itemButtonCheck(u8 btnFlag) {
    field_0x2fae |= btnFlag;
    return mItemButton & btnFlag;
}

BOOL daAlink_c::itemButton() {
    return itemButtonCheck(1 << mSelectItemId);
}

BOOL daAlink_c::itemTrigger() {
    return itemTriggerCheck(1 << mSelectItemId);
}

BOOL daAlink_c::spActionButton() {
    return itemButtonCheck(BTN_R);
}

BOOL daAlink_c::spActionTrigger() {
    return itemTriggerCheck(BTN_R);
}

BOOL daAlink_c::midnaTalkTrigger() const {
    return mItemTrigger & BTN_Z;
}

BOOL daAlink_c::swordSwingTrigger() {
    return itemTriggerCheck(BTN_B);
}

/* 800B26DC-800B26FC 0AD01C 0020+00 2/2 0/0 0/0 .text setItemActionButtonStatus__9daAlink_cFUc */
void daAlink_c::setItemActionButtonStatus(u8 param_0) {
    setRStatusEmphasys(param_0);
}

/* 800B26FC-800B271C 0AD03C 0020+00 2/2 0/0 1/1 .text            itemActionTrigger__9daAlink_cFv */
BOOL daAlink_c::itemActionTrigger() {
    return spActionTrigger();
}

/* 800B271C-800B2EA4 0AD05C 0788+00 1/1 0/0 0/0 .text            setStickData__9daAlink_cFv */
void daAlink_c::setStickData() {
    BOOL var_r31 = false;
    field_0x2f8f = mItemButton;
    mItemTrigger = 0;
    mItemButton = 0;
    mHeavySpeedMultiplier = 1.0f;

    if (checkEventRun() && mProcID != PROC_GRASS_WHISTLE_WAIT && mProcID != PROC_WOLF_DIG_THROUGH &&
        mProcID != PROC_GOAT_CATCH && mProcID != PROC_WOLF_GANON_CATCH &&
        mProcID != PROC_TOOL_DEMO && (mProcID != PROC_METAMORPHOSE || mFallVoiceInit == 0))
    {
        u32 demoMode = mDemo.getDemoMode();

        if (checkDemoMoveMode(demoMode)) {
            if (dDemo_c::m_object->getActor(demoActorID) != NULL) {
                field_0x33a8 = 1.0f;
            } else {
                field_0x33a8 = mDemo.getStick();
            }
        } else if (demoMode == 14 || demoMode == 0x1A || demoMode == 0x41) {
            if (demoMode == 0x1A) {
                field_0x33a8 = mDemo.getStick();
                mDemo.setMoveAngle(getSceneExitMoveAngle());

                if (checkHorseRide()) {
                    s16 angle = mDemo.getMoveAngle();
                    dComIfGp_getHorseActor()->changeDemoMoveAngle(angle);
                }
            } else {
                field_0x33a8 = 0.0f;
            }
            mItemButton = field_0x2f8f;
        } else {
            field_0x33a8 = 0.0f;
        }
        field_0x2fe2 = mDemo.getMoveAngle();
        field_0x33ac = field_0x33a8;
    } else if (checkDeadHP() || dMeter2Info_getPauseStatus() == 1) {
        field_0x33a8 = 0.0f;
        field_0x33ac = 0.0f;
        mStickAngle = 0;
        field_0x2fe2 = 0;
    } else if (checkMidnaLockJumpPoint() && getMidnaActor()->checkNoInput()) {
        field_0x33a8 = 0.0f;
        field_0x33ac = 0.0f;
        mStickAngle = 0;
        dComIfGp_2dShowOff();
        onNoResetFlg2(FLG2_UNK_80);
        var_r31 = 1;
        field_0x2fe4 = shape_angle.y;
    } else {
        if (!(field_0x33ac > 0.05f)) {
            field_0x2fb9 = 0;
        }

        bool usingFishRod = false;
        if (checkFishingRodAndLureItem() && mItemAcKeep.getActor() != NULL &&
            (checkCanoeRide() || mProcID == PROC_FISHING_CAST))
        {
            usingFishRod = true;
        }

        if (usingFishRod) {
            dmg_rod_class* mg_rod = (dmg_rod_class*)mItemAcKeep.getActor();
            f32 stick_x = mg_rod->getRodStickX() * mg_rod->getRodStickX();
            f32 stick_y = mg_rod->getRodStickY() * mg_rod->getRodStickY();
            field_0x33a8 = JMAFastSqrt(stick_x + stick_y);
            mStickAngle = cM_atan2s(-mg_rod->getRodStickX(), mg_rod->getRodStickY());
        } else {
            field_0x33a8 = mDoCPd_c::getStickValue(PAD_1);
            mStickAngle = mDoCPd_c::getStickAngle3D(PAD_1) - -0x8000;
        }

        field_0x33ac = field_0x33a8;
        field_0x2fe2 = mStickAngle + dCam_getControledAngleY(dComIfGp_getCamera(field_0x317c));

        if (checkMagneBootsOn()) {
            if (field_0x2fb9 == 1 ||
                (field_0x2fb9 == 0 && field_0x3114 != -0x8000 && field_0x3114 <= 0x6000))
            {
                field_0x2fb9 = 1;
            } else {
                field_0x2fb9 = 2;
            }

            if ((field_0x2fb9 == 1 && (field_0x3114 > 0x6000 || field_0x3114 == -0x8000)) ||
                (field_0x2fb9 == 2 && field_0x3114 != -0x8000 && field_0x3114 < 0x4000))
            {
                field_0x2fe2 = getMagneBootsLocalAngleY(field_0x2fe2, 0) + 0x8000;
            } else {
                field_0x2fe2 = getMagneBootsLocalAngleY(field_0x2fe2, field_0x2fb9);
            }
        } else {
            field_0x2fb9 = 1;
        }

        if (mDoCPd_c::getTrigB(PAD_1)) {
            mItemTrigger |= BTN_B;
        }
        if (mDoCPd_c::getTrigA(PAD_1)) {
            mItemTrigger |= BTN_A;
        }
        if (mDoCPd_c::getTrigX(PAD_1)) {
            mItemTrigger |= BTN_X;
        }
        if (mDoCPd_c::getTrigY(PAD_1)) {
            mItemTrigger |= BTN_Y;
        }
        if (mDoCPd_c::getTrigZ(PAD_1)) {
            mItemTrigger |= BTN_Z;
        }
        if (mDoCPd_c::getTrigL(PAD_1)) {
            mItemTrigger |= BTN_L;
        }
        if (mDoCPd_c::getTrigLockR(PAD_1)) {
            mItemTrigger |= BTN_R;
        }

        if (mDoCPd_c::getHoldA(PAD_1)) {
            mItemButton |= BTN_A;
        }
        if (mDoCPd_c::getHoldB(PAD_1)) {
            mItemButton |= BTN_B;
        }
        if (mDoCPd_c::getHoldX(PAD_1)) {
            mItemButton |= BTN_X;
        }
        if (mDoCPd_c::getHoldY(PAD_1)) {
            mItemButton |= BTN_Y;
        }
        if (mDoCPd_c::getHoldZ(PAD_1)) {
            mItemButton |= BTN_Z;
        }
        if (mDoCPd_c::getHoldL(PAD_1)) {
            mItemButton |= BTN_L;
        }
        if (mDoCPd_c::getHoldLockR(PAD_1)) {
            mItemButton |= BTN_R;
        }

        if (checkHeavyStateOn(1, 1) &&
            (!checkBootsOrArmorHeavy() || !checkNoResetFlg0(FLG0_UNDERWATER)))
        {
            if (checkWolf() && checkHeavyStateOn(1, 0) && mSinkShapeOffset < -30.0f) {
                mHeavySpeedMultiplier = daAlinkHIO_magneBoots_c0::m.mInputFactor * 0.4f;
            } else {
                mHeavySpeedMultiplier = daAlinkHIO_magneBoots_c0::m.mInputFactor;
            }
            field_0x33a8 *= mHeavySpeedMultiplier;
        } else if (checkBootsOrArmorHeavy()) {
            if (checkZoraWearAbility()) {
                mHeavySpeedMultiplier = daAlinkHIO_magneBoots_c0::m.mZoraWaterInputFactor;
            } else {
                mHeavySpeedMultiplier = daAlinkHIO_magneBoots_c0::m.mWaterInputFactor;
            }
            field_0x33a8 *= mHeavySpeedMultiplier;
        } else if ((checkWolf() && field_0x2fbc == 11 && checkWaterPolygonUnder()) ||
                   field_0x2fbb == 11)
        {
            onNoResetFlg0(FLG0_UNK_40000000);
            field_0x33a8 *= daAlinkHIO_wolf_c0::m.mUnderwaterInputRate;
            mHeavySpeedMultiplier = daAlinkHIO_wolf_c0::m.mUnderwaterInputRate;
        }
    }

    s16 angle_diff = mStickAngle - mPrevStickAngle;
    int abs_v = abs(angle_diff);

    if (abs_v < 0x4000 && abs_v > 0x6D4 && field_0x3180 * angle_diff >= 0) {
        field_0x3180 += angle_diff;
        mStickSpinTimer = 4;
    } else if (field_0x3180 * angle_diff < 0) {
        field_0x3180 = angle_diff;
        mStickSpinTimer = 4;
    } else if (mStickSpinTimer > 0) {
        mStickSpinTimer--;
    } else {
        field_0x3180 = 0;
    }

    if (!doButton()) {
        offNoResetFlg0(FLG0_UNK_10000000);
    }

    if (!var_r31 && checkNoResetFlg2(FLG2_UNK_80)) {
        offNoResetFlg2(FLG2_UNK_80);
        dComIfGp_2dShowOn();
    }
}

/* 800B2EA4-800B3220 0AD7E4 037C+00 1/1 0/0 0/0 .text            setAtnList__9daAlink_cFv */
void daAlink_c::setAtnList() {
    mAttList = NULL;
    mAttList2 = NULL;
    mTargetedActor = NULL;
    field_0x27f0 = NULL;
    field_0x27f4 = NULL;
    field_0x27f8 = NULL;

    if (checkEventRun() || checkAttentionLock() || checkInputOnR()) {
        dComIfGp_clearPlayerStatus0(0, 0x400000);
        offNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER);
    } else {
        if (mThrowBoomerangAcKeep.getActor() == NULL) {
            dComIfGp_clearPlayerStatus0(0, 0x400000);
        }
        if (mCopyRodAcKeep.getActor() == NULL || getCopyRodControllActor() != NULL) {
            offNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER);
        }
    }

    field_0x27fc = NULL;

    if (checkFmChainGrabAnime()) {
        mTargetedActor = field_0x2844.getActor();
        field_0x27f4 = mTargetedActor;
        field_0x27fc = field_0x2844.getActor();
    } else if (mProcID == PROC_GORON_MOVE) {
        mTargetedActor = mCargoCarryAcKeep.getActor();
        field_0x27f4 = mTargetedActor;
    } else if (mProcID == PROC_CUT_FINISH && field_0x280c.getActor() != NULL) {
        mTargetedActor = field_0x280c.getActor();
        field_0x27f4 = mTargetedActor;
    } else if (dComIfGp_checkPlayerStatus0(0, 0x400000)) {
        mTargetedActor = mThrowBoomerangAcKeep.getActor();
        field_0x27f4 = mTargetedActor;
    } else if (checkNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER)) {
        mTargetedActor = mCopyRodAcKeep.getActor();
        field_0x27f4 = mTargetedActor;
    } else if (checkAttentionLock()) {
        mAttList = mAttention->GetLockonList(0);
        if (mAttList != NULL && mAttention->LockonTruth()) {
            mTargetedActor = mAttList->getActor();
            field_0x27f4 = mTargetedActor;
            onResetFlg0(RFLG0_UNK_10000);

            if (checkEnemyGroup(mTargetedActor)) {
                onResetFlg0(RFLG0_ENEMY_ATTN_LOCK);
            }
        }

        if (!checkWolf() || !checkNoResetFlg0(FLG0_UNK_400000)) {
            field_0x2fe4 = shape_angle.y;
        }

        onNoResetFlg0(FLG0_UNK_400000);
    } else {
        offNoResetFlg0(FLG0_UNK_400000);
    }

    if (mTargetedActor == NULL) {
        mAttList = mAttention->getActionBtnB();
        if (mAttList != NULL) {
            field_0x27f0 = mAttList->getActor();
            field_0x27f4 = field_0x27f0;
        }
    }

    mAttList2 = mAttention->getActionBtnXY();

    if (mAttList2 != NULL) {
        field_0x27f8 = mAttList2->getActor();
    }

    u8 var_r30;
    if (mTargetedActor != NULL) {
        if (fopAcM_GetGroup(mTargetedActor) == 2) {
            var_r30 = 3;
        } else {
            var_r30 = 2;
        }
        mAtnActorID = fopAcM_GetID(mTargetedActor);
    } else {
        if (checkAttentionLock()) {
            var_r30 = 1;
        } else {
            var_r30 = 0;
        }
        mAtnActorID = fpcM_ERROR_PROCESS_ID_e;
    }

    mZ2Link.setMarkState(var_r30);
}

/* 800B3220-800B3238 0ADB60 0018+00 5/5 0/0 0/0 .text            setRStatus__9daAlink_cFUc */
void daAlink_c::setRStatus(u8 status) {
    dComIfGp_setRStatus(status, 0);
}

/* 800B3238-800B3250 0ADB78 0018+00 1/1 0/0 0/0 .text            setRStatusEmphasys__9daAlink_cFUc
 */
void daAlink_c::setRStatusEmphasys(u8 status) {
    dComIfGp_setRStatus(status, 2);
}

/* 800B3250-800B3268 0ADB90 0018+00 61/61 0/0 0/0 .text            setDoStatus__9daAlink_cFUc */
void daAlink_c::setDoStatus(u8 status) {
    dComIfGp_setDoStatus(status, 0);
}

/* 800B3268-800B3280 0ADBA8 0018+00 19/19 0/0 0/0 .text setDoStatusEmphasys__9daAlink_cFUc */
void daAlink_c::setDoStatusEmphasys(u8 status) {
    dComIfGp_setDoStatus(status, 2);
}

/* 800B3280-800B3298 0ADBC0 0018+00 2/2 0/0 0/0 .text setDoStatusContinuation__9daAlink_cFUc */
void daAlink_c::setDoStatusContinuation(u8 status) {
    dComIfGp_setDoStatus(status, 4);
}

/* 800B3298-800B32B0 0ADBD8 0018+00 8/8 0/0 0/0 .text            setBStatus__9daAlink_cFUc */
void daAlink_c::setBStatus(u8 status) {
    dComIfGp_setAStatus(status, 0);
}

/* 800B32B0-800B3358 0ADBF0 00A8+00 2/2 0/0 0/0 .text            checkAtnWaitAnime__9daAlink_cFv */
BOOL daAlink_c::checkAtnWaitAnime() {
    if ((mTargetedActor != NULL &&
         (checkEnemyGroup(mTargetedActor) || checkGoatCatchActor(mTargetedActor) ||
          fopAcM_GetName(mTargetedActor) == PROC_CROD ||
          fopAcM_GetName(mTargetedActor) == PROC_BOOMERANG)) ||
        (checkGrabAnimeUp() || checkGrabAnimeSide() || mDemo.getDemoMode() == 0x17 ||
         checkGoatStopGame()))
    {
        return true;
    }

    return false;
}

/* 800B3358-800B33E4 0ADC98 008C+00 2/2 0/0 0/0 .text
 * setTiredVoice__9daAlink_cFP16daPy_frameCtrl_c                */
void daAlink_c::setTiredVoice(daPy_frameCtrl_c* i_frameCtrl) {
    if (i_frameCtrl->checkPass(-12.0f)) {
        if (dComIfGs_getLife() <= 2) {
            voiceStart(Z2SE_AL_V_TIRED_L);
        } else {
            voiceStart(Z2SE_AL_V_TIRED_S);
        }
    }
}

/* 800B33E4-800B3494 0ADD24 00B0+00 4/4 0/0 0/0 .text            checkRestHPAnime__9daAlink_cFv */
BOOL daAlink_c::checkRestHPAnime() {
    if (!checkPlayerGuard() && (checkNoUpperAnime() || checkHorseTiredAnime()) &&
        mTargetedActor == NULL && !checkWindSpeedOnAngle() &&
        ((!checkPlayerDemoMode() && dComIfGs_getLife() <= 4) || mDemo.getDemoMode() == 0x12))
    {
        return true;
    }

    return false;
}

/* 800B3494-800B3500 0ADDD4 006C+00 44/44 0/0 0/0 .text getDirectionFromAngle__9daAlink_cFs */
int daAlink_c::getDirectionFromAngle(s16 angle) {
    if (abs(angle) > 0x6000) {
        return DIR_BACKWARD;
    }

    if (angle >= 0x2000) {
        return DIR_LEFT;
    }

    if (angle <= -0x2000) {
        return DIR_RIGHT;
    }

    return DIR_FORWARD;
}

/* 800B3500-800B3630 0ADE40 0130+00 13/13 0/0 0/0 .text            checkAttentionState__9daAlink_cFv
 */
bool daAlink_c::checkAttentionState() {
    return (checkAttentionLock() || checkFmChainGrabAnime()) ||
           (mTargetedActor != NULL && (mTargetedActor == mThrowBoomerangAcKeep.getActor() || mTargetedActor == mCopyRodAcKeep.getActor())) ||
           (checkUpperReadyThrowAnime() && mEquipItem != 0x102) ||
           mDemo.getDemoMode() == 0x17;
}

/* 800B3630-800B3734 0ADF70 0104+00 5/5 0/0 0/0 .text getShapeAngleYAtnActor__9daAlink_cFv */
s16 daAlink_c::getShapeAngleYAtnActor() {
    s16 var_r29;

    if (mTargetedActor != NULL) {
        if (mProcID == PROC_HOOKSHOT_WALL_SHOOT) {
            cXyz sp1C;

            int joint_no;
            if (field_0x3020 == 0) {
                joint_no = 7;
            } else {
                joint_no = 12;
            }

            mDoMtx_multVecZero(mpLinkModel->getAnmMtx(joint_no), &sp1C);
            var_r29 = cLib_targetAngleY(&sp1C, &mTargetedActor->eyePos);
        } else {
            cXyz sp28 = mTargetedActor->eyePos - current.pos;
            multVecMagneBootInvMtx(&sp28);
            var_r29 = sp28.atan2sX_Z();
        }

        if (checkWolfShapeReverse()) {
            var_r29 += 0x8000;
        }
    } else {
        var_r29 = shape_angle.y;
    }

    return var_r29;
}

/* 800B3734-800B3844 0AE074 0110+00 26/26 0/0 0/0 .text setShapeAngleToAtnActor__9daAlink_cFi */
bool daAlink_c::setShapeAngleToAtnActor(int param_0) {
    if (mTargetedActor != NULL) {
        if ((mTargetedActor == mThrowBoomerangAcKeep.getActor() && (checkBoomerangThrowAnime() || !checkInputOnR())) ||
            (mTargetedActor == mCopyRodAcKeep.getActor() && (checkCopyRodThrowAnime() || !checkInputOnR())))
        {
            return true;
        }

        s16 angle = getShapeAngleYAtnActor();
        if (param_0 && abs((s16)(angle - shape_angle.y)) > 0x3000) {
            return true;
        }

        cLib_addCalcAngleS(&shape_angle.y, angle, 2, 0x2000, 0x800);
        return true;
    }

    return false;
}

/* 800B3844-800B3904 0AE184 00C0+00 9/9 0/0 0/0 .text            initServiceWaitTime__9daAlink_cFv
 */
void daAlink_c::initServiceWaitTime() {
    field_0x30ca = cM_rndF(150.0f) + 300.0f;

    if (checkWolf()) {
        field_0x30ca >>= 2;  // divide by 4
    } else if (checkReinRide()) {
        field_0x30ca *= 0.75f;
    }
}

/* 800B3904-800B3924 0AE244 0020+00 50/50 0/0 0/0 .text            checkZeroSpeedF__9daAlink_cCFv */
bool daAlink_c::checkZeroSpeedF() const {
    return fabsf(mNormalSpeed) < 0.0010000000474974513f;
}

/* 800B3924-800B3F2C 0AE264 0608+00 14/14 0/0 0/0 .text            setNormalSpeedF__9daAlink_cFff */
void daAlink_c::setNormalSpeedF(f32 i_incSpeed, f32 param_1) {
    f32 var_f31;
    if (getSumouMode()) {
        var_f31 = field_0x33ac * (field_0x594 * field_0x33ac);
    } else {
        var_f31 = field_0x33a8 * (field_0x594 * field_0x33a8);
    }

    if (checkWolfSwimDashAnime() || checkUnderMove0BckNoArc(ANM_SWIM_DASH) || getZoraSwim()) {
        var_f31 = field_0x594;
    }

    if ((checkUpperReadyThrowAnime() && mLinkAcch.i_ChkGroundHit() && field_0x2f8c == 1) || ((checkRoomOnly() || checkCopyRodControllAnime() || checkGrabSlowMoveActor() || (checkUpperGuardAnime() && field_0x2f8c == 1) || (field_0x2fbd == 4 && mSinkShapeOffset < -15.0f)) && (mProcID == PROC_MOVE || mProcID == PROC_ATN_MOVE || mProcID == PROC_ATN_ACTOR_MOVE || mProcID == PROC_WOLF_MOVE || mProcID == PROC_WOLF_ATN_AC_MOVE || mProcID == PROC_MOVE_TURN))) {
        f32 temp_f30 = field_0x594 * daAlinkHIO_basic_c0::m.mIndoorSpeedFactor;
        if (var_f31 > temp_f30) {
            var_f31 = temp_f30;
        }
    }

    if (field_0x2fbd == 3 && mSinkShapeOffset < -15.0f) {
        f32 temp_f30_2 = 0.5f * field_0x594;
        if (var_f31 > temp_f30_2) {
            var_f31 = temp_f30_2;
        }
    }

    if (checkNoResetFlg3(FLG3_UNK_1000)) {
        f32 sp18;
        if (checkWolf()) {
            sp18 = daAlinkHIO_wlSwim_c0::m.field_0x48;
        } else {
            sp18 = daAlinkHIO_swim_c0::m.mInitHeight;
        }

        f32 sp14 = cLib_minMaxLimit<f32>((mWaterY - (30.0f + current.pos.y)) / (sp18 - 30.0f), 0.0f, 1.0f);
        f32 temp_f30_3 = field_0x594 * (1.0f - (0.5f * sp14));
        if (var_f31 > temp_f30_3) {
            var_f31 = temp_f30_3;
        }
    }

    cM3dGPla slide_poly;
    if ((mDemo.getDemoMode() == 0xE && mDemo.getParam1() == 0) || mDemo.getDemoMode() == 0x41 || getSlidePolygon(&slide_poly)) {
        return;
    }

    s16 var_r29 = (current.angle.y + 0x8000) - field_0x30fa;
    if ((mLinkAcch.ChkWallHit() || fabsf(field_0x342c) > 1.0f || fabsf(field_0x3430) > 1.0f || (field_0x30fc != 0 && abs(var_r29) < 0x4000)) && !checkMagneBootsOn() && (!getZoraSwim() || abs(field_0x3080) <= 0x2000)) {
        dBgS_AcchCir* acch_cir = mAcchCir;
        if (mLinkAcch.ChkWallHit()) {
            for (int i = 0; i < 3; i++) {
                if (acch_cir->ChkWallHit()) {
                    var_r29 = (current.angle.y + 0x8000) - acch_cir->GetWallAngleY();
                    break;
                }
                acch_cir++;
            }
        } else if (fabsf(field_0x342c) > 1.0f || fabsf(field_0x3430) > 1.0f) {
            field_0x30fc = 3;
            field_0x30fa = cM_atan2s(field_0x342c, field_0x3430);
            var_r29 = (current.angle.y + 0x8000) - field_0x30fa;
        } else if (field_0x30fc == 1 && mGrabItemAcKeep.getActor() != NULL && current.pos.abs2(field_0x3540) < 1.0f && dComIfG_Bgsp().ChkPolySafe(mPolyInfo4)) {
            field_0x30fc = 3;
        }

        int temp_r3 = abs(var_r29);
        if (temp_r3 < 0x400) {
            var_f31 = 0.0f;
        } else if (temp_r3 < 0x4000) {
            var_f31 *= 1.0f - cM_scos(var_r29);
        }
    }

    if (checkNoResetFlg1(FLG1_UNK_20000000)) {
        s16 temp_r29 = (current.angle.y + 0x8000) - field_0x3092;

        int temp_r3_2 = abs(temp_r29);
        if (temp_r3_2 < 0x4000) {
            if (checkModeFlg(0x40000)) {
                var_f31 *= 1.0f - (0.8f * cM_scos(temp_r29));
            } else if (temp_r3_2 < 0x600) {
                var_f31 = 0.0f;
            } else {
                var_f31 *= 1.0f - cM_scos(temp_r29);
            }

            if (!checkWolf() && !checkMagneBootsOn()) {
                offNoResetFlg1(FLG1_UNK_20000000);
            }
        }
    }

    f32 move_speed;
    f32 target_speed;
    if (var_f31 < mNormalSpeed || 0.0f == var_f31) {
        f32 temp_f29 = mNormalSpeed - var_f31;
        move_speed = temp_f29 > param_1 ? param_1 : temp_f29;
        i_incSpeed = 0.0f;
        target_speed = var_f31;
    } else {
        move_speed = param_1;
        target_speed = 0.0f;
    }

    if (!cM3d_IsZero(i_incSpeed)) {
        mNormalSpeed += i_incSpeed;
        if (mNormalSpeed > var_f31) {
            mNormalSpeed = var_f31;
        }
    } else {
        cLib_chaseF(&mNormalSpeed, target_speed, move_speed);
    }
}

/* 800B3F2C-800B3FD4 0AE86C 00A8+00 2/2 0/0 0/0 .text getStickAngleDistanceRate__9daAlink_cFv */
f32 daAlink_c::getStickAngleDistanceRate() {
    f32 rate;

    if (abs((s16)(mPrevStickAngle - mStickAngle)) > 0x1000) {
        rate = cM_scos(field_0x2fe2 - current.angle.y);

        if (mNormalSpeed > 0.5f * field_0x594) {
            if (rate < 0.69999999f) {
                rate = 0.69999999f;
            }
        } else if (rate < 0.0f) {
            rate = 0.0f;
        }
    } else {
        rate = 1.0f;
    }

    return rate;
}

/* 800B3FD4-800B444C 0AE914 0478+00 3/3 0/0 0/0 .text setSpeedAndAngleNormal__9daAlink_cFv */
void daAlink_c::setSpeedAndAngleNormal() {
    bool var_r26 = false;

    if ((mLinkAcch.ChkWallHit() || field_0x30fc != 0) && !checkMagneBootsOn()) {
        if (mLinkAcch.ChkWallHit()) {
            dBgS_AcchCir* var_r29 = mAcchCir;
            for (int i = 0; i < 3; i++) {
                if (var_r29->ChkWallHit()) {
                    abs((s16)((current.angle.y + 0x8000) - var_r29->GetWallAngleY()));
                    break;
                }
                var_r29++;
            }
        }

        if (field_0x30fc != 0) {
            if (abs((s16)((current.angle.y + 0x8000) - field_0x30fa)) < 0x4000) {
                var_r26 = true;
            }
        }
    }

    if (checkMagneBootsOn() || checkNoResetFlg1(FLG1_UNK_20000000)) {
        var_r26 = true;
    }

    f32 var_f31;
    if (checkInputOnR()) {
        BOOL var_r24 = false;
        f32 temp_f30 = field_0x33ac * field_0x33ac;

        if (!checkAttentionLock() && cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7800 && mProcID != PROC_MOVE_TURN) {
            if (checkModeFlg(1) || speedF < 0.001f) {
                return;
            }

            if (mProcID == PROC_MOVE) {
                if ((speedF / field_0x594) > daAlinkHIO_move_c0::m.mSlideThresholdSpeed) {
                    if (getDirectionFromAngle(mPrevStickAngle - mStickAngle) == DIR_BACKWARD) {
                        return;
                    }
                }
                
                if ((speedF / field_0x594) <= daAlinkHIO_move_c0::m.mSlideThresholdSpeed) {
                    cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_move_c0::m.mTurnAngleRate, daAlinkHIO_move_c0::m.mMaxTurnAngle, daAlinkHIO_move_c0::m.mMinTurnAngle);
                    return;
                }
                var_r24 = true;
            } else {
                cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_move_c0::m.mTurnAngleRate, daAlinkHIO_move_c0::m.mMaxTurnAngle, daAlinkHIO_move_c0::m.mMinTurnAngle);
            }
        } else {
            s16 var_r28;
            s16 var_r27;

            if (checkEventRun()) {
                var_r28 = daAlinkHIO_move_c0::m.mMaxTurnAngle;
                var_r27 = daAlinkHIO_move_c0::m.mMinTurnAngle;
            } else {
                var_r28 = daAlinkHIO_move_c0::m.mMaxTurnAngle * temp_f30;
                if (var_r28 < 10) {
                    var_r28 = 10;
                }

                var_r27 = daAlinkHIO_move_c0::m.mMinTurnAngle * temp_f30;
                if (var_r27 < 1) {
                    var_r27 = 1;
                }
            }

            cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_move_c0::m.mTurnAngleRate, var_r28, var_r27);
        }

        if (!var_r24) {
            f32 temp_f28 = getStickAngleDistanceRate();
            if (checkEventRun()) {
                var_f31 = temp_f28 * (daAlinkHIO_move_c0::m.mAcceleration * field_0x33a8);
            } else {
                f32 var_f29 = 0.3f * (1.0f - fabsf(mNormalSpeed / field_0x594));
                if (checkHeavyStateOn(1, 1)) {
                    var_f29 *= mHeavySpeedMultiplier;
                }

                if (field_0x33a8 > var_f29) {
                    var_f31 = temp_f28 * (daAlinkHIO_move_c0::m.mAcceleration * temp_f30);
                } else {
                    var_f31 = 0.0f;
                }
            }
        } else {
            var_f31 = 0.0f;
        }
    } else {
        var_f31 = 0.0f;
    }

    if (!checkAttentionLock() && mProcID != PROC_MOVE_TURN && checkInputOnR()) {
        s16 sp8 = shape_angle.y;
        cLib_addCalcAngleS(&shape_angle.y, field_0x2fe2, daAlinkHIO_move_c0::m.mTurnAngleRate, daAlinkHIO_move_c0::m.mMaxTurnAngle * 2, daAlinkHIO_move_c0::m.mMinTurnAngle * 2);
        
        int temp_r23 = (s16)(sp8 - current.angle.y) * (s16)(shape_angle.y - current.angle.y);
        if (temp_r23 <= 0 && temp_r23 >= -0x1000000) {
            shape_angle.y = current.angle.y;
        }
    }

    setNormalSpeedF(var_f31, daAlinkHIO_move_c0::m.mDeceleration);
}

/* 800B444C-800B477C 0AED8C 0330+00 1/1 0/0 0/0 .text            setSpeedAndAngleAtn__9daAlink_cFv
 */
void daAlink_c::setSpeedAndAngleAtn() {
    int var_r29 = field_0x2f98;

    if (checkInputOnR()) {
        s16 temp_r0 = field_0x2fe2 - shape_angle.y;
        f32 temp_f27 = cM_ssin(temp_r0);
        f32 temp_f29 = cM_scos(temp_r0);

        if (mTargetedActor == NULL && !checkGoatStopGame() && (temp_f29 <= -0.99f || temp_f29 >= 0.99f)) {
            if (temp_f29 <= -0.99f) {
                var_r29 = 1;
            } else {
                var_r29 = 0;
            }
        } else if (temp_f29 < -0.866f) {
            var_r29 = 1;
        } else if (temp_f27 > 0.0f) {
            var_r29 = 2;
        } else if (temp_f27 < 0.0f) {
            var_r29 = 3;
        }
    }

    s16 var_r27;
    s16 var_r26;
    s16 var_r25;

    f32 var_f31;
    f32 var_f30;
    f32 var_f28;

    if (mTargetedActor != NULL) {
        var_r27 = daAlinkHIO_atnMove_c0::m.mTurnAngleRate;
        var_r26 = daAlinkHIO_atnMove_c0::m.mMaxTurnAngle;
        var_r25 = daAlinkHIO_atnMove_c0::m.mMinTurnAngle;
    
        if (var_r29 == 1) {
            var_f31 = daAlinkHIO_atnMove_c0::m.mBackAcceleration;
            var_f30 = daAlinkHIO_atnMove_c0::m.mBackDeceleration;
        } else {
            var_f31 = daAlinkHIO_atnMove_c0::m.mAcceleration;
            var_f30 = daAlinkHIO_atnMove_c0::m.mDeceleration;
        }
    } else {
        if (var_r29 == 0) {
            if (checkInputOnR()) {
                if (getDirectionFromCurrentAngle() == DIR_BACKWARD) {
                    current.angle.y += 0x8000;
                    mNormalSpeed *= -1.0f;
                }
                if (checkZeroSpeedF()) {
                    current.angle.y = field_0x2fe2;
                }
            }

            setSpeedAndAngleNormal();
            return;
        }

        var_r27 = daAlinkHIO_noActAtnMove_c0::m.mTurnAngleRate;
        var_r26 = daAlinkHIO_noActAtnMove_c0::m.mMaxTurnAngle;
        var_r25 = daAlinkHIO_noActAtnMove_c0::m.mMinTurnAngle;

        if (var_r29 == 1) {
            var_f31 = daAlinkHIO_noActAtnMove_c0::m.mBackAcceleration;
            var_f30 = daAlinkHIO_noActAtnMove_c0::m.mBackDeceleration;
        } else {
            var_f31 = daAlinkHIO_noActAtnMove_c0::m.mAcceleration;
            var_f30 = daAlinkHIO_noActAtnMove_c0::m.mDeceleration;
        }
    }

    if (checkInputOnR()) {
        if (getDirectionFromCurrentAngle() == DIR_BACKWARD) {
            current.angle.y += 0x8000;
            mNormalSpeed *= -1.0f;
        }

        s16 var_r28;
        if (checkUnderMove0BckNoArc(ANM_CHAIN_PULL_END)) {
            var_r28 = getChainStickAngleY(shape_angle.y);
        } else {
            var_r28 = field_0x2fe2;
        }
    
        if (checkZeroSpeedF()) {
            current.angle.y = var_r28;
        }
    
        s16 temp_r23 = current.angle.y;
        cLib_addCalcAngleS(&current.angle.y, var_r28, var_r27, var_r26, var_r25);
    
        if (field_0x33a8 > (0.3f * (1.0f - fabsf(mNormalSpeed / field_0x594)))) {
            var_f28 = var_f31 * field_0x33a8 * cM_scos((current.angle.y - temp_r23));
        } else {
            var_f28 = 0.0f;
        }
    } else {
        var_f28 = 0.0f;
    }

    if (mTargetedActor != NULL) {
        setShapeAngleToAtnActor(0);
    } else {
        shape_angle.y = field_0x2fe4;
    }

    setNormalSpeedF(var_f28, var_f30);
}

/* 800B477C-800B47B4 0AF0BC 0038+00 2/2 0/0 0/0 .text
 * checkRequestTalkActor__9daAlink_cFP10dAttList_cP10fopAc_ac_c */
int daAlink_c::checkRequestTalkActor(dAttList_c* param_0, fopAc_ac_c* param_1) {
    if (param_0 != NULL &&
        (param_0->mType == 3 || (param_0->mType == 1 && mTargetedActor == param_1)))
    {
        return true;
    }

    return false;
}

/* 800B47B4-800B48D0 0AF0F4 011C+00 4/4 0/0 0/0 .text            checkServiceWaitMode__9daAlink_cFv
 */
bool daAlink_c::checkServiceWaitMode() {
    return !checkEventRun() &&
           !checkEndResetFlg0(ERFLG0_BOSS_ROOM_WAIT) &&
           checkNoUpperAnime() &&
           !checkWindSpeedOnXZ() &&
           field_0x3126 == 0 &&
           field_0x3128 == 0 &&
           field_0x3124 == 0 &&
           !checkFishingRodAndLureItem() &&
           mSinkShapeOffset >= -30.0f;
}

/* 800B48D0-800B4908 0AF210 0038+00 18/18 0/0 0/0 .text            setJumpMode__9daAlink_cFv */
void daAlink_c::setJumpMode() {
    onModeFlg(MODE_JUMP);
    mLastJumpPos = current.pos;
    mFallHeight = mLastJumpPos.y;
    field_0x33c8 = mLastJumpPos.y;
}

/* 800B4908-800B4918 0AF248 0010+00 0/0 0/0 1/1 .text getMetamorphoseNearDis__9daAlink_cCFv */
f32 daAlink_c::getMetamorphoseNearDis() const {
    return daAlinkHIO_basic_c0::m.mTransformBlockNearDis;
}

/* 800B4918-800B4928 0AF258 0010+00 0/0 0/0 1/1 .text getMetamorphoseFarDis__9daAlink_cCFv */
f32 daAlink_c::getMetamorphoseFarDis() const {
    return daAlinkHIO_basic_c0::m.mTransformBlockFarDis;
}

/* 800B4928-800B4938 0AF268 0010+00 0/0 0/0 1/1 .text getMetamorphoseFarAngle__9daAlink_cCFv */
s16 daAlink_c::getMetamorphoseFarAngle() const {
    return daAlinkHIO_basic_c0::m.mTransformBlockFarAngle;
}

/* 800B4938-800B4950 0AF278 0018+00 0/0 1/1 0/0 .text            setMidnaMsg__9daAlink_cFv */
void daAlink_c::setMidnaMsg() {
    if (mMidnaMsg != NULL) {
        mMidnaMsg->onUseFlg();
    }
}

/* 800B4950-800B4A08 0AF290 00B8+00 3/3 0/0 0/0 .text            notTalk__9daAlink_cFv */
BOOL daAlink_c::notTalk() {
    BOOL safe_poly;
    if (dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd) && dBgS_CheckBGroundPoly(mLinkAcch.m_gnd)) {
        safe_poly = true;
    } else {
        safe_poly = false;
    }

    if ((mMidnaTalkDelayTimer != 0 ||
         (checkMagneBootsOn() && !cBgW_CheckBGround(mMagneBootsTopVec.y))) ||
        !checkModeFlg(MODE_SWIMMING | MODE_ROPE_WALK | MODE_VINE_CLIMB | MODE_UNK_800 |
                        MODE_RIDING | MODE_NO_COLLISION | MODE_CLIMB | MODE_JUMP) &&
            !safe_poly)
    {
        return true;
    }
    return false;
}

/* 800B4A08-800B4B2C 0AF348 0124+00 11/11 0/0 0/0 .text            setTalkStatus__9daAlink_cFv */
BOOL daAlink_c::setTalkStatus() {
    if (checkEndResetFlg0(ERFLG0_BEE_FOLLOW) || field_0x27f4 == NULL) {
        return 0;
    }

    if (checkRequestTalkActor(mAttList, field_0x27f4)) {
        if (notTalk()) {
            setDoStatus(0x90);
        } else {
            if (field_0x27f4->attention_info.flags & 0x2000000) {
                return 0;
            }

            if (field_0x27f4->attention_info.flags & 0x800000) {
                setDoStatus(0x3B);
            } else if (field_0x27f4->attention_info.flags & 0x20000000) {
                if (fopAcM_GetName(field_0x27f4) == PROC_OBJ_SSDRINK) {
                    setDoStatus(0x3C);
                } else {
                    setDoStatus(8);
                }
            } else if (field_0x27f4->attention_info.flags & 0x40000000) {
                setDoStatus(0x80);
            } else if (field_0x27f4->attention_info.flags & 0x8000000) {
                setDoStatus(0x1B);
            } else {
                setDoStatus(0x1C);
            }
        }

        return 1;
    }

    return 0;
}

/* 800B4B2C-800B4B7C 0AF46C 0050+00 1/1 0/0 0/0 .text            getFrontRollRate__9daAlink_cFv */
f32 daAlink_c::getFrontRollRate() {
    if (checkHeavyStateOn(1, 1)) {
        return 0.75f * mHeavySpeedMultiplier;
    } else {
        return 0.75f;
    }
}

/* 800B4B7C-800B5284 0AF4BC 0708+00 2/2 0/0 0/0 .text            decideCommonDoStatus__9daAlink_cFv
 */
// NONMATCHING - almost, small branch issues
void daAlink_c::decideCommonDoStatus() {
    if (!checkFmChainGrabAnime() && dComIfGp_getDoStatus() == 0) {
        bool temp_r3 = checkStageName("R_SP127");

        if (checkRoomOnly() && !checkWolf() && !temp_r3) {
            if ((checkNoUpperAnime() || checkIronBallWaitAnime()) &&
                (mEquipItem != NO_ITEM && checkModeFlg(4) && mEquipItem != 0x102))
            {
                if (checkCopyRodControllAnime()) {
                    setDoStatus(0x2A);
                } else {
                    setDoStatus(4);
                }
            } else if (mFastShotTime != 0) {
                setDoStatus(0x12);
            }
        } else if (checkWolf()) {
            if (checkDownAttackState()) {
                setDoStatusEmphasys(0x30);
            } else if (checkCutHeadState()) {
                setDoStatusEmphasys(0x77);
            } else if (checkWolfSideStep()) {
                setDoStatusEmphasys(0x19);
            } else {
                if (mTargetedActor != NULL) {
                    if (fopAcM_GetName(mTargetedActor) == PROC_Tag_Wljump) {
                        if (static_cast<daTagWljump_c*>(mTargetedActor)->getLockPos() != NULL) {
                            if (!getMidnaActor()->checkNoInput()) {
                                setDoStatus(0x93);
                            }

                            onResetFlg0(RFLG0_UNK_20000);
                            field_0x3738 =
                                *static_cast<daTagWljump_c*>(mTargetedActor)->getLockPos();
                        }
                    } else {
                        setDoStatus(0x8B);
                    }
                } else if (checkAttentionLock()) {
                    setDoStatus(0x8B);
                } else if (field_0x30d2 == 0 &&
                           (field_0x33a8 > getFrontRollRate() || checkAttentionLock()))
                {
                    setDoStatus(9);
                }
            }

            if (checkNotJumpSinkLimit() &&
                (dComIfGp_getDoStatus() == 0x8B || dComIfGp_getDoStatus() == 0x30 ||
                 dComIfGp_getDoStatus() == 0x77 || dComIfGp_getDoStatus() == 0x19 ||
                 dComIfGp_getDoStatus() == 9 || dComIfGp_getDoStatus() == 0x93))
            {
                setDoStatus(0);
            }
        } else {
            int direction = getDirectionFromShapeAngle();
            f32 temp_f31 = getFrontRollRate();

            if (checkAttentionLock() ||
                (mTargetedActor != NULL && (mTargetedActor == mThrowBoomerangAcKeep.getActor() ||
                                            mTargetedActor == mCopyRodAcKeep.getActor())))
            {
                if (checkInputOnR() && direction != DIR_FORWARD) {
                    if (mEquipItem == 0x103 && checkDownAttackState()) {
                        setDoStatusEmphasys(0x30);
                    } else if (mEquipItem == 0x103 && checkCutHeadState()) {
                        setDoStatusEmphasys(0x77);
                    } else {
                        setDoStatusEmphasys(0x19);
                    }
                } else if (!checkSmallUpperGuardAnime() &&
                           (mEquipItem == 0x103 || mEquipItem == 0x102))
                {
                    if (mEquipItem == 0x102) {
                        setDoStatus(0x13);
                    } else if (mEquipItem == 0x103 && checkDownAttackState()) {
                        setDoStatusEmphasys(0x30);
                    } else if (mEquipItem == 0x103 && checkCutHeadState()) {
                        setDoStatusEmphasys(0x77);
                    } else {
                        setDoStatus(0x86);
                    }
                } else {
                    setDoStatus(0x79);
                }
            } else if (((checkNoUpperAnime()) || checkIronBallWaitAnime() ||
                        checkCopyRodControllAnime()) &&
                       mEquipItem != NO_ITEM && checkModeFlg(4) && field_0x33a8 <= temp_f31)
            {
                if (mEquipItem == 0x102) {
                    if (checkAttentionState()) {
                        setDoStatus(0x13);
                    } else {
                        setDoStatus(0x14);
                    }
                } else {
                    setDoStatus(4);
                }
            } else if (field_0x33a8 > temp_f31) {
                if (mEquipItem == 0x102) {
                    setDoStatus(0x13);
                } else {
                    setDoStatus(0x79);
                }
            } else if (mFastShotTime != 0) {
                setDoStatus(0x12);
            }

            if ((((checkMagneBootsOn() || checkIronBallWaitAnime() || checkNotJumpSinkLimit()) ||
                  (dComIfGp_getDoStatus() == 0x79 || dComIfGp_getDoStatus() == 0x86 ||
                   dComIfGp_getDoStatus() == 0x30 || dComIfGp_getDoStatus() == 0x77 ||
                   dComIfGp_getDoStatus() == 0x19)) ||
                 (dComIfGp_getDoStatus() == 0x79 &&
                  (checkKandelaarSwingAnime() || mGndPolySpecialCode == dBgW_SPCODE_HEAVY_SNOW || checkCopyRodThrowAnime() ||
                   checkBoomerangThrowAnime()))) &&
                (!checkMagneBootsOn() || dComIfGp_getDoStatus() != 0x79 ||
                 !cBgW_CheckBGround(mMagneBootsTopVec.y)))
            {
                if (mEquipItem == 0x42 && checkModeFlg(4)) {
                    setDoStatus(4);
                } else {
                    setDoStatus(0);
                }
            }

            if (temp_r3 && dComIfGp_getDoStatus() == 0x19) {
                setDoStatus(0);
            }

            if (dComIfGp_getDoStatus() == 4 && checkCopyRodControllAnime()) {
                setDoStatus(0x2A);
            }
        }
    }
}

/* 800B5284-800B58EC 0AFBC4 0668+00 1/1 0/0 0/0 .text            decideDoStatus__9daAlink_cFv */
void daAlink_c::decideDoStatus() {
    if (!checkFmChainGrabAnime()) {
        if (checkNoResetFlg0(FLG0_UNK_1000000)) {
            setDoStatusEmphasys(0x62);
        }

        if (mTargetedActor == NULL && mAttList == NULL && checkResetFlg0(RFLG0_UNK_8)) {
            setWallGrabStatus(0x15, 2);

            if (field_0x2f91 == 7 || field_0x2f91 == 8 || field_0x2f91 == 6 || field_0x2f91 == 9) {
                setDoStatus(0x20);
            }
        } else {
            if (searchFmChainPos()) {
                setChainGrabStatus(0x96);
            } else if (mAttList != NULL) {
                s16 actor_name = fopAcM_GetName(field_0x27f4);

                if (mAttList->mType == 5 ||
                    (mAttList->mType == 6 &&
                     (!checkWolf() || static_cast<daTbox_c*>(field_0x27f4)->checkSmallTbox())))
                {
                    setDoStatus(6);
                } else if (mAttList->mType == 7 && actor_name == PROC_KYTAG05) {
                    setDoStatus(0x89);
                } else if (checkWolf()) {
                    if (mAttList->mType == 4 && !fopAcM_checkCarryNow(field_0x27f4) &&
                        fopAcM_CheckCarryType(field_0x27f4, fopAcM_CARRY_LIGHT))
                    {
                        if (actor_name == PROC_B_MGN) {
                            setDoStatus(0x91);
                        } else if (actor_name == PROC_Obj_Yobikusa) {
                            setDoStatusEmphasys(5);
                        } else if (actor_name == PROC_Obj_Stone) {
                            setDoStatus(0x47);
                        } else if (actor_name == PROC_Obj_Drop || actor_name == PROC_Obj_Sword ||
                                   actor_name == PROC_Obj_SmallKey)
                        {
                            setDoStatusEmphasys(0x39);
                        } else if (!checkGoatCatchActor(field_0x27f4) && !checkGrabLineCheck()) {
                            setDoStatusEmphasys(0xC);
                        }
                    } else if (mTargetedActor != NULL &&
                               fopAcM_GetName(mTargetedActor) == PROC_B_MGN &&
                               mAttention->getActionBtnB() != NULL &&
                               mAttention->getActionBtnB()->mType == 4 &&
                               mAttention->getActionBtnB()->getActor() == mTargetedActor)
                    {
                        setDoStatus(0x91);
                    } else if (mTargetedActor != NULL &&
                               fopAcM_GetName(mTargetedActor) == PROC_E_YM &&
                               mAttention->getActionBtnB() != NULL &&
                               mAttention->getActionBtnB()->mType == 7 &&
                               mAttention->getActionBtnB()->getActor() == mTargetedActor)
                    {
                        onEndResetFlg1(ERFLG1_UNK_100000);
                        if (mWolfEyeUp != 0) {
                            setWolfDigStatus(2);
                        }
                    } else if (mAttList->mType == 7 && field_0x27f4 != NULL) {
                        if (actor_name == PROC_Obj_Digpl || actor_name == PROC_Obj_Digholl ||
                            actor_name == PROC_Obj_DigSnow || actor_name == PROC_Obj_Lv4DigSand ||
                            actor_name == PROC_E_YM)
                        {
                            onEndResetFlg1(ERFLG1_UNK_100000);
                            if (mWolfEyeUp != 0) {
                                setWolfDigStatus(2);
                            }
                        } else if (actor_name == PROC_TAG_HOWL ||
                                   actor_name == PROC_Obj_WindStone ||
                                   actor_name == PROC_Obj_SmWStone ||
                                   actor_name == PROC_Tag_WaraHowl)
                        {
                            setDoStatusEmphasys(5);
                        } else if (actor_name == PROC_KYTAG03) {
                            setDoStatusEmphasys(0x45);
                        }
                    } else if (mTargetedActor != NULL && field_0x27f4 == mTargetedActor &&
                               actor_name == PROC_Obj_Wchain)
                    {
                        setDoStatusEmphasys(0x7B);
                    } else {
                        setTalkStatus();
                    }
                } else if (mAttList->mType == 7) {
                    if ((!checkMagicArmorHeavy() &&
                         (actor_name == PROC_HORSE || actor_name == PROC_E_WB) &&
                         checkReinRideBgCheck()) ||
                        actor_name == PROC_CANOE || actor_name == PROC_Obj_IceLeaf)
                    {
                        setDoStatus(0x17);
                    } else if (actor_name == PROC_COW) {
                        setDoStatus(0x38);
                    } else if (actor_name == PROC_Obj_YIblltray) {
                        setDoStatusEmphasys(0x99);
                    } else if (actor_name == PROC_Tag_Lv6Gate ||
                               (actor_name == PROC_TAG_KMSG &&
                                static_cast<daTag_KMsg_c*>(field_0x27f4)->getType() == 3))
                    {
                        if (!checkEquipAnime() && checkMasterSwordEquip()) {
                            setDoStatus(0x63);
                        }
                    }
                } else if (mTargetedActor != NULL && checkGoatCatchActor(mTargetedActor) &&
                           mAttention->getActionBtnB() != NULL &&
                           mAttention->getActionBtnB()->mType == 4 &&
                           mAttention->getActionBtnB()->getActor() == mTargetedActor)
                {
                    setDoStatus(0x91);
                } else if (mAttList->mType == 4) {
                    if (!fopAcM_checkCarryNow(field_0x27f4)) {
                        if (checkGoatCatchActor(field_0x27f4)) {
                            setDoStatus(0x91);
                        } else if (!checkMagneBootsOn()) {
                            if (checkInsectActorName(field_0x27f4)) {
                                setDoStatusEmphasys(0x98);
                            } else if (actor_name == PROC_Obj_SmallKey) {
                                setDoStatusEmphasys(0x39);
                            } else if (!checkGrabLineCheck()) {
                                if (actor_name == PROC_Obj_Yobikusa) {
                                    setDoStatus(0x2B);
                                } else if (fopAcM_CheckCarryType(field_0x27f4, fopAcM_CARRY_TYPE_8))
                                {
                                    setDoStatusEmphasys(0x34);
                                } else if (actor_name != PROC_B_MGN) {
                                    setDoStatusEmphasys(0x1F);
                                }
                            }
                        }
                    }
                } else {
                    setTalkStatus();
                }
            }
            decideCommonDoStatus();
        }
    }
}

/* 800B58EC-800B5BC0 0B022C 02D4+00 25/25 0/0 0/0 .text            checkWaitAction__9daAlink_cFv */
BOOL daAlink_c::checkWaitAction() {
    if (checkWolf()) {
        if (checkModeFlg(0x01000000)) {
            if (mDemo.getDemoType() == 4) {
                return 0;
            }
            return procWolfWaitInit();
        }

        if (checkNoUpperAnime() && checkRestHPAnime() && shape_angle.y == field_0x2fe6 && (!checkAttentionState() || shape_angle.y == field_0x2fe4)) {
            return procWolfTiredWaitInit();
        }

        return procWolfWaitInit();
    }

    if (checkModeFlg(0x400) && mRideStatus != 0) {
        if (checkCanoeRide()) {
            if (checkGrabAnimeAndThrow()) {
                return procCanoeGrabMoveInit();
            }
            return procCanoeWaitInit(0);
        }

        if (checkBoardRide()) {
            return procBoardWaitInit(NULL);
        }

        if (checkSpinnerRide()) {
            return procSpinnerWaitInit();
        }

        if (checkGrabAnimeAndThrow()) {
            return procHorseGrabMoveInit();
        }

        return procHorseWaitInit();
    }

    if (dComIfGp_checkPlayerStatus1(0, 0x10000)) {
        return procHookshotRoofWaitInit(0, mCargoCarryAcKeep.getActor(), 0);
    }

    if (dComIfGp_checkPlayerStatus1(0, 0x02000000)) {
        return procHookshotWallWaitInit(0, 0, 0);
    }

    if (checkModeFlg(0x40000) && !checkEndResetFlg1(ERFLG1_UNK_100)) {
        return procSwimWaitInit(0);
    }

    if (mSpecialMode == 1) {
        return procSumouReadyInit();
    }

    if (checkGrabAnime()) {
        return procGrabWaitInit();
    }

    if (checkModeFlg(0x01000000) && mDemo.getDemoType() == 4) {
        return 0;
    }

    if (checkRestHPAnime() && !checkPlayerGuardAndAttack() && shape_angle.y == field_0x2fe6 && !checkEndResetFlg0(ERFLG0_UNK_8000000) && !checkUnderMove0BckNoArc(ANM_WAIT_B) && !checkUnderMove0BckNoArc(ANM_WAIT_B_TO_A)) {
        return procTiredWaitInit();
    }

    return procWaitInit();
}

/* 800B5BC0-800B5C34 0B0500 0074+00 3/3 0/0 0/0 .text            setFallVoice__9daAlink_cFv */
void daAlink_c::setFallVoice() {
    if (mFallVoiceInit == 0 && 0.0099999998f * (mFallHeight - current.pos.y) > 20.0f) {
        voiceStart(Z2SE_AL_V_FALL);
        mFallVoiceInit = 1;
    }
}

/* 800B5C34-800B5C64 0B0574 0030+00 2/2 0/0 0/0 .text            setLandPassiveData__9daAlink_cFv */
void daAlink_c::setLandPassiveData() {
    if (field_0x30f0 == 0) {
        if (doTrigger()) {
            field_0x30f0 = 65;
        }
    } else {
        field_0x30f0--;
    }
}

/* 800B5C64-800B5CCC 0B05A4 0068+00 5/5 0/0 0/0 .text            setStepLandVibration__9daAlink_cFv
 */
void daAlink_c::setStepLandVibration() {
    int shock;
    if (checkBootsOrArmorHeavy()) {
        shock = 3;
    } else {
        shock = 1;
    }

    dComIfGp_getVibration().StartShock(shock, 15, cXyz(0.0f, 1.0f, 0.0f));
}

/* 800B5CCC-800B5F6C 0B060C 02A0+00 5/5 0/0 0/0 .text            checkLandAction__9daAlink_cFi */
BOOL daAlink_c::checkLandAction(int param_0) {
    f32 temp_f31 = 0.0099999998f * (mFallHeight - current.pos.y);
    int temp_r3 = getDirectionFromCurrentAngle();
    int temp_r27 = getDirectionFromAngle(current.angle.y - shape_angle.y);
    BOOL var_r29 = field_0x33a8 > 0.8f && temp_r27 != 1 && !checkGrabAnime() &&
                   mProcID != PROC_CUT_HEAD && temp_r3 == DIR_FORWARD;

    if ((param_0 || temp_f31 >= daAlinkHIO_damFall_c0::m.mMinRollHeight) &&
        temp_f31 < daAlinkHIO_damFall_c0::m.mMaxRollHeight && var_r29)
    {
        if (temp_r27 == DIR_FORWARD) {
            procFrontRollInit();
        } else {
            procSideRollInit(temp_r27);
        }
    } else if (checkNoLandDamageSlidePolygon() ||
               temp_f31 < daAlinkHIO_damFall_c0::m.mSmallDmgHeight)
    {
        if (param_0) {
            procLandDamageInit(0);
        } else if (var_r29 && field_0x30f0 > 0x32) {
            if (temp_r27 == DIR_FORWARD) {
                procFrontRollInit();
            } else {
                procSideRollInit(temp_r27);
            }
        } else if (checkInputOnR() && temp_r27 == DIR_FORWARD && temp_r3 == DIR_FORWARD &&
                   mNormalSpeed > 5.0f)
        {
            if (mNormalSpeed > daAlinkHIO_move_c0::m.mMaxSpeed) {
                mNormalSpeed = daAlinkHIO_move_c0::m.mMaxSpeed;
            }
            mNormalSpeed *= 0.6f;
            current.angle.y = shape_angle.y;
            procMoveInit();
            setFootEffectProcType(2);
            field_0x2f9d = 4;
            resetBasAnime();
            seStartMapInfo(0x30001);

            f32 tmp_0 = 0.0f;
            dComIfGp_getVibration().StartShock(1, 15, cXyz(tmp_0, 1.0f, tmp_0));
        } else {
            procLandInit(temp_f31);
        }
    } else {
        int var_r4;
        if (temp_f31 < daAlinkHIO_damFall_c0::m.mBigDmgHeight) {
            var_r4 = 1;
        } else {
            var_r4 = 2;
        }

        procLandDamageInit(var_r4);
    }

    return 1;
}

/* 800B5F6C-800B607C 0B08AC 0110+00 3/3 0/0 0/0 .text            checkSlideAction__9daAlink_cFv */
BOOL daAlink_c::checkSlideAction() {
    cM3dGPla sp28;
    if (getSlidePolygon(&sp28)) {
        s16 var_r29 = sp28.mNormal.atan2sX_Z();
        if (field_0x2f8c != 0) {
            cLib_chaseF(&mNormalSpeed, 0.0f, field_0x3424);
            field_0x3090--;

            if (mNormalSpeed > 5.0f || field_0x3090 > 0) {
                return false;
            }
        }

        if (checkWolf()) {
            return procWolfSlideInit(var_r29, 0);
        } else {
            return procSlideInit(var_r29);
        }
    } else {
        field_0x3090 = 8;
        return false;
    }
}

/* 800B607C-800B69CC 0B09BC 0950+00 2/2 0/0 0/0 .text            checkAutoJumpAction__9daAlink_cFv
 */
BOOL daAlink_c::checkAutoJumpAction() {
    if (checkMagneBootsFly()) {
        return 1;
    }

    if (field_0x2fbd == 0xFF || checkFlyAtnWait()) {
        return 1;
    }

    if ((mProcID == PROC_WOLF_LOCK_ATTACK || mProcID == PROC_WOLF_LOCK_ATTACK_TURN) && mProcVar5.field_0x3012 != 0) {
        return 0;
    }

    if (!checkModeFlg(0x70C12) && mProcID != PROC_DOOR_OPEN && mProcID != PROC_WARP && !getSumouMode() && mDemo.getDemoType() != 5 && !checkMagneBootsOn() && !mLinkAcch.i_ChkGroundHit()) {
        if (checkNoResetFlg0(FLG0_UNDERWATER)) {
            speed.y = 0.0f;
            return procSwimWaitInit(0);
        }

        f32 sp28 = mLinkAcch.GetGroundH() - current.pos.y;
        if (sp28 < l_autoDownHeight) {
            if (checkFmChainGrabAnime()) {
                resetUpperAnime(UPPER_2, -1.0f);
            }

            f32 var_f31 = field_0x35c4.x + (mWindSpeed.x + (speed.x + field_0x3594.x));
            f32 var_f30 = field_0x35c4.z + (mWindSpeed.z + (speed.z + field_0x3594.z));
            BOOL var_r28 = true;

            f32 var_f29 = JMAFastSqrt((var_f31 * var_f31) + (var_f30 * var_f30));
            if (var_f29 < 0.001f) {
                var_f31 = current.pos.x - field_0x3540.x;
                var_f30 = current.pos.z - field_0x3540.z;

                var_f29 = JMAFastSqrt((var_f31 * var_f31) + (var_f30 * var_f30));
                if (var_f29 < 0.001f) {
                    var_r28 = false;
                }
            }

            f32 sp24;
            if (var_r28) {
                s16 temp_r26 = cM_atan2s(var_f31, var_f30);
                f32 temp_f29 = 1.0f / var_f29;
                f32 sp20 = var_f31 * temp_f29;
                f32 sp1C = var_f30 * temp_f29;

                current.pos.y -= speed.y;

                cXyz sp38;
                cXyz sp2C;
                sp38.set(field_0x3798.x - (30.0f * sp20), 100.0f + field_0x3798.y, field_0x3798.z - (30.0f * sp1C));
                mLinkGndChk.SetPos(&sp38);

                cM3dGPla sp58;
                bool var_r27;
                if (dComIfG_Bgsp().GroundCross(&mLinkGndChk) > current.pos.y - 100.0f) {
                    var_r27 = dComIfG_Bgsp().GetTriPla(mLinkGndChk, &sp58);
                } else {
                    var_r27 = false;
                }

                sp38.set(current.pos.x + (30.0f * sp20), current.pos.y - 5.0f, current.pos.z + (30.0f * sp1C));
                sp2C.set(current.pos.x - (100.0f * sp20), sp38.y, current.pos.z - (100.0f * sp1C));

                cM3dGPla sp44;
                bool var_r29;
                if (commonLineCheck(&sp38, &sp2C)) {
                    var_r29 = dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp44);
                } else {
                    var_r29 = false;
                }

                if (var_r29 && !cBgW_CheckBWall(sp44.mNormal.y)) {
                    sp38.y -= 50.0f;
                    sp2C.y -= 50.0f;

                    if (commonLineCheck(&sp38, &sp2C)) {
                        var_r29 = dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp44);
                    } else {
                        var_r29 = false;
                    }
                }

                f32 sp18;
                f32 sp14 = mNormalSpeed;
                f32 sp10;
                if (checkWolf()) {
                    if (checkWolfDashMode()) {
                        sp10 = daAlinkHIO_wlAutoJump_c0::m.field_0x44;
                    } else {
                        sp10 = daAlinkHIO_wlAutoJump_c0::m.field_0x64;
                    }
                    sp18 = 0.0f;
                } else {
                    if (checkIronBallWaitAnime()) {
                        sp10 = 3.0f;
                    } else {
                        sp10 = daAlinkHIO_autoJump_c0::m.mJumpSpeedLimit;
                    }
                    sp18 = 60.0f;
                }

                if (dComIfGs_getLife() != 0 || dComIfGs_checkBottle(FAIRY)) {
                    if (!checkGoronSideMove() && (!checkNotAutoJumpStage() || checkWolf())) {
                        if (field_0x3178 != 3 && !checkEndResetFlg0(ERFLG0_NOT_AUTO_JUMP)) {
                            if (sp14 >= sp10 && (!checkBootsOrArmorHeavy() || checkIronBallWaitAnime()) && (field_0x33a8 > 0.85f || (checkIronBallWaitAnime() && field_0x33ac > 0.85f) || mProcID == PROC_WOLF_GIANT_PUZZLE || checkEndResetFlg0(ERFLG0_FORCE_AUTO_JUMP)) && cLib_distanceAngleS(temp_r26, shape_angle.y) < 0x800) {
                                if (var_r29) {
                                    current.pos.x = mLinkLinChk.i_GetCross().x;
                                    current.pos.z = mLinkLinChk.i_GetCross().z;
                                }

                                if (checkWolf()) {
                                    return procWolfAutoJumpInit(0);
                                }

                                if (!checkGrabAnime() && field_0x3178 == 7) {
                                    return procDiveJumpInit();
                                }

                                return procAutoJumpInit(0);
                            }
                        }

                        if (!checkEndResetFlg0(ERFLG0_NOT_HANG) && mSpecialMode != 0x2B && var_r29 && dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 2 && sp28 < -daAlinkHIO_wallHang_c0::m.field_0x18 && current.pos.y - mWaterY > sp18 && (fabsf(sp44.mNormal.y) <= 0.05f || (sp44.mNormal.y < 0.05f && var_r27 && getWallEdgePos(mLinkLinChk.i_GetCross(), &sp44, &sp58, mLinkLinChk.GetCrossP(), 0)))) {
                            current.pos.x = mLinkLinChk.i_GetCross().x;
                            current.pos.z = mLinkLinChk.i_GetCross().z;

                            if (!checkWolf() && checkClimbCode(mLinkLinChk)) {
                                mPolyInfo1.SetPolyInfo(mLinkLinChk);
                                return procClimbDownStartInit(sp44.mNormal.atan2sX_Z());
                            }

                            if ((checkWolf() && procWolfHangFallStartInit(&sp44)) || (!checkWolf() && procHangFallStartInit(&sp44))) {
                                return 1;
                            }
                        }
                    }
                }

                if (mProcID == PROC_FRONT_ROLL) {
                    sp24 = 0.0f;
                } else {
                    sp24 = daAlinkHIO_autoJump_c0::m.mFallInterpolation;
                }

                f32 spC, sp8;
                if (var_r29) {
                    spC = sp44.mNormal.x;
                    sp8 = sp44.mNormal.z;
                } else {
                    spC = sp20;
                    sp8 = sp1C;
                }

                current.pos.x += field_0x3428 * spC;
                current.pos.z += field_0x3428 * sp8;

                if (checkWolf() && cLib_distanceAngleS(cM_atan2s(spC, sp8), shape_angle.y) >= 0x4000) {
                    current.pos.x -= 75.0f * cM_ssin(shape_angle.y);
                    current.pos.z -= 75.0f * cM_scos(shape_angle.y);
                }
            } else {
                sp24 = daAlinkHIO_autoJump_c0::m.mFallInterpolation;
            }

            if (checkWolf()) {
                return procWolfFallInit(1, daAlinkHIO_wlAutoJump_c0::m.field_0x54);
            } else {
                return procFallInit(1, sp24);
            }
        }
    } else if (checkGrabGlide() && mWindSpeed.y > 10.0f) {
        mLinkAcch.i_ClrGroundHit();
        return procAutoJumpInit(1);
    } else if (checkEndResetFlg0(ERFLG0_UNK_100) && mLinkAcch.i_ChkGroundHit() && !checkWolf()) {
        return procRollJumpInit();
    } else if (checkMagneBootsOn() && !checkNoResetFlg0(FLG0_UNK_2000) && cancelMagneBootsOn()) {
        return procFallInit(1, 5.0f);
    }

    return 0;
}

/* 800B69CC-800B6A30 0B130C 0064+00 2/2 0/0 0/0 .text            checkCutJumpInFly__9daAlink_cFv */
BOOL daAlink_c::checkCutJumpInFly() {
    if ((mEquipItem == EQUIP_SWORD && checkResetFlg0(RFLG0_UNK_80)) || checkForceSwordSwing()) {
        return procCutJumpInit(1);
    }
    return false;
}

/* 80450698-8045069C 000118 0004+00 4/4 0/0 0/0 .sdata           l_ladderAnmBaseTransY */
SECTION_SDATA static f32 l_ladderAnmBaseTransY = 102.00054168701172f;

/* 800B6A30-800B6F28 0B1370 04F8+00 16/16 0/0 0/0 .text checkFrontWallTypeAction__9daAlink_cFv */
BOOL daAlink_c::checkFrontWallTypeAction() {
    setFrontWallType();

    s16 var_r27 = field_0x3078;
    field_0x3078 = 0;

    if (!checkInputOnR() && !checkModeFlg(2)) {
        return 0;
    }

    if (checkModeFlg(2)) {
        if (field_0x2f91 == 10) {
            dComIfGp_getVibration().StartShock(2, 1, cXyz(0.0f, 1.0f, 0.0f));

            if (checkWolf()) {
                return procWolfHangWallCatchInit(8);
            } else {
                return procHangStartInit();
            }
        } else if (field_0x2f91 == 11) {
            dComIfGp_getVibration().StartShock(2, 1, cXyz(0.0f, 1.0f, 0.0f));
            return procHangWallCatchInit();
        }

        if (!checkWolf()) {
            if (field_0x2f91 == 3) {
                shape_angle.y = field_0x306e + 0x8000;
                dComIfGp_getVibration().StartShock(2, 1, cXyz(0.0f, 1.0f, 0.0f));
                return setClimbStartNotGround();
            } else if (field_0x2f91 == 4) {
                int var_r28 = getLadderUnitCount() - 1;
                if (var_r28 < 1) {
                    return 0;
                }

                setLadderPos(var_r28);
                deleteEquipItem(TRUE, FALSE);
                dComIfGp_getVibration().StartShock(2, 1, cXyz(0.0f, 1.0f, 0.0f));

                field_0x33b0 = l_ladderAnmBaseTransY;

                if (current.pos.y > field_0x33c0 - 150.0f) {
                    current.pos.y = field_0x33c0 - 150.0f;
                    procLadderUpEndInit(1);
                } else {
                    procLadderMoveInit(1, 0, &current.pos);
                    mUnderFrameCtrl[0].setRate(0.0f);
                }

                field_0x2060->initOldFrameMorf(5.0f, 0, 0x23);
                return 1;
            }
        }
    } else if (!checkResetFlg0(RFLG0_UNK_8)) {
        if (!checkWolf()) {
            if (checkNoResetFlg3(FLG3_UNK_400000) && abs((s16)(field_0x2fe2 - field_0x306e)) < 0x7800) {
                return 0;
            }

            if (field_0x2f91 == 3) {
                return setClimbInit();
            }

            if (field_0x2f91 == 4) {
                return setLadderInit();
            }

            if (field_0x2f91 == 5) {
                daTag_Lantern_c* tag = NULL;
                if (fopAcM_GetRoomNo(this) == 4 && checkStageName("R_SP01")) {
                    tag = (daTag_Lantern_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchTagKandelaar, NULL);
                }

                if (tag == NULL || tag->chkClimbDownLadderStatus()) {
                    return procLadderDownStartInit();
                }

                onNoResetFlg3(FLG3_UNK_400000);
                return procWaitInit();
            }
        } else if (!checkModeFlg(2) && getDirectionFromShapeAngle() != DIR_FORWARD) {
            return 0;
        }

        field_0x3078 = var_r27 + 1;

        if (field_0x2f91 == 6) {
            if (field_0x3078 > daAlinkHIO_wallHang_c0::m.field_0x0) {
                if (checkWolf()) {
                    return procWolfStepMoveInit();
                } else {
                    return procStepMoveInit();
                }
            }
        } else if (field_0x2f91 == 7 || field_0x2f91 == 8 || field_0x2f91 == 9) {
            if (field_0x3078 > daAlinkHIO_wallHang_c0::m.field_0x2) {
                if (checkWolf()) {
                    if (field_0x2f91 == 7 || field_0x2f91 == 8) {
                        if (checkModeFlg(0x40000)) {
                            return procWolfHangWallCatchInit(7);
                        } else {
                            return procWolfHangReadyInit();
                        }
                    }
                } else {
                    if (field_0x2f91 == 7) {
                        return procHangWallCatchInit();
                    } else {
                        return procHangReadyInit();
                    }
                }
            }
        } else {
            field_0x3078 = 0;
        }
    }

    return 0;
}

/* 800B6F28-800B7090 0B1868 0168+00 3/3 0/0 0/0 .text checkItemActionInitStart__9daAlink_cFv */
int daAlink_c::checkItemActionInitStart() {
    if (checkBowAndSlingItem(mEquipItem)) {
        return checkNextActionBow(); 
    } else if (mEquipItem == BOOMERANG) {
        return checkNextActionBoomerang();
    } else if (mEquipItem == COPY_ROD) {
        if (mCopyRodAcKeep.getActor() == NULL) {
            return checkNextActionCopyRod();
        }

        if (checkCopyRodControllAnime() || mProcID == PROC_COPY_ROD_SWING) {
            return procCopyRodSwingInit();
        }
    } else if (checkFishingRodItem(mEquipItem)) {
        onResetFlg1(RFLG1_UNK_80);
        return 1;
    } else if (mEquipItem == IRONBALL) {
        if (!checkIronBallAnime()) {
            return checkNextActionIronBall();
        }
    } else if (mEquipItem == EMPTY_BOTTLE) {
        return procBottleSwingInit(NULL, 0);
    } else if (mEquipItem == KANTERA) {
        if (!checkModeFlg(0x400)) {
            return procKandelaarSwingInit();
        }
    } else if (checkHookshotItem(mEquipItem) && !checkHookshotAnime()) {
        return checkNextActionHookshot();
    }

    return -1;
}

/* 800B7090-800B7168 0B19D0 00D8+00 1/1 0/0 0/0 .text checkItemChangeAutoAction__9daAlink_cFv */
int daAlink_c::checkItemChangeAutoAction() {
    if (checkResetFlg0(RFLG0_UNK_80)) {
        if (mEquipItem == EQUIP_SWORD) {
            if (checkModeFlg(0x40000)) {
                return 0;
            }

            resetUpperAnime(UPPER_2, -1.0f);

            if (checkBoardRide()) {
                return checkBoardSwordTriggerAction();
            } else if (checkReinRide()) {
                return procHorseCutChargeReadyInit();
            }

            return procCutTurnChargeInit();
        }

        int ivar2 = checkItemActionInitStart();
        if (ivar2 != -1) {
            return ivar2;
        }
    }

    return 0;
}

/* 800B7168-800B7190 0B1AA8 0028+00 7/7 0/0 0/0 .text            setFastShotTimer__9daAlink_cFv */
void daAlink_c::setFastShotTimer() {
    if (!dComIfGp_checkPlayerStatus0(0, 0x2000)) {
        mFastShotTime = daAlinkHIO_item_c0::m.mItemFPTransitionTimer;
    }
}

/* 800B7190-800B71EC 0B1AD0 005C+00 9/9 0/0 0/0 .text            cancelItemUseQuake__9daAlink_cFi */
void daAlink_c::cancelItemUseQuake(int param_0) {
    if (checkNoResetFlg3(FLG3_UNK_4) && (param_0 != 0 || mProcID != PROC_HOOKSHOT_FLY)) {
        offNoResetFlg3(FLG3_UNK_4);
        dComIfGp_getVibration().StopQuake(31);
    }
}

/* 800B71EC-800B72E4 0B1B2C 00F8+00 6/6 0/0 0/0 .text cancelUpperItemReadyAnime__9daAlink_cFi */
int daAlink_c::cancelUpperItemReadyAnime(int param_0) {
    if ((dComIfGp_getDoStatus() == 0x12 || param_0 != 0) &&
        ((param_0 == 0 && doTrigger()) ||
         (checkCanoeSlider() &&
          (subjectCancelTrigger() || checkEndResetFlg1(ERFLG1_UNK_20000000)))))
    {
        seStartSystem(0x6F);

        if (mEquipItem == IRONBALL) {
            mItemVar0.field_0x3018 = 8;
            procIronBallReturnInit();
        } else {
            resetUpperAnime(UPPER_2, 3.0f);
            checkWaitAction();
        }

        return 1;
    }

    return 0;
}

/* 800B72E4-800B7390 0B1C24 00AC+00 8/8 0/0 0/0 .text            checkItemActorPointer__9daAlink_cFv
 */
BOOL daAlink_c::checkItemActorPointer() {
    if (mItemAcKeep.getActor() != NULL) {
        return true;
    }

    mItemAcKeep.clearData();
    resetUpperAnime(UPPER_2, -1.0f);
    mEquipItem = NO_ITEM;

    if (checkModeFlg(MODE_RIDING)) {
        if (checkCanoeRide()) {
            procCanoeWaitInit(0);
        } else {
            procHorseWaitInit();
        }
    } else {
        procWaitInit();
    }

    return false;
}

/* 800B7390-800B74B4 0B1CD0 0124+00 2/2 0/0 0/0 .text            checkSwordTwirlAction__9daAlink_cFv
 */
bool daAlink_c::checkSwordTwirlAction() {
    daPy_frameCtrl_c* frame_ctrl = &mUpperFrameCtrl[2];

    if (checkSwordTwirlAnime()) {
        if (checkAnmEnd(frame_ctrl)) {
            resetUpperAnime(UPPER_2, 3.0f);
        } else if (frame_ctrl->getFrame() >= 7.0f || frame_ctrl->getFrame() < 11.0f) {
            field_0x2f96 = 0xFE;
        } else {
            field_0x2f96 = 0xFF;
        }
    } else {
        if (checkEnemyGroup(mTargetedActor) && mEquipItem == 0x103 && field_0x2f98 != 1 && checkNoUpperAnime() && cM_rnd() < 0.012f) {
            u16 anm;
            if (field_0x2f98 == 2) {
                anm = 0x3F;
            } else {
                anm = 0x40;
            }

            setUpperAnimeBaseSpeed(anm, daAlinkHIO_atnMove_c0::m.mWaitAnmSpeed, 3.0f);
            seStartSwordCut(Z2SE_AL_WAIT_SWORD_SWING);
        }
    }

    return true;
}

/* 800B74B4-800B7528 0B1DF4 0074+00 3/3 0/0 0/0 .text checkUpperItemActionFly__9daAlink_cFv */
BOOL daAlink_c::checkUpperItemActionFly() {
    if (checkBowAndSlingItem(mEquipItem)) {
        checkUpperItemActionBowFly();
    } else if (mEquipItem == BOOMERANG) {
        checkUpperItemActionBoomerangFly();
    } else if (mEquipItem == COPY_ROD) {
        checkUpperItemActionCopyRodFly();
    }

    return checkCanoeJumpRide();
}

/* 800B7528-800B75EC 0B1E68 00C4+00 1/1 0/0 0/0 .text            checkItemButtonChange__9daAlink_cFv
 */
void daAlink_c::checkItemButtonChange() {
    if (mProcID != PROC_CANOE_PADDLE_PUT && mEquipItem != NO_ITEM && !checkEquipAnime()) {
        u8 temp_r0;
        for (u8 i = 0; i < 2; i++) {
            temp_r0 = (i + 1) % 2;
            if (mEquipItem == dComIfGp_getSelectItem(i) &&
                (mEquipItem != dComIfGp_getSelectItem(temp_r0) || mSelectItemId != temp_r0))
            {
                mSelectItemId = i;
            }
        }
    }
}

/* 800B75EC-800B7B7C 0B1F2C 0590+00 1/1 0/0 0/0 .text            checkUpperItemAction__9daAlink_cFv
 */
BOOL daAlink_c::checkUpperItemAction() {
    if (checkNoUpperAnime()) {
        if (checkModeFlg(0x1000)) {
            if (mEquipItem == IRONBALL) {
                setIronBallWaitUpperAnime(0);
            } else if (mEquipItem == COPY_ROD) {
                setCopyRodControllAnime();
            }
        }

        return false;
    }

    if (checkFmChainGrabAnime()) {
        if (field_0x2fa3 == 0) {
            resetUpperAnime(UPPER_2, 3.0f);
        } else {
            if (checkEndResetFlg1(ERFLG1_UNK_1000000) && !checkWolf()) {
                return procFmChainStrongPullInit();
            }

            if (!wallGrabButton()) {
                resetUpperAnime(UPPER_2, 3.0f);

                if (checkWolf()) {
                    return procWolfWaitInit();
                } else {
                    return procWaitInit();
                }
            }

            setChainGrabStatus(0x96);

            if ((!checkWolf() && (checkUnderMove0BckNoArc(ANM_CHAIN_PULL) || checkUnderMove0BckNoArc(ANM_CHAIN_PULL_END))) || (checkWolf() && (checkUnderMove0BckNoArcWolf(WANM_CHAIN_PULL) || checkUnderMove0BckNoArcWolf(WANM_CHAIN_PULL_END)))) {
                mNowAnmPackUpper[2].setRatio(0.0f);
            } else {
                mNowAnmPackUpper[2].setRatio(1.0f);
            }
        }
    } else if (checkWolf()) {
        if (checkWolfGrabAnime()) {
            if (!notTalk() && orderZTalk()) {
                return true;
            }

            if (mGrabItemAcKeep.getActor() == NULL) {
                return false;
            }

            u8 btn_status;
            if (field_0x33a8 > getGrabThrowRate() || checkAttentionLock()) {
                btn_status = 0x13;
            } else {
                btn_status = 0x14;
            }

            setBStatus(btn_status);
            setDoStatus(btn_status);

            if ((btn_status == dComIfGp_getDoStatus() && doTrigger()) || (btn_status == getBStatus() && swordTrigger())) {
                if (btn_status == 0x13) {
                    return procWolfGrabThrowInit();
                }
                return procWolfGrabPutInit();
            }
        }
    } else if (checkDkCaught2Anime()) {
        if (checkCaughtEscapeCutTurn()) {
            return true;
        }

        field_0x30f6--;

        if (swordTrigger() || doTrigger()) {
            field_0x30f6 -= daAlinkHIO_damCaught_c0::m.field_0x16;
        }

        if (checkInputOnR() && abs((s16)(mStickAngle - mPrevStickAngle)) > 0x1000) {
            field_0x30f6 -= daAlinkHIO_damCaught_c0::m.field_0x16;
        }

        if (field_0x30f6 < 0 || !checkNoResetFlg0(FLG0_UNK_20000)) {
            voiceStart(Z2SE_AL_V_ZENTEN_FAIL_2);

            if (mLinkAcch.i_ChkGroundHit()) {
                return procStEscapeInit();
            }
            resetUpperAnime(UPPER_2, 3.0f);
        } else {
            voiceStartLevel(Z2SE_AL_V_BITTEN_LOOP);
        }
    } else if (checkBowAnime()) {
        if (checkUpperItemActionBow()) {
            return true;
        }
    } else if (checkGrabAnime()) {
        if (checkNextActionGrab()) {
            return true;
        }
    } else if (checkBoomerangReadyAnime()) {
        if (checkUpperItemActionBoomerang()) {
            return true;
        }
    } else if (checkCopyRodReadyAnime()) {
        if (checkUpperItemActionCopyRod()) {
            return true;
        }
    } else if (checkHookshotAnime()) {
        if (checkUpperItemActionHookshot()) {
            return true;
        }
    } else if (checkIronBallAnime()) {
        if (checkUpperItemActionIronBall()) {
            return true;
        }
    } else if (mEquipItem == IRONBALL) {
        setIronBallWaitUpperAnime(0);
    } else if (mEquipItem == COPY_ROD) {
        setCopyRodControllAnime();
    }

    return false;
}

/* 800B7B7C-800B7BF8 0B24BC 007C+00 1/1 0/0 0/0 .text            orderPeep__9daAlink_cFv */
void daAlink_c::orderPeep() {
    mPeepExitID = ((kytag05_class*)field_0x27f4)->getSceneListID();
    field_0x2ff2 = 20;
    fopAcM_orderOtherEvent(this, field_0x27f4, l_peepEventName, 0xFFFF, 1, 0);
    if (checkWolf()) {
        procWolfWaitInit();
    } else {
        procWaitInit();
    }
}

/* 804532B0-804532B4 0018B0 0004+00 1/1 0/0 0/0 .sdata2          itemTalkType$67468 */
static const u16 itemTalkType[2] = {6, 7};

/* 800B7BF8-800B7D4C 0B2538 0154+00 13/13 0/0 0/0 .text            orderTalk__9daAlink_cFi */
int daAlink_c::orderTalk(int i_checkZTalk) {
    if (notTalk()) {
        return 0;
    }

    if ((dComIfGp_getDoStatus() == 0x1C || dComIfGp_getDoStatus() == 0x1B ||
         dComIfGp_getDoStatus() == 0x80 || dComIfGp_getDoStatus() == 0x3B ||
         dComIfGp_getDoStatus() == 0x3C || dComIfGp_getDoStatus() == 0x8) &&
        talkTrigger())
    {
        fopAcM_orderTalkEvent(this, field_0x27f4, 0, 0);
        return 1;
    }

    if (!checkWolf() && checkRequestTalkActor(mAttList2, field_0x27f8)) {
        for (int i = 0; i < 2; i++) {
            u8 item = dComIfGp_getSelectItem(i);

            // check if pressed X or Y and if item on button is a trade item
            if (checkTradeItem(item) && itemTriggerCheck(1 << i)) {
                fopAcM_orderTalkItemBtnEvent(itemTalkType[i], this, field_0x27f8, 0, 0);
                return 1;
            }
        }
    }

    if (i_checkZTalk) {
        return orderZTalk();
    }

    return 0;
}

/* 800B7D4C-800B7F84 0B268C 0238+00 1/1 0/0 0/0 .text daAlink_searchBouDoor__FP10fopAc_ac_cPv */
static void* daAlink_searchBouDoor(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetName(i_actor) == PROC_NPC_BOU && ((daNpc_Bou_c*)i_actor)->speakTo()) {
        return i_actor;
    }

    return NULL;
}

/* 800B7F84-800B80C4 0B28C4 0140+00 1/1 0/0 0/0 .text daAlink_searchKolin__FP10fopAc_ac_cPv */
static void* daAlink_searchKolin(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetName(i_actor) == PROC_NPC_KOLIN && ((daNpc_Kolin_c*)i_actor)->orderNoRideEvt()) {
        return i_actor;
    }

    return NULL;
}

/* 800B80C4-800B8374 0B2A04 02B0+00 2/2 0/0 0/0 .text            orderZTalk__9daAlink_cFv */
int daAlink_c::orderZTalk() {
    if ((!checkReinRide() && !checkModeFlg(0x40000) && !checkMagneBootsOn() && (!mLinkAcch.i_ChkGroundHit() || checkModeFlg(0x70C52))) || mThrowBoomerangAcKeep.getActor() != NULL || dComIfGp_checkPlayerStatus0(0, 0x8000000) || mProcID == PROC_CRAWL_END || checkHorseZelda() || checkCloudSea() || checkStageName("D_MN08A") || (checkStageName("D_MN09A") && ((fopAcM_GetRoomNo(this) == 50 && dComIfG_play_c::getLayerNo(0) == 0) || fopAcM_GetRoomNo(this) == 51)) || (checkMagneBootsOn() && (!checkStageName("D_MN04B") || !cBgW_CheckBGround(mMagneBootsTopVec.y))) || dComIfGs_isEventBit(0x6140)) {
        return 0;
    }

    if (checkMidnaRide()) {
        fopAc_ac_c* zhint = dComIfGp_att_getZHint();
        if (zhint != NULL) {
            setMidnaTalkStatus(8);
        }

        dMeter2Info_onUseButton(0x800);

        if (midnaTalkTrigger()
#ifdef DEBUG
            && (!mDoCPd_c::getHoldL(PAD_1) || !mDoCPd_c::getHoldR(PAD_1))
#endif
           )
        {
            if (zhint != NULL) {
                if (fopAcM_GetName(zhint) == PROC_Tag_Mhint && ((daTagMhint_c*)zhint)->checkEventID()) {
                    fopAcM_orderOtherEventId(zhint, ((daTagMhint_c*)zhint)->getEventID(), ((daTagMhint_c*)zhint)->getToolEventID(), 0xFFFF, 0, 1);
                } else {
                    fopAcM_orderTalkEvent(this, zhint, 0, 0);
                }
            } else {
                if (mMidnaMsg != NULL) {
                    dComIfGp_setMesgCameraInfoActor(mMidnaMsg, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
                }

                fopAcM_orderTalkEvent(this, getMidnaActor(), 0, 0);
            }

            field_0x35a0 = field_0x3594;
            return 1;
        }
    }

    return 0;
}

/* 800B8374-800B8930 0B2CB4 05BC+00 1/1 0/0 0/0 .text            checkNormalAction__9daAlink_cFv */
int daAlink_c::checkNormalAction() {
    int wall_grab_status = getWallGrabStatus();

    if (wallGrabTrigger()) {
        if (wall_grab_status == 0x15) {
            return procCoPushPullWaitInit(1);
        }

        if (wall_grab_status == 0x96 && searchFmChainPos()) {
            if (checkWolf()) {
                return procWolfChainUpInit();
            } else {
                return procFmChainUpInit();
            }
        }
    }

    if (orderTalk(1)) {
        return 1;
    }

    if (doTrigger()) {
        if (dComIfGp_getDoStatus() == 0x89) {
            orderPeep();
            return 1;
        }

        if (dComIfGp_getDoStatus() == 7) {
            if (checkWolf()) {
                return procWolfLieStartInit(1);
            } else {
                return procCrawlStartInit();
            }
        }

        if (dComIfGp_getDoStatus() == 12) {
            return procWolfGrabUpInit();
        }

        if (dComIfGp_getDoStatus() == 0x7B) {
            return procWolfChainReadyInit();
        }

        if (dComIfGp_getDoStatus() == 0x47) {
            return procWolfPushInit();
        }

        if (dComIfGp_getDoStatus() == 0x17) {
            if (fopAcM_GetName(field_0x27f4) == PROC_Obj_IceLeaf) {
                return procBoardRideInit();
            }

            if (fopAcM_GetName(field_0x27f4) == PROC_CANOE) {
                if (checkModeFlg(0x40000)) {
                    return procCanoeRideInit();
                } else {
                    return procSmallJumpInit(1);
                }
            }

            if (checkStageName("F_SP103") &&
                fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchKolin, NULL))
            {
                return procWaitInit();
            } else {
                return procHorseRideInit();
            }
        }

        if (dComIfGp_getDoStatus() == 0x20) {
            if (checkWolf()) {
                return procWolfHangReadyInit();
            } else {
                if (field_0x2f91 == 7) {
                    return procHangWallCatchInit();
                } else {
                    return procHangReadyInit();
                }
            }
        }

        if (dComIfGp_getDoStatus() == 6) {
            if (mAttList->mType == 5) {
                if (!checkStageName("F_SP103") ||
                    !fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchBouDoor, NULL))
                {
                    fopAcM_orderDoorEvent(this, field_0x27f4, 0, 0);
                }
                checkWaitAction();
            } else {
                fopAcM_orderTreasureEvent(this, field_0x27f4, 0, 0);
            }

            return 1;
        }

        if (dComIfGp_getDoStatus() == 0x2B) {
            return procGrassWhistleGetInit();
        }

        if (dComIfGp_getDoStatus() == 0x38) {
            return procGoatStrokeInit();
        }

        if (dComIfGp_getDoStatus() == 0x63) {
            if (fopAcM_GetName(field_0x27f4) == PROC_Tag_Lv6Gate) {
                static_cast<daTagLv6Gate_c*>(field_0x27f4)->stabMasterSword();
            } else {
                static_cast<daTag_KMsg_c*>(field_0x27f4)->stabMasterSword();
            }

            procWaitInit();
            return 1;
        }

        if (dComIfGp_getDoStatus() == 0x91) {
            onNoResetFlg0(FLG0_UNK_10000000);

            if (field_0x27f4->current.pos.abs2XZ(current.pos) < getGoatCatchDistance2()) {
                if (checkWolf()) {
                    return procWolfGanonCatchInit();
                } else {
                    return procGoatCatchInit(field_0x27f4, 0.0f);
                }
            }
        } else if (dComIfGp_getDoStatus() == 0x98) {
            return procInsectCatchInit();
        } else if (dComIfGp_getDoStatus() == 0x1F || dComIfGp_getDoStatus() == 0x39 ||
                   dComIfGp_getDoStatus() == 0x34)
        {
            if (checkWolf()) {
                return procWolfGrabUpInit();
            } else {
                if (fopAcM_CheckCarryType(field_0x27f4, fopAcM_CARRY_ITEM)) {
                    return procPickUpInit();
                } else {
                    return procGrabReadyInit();
                }
            }
        } else if (dComIfGp_getDoStatus() == 0x99) {
            return procHangLeverDownInit();
        } else if (dComIfGp_getDoStatus() == 0x30) {
            if (checkWolf()) {
                return procWolfDownAttackInit();
            } else {
                return checkDoCutAction();
            }
        } else if (dComIfGp_getDoStatus() == 0x77) {
            if (checkWolf()) {
                return procWolfJumpAttackInit(1);
            } else {
                return checkDoCutAction();
            }
        } else if (dComIfGp_getDoStatus() == 0x8B) {
            return procWolfJumpAttackInit(1);
        } else if (dComIfGp_getDoStatus() == 0x62) {
            changeCutFast();
            return 1;
        } else if (dComIfGp_getDoStatus() == 0x86) {
            return checkDoCutAction();
        } else if (dComIfGp_getDoStatus() == 5) {
            return procWolfHowlDemoInit();
        } else if (dComIfGp_getDoStatus() == 0x45) {
            return procWolfGetSmellInit();
        } else if (dComIfGp_getDoStatus() == 0x93) {
            return procWolfTagJumpInit(field_0x27f4);
        }
    } else if (checkNoResetFlg0(FLG0_UNK_10000000) && dComIfGp_getDoStatus() == 0x91) {
        if (field_0x27f4->current.pos.abs2XZ(current.pos) < getGoatCatchDistance2()) {
            if (checkWolf()) {
                return procWolfGanonCatchInit();
            } else {
                return procGoatCatchInit(field_0x27f4, 0.0f);
            }
        }
    }

    return 0;
}

u16 daAlink_c::getReadyItem() {
    return dComIfGp_getSelectItem(mSelectItemId);
}

/* 800B8930-800B8988 0B3270 0058+00 11/11 0/0 0/0 .text            checkReadyItem__9daAlink_cFv */
bool daAlink_c::checkReadyItem() {
    if (mEquipItem == NO_ITEM) {
        return false;
    }

    return getReadyItem() == mEquipItem;
}

/* 800B8988-800B9010 0B32C8 0688+00 2/2 0/0 0/0 .text            checkItemAction__9daAlink_cFv */
BOOL daAlink_c::checkItemAction() {
    if (checkEquipAnime() || checkKandelaarSwingAnime() || checkCopyRodThrowAnime() || checkBoomerangThrowAnime()) {
        return false;
    }

    if (checkWolf()) {
        if (checkResetFlg0(RFLG0_UNK_40)) {
            return procWolfRollAttackChargeInit();
        }

        if (checkCutTurnInputTrigger()) {
            return procWolfRollAttackInit(2, 0);
        }

        if (swordSwingTrigger() || checkComboReserb()) {
            if (mComboCutCount == 0) {
                return procWolfRollAttackChargeInit();
            }

            return checkWolfAttackAction();
        }

        if ((checkEndResetFlg1(ERFLG1_UNK_100000) || mTargetedActor == NULL) && wolfClawTrigger()) {
            if (checkEndResetFlg1(ERFLG1_UNK_100000) && field_0x27f4 != NULL && fopAcM_GetName(field_0x27f4) == PROC_Obj_Digholl) {
                return procWolfDigThroughInit(0);
            }

            return procWolfDigInit();
        }
    } else {
        if (mEquipItem == 0x103) {
            daPy_frameCtrl_c* frame_ctrl = &mUpperFrameCtrl[2];

            if ((checkUpperAnime(0x80) && frame_ctrl->getFrame() <= daAlinkHIO_cutDaL_c0::m.mCutAnm.mCheckFrame) ||
                (checkUpperAnime(0x81) && frame_ctrl->getFrame() <= daAlinkHIO_cutDaR_c0::m.mCutAnm.mCheckFrame) ||
                (checkUpperAnime(0x82) && frame_ctrl->getFrame() <= daAlinkHIO_cutDaCharge_c0::m.mCutAnm.mCheckFrame) ||
                checkModeFlg(0x40000))
            {
                return false;
            }

            if (checkNoResetFlg2(FLG2_UNK_4) && !checkCutDashAnime()) {
                offNoResetFlg2(FLG2_UNK_4);
            }

            if (checkResetFlg0(RFLG0_UNK_40)) {
                offNoResetFlg2(FLG2_UNK_4);

                if (checkBoardRide()) {
                    return checkBoardSwordTriggerAction();
                }

                if (checkReinRide()) {
                    return procHorseCutChargeReadyInit();
                }

                return procCutTurnChargeInit();
            }

            if (checkNoResetFlg2(FLG2_UNK_4)) {
                offNoResetFlg2(FLG2_UNK_4);
                setUpperAnimeBase(0x83);
                return true;
            }

            if (checkCutTurnInputTrigger()) {
                if (checkBoardRide()) {
                    return procBoardCutTurnInit();
                }

                if (checkReinRide()) {
                    return procHorseCutTurnInit();
                }

                return procCutTurnInit(1, 2);
            }

            if (swordSwingTrigger() || checkComboReserb()) {
                if (checkNoResetFlg2(FLG2_UNK_2)) {
                    clearComboReserb();

                    if (checkBoardRide()) {
                        return procBoardCutInit();
                    }

                    if (checkDashAnime()) {
                        setCutDash(0, 0);
                        return true;
                    }

                    return checkCutAction();
                }

                if (mComboCutCount == 0) {
                    if (checkBoardRide()) {
                        return checkBoardSwordTriggerAction();
                    }

                    if (checkReinRide()) {
                        return procHorseCutChargeReadyInit();
                    }

                    return procCutTurnChargeInit();
                }
                
                return checkCutAction();
            }
        } else if (checkFishingRodItem(mEquipItem) && mLinkAcch.i_ChkGroundHit()) {
            if (checkNoResetFlg2(FLG2_UNK_20000000)) {
                return procFishingCastInit();
            }
        } else if (mEquipItem == 0x102) {
            if (doTrigger()) {
                if (dComIfGp_getDoStatus() == 0x13) {
                    setThrowBoomerangAnime();
                    return true;
                }

                if (dComIfGp_getDoStatus() == 0x14) {
                    return procPickPutInit(0);
                }
            }
        } else if (doTrigger() && dComIfGp_getDoStatus() == 0x2A && mCopyRodAcKeep.getActor() != NULL) {
            ((daCrod_c*)mCopyRodAcKeep.getActor())->offControll();
            resetUpperAnime(UPPER_2, 3.0f);
            return true;
        }

        if (!checkFishingRodItem(mEquipItem) || !(mWaterY - current.pos.y > 70.0f)) {
            onResetFlg1(RFLG1_UNK_200);

            if (checkReadyItem() && (itemTrigger() || (checkBoomerangCatchAnime() && itemButton()))) {
                int var_r28 = checkItemActionInitStart();
                if (var_r28 != -1) {
                    return var_r28;
                }
            }
        }

        if (((dComIfGs_isEventBit(0x2908) || checkNoResetFlg3(FLG3_UNK_8)) && checkGuardActionChange() && !checkUpperReadyThrowAnime() && !checkModeFlg(0x70C52) && i_checkShieldGet() && !checkNotBattleStage()) && ((mLinkAcch.i_ChkGroundHit() || checkMagneBootsOn()) && dComIfGp_getRStatus() == 0)) {
            setRStatus(0x3A);

            if (spActionTrigger()) {
                return procGuardAttackInit();
            }
        }
    }

    return false;
}

/* 800B9010-800B9018 0B3950 0008+00 1/1 0/0 0/0 .text            checkRAction__9daAlink_cFv */
BOOL daAlink_c::checkRAction() {
    return false;
}

/* 800B9018-800B9148 0B3958 0130+00 1/1 0/0 0/0 .text            checkMoveDoAction__9daAlink_cFv */
BOOL daAlink_c::checkMoveDoAction() {
    if (doTrigger()) {
        if (dComIfGp_getDoStatus() == 0x19) {
            if (checkWolf()) {
                return procWolfSideStepInit(0);
            }

            int direction = getDirectionFromShapeAngle();
            if (field_0x2fb0 != 0 && direction != DIR_BACKWARD && checkSideRollAction(direction)) {
                return true;
            }

            return procSideStepInit(direction);
        }

        if (dComIfGp_getDoStatus() == 0x79) {
            if (!checkAttentionLock() && checkInputOnR()) {
                shape_angle.y = field_0x2fe2;
            }

            return procFrontRollInit();
        }

        if (dComIfGp_getDoStatus() == 0x9) {
            return procWolfDashInit();
        }
    }

    return false;
}

/* 800B9148-800B9254 0B3A88 010C+00 3/3 0/0 0/0 .text            checkSideRollAction__9daAlink_cFi
 */
BOOL daAlink_c::checkSideRollAction(int param_0) {
    if (checkNotJumpSinkLimit() || checkHeavyStateOn(1, 1) || !checkInputOnR() ||
        !checkCutBackState())
    {
        return false;
    }

    if (mTargetedActor == NULL) {
        return procSideRollInit(param_0);
    }

    if (checkEnemyGroup(mTargetedActor) &&
        mTargetedActor->current.pos.abs2XZ(current.pos) < 250000.0f)
    {
        return procSideRollInit(param_0);
    }
    
    return procTurnMoveInit(param_0);
}

/* 800B9254-800B92D0 0B3B94 007C+00 35/35 0/0 0/0 .text            checkNoUpperAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkNoUpperAnime() const {
    return checkNoSetUpperAnime() || checkSwimMoveHandAnime() || checkWindDashAnime() ||
           checkSwordTwirlAnime() || checkKandelaarEquipAnime();
}

/* 800B92D0-800B92F8 0B3C10 0028+00 1/1 0/0 0/0 .text checkOneHandItemEquipAnime__9daAlink_cCFv */
BOOL daAlink_c::checkOneHandItemEquipAnime() const {
    return checkUpperAnime(0x247) || checkUpperAnime(0x248);
}

/* 800B92F8-800B9340 0B3C38 0048+00 1/1 0/0 0/0 .text            checkItemEquipAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkItemEquipAnime() const {
    return checkTwoHandItemEquipAnime() || checkOneHandItemEquipAnime();
}

/* 800B9340-800B9398 0B3C80 0058+00 30/30 0/0 1/1 .text            checkEquipAnime__9daAlink_cCFv */
BOOL daAlink_c::checkEquipAnime() const {
    return checkSwordEquipAnime() || checkItemEquipAnime();
}

/* 800B9398-800B93CC 0B3CD8 0034+00 4/4 0/0 0/0 .text            checkWindDashAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkWindDashAnime() const {
    return checkUpperAnime(0x2B7) || (checkUpperAnime(0xCE) && mProcID != PROC_SLIDE);
}

/* 800B93CC-800B93F4 0B3D0C 0028+00 4/4 0/0 0/0 .text            checkSwordTwirlAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkSwordTwirlAnime() const {
    return checkUpperAnime(0x40) || checkUpperAnime(0x3F);
}

/* 800B93F4-800B9580 0B3D34 018C+00 7/7 0/0 0/0 .text            swordEquip__9daAlink_cFi */
void daAlink_c::swordEquip(int param_0) {
    if (i_checkSwordGet()) {
        field_0x2fde = 0x103;

        if (checkReinRide()) {
            setUpperAnimeParam(0x261, UPPER_2, &daAlinkHIO_cut_c0::m.mEquipAnm);
            offNoResetFlg3(FLG3_UNK_8000);
        } else {
            u32 var_r29 = checkNoResetFlg0(FLG0_UNK_1000000);
            setUpperAnimeParam(0x255, UPPER_2, &daAlinkHIO_cut_c0::m.mEquipAnm);

            if (var_r29) {
                mUpperFrameCtrl[2].setFrame(12);
            }

            if (!param_0) {
                onNoResetFlg3(FLG3_UNK_8000);
            } else {
                offNoResetFlg3(FLG3_UNK_8000);
            }
        }

        setFacePriTexture(FTANM_UNK_2D);
        setFacePriBck(0x15E);

        if (checkEventRun() && checkStageName("F_SP102") && fopAcM_GetRoomNo(this) == 0 && dComIfGp_getStartStageLayer() == 0) {
            mUpperFrameCtrl[2].setRate(-0.8f);
        }

        if (field_0x2f94 == 0xFF) {
            field_0x2f96 = 4;
        }

        if (field_0x2f95 == 0xFF) {
            field_0x2f97 = 10;
        }
    }
}

/* 800B9580-800B9640 0B3EC0 00C0+00 1/1 0/0 0/0 .text            swordUnequip__9daAlink_cFv */
void daAlink_c::swordUnequip() {
    f32 anm_speed;
    if (checkFastUnequip()) {
        anm_speed = daAlinkHIO_cut_c0::m.mFastUnequipAnmSpeed;
    } else {
        anm_speed = daAlinkHIO_cut_c0::m.mUnequipAnm.mSpeed;
    }

    u16 anm_id = checkReinRide() ? (u16)0x261 : (u16)0x255;

    setUpperAnime(anm_id, UPPER_2, anm_speed, daAlinkHIO_cut_c0::m.mUnequipAnm.mStartFrame,
                  daAlinkHIO_cut_c0::m.mUnequipAnm.mEndFrame,
                  daAlinkHIO_cut_c0::m.mUnequipAnm.mInterpolation);
    setFacePriTexture(FTANM_UNK_2D);
    setFaceBck(0x15E, 1, 0xFFFF);
}

/* 800B9640-800B96A4 0B3F80 0064+00 6/6 0/0 0/0 .text            itemEquip__9daAlink_cFUs */
void daAlink_c::itemEquip(u16 i_itemID) {
    if (mThrowBoomerangAcKeep.getActor() == NULL || i_itemID != BOOMERANG) {
        field_0x2fde = i_itemID;
        dComIfGp_clearPlayerStatus0(0, 0x400000);
        offNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER);
        itemUnequip(field_0x2fde, -1.0f);
    }
}

/* 800B96A4-800B97EC 0B3FE4 0148+00 2/2 0/0 0/0 .text            itemUnequip__9daAlink_cFUsf */
/**
 * This handles setting the animation for both equipping and unequipping items
 * When `param_1` is positive, it will play the unequip animation
 * When `param_1` is negative, it will play the equip animation
 *
 */
void daAlink_c::itemUnequip(u16 i_itemID, f32 i_playSpeed) {
    u16 anm_id;
    const daAlinkHIO_anm_c* anm_data;

    if (i_itemID == BOOMERANG || i_itemID == COPY_ROD || i_itemID == KANTERA ||
        i_itemID == HOOKSHOT || checkBottleItem(i_itemID))
    {
        anm_id = 0x247;
        anm_data = &daAlinkHIO_item_c0::m.mOneHandEquipAnm;
    } else if (checkBowAndSlingItem(i_itemID)) {
        anm_id = checkBowGrabLeftHand() ? (u16)0x247 : (u16)0x248;
        anm_data = &daAlinkHIO_item_c0::m.mOneHandEquipAnm;
    } else {
        anm_id = 0x245;
        anm_data = &daAlinkHIO_item_c0::m.mTwoHandEquipAnm;
    }

    f32 anm_speed;
    if (i_playSpeed > 0.0f && checkFastUnequip()) {
        if (anm_id == 0x245) {
            anm_speed = daAlinkHIO_item_c0::m.mTwoHandReleaseAnmSpeed;
        } else {
            anm_speed = daAlinkHIO_item_c0::m.mOneHandReleaseAnmSpeed;
        }
    } else {
        anm_speed = anm_data->mSpeed * i_playSpeed;
    }

    setUpperAnime(anm_id, UPPER_2, anm_speed, anm_data->mStartFrame, anm_data->mEndFrame,
                  anm_data->mInterpolation);
}

/* 800B97EC-800B983C 0B412C 0050+00 2/2 0/0 0/0 .text            checkFastUnequip__9daAlink_cFv */
bool daAlink_c::checkFastUnequip() {
    return mProcID == PROC_PREACTION_UNEQUIP || mProcID == PROC_HORSE_GETOFF || checkEventRun();
}

/* 800B983C-800B994C 0B417C 0110+00 10/10 0/0 0/0 .text            allUnequip__9daAlink_cFi */
void daAlink_c::allUnequip(int param_0) {
    if (checkNoResetFlg2(FLG2_UNK_1) && param_0 != 0 && !checkCanoeRide() &&
        mEquipItem != KANTERA)
    {
        for (u8 i = 0; i < 2; i++) {
            if (dComIfGp_getSelectItem(i) == KANTERA) {
                mSelectItemId = i;
            }
        }
        itemEquip(KANTERA);
        onNoResetFlg1(FLG1_UNK_40);
        return;
    } else if (mEquipItem == EQUIP_SWORD) {
        swordUnequip();
    } else if (mEquipItem == noentry71) {
        deleteEquipItem(0, 0);
        field_0x2060->initOldFrameMorf(5.0f, 0, 35);
    } else {
        itemUnequip(mEquipItem, 1.0f);
    }

    field_0x2fde = 0xFF;
}

/* 800B994C-800B9D2C 0B428C 03E0+00 8/8 0/0 0/0 .text checkItemChangeFromButton__9daAlink_cFv */
BOOL daAlink_c::checkItemChangeFromButton() {
    if (checkModeFlg(4) && !checkEquipAnime() && !checkBoomerangThrowAnime() &&
        !checkCopyRodThrowAnime() && !checkKandelaarSwingAnime() && !checkKandelaarSwingAnime())
    {
        if (dComIfGs_getSelectEquipSword() != NO_ITEM && !checkNotBattleStage() &&
            !checkCanoeRide() && (!checkModeFlg(0x40000) || checkEquipHeavyBoots()) &&
            mEquipItem != 0x103 && swordTrigger())
        {
            if (checkEndResetFlg1(ERFLG1_UNK_40000000)) {
                return 0;
            }

            swordEquip(1);
        } else if (checkCanoeRide() && !checkStageName("F_SP103") && !checkCanoeSlider() &&
                   !checkFisingRodLure() && swordTrigger())
        {
            itemEquip(0x105);
        } else {
            u8 i;
            for (i = 0; i < 2; i++) {
                int proc_type = checkNewItemChange(i);
                if (proc_type != 0 && itemTriggerCheck(1 << i)) {
                    return changeItemTriggerKeepProc(i, proc_type);
                }
            }

            if (doTrigger() && dComIfGp_getDoStatus() == 4) {
                if (mEquipItem != KANTERA && checkNoResetFlg2(FLG2_UNK_1)) {
                    offKandelaarModel();
                } else if (mSwordFlourishTimer != 0 && mEquipItem == EQUIP_SWORD &&
                           !checkWoodSwordEquip() && !checkModeFlg(0x402))
                {
                    return procSwordUnequipSpInit();
                } else {
                    allUnequip(1);
                }
            } else if (mEquipItem == NO_ITEM && mThrowBoomerangAcKeep.getActor() == NULL &&
                       !checkCanoeRide() && checkNoUpperAnime() && checkNoResetFlg2(FLG2_UNK_1))
            {
                for (i = 0; i < 2; i++) {
                    if (dComIfGp_getSelectItem(i) == KANTERA) {
                        mSelectItemId = i;
                    }
                }

                itemEquip(KANTERA);
                onNoResetFlg1(FLG1_UNK_40);
            } else if (mEquipItem != 0x103 && mEquipItem != NO_ITEM && mEquipItem != 0x10B &&
                       mEquipItem != 0x102 && (!checkCanoeRide() || !checkFisingRodLure()))
            {
                if (!checkEventRun() ||
                    strcmp(dComIfGp_getEventManager().getRunEventName(), "ANGER"))
                {
                    if (strcmp(dComIfGp_getEventManager().getRunEventName(), "ANGER2") &&
                        checkItemSetButton(mEquipItem) == 2)
                    {
                        allUnequip(1);
                    }
                }
            }
        }
    }

    return 0;
}

/* 800B9D2C-800B9F50 0B466C 0224+00 12/12 0/0 0/0 .text checkNextActionFromButton__9daAlink_cFv */
BOOL daAlink_c::checkNextActionFromButton() {
    if (checkItemChangeAutoAction()) {
        return 1;
    }

    if (checkUpperItemAction()) {
        return 1;
    }

    if (checkDkCaught2Anime()) {
        return 0;
    }

    if (checkModeFlg(0x400)) {
        if (dComIfGp_getDoStatus() == 0 && checkCanoeRide() && checkFisingRodLure()) {
            setDoStatus(4);
        }
    } else if (!checkModeFlg(0x40000)) {
        if ((checkWolf() && !checkWolfGrabAnime()) ||
            (!checkWolf() && getCopyRodControllActor() == NULL &&
             (checkEquipAnime() || checkNoResetFlg0(FLG0_UNK_1000000) || checkUpperGuardAnime() ||
              checkIronBallWaitAnime() || checkNoUpperAnime())))
        {
            decideDoStatus();

            if (checkNormalAction()) {
                return 1;
            }
        } else {
            decideCommonDoStatus();
        }
    }

    if (cancelUpperItemReadyAnime(0)) {
        return 1;
    }

    if (checkItemAction()) {
        return 1;
    }

    if (!checkModeFlg(0x40400)) {
        if (checkRAction()) {
            return 1;
        }

        if (checkMoveDoAction()) {
            return 1;
        }
    }

    if (!checkModeFlg(0x40000) && checkSubjectAction()) {
        return 1;
    }

    return checkItemChangeFromButton();
}

/* 800B9F50-800BA09C 0B4890 014C+00 14/14 0/0 0/0 .text checkGroundSpecialMode__9daAlink_cFv */
BOOL daAlink_c::checkGroundSpecialMode() {
    if (mLinkAcch.ChkGroundHit() && !checkModeFlg(MODE_PLAYER_FLY) && !checkMagneBootsOn() &&
        checkEndResetFlg0(ERFLG0_UNK_2))
    {
        return procCoMetamorphoseInit();
    }

    if (mLinkAcch.ChkGroundHit() && !checkModeFlg(MODE_PLAYER_FLY) && checkBoardRestart()) {
        return procBoardWaitInit(mRideAcKeep.getActor());
    }

    if (checkGoatStopGame()) {
        return procGoatMoveInit();
    }

    if (mSpecialMode == 1) {
        return procSumouReadyInit();
    }

    if (checkGoronSideMove()) {
        return procGoronMoveInit();
    }

    if (checkCanoeSlider()) {
        return procCanoeJumpRideInit(NULL);
    }

    if (checkSlideAction()) {
        return 1;
    }

    fopAc_ac_c* actor = checkGoronRide();
    if (actor != NULL) {
        return procGoronRideWaitInit(actor);
    }

    if (checkEndResetFlg1(ERFLG1_UNK_1)) {
        return procScreamWaitInit();
    }

    return NULL;
}

/* 800BA09C-800BA0D0 0B49DC 0034+00 4/4 0/0 0/0 .text            commonCheckNextAction__9daAlink_cFi
 */
int daAlink_c::commonCheckNextAction(int param_0) {
    if (checkWolf()) {
        return checkNextActionWolf(param_0);
    } else {
        return checkNextAction(param_0);
    }
}

/* 800BA0D0-800BA6A0 0B4A10 05D0+00 91/91 0/0 0/0 .text            checkNextAction__9daAlink_cFi */
int daAlink_c::checkNextAction(int param_0) {
    f32 temp_f31 = field_0x594;

    if (checkDeadAction(1)) {
        return 1;
    }

    if (checkGroundSpecialMode()) {
        return 1;
    }

    u32 procID = mProcID;
    if (procID != PROC_MOVE_TURN && (param_0 == 0 || checkInputOnR()) &&
        (procID != PROC_HOOKSHOT_MOVE || checkHookshotWait()))
    {
        if (mTargetedActor != NULL || checkAttentionLock()) {
            setSpeedAndAngleAtn();
        } else if (((!checkUpperReadyThrowAnime() || mFastShotTime != 0) ||
                    (checkBoomerangThrowAnime() &&
                     (mThrowBoomerangAcKeep.getActor() != NULL || mEquipItem == noentry71 ||
                      checkNoResetFlg1(FLG1_UNK_2)))) ||
                   (checkCopyRodThrowAnime() &&
                    (mCopyRodAcKeep.getActor() != NULL || checkNoResetFlg1(FLG1_UNK_10000))))
        {
            setSpeedAndAngleNormal();
        }
    }

    setFrontWallType();

    bool attention_state = checkAttentionState();
    if (attention_state) {
        if (checkFmChainGrabAnime()) {
            field_0x594 = 13.0f;
        } else if (mTargetedActor != NULL) {
            field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;
        } else {
            field_0x594 = daAlinkHIO_noActAtnMove_c0::m.mMaxSpeed;
        }
    } else if (checkSlope()) {
        field_0x594 = daAlinkHIO_slide_c0::m.mMaxClimbSpeed;
    } else {
        field_0x594 = daAlinkHIO_move_c0::m.mMaxSpeed;
    }

    if (checkEndResetFlg0(ERFLG0_UNK_100000) && mLinkAcch.ChkGroundHit() &&
        !checkModeFlg(MODE_PLAYER_FLY))
    {
        return procFloorDownReboundInit();
    }

    if (checkCutDashChargeAnime() && !checkDashAnime()) {
        return procCutTurnMoveInit(0);
    }

    if (checkNextActionFromButton()) {
        return 1;
    }

    if (param_0 != 0 && !checkInputOnR() && !checkEquipAnime()) {
        field_0x594 = temp_f31;
        return 0;
    }

    int ret;
    if (attention_state) {
        if (checkBowAnime()) {
            ret = checkNextActionBow();
        } else if (checkBoomerangAnimeAndReturnWait() && mEquipItem != 0x102) {
            ret = checkNextActionBoomerang();
        } else if (checkCopyRodAnime()) {
            ret = checkNextActionCopyRod();
        } else if (checkHookshotAnime()) {
            ret = checkNextActionHookshot();
        } else if (checkIronBallAnime()) {
            ret = checkNextActionIronBall();
        } else if (mTargetedActor != NULL || mDemo.getDemoMode() == 0x17) {
            if (checkZeroSpeedF()) {
                ret = procAtnActorWaitInit();
            } else {
                ret = procAtnActorMoveInit();
            }
        } else if (checkZeroSpeedF()) {
            ret = checkWaitAction();
        } else {
            ret = procAtnMoveInit();
        }
    } else {
        field_0x2f98 = 4;

        if (checkZeroSpeedF()) {
            if (cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7800 && checkInputOnR()) {
                ret = procWaitTurnInit();
                if (!ret && !checkEventRun()) {
                    ret = checkWaitAction();
                }
            } else {
                ret = checkWaitAction();
            }
        } else if (mProcID == PROC_MOVE_TURN && current.angle.y != shape_angle.y) {
            ret = procMoveTurnInit(0);
        } else if (checkInputOnR() && cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7800) {
            if (speedF / field_0x594 > daAlinkHIO_move_c0::m.mSlideThresholdSpeed &&
                mGndPolySpecialCode != dBgW_SPCODE_ICE && !checkGrabAnime() &&
                getDirectionFromAngle(mPrevStickAngle - mStickAngle) == DIR_BACKWARD)
            {
                ret = procSlipInit();
            } else {
                ret = procMoveTurnInit(1);
            }
        } else if (checkInputOnR() &&
                   getDirectionFromAngle(field_0x2fe2 - current.angle.y) == DIR_BACKWARD)
        {
            ret = procMoveTurnInit(1);
        } else {
            ret = procMoveInit();
        }
    }

    return ret;
}

/* 800BA6A0-800BA914 0B4FE0 0274+00 3/3 0/0 0/0 .text            commonChangeItem__9daAlink_cFv */
void daAlink_c::commonChangeItem() {
    if (mEquipItem == KANTERA && field_0x2fde == 0xFF && (mProcID != PROC_PREACTION_UNEQUIP || mProcVar4.field_0x3010 != 0)) {
        offKandelaarModel();
    }

    if ((mEquipItem == NO_ITEM && field_0x2fde != 0x103) || (mEquipItem == 0x103 && field_0x2fde != 0xFF)) {
        seStartOnlyReverb(Z2SE_AL_ITEM_TAKEOUT);
    }

    if (mEquipItem == 0x103) {
        if (checkWoodSwordEquip()) {
            seStartSwordCut(Z2SE_AL_ITEM_TAKEOUT_FAST);
        } else {
            seStartSwordCut(Z2SE_AL_SWORD_PUTIN);
        }
    }

    if (checkSwordEquipAnime()) {
        field_0x2f96 = 0xFF;
        field_0x2f97 = 0xFF;
    }

    BOOL var_r30;
    if (mEquipItem != NO_ITEM) {
        var_r30 = true;
        deleteEquipItem(TRUE, FALSE);
    } else {
        var_r30 = false;
    }

    mEquipItem = field_0x2fde;
    field_0x2fde = NO_ITEM;

    if (checkReinRide()) {
        field_0x2060->initOldFrameMorf(3.0f, 0, 0x23);
    }

    onNoResetFlg1(FLG1_UNK_40000);

    if (!checkEventRun() && !checkNoResetFlg1(FLG1_UNK_40) && (mEquipItem != 0x103 || !checkNoResetFlg3(FLG3_UNK_8000)) && !checkFishingRodAndLureItem() && (checkAttentionLock() || mEquipItem != 0x103 || var_r30)) {
        onResetFlg0(RFLG0_UNK_80);
    }

    if (mEquipItem == 0x103) {
        if (checkWoodSwordEquip()) {
            seStartSwordCut(Z2SE_AL_ITEM_TAKEOUT_FAST);
        } else {
            seStartSwordCut(Z2SE_AL_SWORD_PULLOUT);
        }

        setSwordModel();
    } else {
        makeItemType();
    }
}

/* 800BA914-800BAF08 0B5254 05F4+00 1/1 0/0 0/0 .text            setItemAction__9daAlink_cFv */
void daAlink_c::setItemAction() {
    if (mEquipItem == IRONBALL) {
        checkIronBallDelete();
    }

    daPy_frameCtrl_c* frame_ctrl = &mUpperFrameCtrl[2];

    if (!checkMagneBootsOn() && checkEquipHeavyBoots() && mLinkAcch.i_ChkGroundHit() && !checkModeFlg(0x70C52)) {
        if (dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd) && daTagMagne_c::checkMagnetCode(mLinkAcch.m_gnd)) {
            onNoResetFlg0(FLG0_MAGNE_BOOTS_ON);
            setMagneBootsMtx(&mLinkAcch.m_gnd, 1);
            mZ2Link.setMagnetized(true);

            if (checkUpperReadyThrowAnime() && !checkBowAnime()) {
                resetUpperAnime(UPPER_2, 3.0f);
            }

            if (mEquipItem != 0x103 && !checkBowItem(mEquipItem)) {
                deleteEquipItem(FALSE, FALSE);
            }

            offKandelaarModel();
            freeGrabItem();
        }
    }

    if (checkGrabAnime()) {
        return setGrabUpperSpeedRate();
    } else if (checkCopyRodControllAnime()) {
        if (getCopyRodControllActor() == NULL) {
            resetUpperAnime(UPPER_2, 3.0f);
        } else {
            setCopyRodControllUpperSpeedRate();
        }
    } else if (checkBoomerangCatchAnime()) {
        if (checkAnmEnd(frame_ctrl) || (checkInputOnR() && frame_ctrl->getFrame() > daAlinkHIO_boom_c0::m.mCatchAnm.mCheckFrame)) {
            resetUpperAnime(UPPER_2, 3.0f);
        } else if (frame_ctrl->getFrame() >= 20.0f) {
            field_0x2f97 = 6;
        }
    } else if (checkBoomerangThrowAnime()) {
        if (checkAnmEnd(frame_ctrl) || (checkInputOnR() && frame_ctrl->getFrame() > daAlinkHIO_boom_c0::m.mThrowAnm.mCheckFrame)) {
            resetUpperAnime(UPPER_2, 3.0f);
        } else if (frame_ctrl->checkPass(5.5f)) {
            throwBoomerang();
        }
    } else if (checkCopyRodThrowAnime()) {
        if (checkAnmEnd(frame_ctrl) || (checkInputOnR() && frame_ctrl->getFrame() > daAlinkHIO_boom_c0::m.mThrowAnm.mCheckFrame)) {
            resetUpperAnime(UPPER_2, 3.0f);
        } else if (frame_ctrl->checkPass(6.5f)) {
            throwCopyRod();
        }
    } else if (checkKandelaarSwingAnime()) {
        if (checkAnmEnd(frame_ctrl) || (checkInputOnR() && frame_ctrl->getFrame() > daAlinkHIO_kandelaar_c0::m.mShakeAnm.mCheckFrame)) {
            resetUpperAnime(UPPER_2, 3.0f);
        }
    } else if (checkEquipAnime()) {
        f32 change_item_frame;
        if (checkSwordEquipAnime()) {
            change_item_frame = frame_ctrl->getRate() + 9.5f;
        } else if (checkTwoHandItemEquipAnime()) {
            change_item_frame = 7.0f;
        } else {
            change_item_frame = 6.0f;
        }

        if (checkNoResetFlg1(FLG1_UNK_40000)) {
            f32 var_f30;
            if (checkSwordEquipAnime()) {
                var_f30 = 9.5f;
            } else if (checkTwoHandItemEquipAnime()) {
                var_f30 = 7.0f;
            } else {
                var_f30 = 6.0f;
            }

            f32 ratio = mNowAnmPackUpper[2].getRatio();
            cLib_chaseF(&ratio, 0.0f, fabsf(frame_ctrl->getRate()) / (frame_ctrl->getEnd() - var_f30));
            mNowAnmPackUpper[2].setRatio(ratio);
        }

        if (checkAnmEnd(frame_ctrl)) {
            resetUpperAnime(UPPER_2, 3.0f);
            setHorseSwordUp(1);
        } else if (frame_ctrl->checkPass(change_item_frame)) {
            commonChangeItem();
        }
    } else if (checkCutDashAnime()) {
        field_0x307e = daAlinkHIO_cut_c0::m.mComboDuration;

        if (checkAnmEnd(frame_ctrl)) {
            resetUpperAnime(UPPER_2, 3.0f);
            onResetFlg0(RFLG0_UNK_8000000);
        } else {
            const daAlinkHIO_cutDash_c1* cut_hio;

            if (checkUpperAnime(0x80)) {
                cut_hio = &daAlinkHIO_cutDaL_c0::m;
            } else if (checkUpperAnime(0x81)) {
                cut_hio = &daAlinkHIO_cutDaR_c0::m;
            } else {
                cut_hio = &daAlinkHIO_cutDaCharge_c0::m;
            }

            if (frame_ctrl->getFrame() >= cut_hio->mAttackStartFrame && frame_ctrl->getFrame() < cut_hio->mAttackEndFrame) {
                if (!checkNoResetFlg0(FLG0_UNK_40)) {
                    seStartSwordCut(Z2SE_AL_SWORD_SWING_S);
                }

                onResetFlg0(RFLG0_UNK_2);
            }

            if (!checkDashAnime() && mProcID != PROC_BOARD_CUT) {
                clearComboReserb();
            } else if (field_0x2fce == 0 && swordSwingTrigger()) {
                onNoResetFlg2(FLG2_UNK_2);
            }

            offNoResetFlg2(FLG2_UNK_4);

            if (swordButton() && !checkNoResetFlg1(FLG1_UNK_4000000)) {
                if (field_0x2fb7 < 3) {
                    field_0x2fb7++;
                } else {
                    onNoResetFlg2(FLG2_UNK_4);
                }
            } else {
                field_0x2fb7 = 0;
            }
        }
    } else if (checkCutDashChargeAnime() && !swordButton()) {
        setCutDash(1, checkAnmEnd(frame_ctrl));
    }
}

/* 800BAF08-800BAF80 0B5848 0078+00 2/2 0/0 0/0 .text checkNextActionFromCrouch__9daAlink_cFi */
BOOL daAlink_c::checkNextActionFromCrouch(int param_0) {
    if (checkNextAction(param_0)) {
        if (field_0x2f8c == 1 || field_0x2f8c == 2 || field_0x2f8c == 3) {
            field_0x2060->initOldFrameMorf(daAlinkHIO_crouch_c0::m.mStandInterpolation, 0, 0x23);
        }

        return true;
    }

    return false;
}

/* 800BAF80-800BB020 0B58C0 00A0+00 18/18 0/0 0/0 .text checkUpperReadyThrowAnime__9daAlink_cCFv
 */
int daAlink_c::checkUpperReadyThrowAnime() const {
    return checkBoomerangAnime() || checkCopyRodAnime() || checkHookshotAnime() ||
           checkIronBallAnime() || checkBowAnime();
}

/* 800BB020-800BB084 0B5960 0064+00 2/2 0/0 0/0 .text getBodyAngleXBasePos__9daAlink_cFP4cXyz */
void daAlink_c::getBodyAngleXBasePos(cXyz* o_pos) {
    int mtx_id;

    if (mProcID == PROC_HOOKSHOT_WALL_SHOOT || mProcID == PROC_HOOKSHOT_ROOF_SHOOT) {
        if (field_0x3020 == 0) {
            mtx_id = 7;
        } else {
            mtx_id = 12;
        }
    } else {
        mtx_id = 1;
    }

    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(mtx_id), o_pos);
}

/* 800BB084-800BB2B0 0B59C4 022C+00 3/3 0/0 0/0 .text            getBodyAngleXAtnActor__9daAlink_cFi
 */
s16 daAlink_c::getBodyAngleXAtnActor(int param_0) {
    s16 var_r30;

    if (mTargetedActor != NULL) {
        cXyz sp18;
        getBodyAngleXBasePos(&sp18);

        cXyz spC = mTargetedActor->eyePos - sp18;
        multVecMagneBootInvMtx(&spC);

        spC.y -= 40.0f;

        if (spC.abs() < 1.0f) {
            var_r30 = 0;
        } else {
            var_r30 = spC.atan2sY_XZ();
            if (param_0 != 0) {
                var_r30 = cLib_minMaxLimit<s16>((s16)var_r30, daAlinkHIO_cut_c0::m.mUnkBodyUpwards, daAlinkHIO_cut_c0::m.mUnkBodyDownwards);
            } else {
                var_r30 = cLib_minMaxLimit<s16>((s16)var_r30, -0x2000, 0x2000);
            }
        }
    } else {
        var_r30 = 0;
    }

    if (checkNotItemSinkLimit() && var_r30 > 0) {
        var_r30 = 0;
    }

    return var_r30;
}

/* 800BB2B0-800BB324 0B5BF0 0074+00 13/13 0/0 0/0 .text setBodyAngleXReadyAnime__9daAlink_cFi */
void daAlink_c::setBodyAngleXReadyAnime(int param_0) {
    s16 angle_x = getBodyAngleXAtnActor(param_0);

    if (checkUpperGuardAnime()) {
        angle_x >>= 1;  // divide by 2 adds extra addze?
    }

    cLib_addCalcAngleS(&mBodyAngle.x, angle_x, 4, 0x0C00, 0x0180);
    field_0x310a = mBodyAngle.x;
}

/* 800BB324-800BB408 0B5C64 00E4+00 2/2 0/0 0/0 .text            setMagicArmorBrk__9daAlink_cFi */
void daAlink_c::setMagicArmorBrk(int param_0) {
    J3DModelData* model_data = mpLinkModel->getModelData();
    mMagicArmorBodyBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_mArcName, bodyBrkName[param_0]);
    mMagicArmorBodyBrk->searchUpdateMaterialID(model_data);
    model_data->entryTevRegAnimator(mMagicArmorBodyBrk);
    mMagicArmorBodyBrk->setFrame(0.0f);

    J3DModelData* head_model_data = mpLinkHatModel->getModelData();
    mMagicArmorHeadBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_mArcName, headBrkName[param_0]);
    mMagicArmorHeadBrk->searchUpdateMaterialID(head_model_data);
    head_model_data->entryTevRegAnimator(mMagicArmorHeadBrk);
    mMagicArmorHeadBrk->setFrame(0.0f);

    field_0x2fd7 = param_0;
}

/* 800BB408-800BB458 0B5D48 0050+00 6/6 0/0 0/0 .text            checkMagicArmorHeavy__9daAlink_cCFv
 */
BOOL daAlink_c::checkMagicArmorHeavy() const {
    return checkMagicArmorWearAbility() && dComIfGs_getRupee() == 0;
}

/* 800BB458-800BB4B8 0B5D98 0060+00 1/0 0/0 0/0 .text checkBootsOrArmorHeavy__9daAlink_cCFv */
BOOL daAlink_c::checkBootsOrArmorHeavy() const {
    return checkEquipHeavyBoots() || checkMagicArmorHeavy() || checkIronBallWaitAnime();
}

/* 800BB4B8-800BB560 0B5DF8 00A8+00 29/29 0/0 0/0 .text            checkHeavyStateOn__9daAlink_cFii
 */
// param_0 something related to boots
BOOL daAlink_c::checkHeavyStateOn(int param_0, int param_1) {
    if (!checkEventRun()) {
        if ((param_1 != 0 && mSinkShapeOffset < -30.0f) ||
            (param_0 != 0 && checkIronBallWaitAnime()) || checkIronBallAnime() ||
            checkMagicArmorHeavy() || getHeavyStateAndBoots())
        {
            return true;
        }
    }
    return false;
}

/* 800BB560-800BB644 0B5EA0 00E4+00 1/0 0/0 0/0 .text            setOutPower__9daAlink_cFfsi */
void daAlink_c::setOutPower(f32 param_0, s16 param_1, int param_2) {
    if (!checkFmChainGrabAnime() || !checkBossRoom() || fopAcM_GetRoomNo(this) != 50 ||
        !checkEquipHeavyBoots())
    {
        field_0x3400 += param_0 * cM_ssin(param_1);
        field_0x3404 += param_0 * cM_scos(param_1);

        if (param_2) {
            onEndResetFlg0(ERFLG0_UNK_8);
        }
    }
}

/* 800BB644-800BB770 0B5F84 012C+00 3/3 0/0 0/0 .text            initGravity__9daAlink_cFv */
void daAlink_c::initGravity() {
    f32 gravity;
    f32 max_fall_speed;

    if (checkWolf()) {
        if (checkModeFlg(MODE_SWIMMING)) {
            if (checkHeavyStateOn(1, 1)) {
                gravity = -daAlinkHIO_wlSwim_c0::m.field_0x9C;
                max_fall_speed = daAlinkHIO_wlSwim_c0::m.field_0xA0;
            } else {
                gravity = -daAlinkHIO_wlSwim_c0::m.field_0x60;
                max_fall_speed = daAlinkHIO_wlSwim_c0::m.field_0x58;
            }
        } else {
            gravity = daAlinkHIO_wlAutoJump_c0::m.field_0x58;
            max_fall_speed = daAlinkHIO_wlAutoJump_c0::m.field_0x5c;
        }
    } else if (checkModeFlg(MODE_SWIMMING) || checkNoResetFlg0(FLG0_UNDERWATER)) {
        max_fall_speed = getSwimMaxFallSpeed();
        if (checkHeavyStateOn(1, 1) && mProcID != PROC_OCTAIEAL_SPIT) {
            gravity = daAlinkHIO_swim_c0::m.mBootsGravity;
        } else {
            gravity = -daAlinkHIO_swim_c0::m.mBuoyancy;
        }
    } else {
        gravity = daAlinkHIO_autoJump_c0::m.mGravity;
        max_fall_speed = daAlinkHIO_autoJump_c0::m.mMaxFallSpeed;
    }

    setSpecialGravity(gravity, max_fall_speed, 1);
}

/* 800BB770-800BB7A0 0B60B0 0030+00 64/64 0/0 0/0 .text            setSpecialGravity__9daAlink_cFffi
 */
void daAlink_c::setSpecialGravity(f32 i_gravity, f32 i_speed, int i_offFlag) {
    if (i_offFlag) {
        offNoResetFlg3(FLG3_UNK_4000);
    } else {
        onNoResetFlg3(FLG3_UNK_4000);
    }

    gravity = i_gravity;
    maxFallSpeed = i_speed;
}

/* 800BB7A0-800BBD40 0B60E0 05A0+00 1/1 0/0 0/0 .text            transAnimeProc__9daAlink_cFP4cXyzff
 */
void daAlink_c::transAnimeProc(cXyz* param_0, f32 param_1, f32 param_2) {
    // NONMATCHING
}

/* 800BBD40-800BBF68 0B6680 0228+00 1/1 0/0 0/0 .text            setFootSpeed__9daAlink_cFv */
void daAlink_c::setFootSpeed() {
    cXyz sp18[2];

    f32 var_f31;
    if (field_0x2060->getOldFrameFlg()) {
        mDoMtx_concat(mInvMtx, mpLinkModel->getAnmMtx(field_0x30bc), mDoMtx_stack_c::get());
        mDoMtx_stack_c::multVecZero(&sp18[0]);

        mDoMtx_concat(mInvMtx, mpLinkModel->getAnmMtx(field_0x30be), mDoMtx_stack_c::get());
        mDoMtx_stack_c::multVecZero(&sp18[1]);
    
        int var_r28;
        if (sp18[0].y < sp18[1].y) {
            var_r28 = 0;
        } else {
            var_r28 = 1;
        }

        cXyz sp8 = sp18[var_r28] - field_0x37b0[var_r28];
        s16 temp_r0 = current.angle.y - shape_angle.y;
        var_f31 = fabsf(sp8.z * cM_scos(temp_r0)) + fabsf(sp8.x * cM_ssin(temp_r0));

        if (fabsf(mSpeedModifier) < 1.0f && checkInputOnR() && fabsf(field_0x33a4 - field_0x33a8) < 0.2f) {
            var_f31 = (0.3f * var_f31) + (0.7f * field_0x33a0);
        }
    } else {
        var_f31 = 0.0f;

        for (int i = 0; i < 2; i++) {
            sp18[i] = current.pos;
        }
    }

    for (int i = 0; i < 2; i++) {
        field_0x37b0[i] = sp18[i];
    }

    field_0x33a0 = var_f31;
}

/* 800BBF68-800BD6FC 0B68A8 1794+00 1/1 0/0 0/0 .text            posMove__9daAlink_cFv */
void daAlink_c::posMove() {
    cXyz sp108;

    f32 temp_f30 = cM_ssin(shape_angle.y);
    f32 temp_f29 = cM_scos(shape_angle.y);

    if (!checkNoResetFlg3(FLG3_UNK_4000)) {
        initGravity();
    }

    transAnimeProc(&sp108, temp_f30, temp_f29);

    s16 var_r26;
    if (checkModeFlg(MODE_SWIMMING)) {
        var_r26 = field_0x3080;
    } else if (!mLinkAcch.ChkGroundHit() || checkMagneBootsOn() ||
               (checkModeFlg(MODE_PLAYER_FLY) && !checkBoardRide()) || field_0x3174 == 8)
    {
        var_r26 = 0;
    } else {
        var_r26 = getGroundAngle(&mLinkAcch.m_gnd, current.angle.y);
    }

    setFootSpeed();
    if (checkEndResetFlg0(ERFLG0_UNK_10000000)) {
        speedF = 0.0f;
        mNormalSpeed = 0.0f;
    }

    speedF = mNormalSpeed * (1.0f - fabsf(mSpeedModifier));

    f32 mod = field_0x33a0 * (1.0f - field_0x2060->getOldFrameRate()) * mSpeedModifier;
    if (speedF < 0.0f) {
        speedF -= mod;
    } else {
        speedF += mod;
    }

    if (getZoraSwim() && !checkZoraWearAbility()) {
        speedF *= daAlinkHIO_swim_c0::m.mSurfaceSwimSpeedRate;
    }

    f32 var_f31 = speedF;
    speedF *= cM_scos(var_r26);

    if (var_r26 < 0 && !checkBoardRide() && !checkModeFlg(MODE_SWIMMING)) {
        speedF *= 0.85f;
    }

    if (mProcID == PROC_AUTO_JUMP && checkGrabGlide() &&
        (field_0xC04[0].ChkTgHit() || field_0xC04[1].ChkTgHit() || field_0xC04[2].ChkTgHit()))
    {
        speedF *= 0.5f;
    }

    speed.x = speedF * cM_ssin(current.angle.y);
    speed.z = speedF * cM_scos(current.angle.y);

    if (checkNoCollisionCorret() || (checkModeFlg(0x40) && checkModeFlg(0x4000))) {
        field_0x342c = 0.0f;
        field_0x3430 = 0.0f;
    }

    BOOL eventRunning = checkEventRun();
    if (!checkEquipHeavyBoots() && mLinkAcch.ChkGroundHit() && !checkModeFlg(0x40) &&
        !eventRunning)
    {
        if (checkLv2MiddleBossBgRide(getMoveBGActorName(mLinkAcch.m_gnd, FALSE))) {
            cM3dGPla plane;
            dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, &plane);

            f32 temp_f0 = cM_sht2d(cM_atan2s(plane.mNormal.absXZ(), plane.mNormal.y));

            if (temp_f0 >= daAlinkHIO_slide_c0::m.mLV2MinibossFloorWeakSlideAngle &&
                temp_f0 <= daAlinkHIO_slide_c0::m.mLV2MinibossFloorSlideAngle)
            {
                temp_f0 = ((temp_f0 - daAlinkHIO_slide_c0::m.mLV2MinibossFloorWeakSlideAngle) *
                           daAlinkHIO_slide_c0::m.mLV2MinibossFloorWeakSlideSpeed) /
                          (daAlinkHIO_slide_c0::m.mLV2MinibossFloorSlideAngle -
                           daAlinkHIO_slide_c0::m.mLV2MinibossFloorWeakSlideAngle);
                plane.mNormal.y = 0.0f;
                plane.mNormal.normalizeZP();

                speed.x += temp_f0 * plane.mNormal.x;
                speed.z += temp_f0 * plane.mNormal.z;
            }
        }
    }

    if (checkModeFlg(MODE_SWIMMING)) {
        cLib_chasePos(&field_0x3750, cXyz::Zero, daAlinkHIO_damSwim_c0::m.field_0x84);
        current.pos += field_0x3750;

        if (checkNoResetFlg0(FLG0_SWIM_UP) && mProcID != PROC_SWIM_DIVE) {
            current.pos.y = mWaterY;
        } else if (mDemo.getDemoType() == 4 || mProcID == PROC_ELEC_DAMAGE ||
                   dComIfGp_checkPlayerStatus0(0, 0x10))
        {
            speed.y = 0.0f;
        } else if (checkWolf()) {
            if (checkHeavyStateOn(1, 1)) {
                speed.y += daAlinkHIO_wlSwim_c0::m.field_0x9C;

                if (speed.y > daAlinkHIO_wlSwim_c0::m.field_0xA4) {
                    speed.y = daAlinkHIO_wlSwim_c0::m.field_0xA4;
                }
            } else {
                speed.y += daAlinkHIO_wlSwim_c0::m.field_0x60;

                if (speed.y > daAlinkHIO_wlSwim_c0::m.field_0x5C) {
                    speed.y = daAlinkHIO_wlSwim_c0::m.field_0x5C;
                }
            }
        } else if (!checkEquipHeavyBoots() && getZoraSwim()) {
            speed.y = -var_f31 * cM_ssin(var_r26);
        } else if ((checkBootsOrArmorHeavy() && mProcID != PROC_DEAD) || mProcID == PROC_SWIM_DIVE)
        {
            speed.y += gravity;

            if (speed.y < maxFallSpeed) {
                speed.y = maxFallSpeed;
            }
        } else if (speed.y > daAlinkHIO_swim_c0::m.mMaxFloatUpSpeed) {
            speed.y += gravity;
        } else if (speed.y < maxFallSpeed) {
            speed.y += 1.0f;
        } else {
            if (checkZoraWearAbility() &&
                mWaterY > current.pos.y + daAlinkHIO_swim_c0::m.mNormalFloatDepth)
            {
                speed.y += daAlinkHIO_swim_c0::m.mZoraFloatDepth;

                if (speed.y < 0.0f) {
                    speed.y = 0.0f;
                }
            } else {
                speed.y += daAlinkHIO_swim_c0::m.mBuoyancy;
            }

            if (speed.y > daAlinkHIO_swim_c0::m.mMaxFloatUpSpeed) {
                speed.y = daAlinkHIO_swim_c0::m.mMaxFloatUpSpeed;
            }
        }
    } else if (!checkModeFlg(0x400)) {
        if (checkHeavyStateOn(1, 1) && mProcID != PROC_SPINNER_READY &&
            !checkNoResetFlg0(FLG0_UNDERWATER))
        {
            speed.y += gravity * 2.25f;

            if (speed.y < maxFallSpeed * 1.5f) {
                speed.y = maxFallSpeed * 1.5f;
            }
        } else {
            speed.y += gravity;

            if (speed.y < maxFallSpeed) {
                speed.y = maxFallSpeed;
            }
        }
    } else if (checkBoardRide()) {
        mLinkAcch.OffLineCheck();
        speed.y += gravity;

        if (speed.y < maxFallSpeed) {
            speed.y = maxFallSpeed;
        }
    }

    setIceSlipSpeed();
    var_f31 = current.pos.y;

    if (!checkModeFlg(0x400) || checkBoardRide()) {
        if (checkMagneBootsOn()) {
            mDoMtx_stack_c::copy(mMagneBootMtx);
            mDoMtx_stack_c::YrotM(current.angle.y);

            Vec spFC = {0.0f, 0.0f, 0.0f};
            spFC.z = speedF;
            mDoMtx_stack_c::multVecSR(&spFC, &speed);
            current.pos += speed;
            current.pos.x += field_0x342c;
            current.pos.z += field_0x3430;
        } else {
            current.pos += speed;
            current.pos.x += field_0x342c;
            current.pos.z += field_0x3430;

            if (checkEndResetFlg1(ERFLG1_UNK_800) && checkStageName("F_SP113")) {
                current.pos.y -= 50.0f;
            }
        }
    }

    if (checkBoardRide() && !checkModeFlg(2)) {
        current.pos.y -= speedF * cM_ssin(var_r26);
    }

    if (getSumouMode() && mProcID != PROC_SUMOU_WIN_LOSE) {
        current.pos.y = var_f31 - 1.0f;
        speed.y = gravity;
    }

    field_0x342c = 0.0f;
    field_0x3430 = 0.0f;

    setPolygonSpeed();
    setWindSpeed();
    BOOL var_r27 = FALSE;

    if (!checkNoCollisionCorret() && !checkModeFlg(0x40)) {
        if (!checkNoResetFlg3(FLG3_UNK_20000000)) {
            current.pos += *field_0x814.GetCCMoveP();
        }

        if (!eventRunning) {
            if (!checkEndResetFlg0(ERFLG0_UNK_8) || !checkHeavyStateOn(1, 1)) {
                current.pos.x += field_0x3400;
                current.pos.z += field_0x3404;
            }

            if (mLinkAcch.ChkGroundHit() && dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd)) {
                s16 angle1 = getGroundAngle(&mLinkAcch.m_gnd, 0);
                current.pos.z += field_0x35c4.z * cM_scos(angle1);

                s16 angle2 = getGroundAngle(&mLinkAcch.m_gnd, 0x4000);
                current.pos.x += field_0x35c4.x * cM_scos(angle2);

                if (checkZeroSpeedF() && field_0x35c4.abs2() > 9.0f) {
                    seStartOnlyReverbLevel(Z2SE_AL_ICE_SLIP);
                }
            }

            current.pos += field_0x3594;

            if (checkModeFlg(2)) {
                current.pos += mWindSpeed;
            } else {
                current.pos.x += mWindSpeed.x;
                current.pos.z += mWindSpeed.z;
            }
        } else if (checkNoResetFlg0(FLG0_UNK_14000)) {
            current.pos += field_0x3594;
        }
    } else if (checkOctaIealSpecialCollect()) {
        f32 temp_f1 = getHookshotTopPos()->abs(current.pos);

        current.pos += *field_0x814.GetCCMoveP();

        f32 temp_f31 = getHookshotTopPos()->abs(current.pos);
        if (temp_f31 > temp_f1) {
            current.pos.y += temp_f31 - temp_f1;
        }
    } else if (!eventRunning && (mProcID == PROC_HANG_MOVE || mProcID == PROC_CLIMB_MOVE_SIDE ||
                                 mProcID == PROC_CLIMB_MOVE_UPDOWN || mProcID == PROC_CLIMB_WAIT ||
                                 mProcID == PROC_HANG_WAIT))
    {
        f32 temp_f31 = field_0x814.GetCCMoveP()->absXZ();
        var_r27 = TRUE;

        if (temp_f31 > 1.0f) {
            if ((s16)(field_0x814.GetCCMoveP()->atan2sX_Z() - shape_angle.y) >= 0) {
                current.pos.x += temp_f31 * temp_f29;
                current.pos.z -= temp_f31 * temp_f30;
            } else {
                current.pos.x -= temp_f31 * temp_f29;
                current.pos.z += temp_f31 * temp_f30;
            }
        }
    }

    if (checkModeFlg(MODE_SWIMMING) && checkNoResetFlg0(FLG0_SWIM_UP)) {
        cXyz sp84 = current.pos - field_0x3798;

        f32 temp_f3 = sp84.absXZ();
        s16 gnd_angle = getGroundAngle(&mLinkAcch.m_wtr, sp84.atan2sX_Z());
        temp_f3 *= cM_ssin(gnd_angle);

        if (temp_f3 < 0.0f) {
            temp_f3 = 0.0f;
        }

        if (!(current.pos.y > mWaterY + l_autoUpHeight + temp_f3) && mProcID != PROC_SWIM_DIVE) {
            current.pos.y = mWaterY;
        }
    }

    field_0x3400 = 0.0f;
    field_0x3404 = 0.0f;
    field_0x814.ClrCcMove();
    offNoResetFlg3(FLG3_UNK_20000000);
    field_0x3464 = 0.0f;
    field_0x3468 = 0.0f;

    if (checkRootTransClearMode()) {
        cXyz sp78 = field_0x34d4 - sp108;
        if (mProcID == PROC_CLIMB_UP_START && mProcVar5.field_0x3012 != 0) {
            sp78 = cXyz::Zero;
        }

        f32 var_f0;
        if (checkModeFlg(MODE_PLAYER_FLY)) {
            var_f0 = 1.0f;
        } else {
            var_f0 = cM_scos(field_0x2ff0);
        }

        if (!checkRootTransZClearMode()) {
            sp78.z = 0.0f;
        }

        if (!checkRootTransXClearMode()) {
            sp78.x = 0.0f;
        }

        field_0x3464 = var_f0 * (sp78.z * temp_f30 + sp78.x * temp_f29);
        field_0x3468 = var_f0 * (sp78.z * temp_f29 - sp78.x * temp_f30);

        if (checkMagneBootsOn()) {
            cXyz spD8;
            mDoMtx_stack_c::copy(mMagneBootMtx);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::multVec(&sp78, &spD8);
            current.pos += spD8;
        } else {
            current.pos.x += field_0x3464;
            current.pos.z += field_0x3468;

            if (checkRootTransYClearMode()) {
                current.pos.y += sp78.y;
            }
        }
    }

    if (checkModeFlg(2) && current.pos.y > mFallHeight) {
        mFallHeight = current.pos.y;
    }

    if (checkMagneBootsOn()) {
        cXyz spCC;
        cXyz spC0 = current.pos + (mMagneBootsTopVec * l_autoUpHeight);
        cXyz spB4;
        Vec spA8 = {0.0f, 0.0f, 0.0f};

        s16 var_r27 = -0x8000;
        cM3dGPla plane;

        for (int i = 0; i < 8; i++) {
            spA8.x = mAcchCir[0].GetWallR() * cM_ssin(var_r27);
            spA8.z = mAcchCir[0].GetWallR() * cM_scos(var_r27);
            mDoMtx_multVec(mMagneBootMtx, &spA8, &spCC);
            spB4 = spC0 + spCC;

            if (commonLineCheck(&spC0, &spB4)) {
                dComIfG_Bgsp().GetTriPla(mLinkLinChk, &plane);
                f32 temp_f31 = spB4.abs(mLinkLinChk.i_GetCross());

                mDoMtx_multVecSR(mMagneBootInvMtx, &plane.mNormal, &spCC);
                if (cBgW_CheckBWall(spCC.y)) {
                    f32 temp_f1 = spCC.absXZ();

                    f32 div = temp_f31 / temp_f1;
                    spCC.x *= div;
                    spCC.y = 0.0f;
                    spCC.z *= div;

                    mDoMtx_multVecSR(mMagneBootMtx, &spCC, &spCC);
                    current.pos += spCC;
                    spC0 += spCC;
                }
            }

            var_r27 += 0x2000;
        }
    } else if (var_r27) {
        cXyz sp9C = cXyz::Zero;

        if (hangMoveBgCheck(shape_angle.y + 0x4000, &sp9C) ||
            hangMoveBgCheck(shape_angle.y - 0x4000, &sp9C))
        {
            current.pos.x += sp9C.x;
            current.pos.z += sp9C.z;
        }
    }
}

/* 800BD6FC-800BDD70 0B803C 0674+00 1/1 0/0 0/0 .text            autoGroundHit__9daAlink_cFv */
void daAlink_c::autoGroundHit() {
    // NONMATCHING
}

/* 800BDD70-800BDE20 0B86B0 00B0+00 2/2 0/0 0/0 .text            startPeepChange__9daAlink_cFv */
bool daAlink_c::startPeepChange() {
    if (!checkNoResetFlg0(FLG0_UNK_4000)) {
        onNoResetFlg0(FLG0_UNK_4000);

        u32 mode;
        if (mProcID == PROC_PEEP_SUBJECTIVITY) {
            mode = 7;
        } else {
            mode = 6;
            u32 param = fopAcM_GetParam(this);
            s32 roomNo = fopAcM_GetRoomNo(this);
            dComIfGs_setTurnRestart(current.pos, shape_angle.y, roomNo, param);
        }

        dStage_changeScene(mPeepExitID, 0.0f, mode, fopAcM_GetRoomNo(this),
                           shape_angle.y, -1);
        return 1;
    }

    return 0;
}

/* 800BDE20-800BDE48 0B8760 0028+00 3/3 0/0 0/0 .text            setLastSceneDamage__9daAlink_cFiPUl
 */
void daAlink_c::setLastSceneDamage(int i_dmgAmount, u32* o_mode) {
    if (i_dmgAmount <= 0) {
        return;
    }

    if (0x80 <= i_dmgAmount) {
        i_dmgAmount = 0x7F;
    }

    *o_mode |= i_dmgAmount << 4;
}

/* 800BDE48-800BDF60 0B8788 0118+00 0/0 1/1 0/0 .text            setLastSceneMode__9daAlink_cFPUl */
void daAlink_c::setLastSceneMode(u32* o_mode) {
    if (checkEquipHeavyBoots()) {
        *o_mode |= 0x400000;
    }

    if (checkWolf()) {
        *o_mode |= 0x800000;
    }

    if (checkNoResetFlg2(FLG2_UNK_1) && mEquipItem != KANTERA) {
        *o_mode |= 0x200000;
    }

    if (mEquipItem == EQUIP_SWORD) {
        *o_mode |= 0x28000000;
    } else if (mEquipItem < NO_ITEM) {
        *o_mode |= mEquipItem << 0x18;
    }

    if (mGrabItemAcKeep.getActor() != NULL) {
        if (daAlink_checkLightBallA(mGrabItemAcKeep.getActor())) {
            *o_mode |= 0x100000;
        }

        if (daAlink_checkLightBallB(mGrabItemAcKeep.getActor())) {
            *o_mode |= 0x80000;
        }
    }

    if (mSwordUpTimer != 0) {
        *o_mode |= (mSwordUpTimer & 0xFFFE) << 0xA;
    }
}

/* 800BDF60-800BE26C 0B88A0 030C+00 4/4 1/1 0/0 .text            startRestartRoom__9daAlink_cFUliii
 */
int daAlink_c::startRestartRoom(u32 i_mode, int param_1, int i_dmgAmount, int i_eventRun) {
    if (!checkNoResetFlg0(FLG0_UNK_4000) &&
        (i_eventRun != 0 || dComIfGp_event_compulsory(this, NULL, 0xFFFF)))
    {
        if (!checkRestartDead(i_dmgAmount, i_mode == 4)) {
            onNoResetFlg0(FLG0_UNK_4000);

            if (i_eventRun == 0) {
                mDemo.setOriginalDemoType();
                mDemo.setDemoMode(1);
            }

            int start_mode = getStartMode();
            if ((start_mode != 13 && start_mode != 2 && start_mode != 14) || checkFinalBattle() ||
                field_0x3780.abs(dComIfGs_getRestartRoomPos()) > 0.1f)
            {
                start_mode = 0;
            }

            // event flag 0x2008 = cleared snowpeak ruins
            if (!dComIfGs_isEventBit(0x2008) && (checkBoardRide() || checkBoardRestart())) {
                i_mode = 11;
            } else if (checkBoarSingleBattle() ||
                       (start_mode == 2 && !checkFinalBattle() && i_mode == 5))
            {
                i_mode = 8;
            }

            setLastSceneDamage(i_dmgAmount, &i_mode);
            u32 params = setParamData(dComIfGs_getRestartRoomNo(), start_mode, param_1, 0);
            dStage_restartRoom(params, i_mode, 0);

            if (mProcID != PROC_DEAD) {
                seStartSystem(Z2SE_FORCE_BACK);
            }
        }

        return 1;
    }

    return 0;
}

/* 800BE26C-800BE2C0 0B8BAC 0054+00 2/2 0/0 0/0 .text            checkCoachGuardGame__9daAlink_cFv
 */
BOOL daAlink_c::checkCoachGuardGame() {
    return !checkBoarSingleBattle() &&
           fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchCoach, NULL);
}

/* 800BE2C0-800BE3E4 0B8C00 0124+00 1/1 0/0 0/0 .text            checkRoofRestart__9daAlink_cFv */
void daAlink_c::checkRoofRestart() {
    daSpinner_c* spinner;

    if (checkSpinnerRide()) {
        spinner = (daSpinner_c*)mRideAcKeep.getActor();
    } else {
        spinner = NULL;
    }

    if (mLinkAcch.ChkRoofHit() &&
        (mLinkAcch.ChkGroundHit() ||
         (spinner != NULL && spinner->checkGroundHit() && spinner->getJumpFlg() == 0)) &&
        !checkMagneBootsOn() &&
        (mProcID != PROC_CRAWL_START && mProcID != PROC_CRAWL_END && !checkCoachGuardGame()))
    {
        s16 ac_name = getMoveBGActorName(mLinkAcch.m_roof, TRUE);
        if (ac_name == PROC_OBJ_SO || ac_name == PROC_Obj_SCannon) {
            return;
        }

        f32 roof_height = mLinkAcch.GetRoofHeight();
        if (roof_height > mLinkAcch.GetGroundH()) {
            f32 head_pos = mHeadTopPos.y - 10.0f;
            f32 temp_f0 = 10.0f + current.pos.y;

            if (head_pos < temp_f0) {
                head_pos = temp_f0;
            }

            if (roof_height < head_pos) {
                startRestartRoom(5, 0xC9, 4, 0);
            }
        }
    }
}

/* 80392094-80392094 01E6F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803925BA = "F_SP114";
#pragma pop

/* 800BE3E4-800BE9D4 0B8D24 05F0+00 1/1 0/0 0/0 .text            checkRestartRoom__9daAlink_cFv */
BOOL daAlink_c::checkRestartRoom() {
    if (checkMagneBootsOn()) {
        if (checkNoResetFlg0(FLG0_UNK_2000) && (dKy_pol_argument_get(&mMagneLineChk) & 0x80)) {
            startRestartRoom(5, 0xC9, 4, 0);
            return true;
        }
    } else if (mLinkAcch.i_ChkGroundHit() && field_0x2fbd == 2) {
        return procCoLavaReturnInit(1);
    } else if ((checkModeFlg(0x40000) || (checkNoResetFlg0(FLG0_UNK_80) && mWaterY - current.pos.y > daAlinkHIO_swim_c0::m.mInitHeight)) && fopAcM_GetRoomNo(this) == 0 && checkStageName("F_SP114")) {
        return procCoSwimFreezeReturnInit();
    } else if (!checkCargoCarry() && (field_0x3174 == 4 || field_0x3174 == 10 || (-1000000000.0f == mLinkAcch.GetGroundH() && !checkModeFlg(0x40000)))) {
        BOOL temp_r28 = mWaterY > mLinkAcch.GetGroundH();

        f32 var_f31;
        if (field_0x3174 == 10) {
            var_f31 = current.pos.y - mLinkAcch.GetGroundH();
        } else {
            var_f31 = field_0x33c8 - current.pos.y;
        }

        f32 var_f30;
        if (checkStageName("F_SP114")) {
            var_f30 = 3000.0f;
        } else if (checkBoarSingleBattle()) {
            var_f30 = 1000.0f;
        } else {
            var_f30 = 2000.0f;
        }

        if ((field_0x3174 != 10 && ((temp_r28 && checkModeFlg(0x40000)) || (!temp_r28 && (checkModeFlg(2) || checkNoResetFlg3(FLG3_UNK_80000)) && mProcID != PROC_HOOKSHOT_FLY && !checkModeFlg(0x800) && var_f31 > var_f30))) || (field_0x3174 == 10 && var_f31 <= 3000.0f) || (checkSpinnerRide() && mRideAcKeep.getActor() != NULL && ((daSpinner_c*)mRideAcKeep.getActor())->checkGroundHit()) || (mLinkAcch.i_ChkGroundHit() && mProcID != PROC_HOOKSHOT_FLY)) {
            int var_r29;
            s8 var_r27;
            
            if (field_0x3174 == 4 || field_0x3174 == 10) {
                if (checkCoachGuardGame()) {
                    var_r29 = 0;
                    var_r27 = -1;
                } else {
                    var_r29 = dComIfG_Bgsp().GetExitId(mLinkAcch.m_gnd);
                    var_r27 = (s8)current.roomNo;
                }

                if (checkModeFlg(2)) {
                    mLinkAcch.i_ClrGroundHit();
                }
            } else {
                var_r29 = 0x3F;
            }

            if (!checkNoResetFlg0(FLG0_UNK_40000) && checkWolf()) {
                voiceStart(Z2SE_WL_V_FALL_TO_RESTART);
                onNoResetFlg0(FLG0_UNK_40000);
            }

            if (var_r29 != 0x3F) {
                if (!checkNoResetFlg0(FLG0_UNK_4000) && dComIfGp_event_compulsory(this, NULL, 0xFFFF) && !checkRestartDead(4, 0)) {
                    mDemo.setOriginalDemoType();
                    if (checkSpinnerRide()) {
                        mDemo.setDemoMode(0xE);
                        mDemo.setParam0(2);
                    } else {
                        mDemo.setDemoMode(1);
                    }

                    onNoResetFlg0(FLG0_UNK_4000);

                    u32 sp8 = 5;
                    setLastSceneDamage(4, &sp8);
                    seStartSystem(0x33);
                    dStage_changeScene(var_r29, 0.0f, sp8, var_r27, shape_angle.y, -1);
                }
            } else if (startRestartRoom(5, 0xC9, 4, 0) && checkSpinnerRide()) {
                mDemo.setDemoMode(0xE);
                mDemo.setParam0(2);
            }

            return true;
        }
    } else if ((mLinkAcch.i_ChkGroundHit() && (dKy_pol_argument_get(&mLinkAcch.m_gnd) & 0x80)) || (checkWaterPolygonUnder() && checkNoResetFlg0(FLG0_UNK_80) && (dKy_pol_argument_get(&mLinkAcch.m_wtr) & 0x80)) || (checkModeFlg(0x40) && field_0x33bc < field_0x33b8 && -1000000000.0f != field_0x33b8 && (field_0x2fc6 & 0x80)) || (field_0x2fbc == 6 && checkNoResetFlg0(FLG0_UNK_80) && checkWaterPolygonUnder() && mWaterY > (daAlinkHIO_basic_c0::m.mLavaDeathDepth + mLinkAcch.GetGroundH())) || (field_0x2fc5 == 6 && -1000000000.0f != field_0x33b8 && field_0x33bc < field_0x33b8 && checkModeFlg(0x40) && field_0x33b8 > (field_0x33d8 + daAlinkHIO_basic_c0::m.mLavaDeathDepth))) {
        if (field_0x2fbc == 6 || (checkModeFlg(0x40) && field_0x2fc5 == 6)) {
            return procCoLavaReturnInit(0);
        }

        startRestartRoom(5, 0xC9, 4, 0);
        return true;
    }

    return false;
}

/* 800BE9D4-800BEAF8 0B9314 0124+00 2/2 0/0 0/0 .text            getSceneExitMoveAngle__9daAlink_cFv
 */
s16 daAlink_c::getSceneExitMoveAngle() {
    if (field_0x2f58 == NULL) {
        return current.angle.y;
    } else if (field_0x2f58->m_num == field_0x2fc2) {
        return mDemo.getMoveAngle();
    }

    dStage_dPnt_c* var_r30 = &field_0x2f58->m_points[field_0x2fc2];
    f32 dx = var_r30->m_position.x - current.pos.x;
    f32 dz = var_r30->m_position.z - current.pos.z;

    f32 var_f29;
    if (checkHorseRide()) {
        var_f29 = 10000.0f;
    } else {
        var_f29 = 2500.0f;
    }

    if (dx * dx + dz * dz < var_f29) {
        field_0x2fc2++;

        if (field_0x2f58->m_num == field_0x2fc2) {
            return mDemo.getMoveAngle();
        }

        dx = var_r30[1].m_position.x - current.pos.x;
        dz = var_r30[1].m_position.z - current.pos.z;
    }

    return cM_atan2s(dx, dz);
}

/* 800BEAF8-800BF084 0B9438 058C+00 1/1 0/0 0/0 .text            checkSceneChange__9daAlink_cFi */
int daAlink_c::checkSceneChange(int exitID) {
    BOOL var_r3 = mProcID != PROC_FOG_DEAD && (field_0x3174 == 9 || checkNoResetFlg2(FLG2_UNK_4000));

    if (field_0x3174 == 4 || field_0x3174 == 10) {
        exitID = 0x3F;
    }

    if (var_r3 ||
        ((exitID != 0x3F || mExitID != 0x3F) &&
         (checkModeFlg(0x40000) || checkModeFlg(0x400) || mLinkAcch.ChkGroundHit() ||
          mProcID == PROC_DOOR_OPEN || mProcID == PROC_WARP || mProcID == PROC_WOLF_DIG_THROUGH ||
          (field_0x3174 == 5 && field_0x33c8 - current.pos.y > 500.0f))) ||
        (mExitID & 0x8000 && checkModeFlg(2)))
    {
        if (field_0x3174 == 5 || (mExitID & 0x8000 && mExitDirection == 0xFF)) {
            mLinkAcch.i_ClrGroundHit();
        }

        if (checkNoResetFlg0(FLG0_UNK_4000)) {
            return 1;
        }
        
        if (checkHorseRide()) {
            if (dComIfG_Bgsp().GetHorseNoEntry(mLinkAcch.m_gnd)) {
                return 0;
            }

            if (daTagHstop_c::getTop() != NULL) {
                daTagHstop_c* hstop = daTagHstop_c::getTop();
                cXyz pos;
                for (; hstop != NULL; hstop = hstop->getNext()) {
                    if (hstop->getActiveFlg()) {
                        fpoAcM_relativePos(hstop, &current.pos, &pos);

                        if (pos.y >= -200.0f && pos.y <= hstop->scale.y + 600.0f &&
                            fabsf(pos.x) <= hstop->scale.x && fabsf(pos.z) <= hstop->scale.z)
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        BOOL is_horse_ride = checkHorseRide() && mProcID != PROC_HORSE_GETOFF;

        f32 exit_speed;
        f32 demo_stick;
        if (is_horse_ride) {
            if (mNormalSpeed < 15.0f) {
                exit_speed = 15.0f;
                demo_stick = 0.6f;
            } else {
                exit_speed = dComIfGp_getHorseActor()->getNormalMaxSpeedF();
                demo_stick = 0.6f;
            }
        } else if (checkWolf()) {
            if (mNormalSpeed < 10.0f || var_r3) {
                exit_speed = 10.0f;
                demo_stick = 0.65f;
            } else {
                exit_speed = daAlinkHIO_wlMoveNoP_c0::m.field_0x8;
                demo_stick = 1.0f;
            }
        } else if (mNormalSpeed < 10.0f || var_r3) {
            exit_speed = 10.0f;
            demo_stick = 0.6f;
        } else {
            exit_speed = daAlinkHIO_move_c0::m.mMaxSpeed;
            demo_stick = 1.0f;
        }

        int exit_mode;
        if (is_horse_ride) {
            exit_mode = 1;
        } else if (checkModeFlg(0x1000000)) {
            exit_speed = field_0x33a8;
            if (mUnderFrameCtrl[0].getRate() >= 0.0f) {
                exit_mode = 2;
            } else {
                exit_mode = 3;
            }
        } else if (mProcID == PROC_WOLF_DIG_THROUGH) {
            exit_mode = 9;
        } else {
            exit_mode = 0;
        }

        if (eventInfo.i_checkCommandDoor() || mProcID == PROC_WARP || mProcID == PROC_WOLF_DIG ||
            mProcID == PROC_WOLF_DIG_THROUGH || field_0x3106 != 0 ||
            dComIfGp_event_compulsory(this, NULL, -1))
        {
            BOOL scn_changed = false;

            if (var_r3) {
                mDemo.setOriginalDemoType();
                mDemo.setDemoMode(0x34);
            } else {
                if (mExitID != 0x3F) {
                    scn_changed = dStage_changeScene(mExitID & 0xFF, exit_speed, exit_mode,
                                                      fopAcM_GetRoomNo(this), shape_angle.y, -1);
                    if (scn_changed) {
                        onNoResetFlg2(FLG2_SCN_CHG_START);
                        if (mpScnChg != NULL && fopAcM_GetName(mpScnChg) == PROC_SCENE_EXIT) {
                            mpScnChg->setSceneChangeOK();
                        }
                    }

                    if (mExitDirection != 0xFF) {
                        field_0x2f58 = dPath_GetRoomPath(mExitDirection, fopAcM_GetRoomNo(this));
                    }
                } else {
                    scn_changed = dStage_changeSceneExitId(mLinkAcch.m_gnd, exit_speed, exit_mode,
                                                            fopAcM_GetRoomNo(this), shape_angle.y);
                    field_0x2f58 = dPath_GetRoomPath(dComIfG_Bgsp().GetRoomPathId(mLinkAcch.m_gnd),
                                                     fopAcM_GetRoomNo(this));
                }
            }

            if (scn_changed) {
                onNoResetFlg0(FLG0_UNK_4000);

                if (!eventInfo.i_checkCommandDoor()) {
                    mDemo.setOriginalDemoType();

                    if (checkUpperReadyThrowAnime()) {
                        resetUpperAnime(UPPER_2, 3.0f);
                    }

                    if (field_0x3174 == 5) {
                        mDemo.setDemoMode(0x11);
                    } else {
                        mDemo.setDemoMode(0x1A);
                        mDemo.setStick(demo_stick);
                    }

                    mDemo.setMoveAngle(getSceneExitMoveAngle());
                    if (is_horse_ride) {
                        daHorse_c* horse = dComIfGp_getHorseActor();
                        horse->changeOriginalDemo();
                        horse->changeDemoMode(6, 0);
                        horse->changeDemoMoveAngle(mDemo.getMoveAngle());
                        horse->setDemoStickR(demo_stick);
                    }
                }
                return 1;
            }
        }
    }

    return 0;
}

/* 800BF084-800BF0B8 0B99C4 0034+00 1/0 0/0 0/0 .text            voiceStart__9daAlink_cFUl */
void daAlink_c::voiceStart(u32 i_seID) {
    mZ2Link.startLinkVoice(i_seID, mVoiceReverbIntensity);
}

/* 800BF0B8-800BF0EC 0B99F8 0034+00 14/14 0/0 0/0 .text            voiceStartLevel__9daAlink_cFUl */
void daAlink_c::voiceStartLevel(u32 i_seID) {
    mZ2Link.startLinkVoiceLevel(i_seID, mVoiceReverbIntensity);
}

/* 800BF0EC-800BF124 0B9A2C 0038+00 21/21 0/0 0/0 .text            seStartSwordCut__9daAlink_cFUl */
void daAlink_c::seStartSwordCut(u32 i_seID) {
    mZ2Link.startLinkSwordSound(i_seID, 0, mVoiceReverbIntensity);
}

/* 800BF124-800BF15C 0B9A64 0038+00 1/0 0/0 0/0 .text            seStartOnlyReverb__9daAlink_cFUl */
void daAlink_c::seStartOnlyReverb(u32 i_seID) {
    mZ2Link.startLinkSound(i_seID, 0, mVoiceReverbIntensity);
}

/* 800BF15C-800BF194 0B9A9C 0038+00 1/0 0/0 0/0 .text seStartOnlyReverbLevel__9daAlink_cFUl */
void daAlink_c::seStartOnlyReverbLevel(u32 i_seID) {
    mZ2Link.startLinkSoundLevel(i_seID, 0, mVoiceReverbIntensity);
}

/* 800BF194-800BF1CC 0B9AD4 0038+00 10/10 0/0 0/0 .text            seStartMapInfo__9daAlink_cFUl */
void daAlink_c::seStartMapInfo(u32 i_seID) {
    mZ2Link.startLinkSound(i_seID, mPolySound, mVoiceReverbIntensity);
}

/* 800BF1CC-800BF204 0B9B0C 0038+00 9/9 0/0 0/0 .text            seStartMapInfoLevel__9daAlink_cFUl
 */
void daAlink_c::seStartMapInfoLevel(u32 i_seID) {
    mZ2Link.startLinkSoundLevel(i_seID, mPolySound, mVoiceReverbIntensity);
}

/* 800BF204-800BF37C 0B9B44 0178+00 3/3 0/0 0/0 .text
 * setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER          */
void daAlink_c::setBasAnime(daAlink_c::daAlink_UNDER param_0) {
    daPy_anmHeap_c* temp_r29 = &mUnderAnmHeap[param_0];
    daPy_frameCtrl_c* temp_r28 = &mUnderFrameCtrl[param_0];

    if (!temp_r29->checkNoSetArcNo()) {
        void* temp_r3 = ((mDoExt_transAnmBas*)getNowAnmPackUnder(UNDER_0))->getBas();
        if (temp_r3 == NULL) {
            resetBasAnime();
        } else {
            if (field_0x3084 == temp_r29->getIdx() && field_0x3086 == temp_r29->getArcNo()) {
                if (field_0x33d4 * temp_r28->getRate() >= 0.0f) {
                    field_0x2d7c = temp_r28;
                    return;
                }
            }

            field_0x2d80 = temp_r3;
            field_0x2d7c = temp_r28;
            field_0x3084 = temp_r29->getIdx();
            field_0x3086 = temp_r29->getArcNo();
            field_0x33d4 = temp_r28->getRate();
            initBasAnime();
        }
    } else {
        u8* temp_r3_2 = temp_r29->getBuffer();
        if (*(u32*)(temp_r3_2 + 0x1C) == 0xFFFFFFFF) {
            resetBasAnime();
            return;
        }

        if (field_0x3084 == temp_r29->getIdx() && field_0x3086 == temp_r29->getArcNo()) {
            if (field_0x33d4 * temp_r28->getRate() >= 0.0f) {
                field_0x2d7c = temp_r28;
                return;
            }
        }

        u32 dataSize = *(u32*)(temp_r3_2 + 0x8) - *(u32*)(temp_r3_2 + 0x1C);

        const u32 l_basAnmBufferSize = 0x800;
        JUT_ASSERT(20661, dataSize < l_basAnmBufferSize);

        cLib_memCpy(field_0x2d78, temp_r29->getBuffer() + *(u32*)(temp_r3_2 + 0x1C), dataSize);
        field_0x2d7c = temp_r28;
        field_0x3084 = temp_r29->getIdx();
        field_0x3086 = temp_r29->getArcNo();
        field_0x33d4 = temp_r28->getRate();
        field_0x2d80 = 0;
        initBasAnime();
    }
}

/* 800BF37C-800BF4E0 0B9CBC 0164+00 11/11 0/0 0/0 .text            initBasAnime__9daAlink_cFv */
void daAlink_c::initBasAnime() {
    if (field_0x2d7c != NULL) {
        f32 var_f31;
        if (field_0x2d7c->getAttribute() == J3DFrameCtrl::LOOP_REPEAT_e) {
            var_f31 = field_0x2d7c->getFrame() - field_0x2d7c->getRate();

            if (var_f31 <= field_0x2d7c->getStart()) {
                var_f31 = field_0x2d7c->getEnd() - var_f31;
            } else if (var_f31 >= field_0x2d7c->getEnd()) {
                var_f31 -= field_0x2d7c->getEnd();
            }
        } else {
            var_f31 = 0.0f;
        }

        if (field_0x2d80 != NULL) {
            mZ2Link.initAnime(field_0x2d80, field_0x2d7c->getRate() >= 0.0f, field_0x2d7c->getLoop(), var_f31);
        } else {
            mZ2Link.initAnime(field_0x2d78, field_0x2d7c->getRate() >= 0.0f, field_0x2d7c->getLoop(), var_f31);
        }
    }
}

/* 800BF4E0-800BF500 0B9E20 0020+00 6/6 0/0 0/0 .text            resetBasAnime__9daAlink_cFv */
void daAlink_c::resetBasAnime() {
    field_0x3084 = 0xFFFF;
    field_0x3086 = 0xFFFF;
    field_0x2d7c = NULL;
    field_0x2d80 = NULL;
}

/* 800BF500-800BF79C 0B9E40 029C+00 5/5 0/0 0/0 .text            checkSightLine__9daAlink_cFfP4cXyz
 */
BOOL daAlink_c::checkSightLine(f32 param_0, cXyz* param_1) {
    camera_class* camera = dComIfGp_getCamera(field_0x317c);
    cXyz* var_r29 = fopCamM_GetEye_p(camera);
    cXyz sp3C;
    cXyz sp30(mHeldItemRootPos);

    if (checkHookshotItem(mEquipItem) || mEquipItem == PACHINKO) {
        var_r29 = &sp30;
    } else if (checkBowItem(mEquipItem) && mItemAcKeep.getActor() != NULL) {
        var_r29 = &mItemAcKeep.getActor()->current.pos;
    }

    s16 temp_r27 = shape_angle.y + mBodyAngle.y;
    f32 temp_f31 = cM_scos(mBodyAngle.x);
    sp3C.set(temp_f31 * cM_ssin(temp_r27), -cM_ssin(mBodyAngle.x), temp_f31 * cM_scos(temp_r27));

    if (checkMagneBootsOn()) {
        mDoMtx_multVecSR(mMagneBootMtx, &sp3C, &sp3C);
    }

    *param_1 = (sp3C * param_0) + *var_r29;

    if (checkHookshotItem(mEquipItem)) {
        mRopeLinChk.Set(&field_0x3834, &mHeldItemRootPos, this);

        if (dComIfG_Bgsp().LineCross(&mRopeLinChk)) {
            *param_1 = mRopeLinChk.i_GetCross();
            onResetFlg0(RFLG0_UNK_2000000);
            return 1;
        }

        sp30 -= sp3C * 100.0f;
    } else if (mEquipItem == COPY_ROD) {
        return 0;
    }

    dBgS_LinChk* var_r30;
    if (mEquipItem == BOOMERANG) {
        var_r30 = &mBoomerangLinChk;
    } else if (mProcID == PROC_HAWK_SUBJECT) {
        var_r30 = &mLinkLinChk;
    } else if (checkBowAndSlingItem(mEquipItem)) {
        var_r30 = &mArrowLinChk;
    } else {
        var_r30 = &mRopeLinChk;
    }

    var_r30->Set(var_r29, param_1, this);

    BOOL temp_r3 = dComIfG_Bgsp().LineCross(var_r30);
    if (temp_r3) {
        *param_1 = var_r30->i_GetCross();
        onResetFlg0(RFLG0_UNK_2000000);
    }

    return temp_r3;
}

/* 800BF79C-800BF854 0BA0DC 00B8+00 2/2 0/0 0/0 .text            setMetamorphoseModel__9daAlink_cFi
 */
void daAlink_c::setMetamorphoseModel(int param_0) {
    J3DAnmTransform* bck =
        (J3DAnmTransform*)mAnmHeap9.loadDataIdx(param_0 != 0 ? (u16)0x27C : (u16)0x27D);
    JKRHeap* heap = setItemHeap();

    J3DModelData* model_data = loadAramBmd(0x31B, 0x6000);
    mHeldItemModel = initModel(model_data, 0);
    mItemBck.init(bck, 0, 2, 1.0f, 0, -1, false);

    mDoExt_setCurrentHeap(heap);
    mEquipItem = 0x106;
    field_0x33dc = mUnderFrameCtrl[0].getFrame();
}

/* 800BF854-800BF884 0BA194 0030+00 10/10 0/0 0/0 .text            keepItemData__9daAlink_cFv */
void daAlink_c::keepItemData() {
    mKeepItem = mEquipItem;
    deleteEquipItem(FALSE, FALSE);
}

/* 800BF884-800BF8D0 0BA1C4 004C+00 8/8 0/0 0/0 .text            returnKeepItemData__9daAlink_cFv */
void daAlink_c::returnKeepItemData() {
    deleteEquipItem(FALSE, FALSE);
    mEquipItem = mKeepItem;
    mKeepItem = NO_ITEM;
    makeItemType();
}

/* 800BF8D0-800BF9F0 0BA210 0120+00 2/2 0/0 0/0 .text            setItemModel__9daAlink_cFv */
BOOL daAlink_c::setItemModel() {
    if (checkBowItem(mEquipItem)) {
        setBowModel();
        return 1;
    }

    if (mEquipItem == PACHINKO) {
        setSlingModel();
        return 1;
    }

    if (mEquipItem == COPY_ROD) {
        setCopyRodModel();
        return mCopyRodAcKeep.getActor() != NULL ? 1 : 0;
    }

    if (mEquipItem == KANTERA) {
        setKandelaarModel();
        return 1;
    }

    if (mEquipItem == EMPTY_BOTTLE) {
        setBottleModel(mEquipItem);
        return 1;
    }

    if (checkHookshotItem(mEquipItem)) {
        setHookshotModel();
        return 1;
    }

    if (mEquipItem == EQUIP_SWORD) {
        setSwordModel();
        return 1;
    }

    if (mEquipItem == IRONBALL) {
        setIronBallModel();
        setIronBallWaitUpperAnime(1);
        return mItemAcKeep.getActor() != NULL ? 1 : 0;
    }

    return 0;
}

/* 800BF9F0-800BFD74 0BA330 0384+00 4/4 0/0 0/0 .text            setItemActor__9daAlink_cFv */
BOOL daAlink_c::setItemActor() {
    if (mEquipItem == BOOMERANG) {
        fopAc_ac_c* actor = (fopAc_ac_c*)fopAcM_fastCreate(PROC_BOOMERANG, 0, &current.pos, -1,
                                                           NULL, NULL, -1, NULL, NULL);
        if (actor == NULL) {
            deleteEquipItem(FALSE, FALSE);
            return 0;
        }

        mItemAcKeep.setData(actor);
        field_0x2f94 = 2;
        return 1;
    }

    if (mEquipItem == COPY_ROD) {
        fopAc_ac_c* actor = (fopAc_ac_c*)fopAcM_fastCreate(PROC_CROD, 0, &current.pos, -1, NULL,
                                                           NULL, -1, NULL, NULL);
        if (actor == NULL) {
            deleteEquipItem(FALSE, FALSE);
            return 0;
        }

        mItemAcKeep.setData(actor);
        field_0x2f94 = 2;
        return 1;
    }

    if (mEquipItem == IRONBALL) {
        fopAc_ac_c* actor = daCrod_c::makeIronBallDummy(this);

        if (actor == NULL) {
            if (checkIronBallWaitAnime()) {
                resetUpperAnime(UPPER_2, -1.0f);
            }
            deleteEquipItem(FALSE, FALSE);
            return 0;
        }

        mItemAcKeep.setData(actor);
        field_0x173c.SetActor(actor);
        return 1;
    }

    if (checkFisingRodLure()) {
        u32 id = fopAcM_create(PROC_MG_ROD, 0x10D, &mLeftHandPos, -1, NULL, NULL, 0xFF);
        mItemAcKeep.setID(id);
        initFishingRodHand();
        return 1;
    }

    if (checkFishingRodItem(mEquipItem)) {
        setGroundFishingRodActor();
        return 1;
    }

    if (checkBombItem(mEquipItem)) {
        if (checkHorseRide()) {
            if (!dComIfGp_getHorseActor()->checkNoBombProc() &&
                (mProcID != PROC_HORSE_TURN || !checkModeFlg(MODE_DISABLE_ITEMS)))
            {
                mEquipItem = NO_ITEM;
                return 1;
            }
        }

        cXyz create_pos = (mLeftHandPos + mRightHandPos) * 0.5f;
        if (checkReadyItem()) {
            fopAc_ac_c* actor;
            if (mEquipItem == NORMAL_BOMB) {
                actor = dBomb_c::createNormalBombPlayer(&create_pos);
            } else {
                actor = dBomb_c::createWaterBombPlayer(&create_pos);
            }

            if (actor != NULL) {
                mActiveBombNum++;
                setGrabItemActor(actor);
                dComIfGp_addSelectItemNum(mSelectItemId, -1);
                field_0x33e4 = 38.0f;
                setGrabUpperAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
            }
        }
        mEquipItem = NO_ITEM;
        return 1;
    }

    return 0;
}

/* 800BFD74-800BFDB0 0BA6B4 003C+00 2/2 0/0 0/0 .text            makeItemType__9daAlink_cFv */
void daAlink_c::makeItemType() {
    if (!setItemModel()) {
        setItemActor();
    }
}

bool daPy_py_c::checkZoraWearFlg() const {
    return dComIfGs_getSelectEquipClothes() == WEAR_ZORA;
}

bool daPy_py_c::checkMagicArmorWearFlg() const {
    return dComIfGs_getSelectEquipClothes() == ARMOR;
}

/* 800BFDB0-800BFDFC 0BA6F0 004C+00 28/28 0/0 0/0 .text checkZoraWearAbility__9daAlink_cCFv */
BOOL daAlink_c::checkZoraWearAbility() const {
    return (!checkWolf() && checkZoraWearFlg()) && !checkNoResetFlg2(FLG2_UNK_80000);
}

/* 800BFDFC-800BFE48 0BA73C 004C+00 5/5 0/0 0/0 .text checkMagicArmorWearAbility__9daAlink_cCFv */
BOOL daAlink_c::checkMagicArmorWearAbility() const {
    return (!checkWolf() && checkMagicArmorWearFlg()) && !checkNoResetFlg2(FLG2_UNK_80000);
}

/* 800BFE48-800BFF04 0BA788 00BC+00 9/9 0/0 0/0 .text            loadAramBmd__9daAlink_cFUsUl */
J3DModelData* daAlink_c::loadAramBmd(u16 i_resID, u32 i_bufSize) {
    JKRArchive* anm_arc = dComIfGp_getAnmArchive();
    u8* tmpBuffer = new (0x20) u8[i_bufSize];

    anm_arc->readIdxResource(tmpBuffer, i_bufSize, i_resID);

    u32 type = 'BMWR';
    JKRArchive::SDIDirEntry* dir = anm_arc->mNodes;
    for (int i = 0; i < anm_arc->countDirectory(); i++) {
        if (i_resID >= dir->first_file_index && i_resID < dir->first_file_index + dir->num_entries)
        {
            type = dir->type;
            break;
        }
        dir++;
    }

    return dRes_info_c::loaderBasicBmd(type, tmpBuffer);
}

/* 800BFF04-800BFF70 0BA844 006C+00 5/5 0/0 0/0 .text            loadAram__9daAlink_cFUsUl */
void* daAlink_c::loadAram(u16 i_resID, u32 i_bufSize) {
    u8* tmpBuffer = new (0x20) u8[i_bufSize];
    dComIfGp_getAnmArchive()->readIdxResource(tmpBuffer, i_bufSize, i_resID);
    return J3DAnmLoaderDataBase::load(tmpBuffer, J3DLOADER_UNK_FLAG0);
}

/* 800BFF70-800BFFCC 0BA8B0 005C+00 3/3 0/0 0/0 .text loadAramItemBrk__9daAlink_cFUsP8J3DModel */
J3DAnmTevRegKey* daAlink_c::loadAramItemBrk(u16 i_resID, J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();
    J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)loadAram(i_resID, 0x400);

    brk->setFrame(0.0f);
    brk->searchUpdateMaterialID(model_data);
    model_data->entryTevRegAnimator(brk);

    return brk;
}

/* 800BFFCC-800C0028 0BA90C 005C+00 2/2 0/0 0/0 .text loadAramItemBtk__9daAlink_cFUsP8J3DModel */
J3DAnmTextureSRTKey* daAlink_c::loadAramItemBtk(u16 i_resID, J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();
    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)loadAram(i_resID, 0x400);

    btk->setFrame(0.0f);
    btk->searchUpdateMaterialID(model_data);
    model_data->entryTexMtxAnimator(btk);

    return btk;
}

/* 800C0028-800C0084 0BA968 005C+00 1/1 0/0 0/0 .text loadAramItemBtp__9daAlink_cFUsP8J3DModel */
J3DAnmTexPattern* daAlink_c::loadAramItemBtp(u16 i_resID, J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();
    J3DAnmTexPattern* btp = (J3DAnmTexPattern*)loadAram(i_resID, 0x400);

    btp->setFrame(0.0f);
    btp->searchUpdateMaterialID(model_data);
    model_data->entryTexNoAnimator(btp);

    return btp;
}

/* 800C0084-800C0114 0BA9C4 0090+00 5/5 0/0 0/0 .text            changeItemBck__9daAlink_cFUsf */
void daAlink_c::changeItemBck(u16 i_resID, f32 param_1) {
    J3DAnmTransform* bck = (J3DAnmTransform*)mAnmHeap9.loadDataIdx(i_resID);
    if (bck != NULL) {
        mItemBck.changeBckOnly(bck);
    }

    if (param_1 < 0.0f) {
        field_0x33dc = mItemBck.getBckAnm()->getFrameMax();
    } else {
        field_0x33dc = param_1;
    }
}

/* 800C0114-800C0164 0BAA54 0050+00 2/2 0/0 0/0 .text            checkGroupItem__9daAlink_cCFii */
int daAlink_c::checkGroupItem(int i_itemNo, int i_selItem) const {
    if (i_itemNo == 0x107) {
        return checkDrinkBottleItem(i_selItem);
    } else if (i_itemNo == 0x108) {
        return checkFishingRodItem(i_selItem);
    } else {
        return i_itemNo == i_selItem;
    }
}

/* 800C0164-800C0208 0BAAA4 00A4+00 11/11 0/0 0/0 .text            checkSetItemTrigger__9daAlink_cFi
 */
int daAlink_c::checkSetItemTrigger(int i_itemNo) {
    for (u8 i = 0; i < 2; i++) {
        if (checkGroupItem(i_itemNo, dComIfGp_getSelectItem(i)) && itemTriggerCheck(1 << i)) {
            if (i_itemNo != HVY_BOOTS) {
                mSelectItemId = i;
            }
            return 1;
        }
    }

    return 0;
}

/* 800C0208-800C0284 0BAB48 007C+00 6/6 0/0 0/0 .text            checkItemSetButton__9daAlink_cFi */
int daAlink_c::checkItemSetButton(int i_itemNo) {
    for (u8 i = 0; i < 2; i++) {
        if (checkGroupItem(i_itemNo, dComIfGp_getSelectItem(i))) {
            return i;
        }
    }

    return 2;
}

/* 800C0284-800C02C8 0BABC4 0044+00 1/1 0/0 0/0 .text            checkField__9daAlink_cFv */
bool daAlink_c::checkField() {
    return dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_FIELD;
}

/* 800C02C8-800C0310 0BAC08 0048+00 6/6 0/0 0/0 .text            checkBossRoom__9daAlink_cFv */
bool daAlink_c::checkBossRoom() {
    return dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_BOSS_ROOM;
}

/* 800C0310-800C0358 0BAC50 0048+00 4/4 0/0 0/0 .text            checkDungeon__9daAlink_cFv */
bool daAlink_c::checkDungeon() {
    return dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_DUNGEON;
}

/* 800C0358-800C03A0 0BAC98 0048+00 3/3 0/0 0/0 .text            checkCastleTown__9daAlink_cFv */
bool daAlink_c::checkCastleTown() {
    return dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_CASTLE_TOWN;
}

/* 800C03A0-800C03E8 0BACE0 0048+00 6/6 0/0 1/1 .text            checkCloudSea__9daAlink_cFv */
bool daAlink_c::checkCloudSea() {
    return dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_CLOUD_SEA;
}

/* 800C03E8-800C044C 0BAD28 0064+00 5/5 0/0 0/0 .text            checkRoomOnly__9daAlink_cFv */
bool daAlink_c::checkRoomOnly() {
    return dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_ROOM ||
           checkLv7DungeonShop();
}

/* 800C044C-800C04B4 0BAD8C 0068+00 3/3 0/0 0/0 .text checkLv2DungeonRoomSpecial__9daAlink_cFv */
bool daAlink_c::checkLv2DungeonRoomSpecial() {
    return checkStageName("D_MN04") &&
           (dComIfGp_roomControl_getStayNo() == 14 || dComIfGp_roomControl_getStayNo() == 16 ||
            dComIfGp_roomControl_getStayNo() == 17);
}

/* 800C04B4-800C0520 0BADF4 006C+00 2/2 0/0 0/0 .text            checkRoomSpecial__9daAlink_cFv */
bool daAlink_c::checkRoomSpecial() {
    return (checkStageName("D_MN11") &&
            (dComIfGp_roomControl_getStayNo() == 1 || dComIfGp_roomControl_getStayNo() == 2)) ||
           checkLv2DungeonRoomSpecial();
}

/* 800C0520-800C0594 0BAE60 0074+00 1/1 0/0 0/0 .text            checkRoom__9daAlink_cFv */
bool daAlink_c::checkRoom() {
    return checkRoomOnly() || checkRoomSpecial() ||
           checkStageName("R_SP161") && !dComIfGs_isOneZoneSwitch(14, -1);
}

/* 800C0594-800C05DC 0BAED4 0048+00 8/8 0/0 0/0 .text            checkNotBattleStage__9daAlink_cFv
 */
bool daAlink_c::checkNotBattleStage() {
    return checkRoom() || checkCastleTown();
}

/* 800C05DC-800C0630 0BAF1C 0054+00 2/2 0/0 0/0 .text checkNotHeavyBootsStage__9daAlink_cFv */
bool daAlink_c::checkNotHeavyBootsStage() {
    return (checkNotBattleStage() || checkCloudSea()) && !checkLv2DungeonRoomSpecial();
}

/* 800C0630-800C0678 0BAF70 0048+00 1/1 0/0 0/0 .text            checkNotAutoJumpStage__9daAlink_cFv
 */
bool daAlink_c::checkNotAutoJumpStage() {
    return checkRoomOnly() || checkCastleTown();
}

/* 800C0678-800C077C 0BAFB8 0104+00 3/3 0/0 0/0 .text checkCastleTownUseItem__9daAlink_cFUs */
bool daAlink_c::checkCastleTownUseItem(u16 i_itemNo) {
    if (checkNotBattleStage()) {
        if (i_itemNo == KANTERA || checkTradeItem(i_itemNo) ||
            (i_itemNo == DUNGEON_BACK && checkLv7DungeonShop()) ||
            (checkRoomSpecial() && (i_itemNo == EMPTY_BOTTLE || checkDungeonWarpItem(i_itemNo))) ||
            (checkStageName("R_SP128") && i_itemNo == COPY_ROD) ||
            (checkLv2DungeonRoomSpecial() && i_itemNo == HVY_BOOTS) ||
            (checkBottleItem(i_itemNo) && i_itemNo != EMPTY_BOTTLE))
        {
            return true;
        } else {
            return false;
        }
    }
    return true;
}

enum daAlink_ItemProc {
    /*  0 */ ITEM_PROC_NONE,
    /*  1 */ ITEM_PROC_BOOTS_EQUIP,
    /*  2 */ ITEM_PROC_SET_HVYBOOTS,
    /*  3 */ ITEM_PROC_BOTTLE_DRINK,
    /*  4 */ ITEM_PROC_SPINNER_READY,
    /*  5 */ ITEM_PROC_DUNGEON_WARP_READY,
    /*  6 */ ITEM_PROC_BOTTLE_OPEN,
    /*  7 */ ITEM_PROC_FISHING_FOOD,
    /*  8 */ ITEM_PROC_KANDELAAR_POUR,
    /*  9 */ ITEM_PROC_SUBJECTIVITY,
    /* 10 */ ITEM_PROC_PICK_PUT,
    /* 11 */ ITEM_PROC_OFF_KANDELAAR,
    /* 12 */ ITEM_PROC_COMMON_CHANGE_ITEM,
    /* 13 */ ITEM_PROC_BOTTLE_SWING,
    /* 14 */ ITEM_PROC_NOT_USE_ITEM,
    /* 15 */ ITEM_PROC_GRASS_WHISTLE,
};

/* 800C077C-800C0A9C 0BB0BC 0320+00 1/1 0/0 0/0 .text changeItemTriggerKeepProc__9daAlink_cFUci */
int daAlink_c::changeItemTriggerKeepProc(u8 i_selItemIdx, int i_procType) {
    u32 sel_item = dComIfGp_getSelectItem(i_selItemIdx);
    mSelectItemId = i_selItemIdx;

    if (i_procType == ITEM_PROC_GRASS_WHISTLE) {
        procGrassWhistleWaitInit(3, -1, 0, 0, NULL);
    } else if (i_procType == ITEM_PROC_BOTTLE_DRINK) {
        if (checkReinRide()) {
            procHorseBottleDrinkInit(sel_item);
        } else if (checkCanoeRide()) {
            procCanoeBottleDrinkInit(sel_item);
        } else {
            procBottleDrinkInit(sel_item);
        }
    } else if (i_procType == ITEM_PROC_KANDELAAR_POUR) {
        if (checkReinRide()) {
            procHorseKandelaarPourInit();
        } else if (checkCanoeRide()) {
            procCanoeKandelaarPourInit();
        } else {
            procKandelaarPourInit();
        }
    } else if (i_procType == ITEM_PROC_FISHING_FOOD) {
        procFishingFoodInit();
    } else if (i_procType == ITEM_PROC_BOOTS_EQUIP) {
        procBootsEquipInit();
    } else if (i_procType == ITEM_PROC_SET_HVYBOOTS) {
        setHeavyBoots(1);
    } else if (i_procType == ITEM_PROC_SPINNER_READY) {
        procSpinnerReadyInit();
    } else if (i_procType == ITEM_PROC_DUNGEON_WARP_READY) {
        procDungeonWarpReadyInit();
    } else if (i_procType == ITEM_PROC_BOTTLE_OPEN) {
        procBottleOpenInit(sel_item);
    } else if (i_procType == ITEM_PROC_BOTTLE_SWING) {
        procBottleSwingInit(NULL, 0);
    } else if (i_procType == ITEM_PROC_NOT_USE_ITEM) {
        procNotUseItemInit(sel_item);
    } else if (i_procType == ITEM_PROC_SUBJECTIVITY) {
        procCoSubjectivityInit();
        dComIfGp_setPlayerStatus0(0, 0x200000);
        seStartSystem(Z2SE_AL_HAWK_EYE_PUTON);
    } else if (i_procType == ITEM_PROC_PICK_PUT) {
        procPickPutInit(1);
    } else if (i_procType == ITEM_PROC_OFF_KANDELAAR) {
        offKandelaarModel();
    } else if (i_procType == ITEM_PROC_COMMON_CHANGE_ITEM) {
        field_0x2fde = NO_ITEM;
        itemEquip(sel_item);

        if (dComIfGp_checkPlayerStatus0(0, 0x2000) &&
            ((checkBowAndSlingItem(field_0x2fde) || checkHookshotItem(field_0x2fde) ||
              field_0x2fde == COPY_ROD) ||
             field_0x2fde == BOOMERANG))
        {
            commonChangeItem();
            resetUpperAnime(UPPER_2, -1.0f);
            checkItemActionInitStart();
        }
    }

    return 1;
}

/* 800C0A9C-800C12DC 0BB3DC 0840+00 1/1 0/0 0/0 .text            checkNewItemChange__9daAlink_cFUc
 */
/**
 * Determines whether an item action can occur, and which action to use.
 *
 * @return a `daAlink_ItemProc` value corresponding to the `PROC` function to run in
 * `changeItemTriggerKeepProc`
 */
int daAlink_c::checkNewItemChange(u8 param_0) {
    u32 sel_item = dComIfGp_getSelectItem(param_0);

    if (checkSpinnerRide() || sel_item == BOMB_BAG_LV1 ||
        ((sel_item == KANTERA || checkOilBottleItem(sel_item)) &&
         checkWaterInKandelaarOffset(mWaterY)) ||
        (checkCanoeRide() && checkStageName("F_SP127")) || checkCloudSea() ||
        ((checkModeFlg(0x40000) || checkNoResetFlg0(FLG0_UNDERWATER)) &&
         !checkAcceptUseItemInWater(sel_item)) ||
        (checkModeFlg(0x40000) && sel_item == WATER_BOMB) || !checkCastleTownUseItem(sel_item) ||
        (checkBoardRide() && sel_item != 0x103) ||
        (checkModeFlg(0x400) &&
         (sel_item == EMPTY_BOTTLE || sel_item == POKE_BOMB || sel_item == IRONBALL ||
          sel_item == COPY_ROD || checkFishingRodItem(sel_item))) ||
        ((mGndPolySpecialCode == dBgW_SPCODE_HEAVY_SNOW || field_0x2fbd == 1 || field_0x2fbd == 2 ||
          mWaterY - current.pos.y > 45.0f ||
          (field_0x2fbc == 6 && mWaterY - current.pos.y >= 0.0f) || field_0x2fbd == 3) &&
         sel_item == SPINNER) ||
        (checkBossRoom() && checkDungeonWarpItem(sel_item)) ||
        (sel_item == DUNGEON_EXIT &&
         (checkLv7DungeonShop() ||
          (checkStageName("D_MN07") && fopAcM_isSwitch(this, 0x4D) &&
           !fopAcM_isSwitch(this, 0x18)) ||
          (checkStageName("D_MN10") && fopAcM_GetRoomNo(this) == 15))) ||
        (checkMagneBootsOn() && sel_item != 0x103 && !checkDrinkBottleItem(sel_item) &&
         sel_item != HVY_BOOTS && !checkBowItem(sel_item)))
    {
        return ITEM_PROC_NONE;
    } else if (sel_item == HVY_BOOTS || checkDungeonWarpItem(sel_item) ||
               checkTradeItem(sel_item) ||
               (checkBottleItem(sel_item) && sel_item != EMPTY_BOTTLE) || sel_item == SPINNER ||
               sel_item == POKE_BOMB || sel_item == HORSE_FLUTE || sel_item == HAWK_EYE)
    {
        if (checkReinRide() || checkCanoeRide()) {
            if (checkDrinkBottleItem(sel_item)) {
                return ITEM_PROC_BOTTLE_DRINK;
            }

            if (checkOilBottleItem(sel_item) && checkItemSetButton(0x48) != 2) {
                return ITEM_PROC_KANDELAAR_POUR;
            }
        } else if (sel_item == HVY_BOOTS) {
            if (!checkBoardRide()) {
                if ((mLinkAcch.ChkGroundHit() && !checkModeFlg(0x70C52)) ||
                    (checkMagneBootsOn() && cBgW_CheckBGround(mMagneBootsTopVec.y)) ||
                    mProcID == PROC_HANG_CLIMB)
                {
                    return ITEM_PROC_BOOTS_EQUIP;
                }
                return ITEM_PROC_SET_HVYBOOTS;
            }
        } else if (checkDrinkBottleItem(sel_item) && checkMagneBootsOn()) {
            if (cBgW_CheckBGround(mMagneBootsTopVec.y)) {
                return ITEM_PROC_BOTTLE_DRINK;
            }
        } else if (mLinkAcch.ChkGroundHit()) {
            if (!checkModeFlg(0x70C52)) {
                if (sel_item == SPINNER) {
                    cXyz sp38(current.pos.x, current.pos.y + l_autoUpHeight, current.pos.z);
                    cXyz sp2C(sp38);
                    cXyz sp20;

                    s16 var_r30 = 0;
                    for (int i = 0; i < 4; i++, var_r30 += 0x2000) {
                        sp2C.x = sp38.x + cM_ssin(var_r30) * 120.0f;
                        sp2C.z = sp38.z + cM_scos(var_r30) * 120.0f;

                        if (commonLineCheck(&sp38, &sp2C)) {
                            sp2C.x = (sp38.x * 2.0f) - sp2C.x;
                            sp2C.z = (sp38.z * 2.0f) - sp2C.z;
                            sp20 = mLinkLinChk.i_GetCross();

                            if (commonLineCheck(&sp38, &sp2C)) {
                                if (mLinkLinChk.i_GetCross().abs2XZ(sp20) < 14400.0f) {
                                    return ITEM_PROC_NONE;
                                }
                            }
                        }
                    }

                    return ITEM_PROC_SPINNER_READY;
                } else if (checkDungeonWarpItem(sel_item)) {
                    return ITEM_PROC_DUNGEON_WARP_READY;
                } else if (checkItemSetButton(0x108) != 2 &&
                           (sel_item == WORM || sel_item == BEE_CHILD))
                {
                    int temp_r3_8 = dComIfGp_getSelectItem(checkItemSetButton(0x108));
                    if (temp_r3_8 == WORM_ROD || temp_r3_8 == JEWEL_WORM_ROD) {
                        if (sel_item == BEE_CHILD) {
                            return ITEM_PROC_BOTTLE_DRINK;
                        }
                        return ITEM_PROC_NONE;
                    }
                    if (sel_item == BEE_CHILD &&
                        (temp_r3_8 == BEE_ROD || temp_r3_8 == JEWEL_BEE_ROD))
                    {
                        return ITEM_PROC_BOTTLE_DRINK;
                    }
                    return ITEM_PROC_FISHING_FOOD;
                } else if (checkDrinkBottleItem(sel_item)) {
                    return ITEM_PROC_BOTTLE_DRINK;
                } else if (checkOpenBottleItem(sel_item)) {
                    return ITEM_PROC_BOTTLE_OPEN;
                } else if (checkTradeItem(sel_item)) {
                    return ITEM_PROC_NOT_USE_ITEM;
                } else if (sel_item == HORSE_FLUTE) {
                    return ITEM_PROC_GRASS_WHISTLE;
                } else if (checkOilBottleItem(sel_item) && checkItemSetButton(0x48) != 2) {
                    return ITEM_PROC_KANDELAAR_POUR;
                } else if (sel_item == HAWK_EYE) {
                    if (acceptSubjectModeChange()) {
                        return ITEM_PROC_SUBJECTIVITY;
                    }
                } else if (sel_item == POKE_BOMB && dComIfGp_getSelectItemNum(param_0) &&
                           field_0x2fcf < 2)
                {
                    return ITEM_PROC_PICK_PUT;
                }
            }
        }
    } else if (sel_item != NO_ITEM && mEquipItem != sel_item) {
        if ((checkBombItem(sel_item) && !dComIfGp_getSelectItemNum(param_0)) ||
            ((sel_item == NORMAL_BOMB || sel_item == WATER_BOMB) && mActiveBombNum >= 3) ||
            (sel_item == IRONBALL && (!mLinkAcch.ChkGroundHit() || checkModeFlg(0x70C52))) ||
            (sel_item == KANTERA && (checkNoResetFlg0(FLG0_UNDERWATER) ||
                                     checkEndResetFlg1(ERFLG1_UNK_4) || checkModeFlg(0x40000))))
        {
            return ITEM_PROC_NONE;
        }
        return ITEM_PROC_COMMON_CHANGE_ITEM;
    }

    if (mEquipItem == sel_item && mSelectItemId != param_0 && mEquipItem == EMPTY_BOTTLE) {
        return ITEM_PROC_BOTTLE_SWING;
    }

    return ITEM_PROC_NONE;
}

/* 800C12DC-800C1704 0BBC1C 0428+00 67/67 0/0 0/0 .text            deleteEquipItem__9daAlink_cFii */
void daAlink_c::deleteEquipItem(BOOL i_playSound, BOOL i_deleteKantera) {
    if (i_deleteKantera || mProcID == PROC_UNEQUIP) {
        offKandelaarModel();
    } else if (mEquipItem == KANTERA && checkNoResetFlg2(FLG2_UNK_1)) {
        mZ2Link.setKanteraState(2);
    }

    if (mEquipItem == NO_ITEM || mEquipItem == 0x10B) {
        return;
    }

    fopAc_ac_c* item_actor = mItemAcKeep.getActor();

    if (i_playSound) {
        if (mEquipItem == 0x103) {
            if (checkWoodSwordEquip()) {
                seStartOnlyReverb(Z2SE_AL_ITEM_TAKEOUT_FAST);
            } else {
                seStartOnlyReverb(Z2SE_AL_SWORD_PUTIN);
            }
        } else if (mEquipItem < NO_ITEM) {
            seStartOnlyReverb(Z2SE_AL_ITEM_TAKEOUT);
        }
    }

    if (mEquipItem == 0x103) {
        offSwordModel();
        stickArrowIncrement(1);
    } else if (mEquipItem == 0x102) {
        if (item_actor != NULL) {
            fopAcM_cancelCarryNow(item_actor);

            if (fopAcM_lc_c::lineCheck(&field_0x34e0, &item_actor->current.pos, this)) {
                cM3dGPla tri;
                fopAcM_lc_c::getTriPla(&tri);

                item_actor->current.pos = *fopAcM_lc_c::getCrossP() + (tri.mNormal * 5.0f);
            }
        }
    } else if (item_actor != NULL) {
        fopAcM_delete(item_actor);
    }

    if (mEquipItem == IRONBALL) {
        mZ2Link.setUsingIronBall(false);
    } else if (checkHookshotItem(mEquipItem)) {
        cancelHookshotCarry();
    }

    if (((mEquipItem == BOOMERANG || mEquipItem == 0x102) && checkBoomerangAnime()) ||
         (mEquipItem == COPY_ROD && checkCopyRodAnime()) ||
         (checkHookshotItem(mEquipItem) && checkHookshotAnime()) ||
         (mEquipItem == IRONBALL && (checkIronBallAnime() || checkIronBallWaitAnime())) ||
         (checkBowAndSlingItem(mEquipItem) && checkBowAnime()))
    {
        resetUpperAnime(UPPER_2, -1.0f);
    }

    if (mCopyRodAcKeep.getActor() != NULL) {
        ((daCrod_c*)mCopyRodAcKeep.getActor())->offControll();
    }

    mItemAcKeep.clearData();
    mEquipItem = NO_ITEM;
    mHeldItemModel = NULL;
    mpHookTipModel = NULL;
    field_0x0710 = NULL;
    field_0x0714 = NULL;

    if (mItemBck.getBckAnm() != NULL) {
        mItemBck.changeBckOnly(NULL);
    }

    if (mHookTipBck.getBckAnm() != NULL) {
        mHookTipBck.changeBckOnly(NULL);
    }

    mAnmHeap9.resetIdx();

    field_0x0718 = NULL;
    field_0x071c = NULL;
    field_0x0720 = NULL;
    field_0x0724 = NULL;
    field_0x0728 = NULL;
    field_0x072c = NULL;
    mpItemModelData = NULL;
    mpHookChain = NULL;
    mIronBallChainPos = NULL;
    mIronBallChainAngle = NULL;
    field_0x3848 = NULL;
    field_0x0774 = NULL;
    field_0x0778 = NULL;
    mpHookshotLinChk = NULL;
    field_0x780 = NULL;

    mAtCps[0].SetAtType(getSwordAtType());
    mAtCps[0].SetAtHitCallback(NULL);
    mAtCps[0].OffAtSetBit();
    cancelLockAt();
    mAtCps[0].SetAtMtrl(dCcD_MTRL_NONE);

    field_0x173c.SetActor(this);

    field_0x2f1c = NULL;
    field_0x2f94 = 0xFF;
    field_0x2f95 = 0xFF;

    offNoResetFlg2(FLG2_UNK_20000000);
    offNoResetFlg1(FLG1_UNK_8000);

    if (mpHookSound != NULL) {
        mpHookSound->deleteObject();
        mpHookSound = NULL;
    }
}

/* 800C1704-800C1CEC 0BC044 05E8+00 1/1 0/0 0/0 .text            setLight__9daAlink_cFv */
void daAlink_c::setLight() {
    const daAlinkHIO_huLight_c1* light_m = &daAlinkHIO_huLight_c0::m;
    BOOL var_r28 = false;

    if (checkWolf()) {
        offNoResetFlg1(FLG1_UNK_80);
    } else {
        if (checkNoResetFlg2(FLG2_UNK_1) || checkEndResetFlg1(ERFLG1_UNK_4)) {
            if (dComIfGs_getOil() != 0 && !checkNoResetFlg2(FLG2_UNK_10000000) && ((checkNoResetFlg2(FLG2_UNK_1) && !checkFreezeDamage()) || checkEndResetFlg1(ERFLG1_UNK_10))) {
                onNoResetFlg1(FLG1_UNK_80);

                if (!checkEventRun() && !checkEndResetFlg1(ERFLG1_UNK_4)) {
                    dComIfGp_setItemOilCount(-daAlinkHIO_kandelaar_c0::m.mNormalOilLoss);
                }

                u16 ptcl_id;
                dPa_levelEcallBack* callbackp;
                if (checkKandelaarSwingAnime() || mProcID == PROC_KANDELAAR_SWING) {
                    ptcl_id = 0x362;
                    callbackp = &field_0x2f20;

                    JPABaseEmitter* emitterp = dComIfGp_particle_getEmitter(field_0x31c4);
                    if (emitterp != NULL && emitterp->getEmitterCallBackPtr() == NULL) {
                        emitterp->stopDrawParticle();
                    }
                } else {
                    ptcl_id = 0x2BC;
                    callbackp = NULL;
                }

                field_0x31c4 = dComIfGp_particle_set(field_0x31c4, ptcl_id, &mKandelaarFlamePos, &tevStr, &shape_angle, NULL, 0xFF, callbackp, -1, NULL, NULL, NULL);
                mZ2Link.getKantera().startLevelSound(Z2SE_AL_KANTERA_BURNING, 0, mVoiceReverbIntensity);
            } else if (checkNoResetFlg1(FLG1_UNK_80)) {
                mZ2Link.getKantera().startSound(Z2SE_AL_KANTERA_OFF, 0, mVoiceReverbIntensity);
                offNoResetFlg1(FLG1_UNK_80);
                stopDrawParticle(field_0x31c4);
            }

            f32 scale_targ;
            if (field_0x344c > (f32)field_0x32c8 || !checkNoResetFlg1(FLG1_UNK_80)) {
                scale_targ = 0.0f;
            } else {
                scale_targ = 1.0f;
            }

            cLib_addCalc(&field_0x3448, scale_targ, 0.5f, 0.3f, 0.1f);

            Vec glow_scale = {0.0f, 0.0f, 0.0f};
            glow_scale.x = field_0x3448;
            glow_scale.y = field_0x3448;
            glow_scale.z = field_0x3448;
            mpKanteraGlowModel->setBaseScale(glow_scale);
        } else {
            offNoResetFlg1(FLG1_UNK_80);
            stopDrawParticle(field_0x31c4);
        }

        if (mEquipItem == 0x103 && checkNoResetFlg3(FLG3_UNK_100000)) {
            onNoResetFlg1(FLG1_UNK_80);
            var_r28 = true;
        }
    }

    f32 var_f31;
    if (var_r28) {
        if (mCutType == 0) {
            var_f31 = 0.4f;
        } else {
            var_f31 = 1.5f;
        }
    } else {
        if (checkNoResetFlg1(FLG1_UNK_80)) {
            var_f31 = light_m->field_0xC;
        } else {
            var_f31 = 0.0f;
        }
    }

    f32 var_f30 = 1.0f;
    f32 var_f29;
    if (mProcID == PROC_METAMORPHOSE && mProcVar5.field_0x3012 != 0) {
        var_f29 = 0.05f;
    } else if (checkEndResetFlg2(ERFLG2_UNK_10)) {
        var_f30 = 0.28f;
        var_f29 = 0.01f;
        var_f31 = 1.5f;
    } else {
        var_f29 = 0.2f;
    }

    cLib_chaseF(&field_0x33fc, var_f31, light_m->field_0xC * var_f29);

    cXyz spB8;
    f32 var_f27;
    if (field_0x33fc > 0.0f) {
        GXColor spF0 = {0x00, 0x00, 0x00, 0xFF};
        spF0.r = light_m->field_0x4;
        spF0.g = light_m->field_0x6;
        spF0.b = light_m->field_0x8;

        Vec spC4 = {0.0f, 0.0f, 0.0f};
        spC4.y = light_m->field_0x14;
        spC4.z = light_m->field_0x18;

        f32 var_f26;
        if ((u32)light_m == (u32)&daAlinkHIO_wlLight_c0::m) {
            cXyz spD0 = eyePos - field_0x34e0;
            s16 sp104 = spD0.atan2sY_XZ();
            s16 sp106 = spD0.atan2sX_Z();

            mDoMtx_stack_c::transS(eyePos);
            mDoMtx_stack_c::ZXYrotM(sp104, sp106, 0);
            mDoMtx_stack_c::multVec(&spC4, &spB8);

            var_f27 = cM_sht2d((s16)-(sp104 + mBodyAngle.x)) * 0.5f;
            var_f26 = cM_sht2d(-sp106);
        } else {
            if (var_r28) {
                spB8 = (mSwordTopPos + field_0x3498) * 0.5f;

                spF0.r = var_f30 * 150.0f;
                spF0.g = var_f30 * 174.0f;
                spF0.b = var_f30 * 141.0f;
            } else {
                spB8 = mKandelaarFlamePos;
            }

            var_f27 = 0.0f;
            var_f26 = cM_sht2d(-shape_angle.y);
        }

        dKy_WolfEyeLight_set(&spB8, var_f27 + light_m->field_0xA, var_f26, (light_m->field_0x10 * field_0x33fc) / light_m->field_0xC, &spF0, field_0x33fc, light_m->field_0x0, light_m->field_0x1);
    }
}

/* 800C1CEC-800C1DAC 0BC62C 00C0+00 3/3 0/0 0/0 .text setFrontRollCrashShock__9daAlink_cFUc */
void daAlink_c::setFrontRollCrashShock(u8 param_0) {
    dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));

    mZ2Link.startLinkSound(Z2SE_AL_BODYATTACK, param_0, mVoiceReverbIntensity);
    dKy_Sound_set(current.pos, 100, fopAcM_GetID(this), 5);
}

/* 800C1DAC-800C1DE0 0BC6EC 0034+00 1/0 0/0 0/0 .text            getModelJointMtx__9daAlink_cFUs */
MtxP daAlink_c::getModelJointMtx(u16 param_0) {
    if (param_0 >= field_0x30c6) {
        return mpLinkModel->mBaseTransformMtx;
    }
    return mpLinkModel->getAnmMtx(param_0);
}

/* 800C1DE0-800C1E0C 0BC720 002C+00 1/0 0/0 0/0 .text            onFrollCrashFlg__9daAlink_cFUci */
void daAlink_c::onFrollCrashFlg(u8 param_0, BOOL param_1) {
    if (param_1) {
        onNoResetFlg0(FLG0_UNK_10);
    } else {
        onNoResetFlg0(FLG0_UNK_8);
    }

    mRollCrashFlg = param_0;
}

/* 800C1E0C-800C1F6C 0BC74C 0160+00 4/4 0/0 0/0 .text
 * changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE */
void daAlink_c::changeWarpMaterial(daAlink_c::daAlink_WARP_MAT_MODE i_matMode) {
    void (*mat_func_tbl[])(J3DModelData*) = {dRes_info_c::onWarpMaterial, dRes_info_c::offWarpMaterial};
    
    void (*mat_func)(J3DModelData*) = mat_func_tbl[i_matMode];
    mat_func(field_0x064C);
    mat_func(mSwordModel->getModelData());
    mat_func(mShieldModel->getModelData());
    mat_func(mSheathModel->getModelData());

    if (checkWolf()) {
        mat_func(mpWlChainModels[0]->getModelData());
    } else {
        mat_func(mpLinkFaceModel->getModelData());
        mat_func(mpLinkHatModel->getModelData());
        mat_func(mpLinkHandModel->getModelData());
        mat_func(mpLinkBootModels[0]->getModelData());
    }

    if (i_matMode == WARP_MAT_MODE_1) {
        for (int i = 0; i < 6; i++) {
            JPABaseEmitter* emitterp = dComIfGp_particle_getEmitter(field_0x3240[i]);
            if (emitterp != NULL) {
                emitterp->stopDrawParticle();
            }
        }
    }
}

/* 800C1F6C-800C2DA4 0BC8AC 0E38+00 229/229 0/0 0/0 .text
 * commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC        */
// almost, some regalloc
void daAlink_c::commonProcInit(daAlink_c::daAlink_PROC i_procID) {
    if (mProcID == PROC_TOOL_DEMO) {
        speed.y = 0.0f;
        resetDemoBck();
        if (checkModeFlg(MODE_RIDING)) {
            initForceRideHorse();
        }

        if (mProcVar2.field_0x300c != 0) {
            changeWarpMaterial(WARP_MAT_MODE_1);
        }
    } else if (mProcID == PROC_GRAB_STAND) {
        for (int i = 0; i < 2; i++) {
            field_0x312a[i] = csXyz::Zero;
            field_0x3136[i] = csXyz::Zero;
        }
    } else if (mProcID == PROC_GRASS_WHISTLE_WAIT) {
        returnKeepItemData();
    } else if (checkModeFlg(MODE_UNK_20)) {
        fopAc_ac_c* actor = field_0x280c.getActor();

        if (actor != NULL) {
            if (mProcID == PROC_WOLF_DOWN_AT_LAND) {
                static_cast<fopEn_enemy_c*>(actor)->offWolfDownPullFlg();
                if (i_procID != PROC_WOLF_BACKJUMP) {
                    resetWolfBallGrab();
                }
            } else if (mProcID == PROC_HAWK_SUBJECT) {
                static_cast<daNPC_TK_c*>(actor)->setAway();
            } else if (mProcID == PROC_GOAT_STROKE) {
                static_cast<daCow_c*>(actor)->setNaderuFinish();
            } else if (mProcID == PROC_TRADE_ITEM_OUT || mProcID == PROC_NOT_USE_ITEM) {
                static_cast<daItemBase_c*>(actor)->dead();
            }
        }
        field_0x280c.clearData();

        if (mProcID == PROC_BOTTLE_SWING) {
            offNoResetFlg2(FLG2_UNK_10000000);
        }
    } else if (mProcID == PROC_HOOKSHOT_FLY) {
        cancelHookshotCarry();
        setOldRootQuaternion(shape_angle.x, 0, 0);
        cancelItemUseQuake(1);
    } else if (dComIfGp_checkPlayerStatus1(0, 0x02010000)) {
        if (mProcID != PROC_HOOKSHOT_FLY) {
            cancelItemUseQuake(0);
        }

        if (mCargoCarryAcKeep.getActor() != NULL) {
            fopAcM_cancelHookCarryNow(mCargoCarryAcKeep.getActor());
            mCargoCarryAcKeep.clearData();
        }
    } else if (mProcID == PROC_WOLF_ENEMY_HANG_BITE) {
        resetWolfEnemyBiteAll();
    } else if (checkWolfShapeReverse()) {
        setOldRootQuaternion(0, -0x8000, 0);
        shape_angle.y += 0x8000;
        field_0x2fe4 = shape_angle.y;
        shape_angle.x = -shape_angle.x;
        field_0x2fe6 = shape_angle.y;
        if (mProcID != PROC_WOLF_SLIDE_READY) {
            current.angle.y = shape_angle.y;
        }
    } else if (mProcID == PROC_WARP) {
        changeWarpMaterial(WARP_MAT_MODE_1);
    } else if (mProcID == PROC_WOLF_BACKJUMP) {
        resetWolfBallGrab();
    } else if (mProcID == PROC_CHAIN_STRONG_PULL) {
        mNowAnmPackUpper[2].setRatio(0.0f);
    } else if (mProcID == PROC_SCREAM_WAIT || mProcID == PROC_WOLF_SCREAM_WAIT ||
               mProcID == PROC_ELEC_DAMAGE)
    {
        dComIfGp_getVibration().StopQuake(0x1F);
    } else if (mProcID == PROC_GUARD_BREAK) {
        field_0x814.SetTgApid(fpcM_ERROR_PROCESS_ID_e);
    }

    if (mProcID == PROC_CHAIN_UP || mProcID == PROC_WOLF_CHAIN_UP) {
        cancelFmChainGrabFromOut();
    }

    BOOL prev_proc_fishcast = mProcID == PROC_FISHING_CAST ? TRUE : FALSE;
    offNoResetFlg0(FLG0_UNK_2);

    u32 prev_flg_40000;
    u32 prev_flg_400;
    BOOL prev_flg_2;
    BOOL prev_flg_20000;

    prev_flg_20000 = checkModeFlg(0x20000) != 0 ? TRUE : FALSE;
    prev_flg_2 = !checkModeFlg(0x2) ? TRUE : FALSE;
    prev_flg_40000 = checkModeFlg(0x40000);
    prev_flg_400 = checkModeFlg(0x400);

    if (checkModeFlg(0x400) && !checkBoardRide() && !checkSpinnerRide()) {
        field_0x2f99 = 0xA0;
    } else if (checkModeFlg(0x40840) || mProcID == PROC_BOSS_BODY_HANG ||
               mProcID == PROC_WOLF_CHAIN_WAIT)
    {
        field_0x2f99 = 0x70;
    }

    mpProcFunc = m_procInitTable[i_procID].m_procFunc;
    mProcID = i_procID;
    mModeFlg = m_procInitTable[i_procID].m_mode;

    if (checkBoarRide()) {
        offModeFlg(4);
    }

    if (mProcID == PROC_DEAD) {
        if (prev_flg_400) {
            if (checkHorseRide()) {
                resetUnderAnime(UNDER_2, -1.0f);
            }
            onModeFlg(MODE_RIDING);
        } else if (prev_flg_40000) {
            onModeFlg(MODE_SWIMMING);
        }
    } else if (mProcID == PROC_BOSS_BODY_HANG) {
        if (checkBossOctaIealRoom()) {
            onModeFlg(MODE_SWIMMING);
        }
    } else if (mProcID == PROC_GET_ITEM) {
        if (prev_flg_400) {
            if (checkHorseRide()) {
                resetUnderAnime(UNDER_2, -1.0f);
            }
            onModeFlg(MODE_RIDING);
        }
    } else if (mProcID == PROC_ELEC_DAMAGE) {
        if (prev_flg_40000) {
            onModeFlg(MODE_SWIMMING);
        }

        if (checkResetFlg1(RFLG1_UNK_2) && checkHookshotItem(mEquipItem)) {
            onModeFlg(MODE_UNK_1000);
        }
    }

    if (prev_proc_fishcast &&
        (mItemAcKeep.getActor() == NULL ||
         !mItemAcKeep.getActor()->eventInfo.i_checkCommandDemoAccrpt()) &&
        !checkEndResetFlg0(ERFLG0_UNK_1000))
    {
        deleteEquipItem(0, 0);
        resetUpperAnime(UPPER_2, -1.0f);
    }

    if (checkModeFlg(MODE_VINE_CLIMB)) {
        mLinkAcch.SetRoofNone();
    } else {
        mLinkAcch.ClrRoofNone();
    }

    field_0x2b9c = 0.0f;
    field_0x2b98 = 0.0f;
    mSpeedModifier = 0.0f;
    field_0x2fb3 = 0;
    mEffProc = EFFPROC_NONE;

    clearCutTurnEffectID();
    if (!checkModeFlg(MODE_SWIMMING)) {
        field_0x3080 = 0;
    }

    field_0x3082 = 0;
    field_0x3088 = 0;
    field_0x308a = 0;

    if (checkWolf()) {
        shape_angle.z = 0;
        mBodyAngle.x = 0;
        mBodyAngle.y = 0;
    } else if (!checkReinRide() && !checkBoardRide()) {
        shape_angle.x = 0;
        shape_angle.z = 0;
    }

    initGravity();

    field_0x308c = 0;
    field_0x33f0 = 0.0f;
    field_0x33f4 = 0.0f;
    field_0x30a0 = 0;
    field_0x30a2 = 0;
    field_0x30f0 = 0;
    m_nSwordBtk->setFrame(0.0f);
    field_0x310a = 0;
    field_0x310c = shape_angle.y;

    if (field_0x3190 != 0) {
        field_0x3190 = 0;
        mBodyAngle.y = 0;
    }

    mFishingArm1Angle = csXyz::Zero;
    field_0x3160 = csXyz::Zero;

    if (field_0x2fc8 != 0) {
        field_0x2fc8 = 0;
        resetFacePriAnime();
    }

    field_0x2fce = 5;
    if (field_0x2f99 == 5) {
        field_0x2f99 = 0x30;
    } else if (field_0x2f99 == 4) {
        field_0x2f99 = 0x20;
    }

    if (checkModeFlg(0x40840) || mProcID == PROC_BOSS_BODY_HANG) {
        field_0x2f99 = 0x50;
    }

    if (checkModeFlg(MODE_NO_COLLISION) || mProcID == PROC_STEP_MOVE || mProcID == PROC_WOLF_TAG_JUMP) {
        mLinkAcch.OffLineCheck();
        mLinkAcch.OnLineCheckNone();
    } else {
        mLinkAcch.OnLineCheck();
        mLinkAcch.OffLineCheckNone();

        if (!checkWolf()) {
            daAlink_footData_c* foot_data = mFootData2;
            for (int i = 0; i < 2; i++, foot_data++) {
                foot_data->field_0x6 = 0;
                foot_data->field_0x4 = 0;
                foot_data->field_0x2 = 0;
            }

            field_0x2ba4 = 0.0f;   
        }
    }

    onResetFlg0(RFLG0_UNK_8000000);

    if (mProcID != PROC_WOLF_FALL && mProcID != PROC_WOLF_LAND) {
        offNoResetFlg2(FLG2_UNK_200);
    }

    offNoResetFlg2(daPy_FLG2(0x11102));
    offResetFlg0(RFLG0_UNK_2);
    offNoResetFlg1(daPy_FLG1(0x48004001));
    offNoResetFlg0(daPy_FLG0(0x80018));

    field_0x28f8 = -1;
    mSight.offDrawFlg();
    mSight.offLockFlg();

    if (mWolfLockNum != 0 && mProcID != PROC_WOLF_LOCK_ATTACK_TURN && mProcID != PROC_WOLF_LOCK_ATTACK) {
        for (int i = 0; i < mWolfLockNum; i++) {
            mWolfLockAcKeep[i].clearData();
        }
        mWolfLockNum = 0;
    }

    field_0x3078 = 0;

    if (((!checkEquipAnime() || !checkModeFlg(4)) && (!checkModeFlg(0x40000) || !checkWolfEnemyThrowAnime()) && !checkModeFlg(0x1000)) || (checkSwordTwirlAnime() && mProcID != PROC_ATN_ACTOR_WAIT && mProcID != PROC_ATN_ACTOR_MOVE) || (checkWolf() && checkFmChainGrabAnime() && checkModeFlg(0x40)) || checkNoResetFlg1(FLG1_UNK_10000000)) {
        if ((!checkDkCaught2Anime() || mProcID != PROC_DAMAGE) && !checkNoSetUpperAnime()) {
            resetUpperAnime(UPPER_2, daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        }

        if (checkBombItem(mEquipItem)) {
            mEquipItem = NO_ITEM;
        }
    }

    if (!checkModeFlg(MODE_GRAB_PLACE) && !checkGrabAnime() &&
        !checkWolfGrabAnime() && mGrabItemAcKeep.getActor() != NULL) {
        freeGrabItem();
    }

    if (!checkHookshotAnime() && mProcID != PROC_HOOKSHOT_FLY) {
        cancelHookshotCarry();
    }

    if ((dComIfGp_checkPlayerStatus0(0, 8) && !checkModeFlg(MODE_VINE_CLIMB) && mProcID != PROC_HANG_CLIMB) ||
        ((dComIfGp_checkPlayerStatus1(0, 0x2000000) && mProcID != PROC_HOOKSHOT_WALL_SHOOT && mProcID != PROC_HOOKSHOT_WALL_WAIT))) {
        if (mProcID == PROC_CLIMB_TO_ROOF) {
            current.pos.x += 10.0f * cM_ssin(shape_angle.y);
            current.pos.z += 10.0f * cM_scos(shape_angle.y);
        } else {
            current.pos.x -= 10.0f * cM_ssin(shape_angle.y);
            current.pos.z -= 10.0f * cM_scos(shape_angle.y);
        }
    }

    if (dComIfGp_checkPlayerStatus0(0, 0x200000)) {
        seStartSystem(Z2SE_AL_HAWK_EYE_PUTOFF);
    }

    if (checkUpperReadyThrowAnime() && mEquipItem != 0x102) {
        dComIfGp_clearPlayerStatus0(0, 0xfeb5ab0f);
    } else {
        dComIfGp_clearPlayerStatus0(0, 0xffbfffcf);
    }

    dComIfGp_clearPlayerStatus1(0, 0x7fb7b78);

    cancelHookshotShot();
    if (mEquipItem == noentry77) {
        deleteEquipItem(FALSE, FALSE);
    }

    if (prev_flg_2 && checkModeFlg(MODE_JUMP)) {
        mLastJumpPos = current.pos;
        mFallHeight = mLastJumpPos.y;
        field_0x33c8 = mLastJumpPos.y;
    }

    if (!checkModeFlg(MODE_RIDING) && prev_flg_400) {
        rideGetOff();
    }

    if (!checkBoarRide() && !checkHorseRide()) {
        resetUnderAnime(UNDER_2, -1.0f);
    }

    if (checkModeFlg(MODE_VINE_CLIMB | MODE_NO_COLLISION)) {
        if (checkWolf()) {
            field_0x814.SetWeight(0xFF);
        } else {
            field_0x814.SetWeight(0xFE);
        }
    } else {
        field_0x814.SetWeight(0x78);
    }

    dComIfGp_setAdvanceDirection(0);

    if (!checkBowAnime()) {
        setBowNormalAnime();
    }

    if (prev_flg_40000 && !checkModeFlg(MODE_SWIMMING)) {
        if (mProcID != PROC_CAUGHT && mProcID != PROC_HOOKSHOT_FLY &&
            !checkNoResetFlg0(FLG0_UNDERWATER))
        {
            swimOutAfter(0);
        }
    }

    setBgCheckParam();

    if ((checkNoResetFlg2(FLG2_WOLF_ENEMY_HANG_BITE) && mProcID != PROC_WOLF_ENEMY_HANG_BITE) ||
        (checkNoResetFlg2(FLG2_UNK_8) && mProcID != PROC_WOLF_ENEMY_THROW && !checkWolfEnemyThrowAnime())) {
        resetWolfEnemyBiteAll();
    }

    fopAc_ac_c* actor = field_0x280c.getActor();
    if (actor != NULL && prev_flg_20000 && !checkModeFlg(MODE_ROPE_WALK)) {
        field_0x280c.clearData();

        if (fopAcM_GetName(actor) == PROC_Obj_Crope) {
            static_cast<daObjCrope_c*>(actor)->offRide();
        } else if (fopAcM_GetName(actor) == PROC_Obj_Wchain) {
            static_cast<daObjWchain_c*>(actor)->offRide();
        }
    }
}

/* 800C2DA4-800C2DDC 0BD6E4 0038+00 121/121 0/0 0/0 .text
 * commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC */
BOOL daAlink_c::commonProcInitNotSameProc(daAlink_PROC procID) {
    if (mProcID == procID) {
        return false;
    } else {
        commonProcInit(procID);
        return true;
    }
}

#include "d/actor/d_a_alink_link.inc"

#include "d/actor/d_a_alink_cut.inc"

#include "d/actor/d_a_alink_damage.inc"

#include "d/actor/d_a_alink_guard.inc"

#include "d/actor/d_a_alink_bow.inc"

#include "d/actor/d_a_alink_boom.inc"

#include "d/actor/d_a_alink_copyrod.inc"

#include "d/actor/d_a_alink_hvyboots.inc"

#include "d/actor/d_a_alink_bomb.inc"

#include "d/actor/d_a_alink_grab.inc"

#include "d/actor/d_a_alink_sumou.inc"

#include "d/actor/d_a_alink_horse.inc"

#include "d/actor/d_a_alink_canoe.inc"

#include "d/actor/d_a_alink_crawl.inc"

#include "d/actor/d_a_alink_hang.inc"

#include "d/actor/d_a_alink_swim.inc"

#include "d/actor/d_a_alink_iceleaf.inc"

#include "d/actor/d_a_alink_hook.inc"

#include "d/actor/d_a_alink_spinner.inc"

#include "d/actor/d_a_alink_bottle.inc"

#include "d/actor/d_a_alink_kandelaar.inc"

#include "d/actor/d_a_alink_whistle.inc"

#include "d/actor/d_a_alink_ironball.inc"

#include "d/actor/d_a_alink_demo.inc"

#include "d/actor/d_a_alink_effect.inc"

#include "d/actor/d_a_alink_wolf.inc"

#include "d/actor/d_a_alink_swindow.inc"

#include "d/actor/d_a_alink_HIO.inc"

// TODO: This isn't a real file, this is a hack to build OK with -sym on
// To properly fix, these symbols need to be compiler generated
#include "d/actor/d_a_alink_weakfn.inc"
