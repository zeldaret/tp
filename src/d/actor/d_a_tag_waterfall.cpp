/**
 * d_a_tag_waterfall.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_waterfall.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D64D94-80D64D98 000000 0004+00 2/2 0/0 0/0 .data            m_master_id */
static u32 m_master_id = static_cast<u32>(0xFFFFFFFF);

/* 80D6462C-80D64680 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__20daTagWaterFall_HIO_cFv */
daTagWaterFall_HIO_c::daTagWaterFall_HIO_c() {
    field_0x04 = -1;
    mBaseFogNear = 0.0f;
    mBaseFogFar = 10000.0f;
    mColorBlendStepDivisor = 3.0f;
    mShouldModifyFog = false;
    field_0x14 = 0;
    field_0x15 = 0;
    field_0x18 = 0.0f;
    field_0x1C = 0.0f;
    field_0x20 = 0.0f;
}

/* 80D64680-80D64688 000140 0008+00 1/1 0/0 0/0 .text            draw__16daTagWaterFall_cFv */
int daTagWaterFall_c::draw() {
    return 1;
}

/* 80D64688-80D646A8 000148 0020+00 1/0 0/0 0/0 .text daTagWaterFall_Draw__FP16daTagWaterFall_c */
static int daTagWaterFall_Draw(daTagWaterFall_c* i_this) {
    return i_this->draw();
}

/* 80D646A8-80D64724 000168 007C+00 1/1 0/0 0/0 .text            s_waterfall__FPvPv */
void* s_waterfall(void* pProc, void* unused) {
    if (fopAc_IsActor(pProc)) {
        if (fopAcM_GetName(pProc) == PROC_Tag_WaterFall) {
            daTagWaterFall_c* pProcWaterfallTag = static_cast<daTagWaterFall_c*>(pProc);

            s32 id = fpcM_GetID(pProc);
            if (!fpcM_IsCreating(id)) {
                if (pProcWaterfallTag->checkHitWaterFallCamera()) {
                    return pProc;
                }
            }
        }
    }

    return NULL;
}

/* 80D64724-80D64768 0001E4 0044+00 1/1 0/0 0/0 .text            getEllipseY__16daTagWaterFall_cFf
 */
f32 daTagWaterFall_c::getEllipseY(f32 x) {
    // Ellipse is in standard form;
    // x,y-plane of ellipse is the horizontal world plane

    f32 ellipseRadiusB = mCylinderRadiusB;
    f32 ellipseRadiusA = mCylinderRadiusA;
    f32 ellipseRadiusBSquared = ellipseRadiusB * ellipseRadiusB;
    f32 ellipseRadiusASquared = ellipseRadiusA * ellipseRadiusA;

    f32 ellipseYSquared_OverBSquared = (1.0f - ((x * x) / (ellipseRadiusASquared)));
    f32 ellipseYSquared = (ellipseRadiusBSquared)*ellipseYSquared_OverBSquared;

    return JMAFastSqrt(ellipseYSquared);
}

/* 80D64768-80D6486C 000228 0104+00 1/1 0/0 2/2 .text checkHitWaterFall__16daTagWaterFall_cF4cXyz
 */
bool daTagWaterFall_c::checkHitWaterFall(cXyz objPos) {
    Vec dst;

    f32 ellipseRadiusA = mCylinderRadiusA;

    mDoMtx_stack_c::YrotS(-fopAcM_GetShapeAngle_p(this)->y);

    const cXyz& waterfallTagPos = fopAcM_GetPosition(this);
    mDoMtx_stack_c::transM(-waterfallTagPos.x, -waterfallTagPos.y, -waterfallTagPos.z);

    mDoMtx_stack_c::multVec(&objPos, &dst);

    if (fabsf(dst.x) < ellipseRadiusA) {
        const f32 absEllipseY = fabsf(getEllipseY(dst.x));
        if (fabsf(dst.z) < absEllipseY) {
            if (waterfallTagPos.y < objPos.y) {
                // Instruction reordering occurs when mCylinderHeight == 0.0f is used
                if (!mCylinderHeight || (waterfallTagPos.y + mCylinderHeight) > objPos.y) {
                    return true;
                }
            }
        }
    }

    return false;
}

/* 80D6486C-80D648B4 00032C 0048+00 1/1 0/0 0/0 .text
 * checkHitWaterFallCamera__16daTagWaterFall_cFv                */
bool daTagWaterFall_c::checkHitWaterFallCamera() {
    const camera_class* camera = dComIfGp_getCamera(0);
    return checkHitWaterFall(camera->lookat.eye);
}

/* ############################################################################################## */
/* 80D64E00-80D64E04 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool masterWaterfallTagExists;

/* 80D64E10-80D64E34 000018 0024+00 3/3 0/0 0/0 .bss             l_HIO */
static daTagWaterFall_HIO_c l_HIO;

/* 80D648B4-80D64AB8 000374 0204+00 1/1 0/0 0/0 .text            execute__16daTagWaterFall_cFv */
int daTagWaterFall_c::execute() {
    u32 masterId = m_master_id;
    u32 waterfallId = fpcM_GetID(this);

    if (masterId == waterfallId) {
        if (mFrameCountdown) {
            const dScnKy_env_light_c* const envLight = dKy_getEnvlight();
            mFogNear = envLight->mFogNear;
            mFogFar = envLight->mFogFar;
            mFrameCountdown--;
            mColpat = envLight->mColpatWeather;
            mColorBlend = 1.0f;
        } else {
            bool currCameraInWaterfall = false;
            if (fpcEx_Search(s_waterfall, this)) {
                currCameraInWaterfall = true;
            }

            if (!currCameraInWaterfall) {
                if (!mPrevCameraInWaterfall && mColorBlend == 1.0f) {
                    return 1;
                }
            }

            if ((!mPrevCameraInWaterfall && currCameraInWaterfall) ||
                (mPrevCameraInWaterfall && !currCameraInWaterfall))
            {
                mColorBlend = 1.0f - mColorBlend;
                mPrevCameraInWaterfall = currCameraInWaterfall;
            }

            cLib_chaseF(&mColorBlend, 1.0f, 1.0f / l_HIO.mColorBlendStepDivisor);

            if (!mPrevCameraInWaterfall) {
                dKy_custom_colset(7, mColpat, mColorBlend);
            } else {
                dKy_custom_colset(mColpat, 7, mColorBlend);
            }

            f32 instanceFogMultiplier;
            f32 HIOFogMultiplier;

            if (l_HIO.mShouldModifyFog) {
                if (mPrevCameraInWaterfall) {
                    instanceFogMultiplier = 1.0f - mColorBlend;
                    HIOFogMultiplier = mColorBlend;
                } else {
                    instanceFogMultiplier = mColorBlend;
                    HIOFogMultiplier = 1.0f - mColorBlend;
                }

                f32 fogParam0 =
                    (mFogNear * instanceFogMultiplier) + (l_HIO.mBaseFogNear * HIOFogMultiplier);
                f32 fogParam1 =
                    (mFogFar * instanceFogMultiplier) + (l_HIO.mBaseFogFar * HIOFogMultiplier);

                dKy_fog_startendz_set(fogParam0, fogParam1, 1.0f);
            }
        }
    }

    return 1;
}

/* 80D64AB8-80D64AD8 000578 0020+00 1/0 0/0 0/0 .text daTagWaterFall_Execute__FP16daTagWaterFall_c
 */

static int daTagWaterFall_Execute(daTagWaterFall_c* i_this) {
    return i_this->execute();
}

/* 80D64AD8-80D64AE0 000598 0008+00 1/0 0/0 0/0 .text
 * daTagWaterFall_IsDelete__FP16daTagWaterFall_c                */
static int daTagWaterFall_IsDelete(daTagWaterFall_c* i_this) {
    return 1;
}

/* 80D64AE0-80D64B00 0005A0 0020+00 1/1 0/0 0/0 .text            _delete__16daTagWaterFall_cFv */
int daTagWaterFall_c::_delete() {
    if (mIsMasterWaterfallTag) {
        masterWaterfallTagExists = false;
    }
    return 1;
}

/* 80D64B00-80D64B20 0005C0 0020+00 1/0 0/0 0/0 .text daTagWaterFall_Delete__FP16daTagWaterFall_c
 */
static int daTagWaterFall_Delete(daTagWaterFall_c* i_this) {
    return i_this->_delete();
}

/* 80D64B20-80D64CBC 0005E0 019C+00 1/1 0/0 0/0 .text            create__16daTagWaterFall_cFv */
cPhs__Step daTagWaterFall_c::create() {
    fopAcM_SetupActor(this, daTagWaterFall_c);

    if (masterWaterfallTagExists == false) {
        masterWaterfallTagExists = true;
        mIsMasterWaterfallTag = 1;
        l_HIO.field_0x04 = -1;
    }

    mCylinderRadiusA = static_cast<f32>(fpcM_GetParam(this) & 0x0000FFFF);

    if (mCylinderRadiusA < 0.0f) {
        mCylinderRadiusB = 0.0f;
    }

    mCylinderHeight = static_cast<f32>((fpcM_GetParam(this) & 0xFFFF0000) >> 16);

    if (mCylinderHeight < 0.0f) {
        mCylinderHeight = 0.0f;
    }

    mCylinderRadiusB = static_cast<f32>((fopAcM_GetAngle_p(this)->x & 0x0000FFFF));

    if (mCylinderRadiusB <= 0.0f) {
        mCylinderRadiusB = mCylinderRadiusA;
    }

    fopAcM_GetShapeAngle_p(this)->x = 0;
    fopAcM_GetAngle_p(this)->x = 0;

    if (m_master_id + (1 << 16) == 0xFFFF) {
        u32 id = fopAcM_GetID(this);

        m_master_id = id;

        mColorBlend = 0.0f;
        mFrameCountdown = 30;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D64CBC-80D64CDC 00077C 0020+00 1/0 0/0 0/0 .text daTagWaterFall_Create__FP16daTagWaterFall_c
 */
static int daTagWaterFall_Create(daTagWaterFall_c* i_this) {
    return i_this->create();
}

/* 80D64CDC-80D64D24 00079C 0048+00 2/1 0/0 0/0 .text            __dt__20daTagWaterFall_HIO_cFv */
daTagWaterFall_HIO_c::~daTagWaterFall_HIO_c() {}

/* 80D64D98-80D64DB8 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagWaterFall_Method */
static actor_method_class l_daTagWaterFall_Method = {
    (process_method_func)daTagWaterFall_Create,  (process_method_func)daTagWaterFall_Delete,
    (process_method_func)daTagWaterFall_Execute, (process_method_func)daTagWaterFall_IsDelete,
    (process_method_func)daTagWaterFall_Draw,
};

/* 80D64DB8-80D64DE8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_WaterFall */
extern actor_process_profile_definition g_profile_Tag_WaterFall = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_WaterFall,
    &g_fpcLf_Method.base,
    sizeof(daTagWaterFall_c),
    0,
    0,
    &g_fopAc_Method.base,
    198,
    &l_daTagWaterFall_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};
