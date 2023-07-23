/**
/* Translation Unit: d_a_tag_waterfall
/*
 */

#include "rel/d/a/tag/d_a_tag_waterfall/d_a_tag_waterfall.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JMath/JMath.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"

//
// Forward References:
//

static void daTagWaterFall_Draw(daTagWaterFall_c*);
static void* s_waterfall(void*, void*);
static void daTagWaterFall_Execute(daTagWaterFall_c*);
static bool daTagWaterFall_IsDelete(daTagWaterFall_c*);
static void daTagWaterFall_Delete(daTagWaterFall_c*);
static void daTagWaterFall_Create(daTagWaterFall_c*);

/* 80D64D94-80D64D98 000000 0004+00 2/2 0/0 0/0 .data            m_master_id */
static u32 m_master_id = static_cast<u32>(0xFFFFFFFF);

/* 80D64D98-80D64DB8 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagWaterFall_Method */
static actor_method_class l_daTagWaterFall_Method = {
    (process_method_func)daTagWaterFall_Create,  (process_method_func)daTagWaterFall_Delete,
    (process_method_func)daTagWaterFall_Execute, (process_method_func)daTagWaterFall_IsDelete,
    (process_method_func)daTagWaterFall_Draw
};

/* 80D64DB8-80D64DE8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_WaterFall */
extern actor_process_profile_definition g_profile_Tag_WaterFall = {
    -3,
    7,
    0xFFFD,
    PROC_Tag_WaterFall,
    &g_fpcLf_Method.mBase,
    sizeof(daTagWaterFall_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x00C6,
    &l_daTagWaterFall_Method,
    0x00044000,
    0,
    0
};

/* 80D6462C-80D64680 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__20daTagWaterFall_HIO_cFv */
daTagWaterFall_HIO_c::daTagWaterFall_HIO_c() {
    this->field_0x04 = -1;
    this->mBaseFogNear = 0.0f;
    this->mBaseFogFar = 10000.0f;
    this->mColorBlendStepDivisor = 3.0f;
    this->mShouldModifyFog = false;
    this->field_0x14 = 0;
    this->field_0x15 = 0;
    this->field_0x18 = 0.0f;
    this->field_0x1C = 0.0f;
    this->field_0x20 = 0.0f;
}

/* 80D64680-80D64688 000140 0008+00 1/1 0/0 0/0 .text            draw__16daTagWaterFall_cFv */
bool daTagWaterFall_c::draw() {
    return true;
}

/* 80D64688-80D646A8 000148 0020+00 1/0 0/0 0/0 .text daTagWaterFall_Draw__FP16daTagWaterFall_c */
static void daTagWaterFall_Draw(daTagWaterFall_c* i_this) {
    i_this->draw();
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

    f32 ellipseRadiusB = this->mCylinderRadiusB;
    f32 ellipseRadiusA = this->mCylinderRadiusA;
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

    f32 ellipseRadiusA = this->mCylinderRadiusA;

    // Instructions are reordered if GetY() is used
    mDoMtx_stack_c::YrotS(-fopAcM_GetShapeAngle_p(this).y);

    const cXyz& waterfallTagPos = fopAcM_GetPosition(this);
    mDoMtx_stack_c::transM(-waterfallTagPos.x, -waterfallTagPos.y, -waterfallTagPos.z);

    mDoMtx_stack_c::multVec(&objPos, &dst);

    if (fabsf(dst.x) < ellipseRadiusA) {
        const f32 absEllipseY = fabsf(this->getEllipseY(dst.x));
        if (fabsf(dst.z) < absEllipseY) {
            if (waterfallTagPos.y < objPos.y) {
                // Instruction reordering occurs when mCylinderHeight == 0.0f is used
                if (!this->mCylinderHeight || (waterfallTagPos.y + this->mCylinderHeight) > objPos.y)
                {
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
    return this->checkHitWaterFall(camera->mLookat.mEye);
}

/* ############################################################################################## */
/* 80D64E00-80D64E04 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool masterWaterfallTagExists;

/* 80D64E10-80D64E34 000018 0024+00 3/3 0/0 0/0 .bss             l_HIO */
static daTagWaterFall_HIO_c l_HIO;

/* 80D648B4-80D64AB8 000374 0204+00 1/1 0/0 0/0 .text            execute__16daTagWaterFall_cFv */
bool daTagWaterFall_c::execute() {
    u32 masterId = m_master_id;
    u32 waterfallId = fpcM_GetID(this);

    if (masterId == waterfallId) {
        if (this->mFrameCountdown) {
            const dScnKy_env_light_c* const envLight = i_dKy_getEnvlight();
            this->mFogNear = envLight->mFogNear;
            this->mFogFar = envLight->mFogFar;
            this->mFrameCountdown--;
            this->mColpat = envLight->mColpatWeather;
            this->mColorBlend = 1.0f;
        } else {
            bool currCameraInWaterfall = false;
            if (fpcEx_Search(s_waterfall, this)) {
                currCameraInWaterfall = true;
            }

            if (!currCameraInWaterfall) {
                if (!this->mPrevCameraInWaterfall && this->mColorBlend == 1.0f) {
                    return true;
                }
            }

            if ((!this->mPrevCameraInWaterfall && currCameraInWaterfall) || (this->mPrevCameraInWaterfall && !currCameraInWaterfall)) {
                this->mColorBlend = 1.0f - this->mColorBlend;
                this->mPrevCameraInWaterfall = currCameraInWaterfall;
            }

            cLib_chaseF(&this->mColorBlend, 1.0f, 1.0f / l_HIO.mColorBlendStepDivisor);

            if (!this->mPrevCameraInWaterfall) {
                dKy_custom_colset(7, this->mColpat, this->mColorBlend);
            } else {
                dKy_custom_colset(this->mColpat, 7, this->mColorBlend);
            }

            f32 instanceFogMultiplier;
            f32 HIOFogMultiplier;

            if (l_HIO.mShouldModifyFog) {
                if (this->mPrevCameraInWaterfall) {
                    instanceFogMultiplier = 1.0f - this->mColorBlend;
                    HIOFogMultiplier = this->mColorBlend;
                } else {
                    instanceFogMultiplier = this->mColorBlend;
                    HIOFogMultiplier = 1.0f - this->mColorBlend;
                };

                f32 fogParam0 = (this->mFogNear * instanceFogMultiplier) + (l_HIO.mBaseFogNear * HIOFogMultiplier);
                f32 fogParam1 = (this->mFogFar * instanceFogMultiplier) + (l_HIO.mBaseFogFar * HIOFogMultiplier);

                dKy_fog_startendz_set(fogParam0, fogParam1, 1.0f);
            }
        }
    }

    return true;
}

/* 80D64AB8-80D64AD8 000578 0020+00 1/0 0/0 0/0 .text daTagWaterFall_Execute__FP16daTagWaterFall_c
 */

static void daTagWaterFall_Execute(daTagWaterFall_c* i_this) {
    i_this->execute();
}

/* 80D64AD8-80D64AE0 000598 0008+00 1/0 0/0 0/0 .text
 * daTagWaterFall_IsDelete__FP16daTagWaterFall_c                */
static bool daTagWaterFall_IsDelete(daTagWaterFall_c* i_this) {
    return true;
}

/* 80D64AE0-80D64B00 0005A0 0020+00 1/1 0/0 0/0 .text            _delete__16daTagWaterFall_cFv */
bool daTagWaterFall_c::_delete() {
    if (this->mIsMasterWaterfallTag) {
        masterWaterfallTagExists = false;
    }
    return true;
}

/* 80D64B00-80D64B20 0005C0 0020+00 1/0 0/0 0/0 .text daTagWaterFall_Delete__FP16daTagWaterFall_c
 */
static void daTagWaterFall_Delete(daTagWaterFall_c* i_this) {
    i_this->_delete();
}

/* 80D64B20-80D64CBC 0005E0 019C+00 1/1 0/0 0/0 .text            create__16daTagWaterFall_cFv */
cPhs__Step daTagWaterFall_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daTagWaterFall_c();
        fopAcM_OnCondition(this, 8);
    }

    if (masterWaterfallTagExists == false) {
        masterWaterfallTagExists = true;
        this->mIsMasterWaterfallTag = 1;
        l_HIO.field_0x04 = -1;
    }

    this->mCylinderRadiusA = static_cast<f32>(fpcM_GetParam(this) & 0x0000FFFF);

    if (this->mCylinderRadiusA < 0.0f) {
        this->mCylinderRadiusB = 0.0f;
    }

    this->mCylinderHeight = static_cast<f32>((fpcM_GetParam(this) & 0xFFFF0000) >> 16);

    if (this->mCylinderHeight < 0.0f) {
        this->mCylinderHeight = 0.0f;
    }

    this->mCylinderRadiusB = static_cast<f32>((fopAcM_GetAngle_p(this).GetX() & 0x0000FFFF));

    if (this->mCylinderRadiusB <= 0.0f) {
        this->mCylinderRadiusB = this->mCylinderRadiusA;
    }

    fopAcM_GetShapeAngle_p(this).x = 0;
    fopAcM_GetAngle_p(this).x = 0;

    if (m_master_id + (1 << 16) == 0xFFFF) {
        u32 id = fopAcM_GetID(this);

        m_master_id = id;

        this->mColorBlend = 0.0f;
        this->mFrameCountdown = 30;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D64CBC-80D64CDC 00077C 0020+00 1/0 0/0 0/0 .text daTagWaterFall_Create__FP16daTagWaterFall_c
 */
static void daTagWaterFall_Create(daTagWaterFall_c* i_this) {
    i_this->create();
}

/* 80D64CDC-80D64D24 00079C 0048+00 2/1 0/0 0/0 .text            __dt__20daTagWaterFall_HIO_cFv */
daTagWaterFall_HIO_c::~daTagWaterFall_HIO_c() {}