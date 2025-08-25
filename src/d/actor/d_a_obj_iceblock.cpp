/**
* @file d_a_obj_iceblock.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_iceblock.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_camera.h"
#include "d/actor/d_a_mirror.h"

enum PUSH_DIR {
    DIR_SOUTH,
    DIR_EAST,
    DIR_NORTH,
    DIR_WEST,
};

enum WALK_TYPE {
    WALK_PUSH = 1,
    WALK_IRON_BALL_HIT,
};

/* 80C21CD8-80C21DAC 000078 00D4+00 1/1 0/0 0/0 .text
 * PPCallBack__13daObjIceBlk_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
void daObjIceBlk_c::PPCallBack(fopAc_ac_c* i_bgActor, fopAc_ac_c* i_pushActor, s16 i_angle,
                               dBgW_Base::PushPullLabel i_label) {
    bool temp_r3 = cLib_checkBit<u8>(i_label, dBgW::PPLABEL_PUSH) != 0;
    bool temp_r3_2 = cLib_checkBit<u8>(i_label, dBgW::PPLABEL_PUSH) != 0;
    int push_dir = -1;

    if (temp_r3_2 && temp_r3) {
        if (i_angle >= -0x2000 && i_angle < 0x2000) {
            push_dir = DIR_SOUTH;
        } else if (i_angle >= 0x2000 && i_angle < 0x6000) {
            push_dir = DIR_EAST;
        } else if (i_angle < -0x2000 && i_angle >= -0x6000) {
            push_dir = DIR_WEST;
        } else if (i_angle < -0x6000 || i_angle >= 0x6000) {
            push_dir = DIR_NORTH;
        }
    }

    if (push_dir != -1) {
        for (int i = 0; i < 4; i++) {
            if (i == push_dir) {
                ((daObjIceBlk_c*)i_bgActor)->mCounter[i]++;
            } else {
                ((daObjIceBlk_c*)i_bgActor)->mCounter[i] = 0;
            }
        }
    }

    ((daObjIceBlk_c*)i_bgActor)->mPPLabel = i_label;
}

/* 80C21DAC-80C21DC4 00014C 0018+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* i_bgw, fopAc_ac_c* i_bgActor, fopAc_ac_c* i_rideActor) {
    if (fopAcM_GetName(i_rideActor) == PROC_ALINK) {
        ((daObjIceBlk_c*)i_bgActor)->mIsPlayerRide = true;
    }
}

/* 80C21DC4-80C21E24 000164 0060+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjIceBlk_cFv */
void daObjIceBlk_c::initBaseMtx() {
    if (mpIceModel != NULL) {
        mpIceModel->setBaseScale(scale);
    }

    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C21E24-80C21EA4 0001C4 0080+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjIceBlk_cFv */
void daObjIceBlk_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    if (mpIceModel != NULL) {
        mpIceModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C21EA4-80C21F2C 000244 0088+00 1/1 0/0 0/0 .text            getPointNo__13daObjIceBlk_cFv */
u16 daObjIceBlk_c::getPointNo() {
    u16 point_no = 0;

    for (int i = 0; i < mMaxSwNum; i++) {
        if (fopAcM_isSwitch(this, mSwbit + i)) {
            point_no |= (1 << i);
        }
    }

    return point_no;
}

/* 80C21F2C-80C21FC8 0002CC 009C+00 1/1 0/0 0/0 .text            loadCurrentPos__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::loadCurrentPos() {
    if (mpPath != NULL) {
        u16 point_no = getPointNo();
        if (point_no != 0) {
            dPnt* point = &mpPath->m_points[point_no - 1];
            home.pos = point->m_position;
            old.pos = home.pos;
            current.pos = home.pos;
        }
    }
}

/* 80C242F4-80C24324 000000 0030+00 8/8 0/0 0/0 .rodata          l_dir_vec */
static const Vec l_dir_vec[4] = {
    {0.0f, 0.0f, 1.0f},
    {1.0f, 0.0f, 0.0f},
    {0.0f, 0.0f, -1.0f},
    {-1.0f, 0.0f, 0.0f},
};

/* 80C24324-80C2432C 000030 0008+00 1/3 0/0 0/0 .rodata          l_dir_angle */
static const s16 l_dir_angle[4] = {0x0000, 0x4000, 0x8000, 0xC000};

/* 80C2432C-80C24370 000038 0044+00 0/1 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x400000, 0x11}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x2, 0x1},                  // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        180.0f,              // mRadius
        290.0f               // mHeight
    }  // mCyl
};

/* 80C21FC8-80C22200 000368 0238+00 2/2 0/0 0/0 .text            saveCurrentPos__13daObjIceBlk_cFv
 */
int daObjIceBlk_c::saveCurrentPos() {
    int current_pos = -1;

    if (mpPath == NULL) {
        return current_pos;
    }

    dPnt* point = mpPath->m_points;
    f32 nearest_dist = 1000000.0f;
    int nearest_point_no = 0;

    for (int i = 0; i < mpPath->m_num; i++) {
#ifdef DEBUG
        f32 dist = current.pos.absXZ(point->m_position);
        if (dist < nearest_dist) {
            nearest_point_no = i;
            nearest_dist = dist;
        }
#endif

        if (current.pos.absXZ(point->m_position) < 5.0f) {
            current_pos = i + 1;
            break;
        }

        point++;
    }

    if (current_pos < 0) {
        // "Ice Block: No Path Point found nearby!\n"
        OS_REPORT_ERROR("氷ブロック：近くにパスポイントが見つかりませんでした！\n");

        // "Ice Block: Nearest Path Point No:<%d>:<%f>cm\n"
        OS_REPORT_ERROR("氷ブロック：一番近いパスポイントNo<%d>:<%f>cm\n", nearest_point_no,
                        nearest_dist);

        // "Ice Block: Save Switch not activated\n"
        OS_REPORT_ERROR("氷ブロック：スイッチによるセーブは実行されませんでした\n");
        return current_pos;
    }

    for (int i = 0; i < mMaxSwNum; i++) {
        if (current_pos & (1 << i)) {
            fopAcM_onSwitch(this, mSwbit + i);
        } else {
            fopAcM_offSwitch(this, mSwbit + i);
        }
    }

    // "Ice Block: Saved at point<%d>!\n"
    OS_REPORT("氷ブロック：ポイント<%d>にセーブしました！\n", current_pos - 1);
    return current_pos;
}

/* 80C22200-80C2224C 0005A0 004C+00 1/1 0/0 0/0 .text            enablePushPull__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::enablePushPull() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        mpBgW->OnPushPullOk();
    }
}

/* 80C2224C-80C22298 0005EC 004C+00 2/2 0/0 0/0 .text            disablePushPull__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::disablePushPull() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        mpBgW->OffPushPullOk();
    }
}

/* 80C244F0-80C244F4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Y_icecube";

/* 80C22298-80C22618 000638 0380+00 1/0 0/0 0/0 .text            Create__13daObjIceBlk_cFv */
int daObjIceBlk_c::Create() {
    mpPath = dPath_GetRoomPath(getPathId(), fopAcM_GetRoomNo(this));
    mSwbit = getSwbit();

    if (mpPath == NULL || mSwbit == 0xFF) {
        // "Ice Block: No Path or Save spec so no save\n"
        OS_REPORT("[43;30m氷ブロック：パスorセーブ指定が無いのでセーブしません\n");
        mpPath = NULL;
        mSwbit = 0xFF;
        mMaxSwNum = 0;
    }

    if (mpPath != NULL) {
        u16 point_num = mpPath->m_num;

        if (point_num == 1) {
            mMaxSwNum = 1;
        } else if (point_num < 4) {
            mMaxSwNum = 2;
        } else if (point_num < 8) {
            mMaxSwNum = 3;
        } else if (point_num < 16) {
            mMaxSwNum = 4;
        } else if (point_num < 32) {
            mMaxSwNum = 5;
        } else if (point_num < 64) {
            mMaxSwNum = 6;
        } else if (point_num < 128) {
            mMaxSwNum = 7;
        } else if (point_num < 255) {
            mMaxSwNum = 8;
        } else {
            // "Ice Block: Too many path points!\n"
            OSReport_Error("氷ブロック：パスポイント数が多すぎます！\n");
            return 0;
        }

        // "Ice Block: Using switch<%d> of <%d>n\"
        OS_REPORT("氷ブロック：スイッチ<%d>から<%d>個使用します\n", mSwbit, mMaxSwNum);
    }

    loadCurrentPos();

    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), NULL, NULL);
    mCcStts.Init(0xFF, 0xFF, this);
    mCcCyl.Set(l_cyl_src);
    mCcCyl.SetStts(&mCcStts);

    J3DJoint* pjoint = mpModel->getModelData()->getJointNodePointer(0);
    fopAcM_setCullSizeBox(this, scale.x * pjoint->getMin()->x, scale.y * -pjoint->getMax()->y,
                          scale.z * pjoint->getMin()->z, scale.x * pjoint->getMax()->x,
                          scale.y * pjoint->getMax()->y, scale.z * pjoint->getMax()->z);

    mpBgW->SetPushPullCallback((dBgW_Base::PushPull_CallBack)PPCallBack);
    mpBgW->SetRideCallback(rideCallBack);

    fopAcM_SetGravity(this, -6.0f);

    if (getSwbit2() != 0xFF) {
        if (!fopAcM_isSwitch(this, getSwbit2())) {
            if (mpBgW != NULL && mpBgW->ChkUsed()) {
                dComIfG_Bgsp().Release(mpBgW);
            }

            if (mpIceBgW != NULL && !mpIceBgW->ChkUsed()) {
                dComIfG_Bgsp().Regist(mpIceBgW, this);
            }

            if (mpIceBgW != NULL) {
                mpIceBgW->Move();
            }

            for (int i = 0; i < 2; i++) {
                static const u16 l_eff_id[] = {0x8AE1, 0x8AE2};
                mColdEffEmitters[i] =
                    dComIfGp_particle_set(l_eff_id[i], &current.pos, &home.angle, &scale, 0xFF,
                                          NULL, -1, NULL, NULL, NULL);
#ifdef DEBUG
                if (mColdEffEmitters[i] == NULL) {
                    // "Ice Block: Cold Effect set failed\n"
                    OS_REPORT("氷ブロック：冷気エフェクトセット失敗\n");
                    return 0;
                }
#endif
            }
        }
    }

    init_bgCheck();
    mode_init_wait();
    setAction(ACTION_WAIT_e);
    initBaseMtx();
    mHitCounter = 3;
    return 1;
}

/* 80C22618-80C227F4 0009B8 01DC+00 1/0 0/0 0/0 .text            CreateHeap__13daObjIceBlk_cFv */
int daObjIceBlk_c::CreateHeap() {
    static const int l_bmd[] = {5, 8};

    if (getSwbit2() != 0xFF && !fopAcM_isSwitch(this, getSwbit2())) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmd[0]);
        JUT_ASSERT(0, modelData != 0);

        mpIceModel = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
        if (mpIceModel == NULL) {
            return 0;
        }

        mpIceBgW = new dBgW();
        if (mpIceBgW != NULL &&
            !mpIceBgW->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 11), dBgW::MOVE_BG_e, &mBgMtx))
        {
            mpIceBgW->SetCrrFunc(dBgS_MoveBGProc_Trans);
        } else {
            mpIceBgW = NULL;
            return 0;
        }
    } else {
        mpIceModel = NULL;
    }

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmd[1]);
    JUT_ASSERT(0, modelData != 0);

    J3DModelData* shareModelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmd[0]);
    JUT_ASSERT(0, shareModelData != 0);

    mDoExt_setupShareTexture(modelData, shareModelData);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    } else if (mpModel != NULL) {
        return 1;
    }

    return 1;
}

/* 80C227F4-80C228B4 000B94 00C0+00 1/1 0/0 0/0 .text            create1st__13daObjIceBlk_cFv */
int daObjIceBlk_c::create1st() {
    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        u32 heap_size = 0xC40;
        if (getSwbit2() != 0xFF && !fopAcM_isSwitch(this, getSwbit2())) {
            heap_size = 0x2940;
        }

        phase = MoveBGCreate(l_arcName, 12, dBgS_MoveBGProc_Trans, heap_size, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }

    return phase;
}

/* 80C228B4-80C2294C 000C54 0098+00 1/0 0/0 0/0 .text            Execute__13daObjIceBlk_cFPPA3_A4_f
 */
int daObjIceBlk_c::Execute(Mtx** param_0) {
    mode_proc_call();
    event_proc_call();

    *param_0 = &mBgMtx;
    setBaseMtx();

    eyePos = current.pos;
    attention_info.position = current.pos;

    mPPLabel = dBgW::PPLABEL_NONE;
    mIsPlayerRide = false;
    mCcStts.Move();
    return 1;
}

/* 80C2294C-80C22B04 000CEC 01B8+00 1/1 0/0 0/0 .text            checkWalk__13daObjIceBlk_cFv */
int daObjIceBlk_c::checkWalk() {
    int push_dir = -1;

    if (getSwbit2() != 0xFF && !fopAcM_isSwitch(this, getSwbit2())) {
        return -1;
    }

    for (int i = 0; i < 4; i++) {
        if (mCounter[i] != 0) {
            push_dir = i;
            mWalkType = WALK_PUSH;
        }
    }

    if (mCcCyl.ChkTgHit()) {
        dCcD_GObjInf* hit_gobj = mCcCyl.GetTgHitGObj();
        if (!mIsPlayerRide && hit_gobj != NULL && hit_gobj->ChkAtType(AT_TYPE_IRON_BALL) &&
            hit_gobj->GetAtAtp() == 3)
        {
            cXyz sp38 = current.pos - daPy_getPlayerActorClass()->current.pos;
            s16 hit_angle = cM_atan2s(sp38.x, sp38.z);

            if (hit_angle >= -0x2000 && hit_angle < 0x2000) {
                push_dir = DIR_SOUTH;
            } else if (hit_angle >= 0x2000 && hit_angle < 0x6000) {
                push_dir = DIR_EAST;
            } else if (hit_angle < -0x2000 && hit_angle >= -0x6000) {
                push_dir = DIR_WEST;
            } else if (hit_angle < -0x6000 || hit_angle >= 0x6000) {
                push_dir = DIR_NORTH;
            }

            mWalkType = WALK_IRON_BALL_HIT;
        }
    }

    if (push_dir != -1 && checkWallPre(l_dir_angle[push_dir]) >= 0) {
        push_dir = -1;
    }

    return push_dir;
}

/* 80C22B04-80C22B28 000EA4 0024+00 3/3 0/0 0/0 .text            clrCounter__13daObjIceBlk_cFv */
void daObjIceBlk_c::clrCounter() {
    for (int i = 0; i < 4; i++) {
        mCounter[i] = 0;
    }
}

/* 80C22B28-80C22EF8 000EC8 03D0+00 1/1 0/0 0/0 .text            mode_proc_call__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::mode_proc_call() {
    typedef void (daObjIceBlk_c::*modeProc)(void);
    static modeProc l_func[] = {&mode_proc_wait, &mode_proc_walk};

    if (getSwbit2() != 0xFF && !fopAcM_isSwitch(this, getSwbit2())) {
        mCcCyl.OnAtSPrmBit(1);
        disablePushPull();

        if (mCcCyl.ChkTgHit()) {
            dCcD_GObjInf* hit_gobj = mCcCyl.GetTgHitGObj();

            if (hit_gobj->GetAtType() & AT_TYPE_IRON_BALL) {
                BOOL break_ice = false;
                if (hit_gobj->GetAtAtp() == 100 || hit_gobj->GetAtAtp() == 3) {
                    break_ice = true;
                } else if (hit_gobj->GetAtAtp() == 2) {
                    mKezuruEmtrID = dComIfGp_particle_set(mKezuruEmtrID, 0x8678, &current.pos,
                                                          &shape_angle, NULL);
                    fopAcM_seStart(this, Z2SE_OBJ_ICE_KEZURU, 0);

                    mHitCounter--;
                    if (mHitCounter == 0) {
                        break_ice = true;
                    }
                }

                if (break_ice) {
                    if (mpIceBgW != NULL && mpIceBgW->ChkUsed()) {
                        dComIfG_Bgsp().Release(mpIceBgW);
                    }

                    if (mpBgW != NULL && !mpBgW->ChkUsed()) {
                        dComIfG_Bgsp().Regist(mpBgW, this);
                    }

                    setEffect();
                    fopAcM_onSwitch(this, getSwbit2());
                    fopAcM_seStart(this, Z2SE_OBJ_ICE_BREAK, 0);
                    enablePushPull();
                }
            }
        }

        mCcCyl.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mCcCyl);
        return;
    }

    mCcCyl.OffAtSPrmBit(1);

    cXyz prev_pos(current.pos);
    fopAcM_posMoveF(this, NULL);
    current.pos.x = prev_pos.x;
    current.pos.z = prev_pos.z;

    bgCheck();

    (this->*l_func[mMode])();

    if (cLib_checkBit<State_e>(mState, STATE_LAND_e)) {
        dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
        fopAcM_seStart(this, Z2SE_OBJ_IRONBLOCK_LAND, 0);
    }
}

/* 80C22EF8-80C22F74 001298 007C+00 2/2 0/0 0/0 .text            mode_init_wait__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::mode_init_wait() {
    int current_pos = saveCurrentPos();
    if (current_pos - 1 == getCorrectPointNo()) {
        disablePushPull();
        // "Ice Block: Disable PushPull since correct position<%d>\n"
        OS_REPORT("氷ブロック：正解位置なので押し引き不可になりました<%d>\n", current_pos);
    } else {
        // "Ice Block: Not in Correct<%d> position<%d>\n"
        OS_REPORT("氷ブロック：正解位置<%d>ではありません<%d>\n", getCorrectPointNo(), current_pos);
    }

    fopAcM_SetSpeedF(this, 0.0f);
    fopAcM_SetGravity(this, -6.0f);

    mMoveDir = -1;
    clrCounter();
    mWalkType = 0;
    mMode = MODE_PROC_WAIT_e;
}

/* 80C22F74-80C23058 001314 00E4+00 1/0 0/0 0/0 .text            mode_proc_wait__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::mode_proc_wait() {
    int push_dir = checkWalk();
    if (push_dir != -1) {
        fopAcM_seStart(this, Z2SE_OBJ_IRONBLOCK_MOVE, 0);
        mMoveDir = push_dir;
        current.angle.y = l_dir_angle[push_dir];
        mode_init_walk();
    }

    if (!cLib_checkBit<u8>(mPPLabel, dBgW::PPLABEL_PUSH)) {
        clrCounter();
    }

    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 80C23058-80C23088 0013F8 0030+00 1/1 0/0 0/0 .text            mode_init_walk__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::mode_init_walk() {
    fopAcM_SetGravity(this, -6.0f);
    mWalkInitPos = current.pos;
    mMode = MODE_PROC_WALK_e;
}

/* 80C23088-80C23388 001428 0300+00 1/0 0/0 0/0 .text            mode_proc_walk__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::mode_proc_walk() {
    if (mWalkType == WALK_PUSH) {
        cLib_addCalc(&speedF, 21.0f, 0.05f, 1.0f, 0.01f);
    } else if (mWalkType == WALK_IRON_BALL_HIT) {
        cLib_chaseF(&speedF, 27.0f, 23.0f);
    }

    cXyz prev_pos(current.pos);
    fopAcM_posMove(this, NULL);
    current.pos.y = prev_pos.y;

    if (checkWallPre(l_dir_angle[mMoveDir]) >= 0) {
        current.pos.x -= mWallPrePos.x;
        current.pos.z -= mWallPrePos.z;
        dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
        fopAcM_seStart(this, Z2SE_OBJ_IRONBLOCK_STOP, 0);
        mode_init_wait();
    } else if (!cLib_checkBit<State_e>(mState, STATE_2_e) && checkFall()) {
        cXyz sp4C(speed);

        int sp20;
        if (mMoveDir == DIR_EAST) {
            sp20 = (current.pos.x - mWalkInitPos.x) / 300.0f;
            current.pos.x = mWalkInitPos.x + sp20 * 300.0f;
        } else if (mMoveDir == DIR_WEST) {
            sp20 = (mWalkInitPos.x - current.pos.x) / 300.0f;
            current.pos.x = mWalkInitPos.x - sp20 * 300.0f;
        } else if (mMoveDir == DIR_SOUTH) {
            sp20 = (current.pos.z - mWalkInitPos.z) / 300.0f;
            current.pos.z = mWalkInitPos.z + sp20 * 300.0f;
        } else if (mMoveDir == DIR_NORTH) {
            sp20 = (mWalkInitPos.z - current.pos.z) / 300.0f;
            current.pos.z = mWalkInitPos.z - sp20 * 300.0f;
        }

        mode_init_wait();
    }

    clrCounter();
}

/* 80C23388-80C2350C 001728 0184+00 1/1 0/0 0/0 .text            setEffect__13daObjIceBlk_cFv */
void daObjIceBlk_c::setEffect() {
    static const u16 l_eff_break_b[] = {0x8679, 0x867A};
    static const u16 l_eff_break_id[] = {0x8ADF, 0x8AE0};

    field_0x9d4 = dComIfGp_particle_set(field_0x9d4, 0x867B, &current.pos, &shape_angle, NULL, 0xFF,
                                        NULL, -1, NULL, NULL, NULL);
    field_0x9d8 = dComIfGp_particle_set(field_0x9d8, l_eff_break_b[0], &current.pos, &shape_angle,
                                        NULL, 0xFF, NULL, -1, NULL, NULL, NULL);

    for (int i = 0; i < 2; i++) {
        dComIfGp_particle_set(l_eff_break_id[i], &current.pos, &home.angle, &scale, 0xFF, NULL, -1,
                              NULL, NULL, NULL);
    }

    for (int i = 0; i < 2; i++) {
        if (mColdEffEmitters[i] != NULL) {
            mColdEffEmitters[i]->becomeInvalidEmitter();
            mColdEffEmitters[i] = NULL;
        }
    }
}

/* 80C2350C-80C236C8 0018AC 01BC+00 2/2 0/0 0/0 .text            checkWallPre__13daObjIceBlk_cFs */
int daObjIceBlk_c::checkWallPre(s16 i_angle) {
    dBgS_ObjLinChk linchk;
    cXyz start;
    cXyz end;
    cXyz spBC;
    cXyz spC8;

    int var_r29 = -1;

    linchk.SetActorPid(base.id);

    mDoMtx_stack_c::YrotS(i_angle);
    mDoMtx_stack_c::multVec(&cXyz::BaseZ, &spBC);
    spC8 = spBC * 150.0f;
    spBC *= 155.0f;

    for (int i = 0; i < 5; i++) {
        static const Vec l_check_offsetXY[] = {
            {-145.0f, 5.0f, 0.0f}, {-145.0f, 295.0f, 0.0f}, {145.0f, 295.0f, 0.0f},
            {145.0f, 5.0f, 0.0f},  {0.0f, 150.0f, 0.0f},
        };

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(i_angle);
        mDoMtx_stack_c::multVec(&l_check_offsetXY[i], &start);
        end = start + spBC;

        linchk.Set(&start, &end, this);
        if (dComIfG_Bgsp().LineCross(&linchk)) {
            end = start + spC8;
            mWallPrePos = end - linchk.GetCross();
            var_r29 = i;
        }
    }

    return var_r29;
}

/* 80C236C8-80C237B0 001A68 00E8+00 2/2 0/0 0/0 .text            checkBgHit__13daObjIceBlk_cFv */
int daObjIceBlk_c::checkBgHit() {
    cXyz check_pos;
    mGroundY = -1000000000.0f;

    int var_r29 = -1;

    mGndChk.SetActorPid(base.id);

    for (int i = 0; i < 5; i++) {
        static const Vec l_check_offsetXZ[] = {
            {-145.0f, 0.0f, -145.0f}, {-145.0f, 0.0f, 145.0f}, {145.0f, 0.0f, 145.0f},
            {145.0f, 0.0f, -145.0f},  {0.0f, 0.0f, 0.0f},
        };

        check_pos = current.pos + l_check_offsetXZ[i];
        check_pos.y += 100.0f;

        mGndChk.SetPos(&check_pos);
        f32 gnd_y = dComIfG_Bgsp().GroundCross(&mGndChk);
        if (gnd_y > mGroundY) {
            mGroundY = gnd_y;
            var_r29 = i;
        }
    }

    return var_r29;
}

/* 80C237B0-80C23860 001B50 00B0+00 1/1 0/0 0/0 .text            bgCheck__13daObjIceBlk_cFv */
void daObjIceBlk_c::bgCheck() {
    State_e prev_state = mState;
    mState = STATE_0_e;

    if (checkBgHit() < 0) {
        // "Ice Block: No Floor!\n"
        OS_REPORT("[43;30m氷ブロック：床がありません！\n");
    }

    if (mGroundY > current.pos.y) {
        current.pos.y = mGroundY;
        speed.y = 0.0f;

        if (!cLib_checkBit<State_e>(prev_state, STATE_2_e)) {
            cLib_onBit<State_e>(mState, STATE_LAND_e);
        }

        cLib_onBit<State_e>(mState, STATE_2_e);
        dComIfG_Bgsp().RideCallBack(mGndChk, this);
    } else {
        if (cLib_checkBit<State_e>(prev_state, STATE_2_e)) {
            cLib_onBit<State_e>(mState, STATE_4_e);
        }
    }
}

/* 80C23860-80C238B0 001C00 0050+00 1/1 0/0 0/0 .text            init_bgCheck__13daObjIceBlk_cFv */
void daObjIceBlk_c::init_bgCheck() {
    if (checkBgHit() >= 0) {
        current.pos.y = mGroundY;
        mState = STATE_0_e;
        cLib_onBit<State_e>(mState, STATE_2_e);
    } else {
        // "Ice Block: No Floor!\n"
        OS_REPORT("氷ブロック：床がありません！\n");
    }
}

/* 80C238B0-80C23A08 001C50 0158+00 1/1 0/0 0/0 .text            checkFall__13daObjIceBlk_cFv */
BOOL daObjIceBlk_c::checkFall() {
    cXyz start;
    cXyz end;

    dBgS_ObjLinChk linchk;
    linchk.SetActorPid(base.id);

    for (int i = 0; i < 5; i++) {
        static const Vec l_check_offsetXZ[] = {
            {-145.0f, 0.0f, -145.0f}, {-145.0f, 0.0f, 145.0f}, {145.0f, 0.0f, 145.0f},
            {145.0f, 0.0f, -145.0f},  {0.0f, 0.0f, 0.0f},
        };

        start = current.pos + l_check_offsetXZ[i];
        end = start;
        end.y -= 50.0f;

        linchk.Set(&start, &end, this);

        if (dComIfG_Bgsp().LineCross(&linchk)) {
            cM3dGPla plane;
            dComIfG_Bgsp().GetTriPla(linchk, &plane);

            if (cBgW_CheckBGround(plane.mNormal.y)) {
                return false;
            }
        }
    }

    return true;
}

/* 80C23A50-80C23B0C 001DF0 00BC+00 1/1 0/0 0/0 .text            event_proc_call__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::event_proc_call() {
    typedef void (daObjIceBlk_c::*actionFunc)(void);
    static actionFunc l_func[] = {&actionWait, &actionOrderEvent, &actionEvent, &actionDead};

    (this->*l_func[mAction])();
}

/* 80C23B0C-80C23B70 001EAC 0064+00 1/0 0/0 0/0 .text            actionWait__13daObjIceBlk_cFv */
void daObjIceBlk_c::actionWait() {
    if (mMode == MODE_PROC_WALK_e && mWalkType == WALK_PUSH) {
        setAction(ACTION_ORDER_EVENT_e);
        fopAcM_orderPotentialEvent(this, 2, 0, 0);
        eventInfo.onCondition(fopAcCnd_NOEXEC_e);
    }
}

/* 80C23B70-80C23C1C 001F10 00AC+00 1/0 0/0 0/0 .text            actionOrderEvent__13daObjIceBlk_cFv
 */
void daObjIceBlk_c::actionOrderEvent() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_EVENT_e);
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(1);
    } else if (mMode == MODE_PROC_WALK_e) {
        fopAcM_orderPotentialEvent(this, 2, 0, 0);
        eventInfo.onCondition(fopAcCnd_NOEXEC_e);
    } else {
        setAction(ACTION_WAIT_e);
    }
}

/* 80C23C1C-80C23CA0 001FBC 0084+00 1/0 0/0 0/0 .text            actionEvent__13daObjIceBlk_cFv */
void daObjIceBlk_c::actionEvent() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    if (mMode != MODE_PROC_WALK_e) {
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        setAction(ACTION_WAIT_e);
        dComIfGp_event_reset();
    }
}

/* 80C23CA0-80C23CA4 002040 0004+00 1/0 0/0 0/0 .text            actionDead__13daObjIceBlk_cFv */
void daObjIceBlk_c::actionDead() {}

/* 80C23CA4-80C23DA8 002044 0104+00 1/0 0/0 0/0 .text            Draw__13daObjIceBlk_cFv */
int daObjIceBlk_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);

    dComIfGd_setListBG();

    if (getSwbit2() != 0xFF && !fopAcM_isSwitch(this, getSwbit2())) {
        if (mpIceModel != NULL) {
            g_env_light.setLightTevColorType_MAJI(mpIceModel, &tevStr);
            mDoExt_modelUpdateDL(mpIceModel);
            daMirror_c::entry(mpIceModel);
        }
    } else {
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        mDoExt_modelUpdateDL(mpModel);
        daMirror_c::entry(mpModel);
    }

    dComIfGd_setList();
    return 1;
}

/* 80C23DA8-80C23E68 002148 00C0+00 1/0 0/0 0/0 .text            Delete__13daObjIceBlk_cFv */
int daObjIceBlk_c::Delete() {
    for (int i = 0; i < 2; i++) {
        if (mColdEffEmitters[i] != NULL) {
            mColdEffEmitters[i]->becomeInvalidEmitter();
            mColdEffEmitters[i] = NULL;
        }
    }

    if (mpIceBgW != NULL && mpIceBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpIceBgW);
    }

    saveCurrentPos();
    mpBgW->SetPushPullCallback(NULL);
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80C23E68-80C23FCC 002208 0164+00 1/0 0/0 0/0 .text daObjIceBlk_create1st__FP13daObjIceBlk_c */
static int daObjIceBlk_create1st(daObjIceBlk_c* i_this) {
    fopAcM_SetupActor(i_this, daObjIceBlk_c);
    return i_this->create1st();
}

/* 80C24210-80C24230 0025B0 0020+00 1/0 0/0 0/0 .text daObjIceBlk_MoveBGDelete__FP13daObjIceBlk_c
 */
static int daObjIceBlk_MoveBGDelete(daObjIceBlk_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C24230-80C24250 0025D0 0020+00 1/0 0/0 0/0 .text daObjIceBlk_MoveBGExecute__FP13daObjIceBlk_c
 */
static int daObjIceBlk_MoveBGExecute(daObjIceBlk_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C24250-80C2427C 0025F0 002C+00 1/0 0/0 0/0 .text daObjIceBlk_MoveBGDraw__FP13daObjIceBlk_c */
static int daObjIceBlk_MoveBGDraw(daObjIceBlk_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C24584-80C245A4 -00001 0020+00 1/0 0/0 0/0 .data            daObjIceBlk_METHODS */
static actor_method_class daObjIceBlk_METHODS = {
    (process_method_func)daObjIceBlk_create1st,     (process_method_func)daObjIceBlk_MoveBGDelete,
    (process_method_func)daObjIceBlk_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjIceBlk_MoveBGDraw,
};

/* 80C245A4-80C245D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_IceBlock */
extern actor_process_profile_definition g_profile_Obj_IceBlock = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_IceBlock,       // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daObjIceBlk_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    535,                     // mPriority
    &daObjIceBlk_METHODS,    // sub_method
    0x00040500,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
