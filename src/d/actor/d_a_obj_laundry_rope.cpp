/**
 * @file d_a_obj_laundry_rope.cpp
 * 
*/

#include "d/actor/d_a_obj_laundry_rope.h"
#include "d/d_cc_d.h"
#include "d/d_path.h"
#include "dol2asm.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/d_kankyo_wether.h"
#include "gx/GXStruct.h"

//
// Declarations:
//

/* ############################################################################################## */
/* 80C53304-80C53318 000000 0014+00 3/3 0/0 0/0 .rodata          M_attr__14daObjLndRope_c */
daObjLndRope_Attr_c const daObjLndRope_c::mAttr = {-5.0f, 0.2f, 0.5f, 0.8f, 0.0f};

/* 80C53318-80C53328 000014 000D+03 0/1 0/0 0/0 .rodata          l_laundryList */
static const s8 l_laundryList[13] = {-1, -1, 3, 0, -1, 1, 1, -1, 2, 2, -1, 2, -1};

u8 daObjLndRope_c::getPathId() {
    return fopAcM_GetParamBit(this, 8, 8);;
}

/* 80C521F8-80C52820 000078 0628+00 1/1 0/0 0/0 .text            create_init__14daObjLndRope_cFv */
void daObjLndRope_c::create_init() {
    gravity = mAttr.mGravity;
    dPath* roomPath = dPath_GetRoomPath(getPathId(), fopAcM_GetRoomNo(this));

    dPnt* pathPoints = roomPath->m_points;
    cXyz startPoint = pathPoints[0].m_position;
    cXyz endPoint = pathPoints[1].m_position;
    current.pos = (startPoint + endPoint) * 0.5f;
    mPos = endPoint - startPoint;

    if (fabsf(mPos.x) > fabsf(mPos.z)){
        mScale = 1.0f / mPos.x;
        mFlag = 1;
    }
    else{
        mScale = 1.0f / mPos.z;
        mFlag = 0;
    }

    shape_angle.y = cM_atan2s(mPos.x, mPos.z);
    shape_angle.x = cM_atan2s(-mPos.y, mPos.absXZ());
    f32 cullSizeBoxZ = mPos.absXZ() * 0.5f + 3.0f;
    fopAcM_setCullSizeBox(this, -75.0f, -200.0f, -cullSizeBoxZ, 75.0f, 50.0f, cullSizeBoxZ);
    
    f32 totalLength = mPos.abs();
    const f32 segmentFraction = 1.0f / 14.0f;
    mSegmentLength = totalLength * segmentFraction;
    cXyz segmentOffset = mPos * (mSegmentLength / totalLength);    

    cXyz* ropePosition = mRopeMat.getPos(0);
    cXyz* loopPos = &mPositions2[0];
    *ropePosition = startPoint;    
    ropePosition++;
    
    for (int i = 1; i < 14; i++){
        *ropePosition = *(ropePosition - 1) + segmentOffset;
        *loopPos = *ropePosition;
        ropePosition++;
        loopPos++;
    }

    *ropePosition = endPoint;
    setNormalRopePos();
    initBaseMtx();
    
    fpc_ProcID* procId = &mProcIds[0];
    ropePosition = mRopeMat.getPos(0) + 1;
    const s8* laundryEntry = &l_laundryList[0];
    
    for (int i = 1; i < 14; i++){
        if (*laundryEntry == -1){
            *procId = -1;
        }
        else{
            *procId = fopAcM_createChild(
                PROC_Obj_Laundry,
                fopAcM_GetID(this),
                *laundryEntry,
                ropePosition,
                fopAcM_GetRoomNo(this), &csXyz(0, cLib_targetAngleY(ropePosition, ropePosition+1) + 0x4000, -cLib_targetAngleX(ropePosition, ropePosition+1)),
                NULL, -1, 0);
        }

        ropePosition++;
        procId++;
        laundryEntry++;
    }
}

/* 80C5285C-80C52890 0006DC 0034+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjLndRope_cFv */
void daObjLndRope_c::initBaseMtx() {
    setBaseMtx();
    fopAcM_SetMtx(this, mMtx);
}

/* 80C52890-80C528E0 000710 0050+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjLndRope_cFv */
void daObjLndRope_c::setBaseMtx() {
    PSMTXTrans(mMtx, current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_ZXYrotM(mMtx, shape_angle.x, shape_angle.y, 0);
}

/* ############################################################################################## */
/* 80C53364-80C533A4 000060 0040+00 0/0 0/0 0/0 .rodata          ccSphSrc$3837 */
#pragma push
#pragma force_active on
const static dCcD_SrcSph ccSphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x1607a, 0x11}, 0x149}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f} // mSph
    } // mSphAttr
};
#pragma pop

cXyz* daObjLndRope_c::getRopeStartPos() {
    return mRopeMat.getPos(0);
}

float daObjLndRope_c::getStartRate(cXyz* i_ropeSegmentPos) {
    if (mFlag != NULL){
        return mScale * (i_ropeSegmentPos->x - getRopeStartPos()->x);
    }
    else{
        return mScale * (i_ropeSegmentPos->z - getRopeStartPos()->z);
    }
}

f32 daObjLndRope_c::calc(f32 ropePosY, f32 posY, f32 startRate){
    return ropePosY + posY * startRate;
}

/* 80C528E0-80C52CC8 000760 03E8+00 2/2 0/0 0/0 .text setNormalRopePos__14daObjLndRope_cFv */
void daObjLndRope_c::setNormalRopePos() {
    cXyz* startPos1;
    cXyz* startPos2;
    cXyz* ropePos = mRopeMat.getPos(0)+1;
    
    startPos1 = mPositions1;
    startPos2 = mPositions2;
    cXyz posModifier;
    cXyz windPow = dKyw_get_AllWind_vecpow(&current.pos);
    
    if (cM_rnd() < 0.1f){
        windPow *= mSegmentLength * mAttr.field_0x4;
    }
    else{
        windPow.zero();
    }
    
    int index;
    for (index = 1; index < 14; index++){
        ropePos->y = startPos2->y;
        posModifier = *ropePos - *(ropePos - 1);
        posModifier.y += gravity;
        posModifier += *startPos1;
        
        if (cM_rnd() < 0.6f){
            posModifier += windPow;
        }
        
        posModifier.normalizeZP();
        *ropePos = *(ropePos - 1) + (posModifier * mSegmentLength);
        
        ropePos++;
        startPos2++;
        startPos1++;
    }

    cXyz* ropePos2 = mRopeMat.getPos(0) + 13;
    startPos1 = &mPositions1[12];
    for (int i = 13; i > 0; i--){
        posModifier = *ropePos2 - *(ropePos2 + 1);
        posModifier.y += gravity;
        posModifier += *startPos1;
        posModifier.normalizeZP();
        *ropePos2 = *(ropePos2 + 1) + (posModifier * mSegmentLength);
        ropePos2--;
        startPos1--;
    }

    cXyz* ropePos3 = mRopeMat.getPos(0) + 1;
    cXyz* pos1 = mPositions1;
    cXyz* pos2 = mPositions2;
    cXyz* current = ropePos3;
    f32 posY;
    f32 ropePosY;
    for (int i = 1; i < 14; i++){
        ropePosY = ropePos3->y;
        posY = mPos.y;
        f32 startRate = getStartRate(ropePos3);
        f32 adjustedRopeY = calc(ropePosY, posY, startRate);
        
        *pos1 = (*ropePos3 - *pos2) * mAttr.field_0x8;
        *pos2 = *ropePos3;
        ropePos3->y += ((adjustedRopeY - ropePos3->y) * mAttr.field_0xc);

        pos2++;
        pos1++;
        ropePos3++;
    }

    ropePos = mRopeMat.getPos(0) + 1;
    fpc_ProcID* points = mProcIds;
    fopAc_ac_c* actor;
    for (int i = 1; i < 14; i++){
        if (*points != -1 && (actor = (fopAc_ac_c*)fpcM_SearchByID(*points), actor != NULL)){
            cXyz* actorPos = fopAcM_GetPosition_p(actor);
            csXyz* actorAngle = fopAcM_GetShapeAngle_p(actor);
            cXyz temp = *(ropePos + 1) - *ropePos;            
            *actorPos = *ropePos;
            actorAngle->y = cLib_targetAngleY(ropePos, ropePos + 1) + 0x4000;
            actorAngle->z = -cLib_targetAngleX(ropePos, ropePos + 1);
        }

        ropePos++;
        points++;
    }
}

/* 80C533CC-80C533D0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Obj_SRope";

int daObjLndRope_c::createHeap() {
    ResTIMG* resTimg = (ResTIMG*) dComIfG_getObjectRes(l_arcName, "Obj_ItaRope.bti");
    int result = mRopeMat.init(1, 15, resTimg, 1);
    if (result == 0){
        return 0;
    }

    f32* ropeSize = mRopeMat.getSize(0);
    for (int i = 0; i < 15; i++){
        *ropeSize = 2.0f;
        ropeSize++;
    }

    return 1;
}

/* 80C52CC8-80C52D70 000B48 00A8+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjLndRope_c*>(i_this)->createHeap();
}

/* ############################################################################################## */
/* 80C533D0-80C533D4 000004 0004+00 1/1 0/0 0/0 .data
 * l_color$localstatic3$draw__14daObjLndRope_cFv                */
SECTION_DATA static _GXColor color = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

int daObjLndRope_c::draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    mRopeMat.update(15, color, &tevStr);
    dComIfGd_set3DlineMat(&mRopeMat);
    return 1;
}

/* 80C52D70-80C52E04 000BF0 0094+00 1/0 0/0 0/0 .text daObjLndRope_Draw__FP14daObjLndRope_c */
static int daObjLndRope_Draw(daObjLndRope_c* i_this) {
    return i_this->draw();
}

int daObjLndRope_c::execute() {
    gravity = mAttr.mGravity;
    setNormalRopePos();
    return 1;
}

/* 80C52E04-80C52E34 000C84 0030+00 1/0 0/0 0/0 .text daObjLndRope_Execute__FP14daObjLndRope_c */
static int daObjLndRope_Execute(daObjLndRope_c* i_this) {
    return i_this->execute();
}

/* 80C52E34-80C52E3C 000CB4 0008+00 1/0 0/0 0/0 .text daObjLndRope_IsDelete__FP14daObjLndRope_c */
static bool daObjLndRope_IsDelete(daObjLndRope_c* i_this) {
    return true;
}

daObjLndRope_c::~daObjLndRope_c() {
    dComIfG_resDelete(&mPhase, l_arcName);
}

/* 80C52E3C-80C52F2C 000CBC 00F0+00 1/0 0/0 0/0 .text daObjLndRope_Delete__FP14daObjLndRope_c */
static int daObjLndRope_Delete(daObjLndRope_c* i_this) {
    i_this->~daObjLndRope_c();
    return 1;
}

int daObjLndRope_c::create() {
    fopAcM_SetupActor(this, daObjLndRope_c);
    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x6c0)) {
            phase = cPhs_ERROR_e;
        } else {
            create_init();
        }
    }

    return phase;
}

/* 80C52FF8-80C53140 000E78 0148+00 1/0 0/0 0/0 .text            daObjLndRope_Create__FP10fopAc_ac_c
 */
static int daObjLndRope_Create(fopAc_ac_c* i_this) {
    return ((daObjLndRope_c*)i_this)->create();
}

/* ############################################################################################## */
/* 80C533D4-80C533F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjLndRope_Method */
static actor_method_class l_daObjLndRope_Method = {
    (process_method_func)daObjLndRope_Create,
    (process_method_func)daObjLndRope_Delete,
    (process_method_func)daObjLndRope_Execute,
    (process_method_func)daObjLndRope_IsDelete,
    (process_method_func)daObjLndRope_Draw,
};

/* 80C533F4-80C53424 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_LndRope */
extern actor_process_profile_definition g_profile_Obj_LndRope = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_LndRope,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLndRope_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  34,                     // mPriority
  &l_daObjLndRope_Method, // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
