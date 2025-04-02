#include "d/d_demo.h"
#include "d/d_msg_object.h"
#include "m_Do/m_Do_graphic.h"
#include "d/actor/d_a_movie_player.h"
#include "JSystem/JGadget/pointer.h"
#include "JSystem/JGadget/define.h"

namespace {
/* 80037DE4-80037E44 032724 0060+00 1/0 0/0 0/0 .text
 * __dt__Q220@unnamed@d_demo_cpp@24jstudio_tAdaptor_messageFv   */
jstudio_tAdaptor_message::~jstudio_tAdaptor_message() {}

/* 80037E44-80037E74 032784 0030+00 1/0 0/0 0/0 .text
 * adaptor_do_MESSAGE__Q220@unnamed@d_demo_cpp@24jstudio_tAdaptor_messageFQ37JStudio4data15TEOperationDataPCvUl
 */
void jstudio_tAdaptor_message::adaptor_do_MESSAGE(JStudio::data::TEOperationData iType,
                                                  const void* pContent, u32 uSize) {
    switch (iType) {
    case JStudio::data::UNK_0x19:
        JUT_ASSERT(107, pContent!=0);
        JUT_ASSERT(108, uSize==4);
        dMsgObject_setDemoMessage(*(u32*)pContent);
        break;
    default:
#ifdef DEBUG
        JGadget_outMessage msg(JGadget_outMessage::warning, __FILE__, 124);
        const char* id_string = adaptor_getID_string();

        msg << "unknown data-type : ";
        msg << iType;
        msg << "\n  demo-object : ";
        msg << id_string;
#else
        break;
#endif
    }
}

/* 80037E74-80037ED4 0327B4 0060+00 1/0 0/0 0/0 .text
 * __dt__Q220@unnamed@d_demo_cpp@29jstudio_tCreateObject_messageFv */
jstudio_tCreateObject_message::~jstudio_tCreateObject_message() {}

/* 80037ED4-80038020 032814 014C+00 1/0 0/0 0/0 .text
 * create__Q220@unnamed@d_demo_cpp@29jstudio_tCreateObject_messageFPPQ27JStudio7TObjectRCQ47JStudio3stb4data20TParse_TBlock_object
 */
bool
jstudio_tCreateObject_message::create(JStudio::TObject** ppObject,
                                      const JStudio::stb::data::TParse_TBlock_object& iBlock) {
    JUT_ASSERT(168, ppObject!=0);

    switch (iBlock.get_type()) {
    case 'JMSG': {
        jstudio_tAdaptor_message* adaptor = new jstudio_tAdaptor_message();
        if (adaptor == NULL) {
            return false;
        }

        JGadget::TPointer_delete<JStudio::TAdaptor_message> sp8(adaptor);
        JStudio::TObject_message* object = JStudio::TCreateObject::createFromAdaptor<jstudio_tAdaptor_message>(iBlock, adaptor);
        if (object == NULL) {
            return false;
        }

        sp8.set(NULL);
        *ppObject = object;

        return true;
    }
    default:
        return false;
    }
}

};  // namespace

/* 80038020-80038098 032960 0078+00 1/1 0/0 0/0 .text            __ct__13dDemo_actor_cFv */
dDemo_actor_c::dDemo_actor_c() {
    mFlags = 0;
    mTrans.set(0.0f, 0.0f, 0.0f);
    mScale.set(1.0f, 1.0f, 1.0f);
    mRotate.set(0, 0, 0);
    mModel = NULL;
    mAnmFrameMax = FLT_MAX;
    mTexAnmFrameMax = FLT_MAX;
}

/* 80038098-80038128 0329D8 0090+00 1/0 0/0 0/0 .text            __dt__13dDemo_actor_cFv */
dDemo_actor_c::~dDemo_actor_c() {
    fopAc_ac_c* actor = getActor();
    if (actor != NULL) {
        actor->demoActorID = 0;
    }

    mActorId = -1;
    mOldAnmId = -1;
    mBtpId = -1;
    mBtkId = -1;
    mBrkId = -1;
}

/* 80038128-8003815C 032A68 0034+00 1/1 0/0 0/0 .text            getActor__13dDemo_actor_cFv */
fopAc_ac_c* dDemo_actor_c::getActor() {
    return fopAcM_SearchByID(mActorId);
}

/* 8003815C-8003819C 032A9C 0040+00 1/1 1/1 0/0 .text setActor__13dDemo_actor_cFP10fopAc_ac_c */
void dDemo_actor_c::setActor(fopAc_ac_c* pActor) {
    if (pActor == NULL) {
        mActorId = fpcM_ERROR_PROCESS_ID_e;
    } else {
        mActorId = fopAcM_GetID(pActor);
    }

    mOldAnmId = -1;
    mBtpId = -1;
    mBtkId = -1;
    mBrkId = -1;
}

/* 8003819C-80038338 032ADC 019C+00 1/1 1/1 1/1 .text            getPrm_Morf__13dDemo_actor_cFv */
f32 dDemo_actor_c::getPrm_Morf() {
    if (checkEnable(ENABLE_ANM_TRANSITION_e)) {
        return mAnmTransition;
    }

    if (!checkEnable(1)) {
        return 0.0f;
    }

    dDemo_prm_data* prm = mPrm.mData;

    switch (mPrm.field_0x0) {
    case ID_UNK_1:
        if (field_0x54 < 4) {
            return 0.0f;
        }
        return prm->field_0x4;
    case ID_UNK_2:
        if (field_0x54 < 7) {
            return 0.0f;
        }
        return prm->field_0x7;
    case ID_UNK_4:
        if (field_0x54 < 6) {
            return 0.0f;
        }
        return prm->field_0x6;
    case ID_UNK_5:
        if (field_0x54 < 0xB) {
            return 0.0f;
        }
        return prm->field_0xb;
    case ID_UNK_6:
        if (field_0x54 < 0xF) {
            return 0.0f;
        }
        return prm->field_0xf;
    default:
        return 0.0f;
    }
}

/* 80450E00-80450E04 000300 0004+00 2/2 0/0 0/0 .sbss            m_system__7dDemo_c */
dDemo_system_c* dDemo_c::m_system;

/* 80450E04-80450E08 000304 0004+00 6/6 3/3 0/0 .sbss            m_control__7dDemo_c */
JStudio::TControl* dDemo_c::m_control;

/* 80450E08-80450E0C 000308 0004+00 2/2 0/0 0/0 .sbss            m_stage__7dDemo_c */
JStudio_JStage::TCreateObject* dDemo_c::m_stage;

/* 80450E0C-80450E10 00030C 0004+00 2/2 0/0 0/0 .sbss            m_audio__7dDemo_c */
JStudio_JAudio2::TCreateObject* dDemo_c::m_audio;

/* 80450E10-80450E14 000310 0004+00 2/2 0/0 0/0 .sbss            m_particle__7dDemo_c */
dDemo_particle_c* dDemo_c::m_particle;

/* 80450E14-80450E18 000314 0004+00 2/2 0/0 0/0 .sbss            m_message__7dDemo_c */
jstudio_tCreateObject_message* dDemo_c::m_message;

/* 80450E18-80450E1C 000318 0004+00 2/2 0/0 0/0 .sbss            m_factory__7dDemo_c */
JStudio::TFactory* dDemo_c::m_factory;

/* 80450E1C-80450E20 00031C 0004+00 2/2 1/1 0/0 .sbss            m_mesgControl__7dDemo_c */
jmessage_tControl* dDemo_c::m_mesgControl;

/* 80450E20-80450E24 000320 0004+00 5/5 9/9 7/7 .sbss            m_object__7dDemo_c */
dDemo_object_c* dDemo_c::m_object;

/* 80450E24-80450E28 000324 0004+00 4/4 0/0 0/0 .sbss            m_data__7dDemo_c */
const u8* dDemo_c::m_data;

/* 80450E28-80450E2C 000328 0004+00 2/2 0/0 1/1 .sbss            m_frame__7dDemo_c */
int dDemo_c::m_frame;

/* 80450E2C-80450E30 00032C 0004+00 2/2 0/0 0/0 .sbss            m_translation__7dDemo_c */
cXyz* dDemo_c::m_translation;

/* 80450E30-80450E34 000330 0004+00 2/2 0/0 0/0 .sbss            m_rotationY__7dDemo_c */
f32 dDemo_c::m_rotationY;

/* 80450E34-80450E38 000334 0004+00 2/2 1/1 0/0 .sbss            m_frameNoMsg__7dDemo_c */
u32 dDemo_c::m_frameNoMsg;

/* 80450E38-80450E3C 000338 0004+00 4/4 4/4 0/0 .sbss            m_mode__7dDemo_c */
s32 dDemo_c::m_mode;

/* 80450E3C-80450E40 00033C 0004+00 2/2 1/1 0/0 .sbss            m_status__7dDemo_c */
u32 dDemo_c::m_status;

/* 80450E40-80450E44 000340 0002+02 2/2 0/0 0/0 .sbss            m_branchType__7dDemo_c */
u16 dDemo_c::m_branchType;

/* 80450E44-80450E48 000344 0004+00 5/5 0/0 0/0 .sbss            m_branchData__7dDemo_c */
const u8* dDemo_c::m_branchData;

/* 80038338-80038490 032C78 0158+00 0/0 1/1 5/5 .text getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc
 */
// NONMATCHING - some stack issues
int dDemo_actor_c::getDemoIDData(int* param_0, int* param_1, int* param_2, u16* param_3,
                                      u8* param_4) {
    JStudio::stb::TParseData_fixed<51, TValueIterator_misaligned<u32> > data(getPrm()->getData());

    static JStudio::stb::TParseData_fixed<51, TValueIterator_misaligned<u32> > dummy;
    static JGadget::binary::TValueIterator_misaligned<u32> it(dummy.begin());

    if (it == data.end()) {
        it = dummy.begin();
        return 0;
    }

    if (it == dummy.begin()) {
        it = data.begin();
    }

    u32 var_r31 = *it;
    *param_0 = var_r31 >> 0x1E;
    *param_1 = (var_r31 >> 0x18) & 0xF;
    *param_2 = (var_r31 >> 0x10) & 0xF;
    *param_3 = var_r31 & 0xFFFF;

    if (param_4 != NULL) {
        *param_4 = (var_r31 >> 0x17) & 1;
    }

    it++;
    return 1;
}

/* 80038490-80038518 032DD0 0088+00 1/1 0/0 0/0 .text            dDemo_getJaiPointer__FPCcUliPUs */
// NONMATCHING - slight problem with loop
static void* dDemo_getJaiPointer(char const* arcName, u32 anmID, int param_2, u16* param_3) {
    if (param_2 <= 0 || param_3 == NULL) {
        return NULL;
    }

    int var_r31 = 0;

    for (int i = 0; i < param_2; i++, var_r31 += 2) {
        if ((u16)anmID == param_3[var_r31]) {
            return dComIfG_getObjectIDRes(arcName, param_3[var_r31 + 1]);
        }
    }

    return NULL;
}

/* 80038518-800387A8 032E58 0290+00 0/0 0/0 2/2 .text
 * dDemo_setDemoData__FP10fopAc_ac_cUcP14mDoExt_McaMorfPCciPUsUlSc */
// NONMATCHING - reg alloc
int dDemo_setDemoData(fopAc_ac_c* i_actor, u8 i_flags, mDoExt_McaMorf* i_morf, char const* i_arcName,
                      int param_4, u16* param_5, u32 param_6, s8 i_reverb) {
    dDemo_actor_c* demo_actor = dDemo_c::getActor(i_actor->demoActorID);

    if (demo_actor == NULL) {
        return 0;
    }

    u8 flags = demo_actor->checkEnable(i_flags);
    if (flags & dDemo_actor_c::ENABLE_TRANS_e) {
        i_actor->current.pos = demo_actor->getTrans();
        i_actor->old.pos = i_actor->current.pos;
    }

    if (flags & dDemo_actor_c::ENABLE_ROTATE_e) {
        i_actor->shape_angle = demo_actor->getRatate();
    }

    if (flags & dDemo_actor_c::ENABLE_SCALE_e) {
        i_actor->scale = demo_actor->getScale();
    }

    if (flags & dDemo_actor_c::ENABLE_ANM_TRANSITION_e) {
        i_actor->gravity = demo_actor->getPrm_Morf();
    }

    if (i_morf == NULL) {
        return 1;
    }

    demo_actor->setModel(i_morf->getModel());

    if (flags & dDemo_actor_c::ENABLE_ANM_e) {
        u32 anmID = demo_actor->getAnmId();

        if (anmID != demo_actor->getOldAnmId()) {
            const char* a_name;
            if (anmID & 0x10000) {
                a_name = dStage_roomControl_c::getDemoArcName();
                JUT_ASSERT(267, a_name != NULL);
            } else {
                a_name = i_arcName;
            }

            demo_actor->setOldAnmId(anmID);

            J3DAnmTransform* i_key = (J3DAnmTransform*)dComIfG_getObjectIDRes(a_name, anmID);
            JUT_ASSERT(272, i_key != 0);

            void* ptr = dDemo_getJaiPointer(a_name, anmID, param_4, param_5);

            i_morf->setAnm(i_key, -1, demo_actor->getPrm_Morf(), 1.0f, 0.0f, -1.0f, ptr);
            demo_actor->setAnmFrameMax(i_morf->getEndFrame());
        }
    }

    if (flags & dDemo_actor_c::ENABLE_ANM_FRAME_e) {
        f32 anm_frame = demo_actor->getAnmFrame();

        if (anm_frame > 1.0f) {
            i_morf->setFrame(anm_frame - 1.0f);
            i_morf->play(&i_actor->current.pos, param_6, i_reverb);
        } else {
            i_morf->setFrame(anm_frame);
        }
    } else {
        i_morf->play(&i_actor->current.pos, param_6, i_reverb);
    }

    return 1;
}

/* 800387A8-800387EC 0330E8 0044+00 1/1 0/0 0/0 .text            branchFile__FPCc */
static void branchFile(char const* resName) {
    u8* branchData = (u8*)dComIfG_getObjectRes(dStage_roomControl_c::getDemoArcName(), resName);
    JUT_ASSERT(712, branchData != 0);

    dDemo_c::setBranchData(branchData);
}

/* 80450620-80450628 0000A0 0002+06 3/3 1/1 0/0 .sdata           m_branchId__7dDemo_c */
s16 dDemo_c::m_branchId = -1;

s16 dDemo_c::m_branchNum = 0;

/* 800387EC-80038920 03312C 0134+00 1/0 0/0 0/0 .text            JSGSetData__13dDemo_actor_cFUlPCvUl
 */
void dDemo_actor_c::JSGSetData(u32 id, void const* pdata, u32 param_2) {
    if (id == ID_UNK_1) {
        JStudio::stb::TParseData_fixed<50, TValueIterator_misaligned<u16> > data(pdata);
        if (!data.isEnd() && data.isValid()) {
            JGadget::binary::TValueIterator_misaligned<u16> value(data.begin());
            
            dDemo_c::setBranchType(*value);
            OS_REPORT("JSGSetData: 分岐条件<%d>\n", *value);
        }
    } else if (id == ID_UNK_2) {
        JUT_ASSERT(728, dDemo_c::getBranchId() >= 0);

        JStudio::stb::TParseData_string string_data(pdata);

        u32 num = string_data.size();
        // "JSGSetData: Branch<n=%d "
        OS_REPORT("JSGSetData: 分岐<n=%d ", num);
        JUT_ASSERT(0x2DD, num == dDemo_c::getBranchNum());
        JUT_ASSERT(0x2DF, num > dDemo_c::getBranchId());

        const char* str = string_data.getData();
        for (s16 i = 0; i < dDemo_c::getBranchId(); i++) {
            OS_REPORT("\"%s\"", str);
            str += strlen(str) + 1;
        }

        // "Select<%d:\"%s\">\n"
        OS_REPORT(" 選択<%d:\"%s\">\n", dDemo_c::getBranchId(), str);

        if (strcmp(str, "-") != 0) {
            branchFile(str);
        }
    } else if (id == ID_UNK_3) {
        JStudio::stb::TParseData_string data(pdata);

        u32 num = data.size();
        JUT_ASSERT(0x2ED, num == 1);

        const char* str = data.getData();
        // "JSGSetData: Change<\"%s\">\n"
        OS_REPORT("JSGSetData: 切り替え<\"%s\">\n", str);

        branchFile(str);
    } else {
        JUT_ASSERT(0x2F3, id == ID_NORMAL);

        mPrm.field_0x0 = id;
        mPrm.mData = (dDemo_prm_data*)pdata;
        field_0x54 = param_2;
        
        onEnable(1);
    }
}

/* 80038920-80038980 033260 0060+00 1/0 0/0 0/0 .text JSGSetTranslation__13dDemo_actor_cFRC3Vec */
void dDemo_actor_c::JSGSetTranslation(Vec const& i_trans) {
    if (-1.0E+32f < i_trans.x && i_trans.x < 1.0E+32f && -1.0E+32f < i_trans.y && i_trans.y < 1.0E+32f && -1.0E+32f < i_trans.z && i_trans.z < 1.0E+32f) {
        mTrans.x = i_trans.x;
        mTrans.y = i_trans.y;
        mTrans.z = i_trans.z;
        onEnable(ENABLE_TRANS_e);
    } else {
        // "\n\n!!JSGSetTranslation outside of range. x[%f]y[%f]z[%f]\n"
        OS_REPORT("\n\n!!JSGSetTranslationで範囲外の指定がされました。x[%f]y[%f]z[%f]\n", i_trans.x, i_trans.y, i_trans.z);
        JUT_ASSERT(789, 0);
    }
}

/* 80038980-800389A8 0332C0 0028+00 1/0 0/0 0/0 .text JSGSetScaling__13dDemo_actor_cFRC3Vec */
void dDemo_actor_c::JSGSetScaling(Vec const& i_scale) {
    mScale = i_scale;
    onEnable(ENABLE_SCALE_e);
}

/* 800389A8-80038A0C 0332E8 0064+00 1/0 0/0 0/0 .text JSGSetRotation__13dDemo_actor_cFRC3Vec */
void dDemo_actor_c::JSGSetRotation(Vec const& i_rotate) {
    mRotate.x = i_rotate.x * 182.04444885253906f;
    mRotate.y = i_rotate.y * 182.04444885253906f;
    mRotate.z = i_rotate.z * 182.04444885253906f;
    onEnable(ENABLE_ROTATE_e);
}

/* 80038A0C-80038A20 03334C 0014+00 1/0 0/0 0/0 .text            JSGSetShape__13dDemo_actor_cFUl */
void dDemo_actor_c::JSGSetShape(u32 i_shape) {
    mShape = i_shape;
    onEnable(ENABLE_SHAPE_e);
}

/* 80038A20-80038A40 033360 0020+00 1/0 0/0 0/0 .text            JSGSetAnimation__13dDemo_actor_cFUl
 */
void dDemo_actor_c::JSGSetAnimation(u32 i_anmID) {
    mAnmId = i_anmID;
    mAnmFrameMax = FLT_MAX;
    onEnable(ENABLE_ANM_e);
}

/* 80038A40-80038A54 033380 0014+00 1/0 0/0 0/0 .text JSGSetAnimationFrame__13dDemo_actor_cFf */
void dDemo_actor_c::JSGSetAnimationFrame(f32 i_frame) {
    mAnmFrame = i_frame;
    onEnable(ENABLE_ANM_FRAME_e);
}

/* 80038A54-80038A68 033394 0014+00 1/0 0/0 0/0 .text JSGSetAnimationTransition__13dDemo_actor_cFf
 */
void dDemo_actor_c::JSGSetAnimationTransition(f32 i_trans) {
    mAnmTransition = i_trans;
    onEnable(ENABLE_ANM_TRANSITION_e);
}

/* 80038A68-80038A7C 0333A8 0014+00 1/0 0/0 0/0 .text JSGSetTextureAnimation__13dDemo_actor_cFUl
 */
void dDemo_actor_c::JSGSetTextureAnimation(u32 i_anm) {
    mTexAnm = i_anm;
    onEnable(ENABLE_TEX_ANM);
}

/* 80038A7C-80038A90 0333BC 0014+00 1/0 0/0 0/0 .text
 * JSGSetTextureAnimationFrame__13dDemo_actor_cFf               */
void dDemo_actor_c::JSGSetTextureAnimationFrame(f32 i_frame) {
    mTexAnmFrame = i_frame;
    onEnable(ENABLE_TEX_ANM_FRAME_e);
}

/* 80038A90-80038AC4 0333D0 0034+00 8/8 0/0 0/0 .text            getView__Fv */
static view_class* getView() {
    if (dComIfGp_getWindowNum() == 0) {
        return NULL;
    }

    int camID = dComIfGp_getWindow(0)->getCameraID();
    return dComIfGp_getCamera(camID);
}

/* 80038AC4-80038AF8 033404 0034+00 1/0 0/0 0/0 .text JSGGetProjectionNear__14dDemo_camera_cCFv */
f32 dDemo_camera_c::JSGGetProjectionNear() const {
    view_class* view = getView();
    
    if (view == NULL) {
        return 0.0f;
    }
    
    return view->near;
}

/* 80038AF8-80038B0C 033438 0014+00 1/0 0/0 0/0 .text JSGSetProjectionNear__14dDemo_camera_cFf */
void dDemo_camera_c::JSGSetProjectionNear(f32 i_projNear) {
    mProjNear = i_projNear;
    onEnable(ENABLE_PROJ_NEAR_e);
}

/* 80038B0C-80038B40 03344C 0034+00 1/0 0/0 0/0 .text JSGGetProjectionFar__14dDemo_camera_cCFv */
f32 dDemo_camera_c::JSGGetProjectionFar() const {
    view_class* view = getView();
    
    if (view == NULL) {
        return 1.0f;
    }
    
    return view->far;
}

/* 80038B40-80038B54 033480 0014+00 1/0 0/0 0/0 .text JSGSetProjectionFar__14dDemo_camera_cFf */
void dDemo_camera_c::JSGSetProjectionFar(f32 i_projFar) {
    mProjFar = i_projFar;
    onEnable(ENABLE_PROJ_FAR_e);
}

/* 80038B54-80038B88 033494 0034+00 1/0 0/0 0/0 .text JSGGetProjectionFovy__14dDemo_camera_cCFv */
f32 dDemo_camera_c::JSGGetProjectionFovy() const {
    view_class* view = getView();
    
    if (view == NULL) {
        return 60.0f;
    }
    
    return view->fovy;
}

/* 80038B88-80038B9C 0334C8 0014+00 1/0 0/0 0/0 .text JSGSetProjectionFovy__14dDemo_camera_cFf */
void dDemo_camera_c::JSGSetProjectionFovy(f32 i_projFovy) {
    mProjFovy = i_projFovy;
    onEnable(ENABLE_PROJ_FOVY_e);
}

/* 80038B9C-80038BD0 0334DC 0034+00 1/0 0/0 0/0 .text JSGGetProjectionAspect__14dDemo_camera_cCFv
 */
f32 dDemo_camera_c::JSGGetProjectionAspect() const {
    view_class* view = getView();
    
    if (view == NULL) {
        return 1.3571428f;
    }
    
    return view->aspect;
}

/* 80038BD0-80038BE4 033510 0014+00 1/0 0/0 0/0 .text JSGSetProjectionAspect__14dDemo_camera_cFf
 */
void dDemo_camera_c::JSGSetProjectionAspect(f32 i_aspect) {
    mProjAspect = i_aspect;
    onEnable(ENABLE_PROJ_ASPECT_e);
}

/* 80038BE4-80038C44 033524 0060+00 1/0 0/0 0/0 .text JSGGetViewPosition__14dDemo_camera_cCFP3Vec
 */
void dDemo_camera_c::JSGGetViewPosition(Vec* o_position) const {
    view_class* view = getView();
    
    if (view == NULL) {
        o_position->x = 0.0f;
        o_position->y = 0.0f;
        o_position->z = 0.0f;
    } else {
        *o_position = view->lookat.eye;
    }
}

/* 80038C44-80038C6C 033584 0028+00 1/0 0/0 0/0 .text JSGSetViewPosition__14dDemo_camera_cFRC3Vec
 */
void dDemo_camera_c::JSGSetViewPosition(Vec const& i_position) {
    mViewPos = i_position;
    onEnable(ENABLE_VIEW_POS_e);
}

/* 80038C6C-80038CD0 0335AC 0064+00 1/0 0/0 0/0 .text JSGGetViewUpVector__14dDemo_camera_cCFP3Vec
 */
void dDemo_camera_c::JSGGetViewUpVector(Vec* o_upVec) const {
    view_class* view = getView();
    
    if (view == NULL) {
        o_upVec->x = 0.0f;
        o_upVec->y = 1.0f;
        o_upVec->z = 0.0f;
    } else {
        *o_upVec = view->lookat.up;
    }
}

/* 80038CD0-80038CF8 033610 0028+00 1/0 0/0 0/0 .text JSGSetViewUpVector__14dDemo_camera_cFRC3Vec
 */
void dDemo_camera_c::JSGSetViewUpVector(Vec const& i_upVec) {
    mViewUpVector = i_upVec;
    onEnable(ENABLE_VIEW_UP_VEC_e);
}

/* 80038CF8-80038D5C 033638 0064+00 1/0 0/0 0/0 .text
 * JSGGetViewTargetPosition__14dDemo_camera_cCFP3Vec            */
void dDemo_camera_c::JSGGetViewTargetPosition(Vec* o_targetPos) const {
    view_class* view = getView();
    
    if (view == NULL) {
        o_targetPos->x = 0.0f;
        o_targetPos->y = 0.0f;
        o_targetPos->z = 1.0f;
    } else {
        *o_targetPos = view->lookat.center;
    }
}

/* 80038D5C-80038D84 03369C 0028+00 1/0 0/0 0/0 .text
 * JSGSetViewTargetPosition__14dDemo_camera_cFRC3Vec            */
void dDemo_camera_c::JSGSetViewTargetPosition(Vec const& i_targetPos) {
    mViewTargetVector = i_targetPos;
    onEnable(ENABLE_VIEW_TARG_POS_e);
}

/* 80038D84-80038DDC 0336C4 0058+00 1/0 0/0 0/0 .text            JSGGetViewRoll__14dDemo_camera_cCFv
 */
f32 dDemo_camera_c::JSGGetViewRoll() const {
    view_class* view = getView();
    
    if (view == NULL) {
        return 0.0f;
    }
    
    return view->bank * 0.0054931640625f;
}

/* 80038DDC-80038DF0 03371C 0014+00 1/0 0/0 0/0 .text            JSGSetViewRoll__14dDemo_camera_cFf
 */
void dDemo_camera_c::JSGSetViewRoll(f32 i_roll) {
    mViewRoll = i_roll;
    onEnable(ENABLE_VIEW_ROLL_e);
}

/* 80038DF0-80038E20 033730 0030+00 1/0 0/0 0/0 .text JSGSetColor__15dDemo_ambient_cF8_GXColor */
void dDemo_ambient_c::JSGSetColor(GXColor i_color) {
    mColor = i_color;
    onEnable(ENABLE_COLOR_e);
}

/* 80038E20-80038E34 033760 0014+00 1/0 0/0 0/0 .text
 * JSGSetLightType__13dDemo_light_cFQ26JStage7TELight           */
void dDemo_light_c::JSGSetLightType(JStage::TELight i_lightType) {
    mLightType = i_lightType;
    onEnable(ENABLE_LIGHT_TYPE_e);
}

/* 80038E34-80038E5C 033774 0028+00 1/0 0/0 0/0 .text JSGSetPosition__13dDemo_light_cFRC3Vec */
void dDemo_light_c::JSGSetPosition(Vec const& i_pos) {
    mPosition = i_pos;
    onEnable(ENABLE_POSITION_e);
}

/* 80038E5C-80038E8C 03379C 0030+00 1/0 0/0 0/0 .text JSGSetColor__13dDemo_light_cF8_GXColor */
void dDemo_light_c::JSGSetColor(GXColor i_color) {
    mColor = i_color;
    onEnable(ENABLE_COLOR_e);
}

/* 80038E8C-80038EA8 0337CC 001C+00 1/0 0/0 0/0 .text
 * JSGSetDistanceAttenuation__13dDemo_light_cFff13_GXDistAttnFn */
void dDemo_light_c::JSGSetDistanceAttenuation(f32 param_0, f32 param_1, GXDistAttnFn i_distAttenFn) {
    field_0x24 = param_0;
    field_0x28 = param_1;
    mDistAttenFn = i_distAttenFn;
    onEnable(ENABLE_DIST_ATTEN_e);
}

/* 80038EA8-80038EC0 0337E8 0018+00 1/0 0/0 0/0 .text
 * JSGSetAngleAttenuation__13dDemo_light_cFf9_GXSpotFn          */
void dDemo_light_c::JSGSetAngleAttenuation(f32 param_0, GXSpotFn i_spotFn) {
    field_0x2c = param_0;
    mSpotFn = i_spotFn;
    onEnable(ENABLE_ANGLE_ATTEN_e);
}

/* 80038EC0-80038EE8 033800 0028+00 1/0 0/0 0/0 .text JSGSetDirection__13dDemo_light_cFRC3Vec */
void dDemo_light_c::JSGSetDirection(Vec const& i_direction) {
    mDirection = i_direction;
    onEnable(ENABLE_DIRECTION_e);
}

/* 80038EE8-80038EFC 033828 0014+00 1/0 0/0 0/0 .text
 * JSGSetFogFunction__11dDemo_fog_cF10_GXFogType                */
void dDemo_fog_c::JSGSetFogFunction(GXFogType i_fogType) {
    mFogType = i_fogType;
    onEnable(ENABLE_FOG_FN_e);
}

/* 80038EFC-80038F10 03383C 0014+00 1/0 0/0 0/0 .text            JSGSetStartZ__11dDemo_fog_cFf */
void dDemo_fog_c::JSGSetStartZ(f32 i_startZ) {
    mStartZ = i_startZ;
    onEnable(ENABLE_START_Z_e);
}

/* 80038F10-80038F24 033850 0014+00 1/0 0/0 0/0 .text            JSGSetEndZ__11dDemo_fog_cFf */
void dDemo_fog_c::JSGSetEndZ(f32 i_endZ) {
    mEndZ = i_endZ;
    onEnable(ENABLE_END_Z_e);
}

/* 80038F24-80038F54 033864 0030+00 1/0 0/0 0/0 .text JSGSetColor__11dDemo_fog_cF8_GXColor */
void dDemo_fog_c::JSGSetColor(GXColor i_color) {
    mColor = i_color;
    onEnable(ENABLE_COLOR_e);
}

/* 80038F54-80038F70 033894 001C+00 1/1 0/0 0/0 .text            __ct__14dDemo_object_cFv */
dDemo_object_c::dDemo_object_c() {
    mActorNum = 0;
    mLightNum = 0;
    mpCamera = NULL;
    mpAmbient = NULL;
    mpFog = NULL;
}

/* 80038F70-80038FC0 0338B0 0050+00 1/1 0/0 0/0 .text            __dt__14dDemo_object_cFv */
dDemo_object_c::~dDemo_object_c() {
    remove();
}

/* 80038FC0-80039088 033900 00C8+00 1/1 0/0 0/0 .text appendActor__14dDemo_object_cFP10fopAc_ac_c
 */
JStage::TObject* dDemo_object_c::appendActor(fopAc_ac_c* p_actor) {
    dDemo_actor_c* demoActor = dDemo_c::getActor(p_actor->demoActorID);

    if (demoActor != NULL) {
        return demoActor;
    }

    if (mActorNum >= 32) {
        // "Too many Demo Actors!!\n"
        OS_REPORT("デモアクター登録数オーバー！！\n");
        return NULL;
    }

    demoActor = new dDemo_actor_c();
    if (demoActor == NULL) {
        // "Failed to get Demo Actor!!\n"
        OS_REPORT("デモアクター確保失敗！！\n");
        return NULL;
    }

    u8 curActorNum = mActorNum;
    mActorNum++;
    mpActors[curActorNum] = demoActor;
    demoActor->setActor(p_actor);
    p_actor->demoActorID = mActorNum;

    if (p_actor->model != NULL) {
        demoActor->setModel((J3DModel*)p_actor->model);
    }

    return demoActor;
}

/* 80039088-800390AC 0339C8 0024+00 2/2 6/6 7/7 .text            getActor__14dDemo_object_cFUc */
dDemo_actor_c* dDemo_object_c::getActor(u8 actorId) {
    if (actorId == 0 || actorId > 32) {
        return NULL;
    }

    return mpActors[actorId - 1];
}

/* 800390AC-80039128 0339EC 007C+00 1/1 0/0 0/0 .text            createCamera__14dDemo_object_cFv */
JStage::TObject* dDemo_object_c::createCamera() {
    if (mpCamera != NULL) {
        // "2 demo cameras!!\n"
        OS_REPORT("デモカメラが２つも！！\n");
        return mpCamera;
    }

    mpCamera = new dDemo_camera_c();
    return mpCamera;
}

/* 80039128-8003913C 033A68 0014+00 0/0 3/3 0/0 .text            getActiveCamera__14dDemo_object_cFv
 */
dDemo_camera_c* dDemo_object_c::getActiveCamera() {
    if (mpCamera != NULL) {
        return mpCamera;
    }

    return NULL;
}

/* 8003913C-800391B8 033A7C 007C+00 1/1 0/0 0/0 .text            createAmbient__14dDemo_object_cFv
 */
JStage::TObject* dDemo_object_c::createAmbient() {
    if (mpAmbient != NULL) {
        // "2 demo ambient lights!\n"
        OS_REPORT("デモアンビエントライトが２つも！！\n");
        return mpAmbient;
    }

    mpAmbient = new dDemo_ambient_c();
    return mpAmbient;
}

/* 800391B8-80039258 033AF8 00A0+00 1/1 0/0 0/0 .text            appendLight__14dDemo_object_cFv */
JStage::TObject* dDemo_object_c::appendLight() {
    if (mLightNum >= 8) {
        // "Too many Demo Lights!!\n"
        OS_REPORT("デモライト登録数オーバー！！\n");
        return NULL;
    }

    dDemo_light_c* demoLight = new dDemo_light_c();
    if (demoLight == NULL) {
        // "Failed to get Demo Light!!\n"
        OS_REPORT("デモライト確保失敗！！\n");
        return NULL;
    }

    u8 curLightNum = mLightNum;
    mLightNum++;
    mpLights[curLightNum] = demoLight;

    return demoLight;
}

/* 80039258-800392D4 033B98 007C+00 1/1 0/0 0/0 .text            createFog__14dDemo_object_cFv */
JStage::TObject* dDemo_object_c::createFog() {
    if (mpFog != NULL) {
        // "2 demo fogs!\n"
        OS_REPORT("デモフォグが２つも！！\n");
        return mpFog;
    }

    mpFog = new dDemo_fog_c();
    return mpFog;
}

/* 800392D4-80039408 033C14 0134+00 2/2 0/0 0/0 .text            remove__14dDemo_object_cFv */
void dDemo_object_c::remove() {
    while (mActorNum != 0) {
        delete mpActors[--mActorNum];
    }

    if (mpCamera != NULL) {
        delete mpCamera;
        mpCamera = NULL;
    }

    if (mpAmbient != NULL) {
        delete mpAmbient;
        mpAmbient = NULL;
    }

    while (mLightNum != 0) {
        delete mpLights[--mLightNum];
    }

    if (mpFog != NULL) {
        delete mpFog;
        mpFog = NULL;
    }
}

/* 80039408-80039468 033D48 0060+00 1/0 0/0 0/0 .text            __dt__11dDemo_fog_cFv */
dDemo_fog_c::~dDemo_fog_c() {}

/* 80039468-800394C8 033DA8 0060+00 1/0 0/0 0/0 .text            __dt__13dDemo_light_cFv */
dDemo_light_c::~dDemo_light_c() {}

/* 800394C8-80039528 033E08 0060+00 1/0 0/0 0/0 .text            __dt__15dDemo_ambient_cFv */
dDemo_ambient_c::~dDemo_ambient_c() {}

/* 80039528-80039678 033E68 0150+00 1/0 0/0 0/0 .text
 * JSGFindObject__14dDemo_system_cCFPPQ26JStage7TObjectPCcQ26JStage8TEObject */
int dDemo_system_c::JSGFindObject(JStage::TObject** p_TObj, char const* actorName,
                                   JStage::TEObject objType) const {
    if (mpObject == NULL) {
        // "No Demo Object Class!!"
        OS_REPORT("デモオブジェクトクラスが無い！！");
        return true;
    }

    if (objType == JStage::OBJECT_ACTOR || objType == JStage::OBJECT_UNDEFINED) {
        fopAc_ac_c* actor = fopAcM_searchFromName(actorName, 0, 0);

        if (actor == NULL) {
            if (objType == JStage::OBJECT_ACTOR && !strncmp(actorName, "d_act", 5)) {
                actor =
                    (fopAc_ac_c*)fopAcM_fastCreate(actorName, 0, NULL, -1, NULL, NULL, NULL, NULL);
                if (actor == NULL) {
                    // "Generic-actor<%s> creation failed!!\n"
                    OS_WARNING("汎用くん<%s>生成失敗！！\n", actorName);
                    return true;
                }

                fopAcM_setStageLayer(actor);
                // "Generated Generic-actor<%s>!!\n"
                OS_REPORT("汎用くん<%s>生成！！\n", actorName);
            } else {
                // "No Demo Actors available!!\n"
                OS_WARNING("デモの出演者<%s>がいません！！\n", actorName);
                return true;
            }
        }

        *p_TObj = mpObject->appendActor(actor);
    } else if (objType == JStage::OBJECT_CAMERA) {
        *p_TObj = mpObject->createCamera();
    } else if (objType == JStage::OBJECT_AMBIENT) {
        *p_TObj = mpObject->createAmbient();
    } else if (objType == JStage::OBJECT_LIGHT) {
        *p_TObj = mpObject->appendLight();
    } else if (objType == JStage::OBJECT_FOG) {
        *p_TObj = mpObject->createFog();
    } else {
        // "Strange Demo Object type!! Type<%d>\n"
        OS_REPORT("へんなデモオブジェクトタイプです！！ タイプ<%d>\n");
        JUT_ASSERT(1755, 0);
    }

    return *p_TObj == NULL ? TRUE : FALSE;
}

/* 80039678-80039910 033FB8 0298+00 0/0 1/1 0/0 .text            create__7dDemo_cFv */
void dDemo_c::create() {
    m_system = new dDemo_system_c();
    JUT_ASSERT(0, m_system != 0);

    m_control = new JStudio::TControl();
    JUT_ASSERT(0, m_control != 0);

    m_mesgControl = new jmessage_tControl();
    JUT_ASSERT(0, m_mesgControl != 0);

    m_stage = new JStudio_JStage::TCreateObject(m_system);
    JUT_ASSERT(0, m_stage != 0);

    m_audio = new JStudio_JAudio2::TCreateObject(Z2GetSoundStarter(), m_system);
    JUT_ASSERT(0, m_audio != 0);
    m_audio->mPermit_onExit_notEnd = true;

    m_particle = new dDemo_particle_c(dPa_control_c::getEmitterManager(), m_system);
    JUT_ASSERT(0, m_particle != 0);

    m_message = new jstudio_tCreateObject_message();
    JUT_ASSERT(0, m_message != 0);

    m_factory = new JStudio::TFactory();
    JUT_ASSERT(0, m_factory != 0);

    m_object = new dDemo_object_c();
    JUT_ASSERT(0, m_object != 0);

    m_control->setSecondPerFrame(1.0f / 30.0f);
    m_control->setFactory(m_factory);
    m_factory->appendCreateObject(m_stage);
    m_factory->appendCreateObject(m_audio);
    m_factory->appendCreateObject(m_particle);
    m_factory->appendCreateObject(m_message);

    m_system->setObject(m_object);
    m_data = NULL;
    m_mode = 0;
    reset();
}

/* 80039910-80039AAC 034250 019C+00 0/0 1/1 0/0 .text            remove__7dDemo_cFv */
void dDemo_c::remove() {
    end();
    
    if (m_object != NULL) {
        delete m_object;
        m_object = NULL;
    }

    if (m_factory != NULL) {
        delete m_factory;
        m_factory = NULL;
    }

    if (m_message != NULL) {
        delete m_message;
        m_message = NULL;
    }

    if (m_particle != NULL) {
        delete m_particle;
        m_particle = NULL;
    }

    if (m_audio != NULL) {
        delete m_audio;
        m_audio = NULL;
    }

    if (m_stage != NULL) {
        delete m_stage;
        m_stage = NULL;
    }

    if (m_mesgControl != NULL) {
        delete m_mesgControl;
        m_mesgControl = NULL;
    }

    if (m_control != NULL) {
        delete m_control;
        m_control = NULL;
    }

    if (m_system != NULL) {
        delete m_system;
        m_system = NULL;
    }
}

/* 80039AAC-80039B0C 0343EC 0060+00 1/0 0/0 0/0 .text            __dt__14dDemo_system_cFv */
dDemo_system_c::~dDemo_system_c() {}

/* 80039B0C-80039B6C 03444C 0060+00 1/0 0/0 0/0 .text            __dt__17jmessage_tControlFv */
jmessage_tControl::~jmessage_tControl() {}

/* 80039B6C-80039CF8 0344AC 018C+00 1/1 1/1 0/0 .text            start__7dDemo_cFPCUcP4cXyzf */
int dDemo_c::start(u8 const* p_data, cXyz* p_translation, f32 rotationY) {
    JUT_ASSERT(0, m_system != 0);

    m_control->reset();
    JStudio::TParse parser(m_control);

    if (!parser.parse(p_data, 0)) {
        // "Demo data read error!!\n"
        OSReport_Error("デモデータ読み込みエラー！！\n");
        return 0;
    }

    if (m_data == NULL) {
        m_control->setSuspend(0);
    }

    m_control->forward(0);
    m_translation = p_translation;

    if (p_translation != NULL) {
        static cXyz l_translation;
        l_translation = *m_translation;
        m_translation = &l_translation;
        m_rotationY = rotationY;

        m_control->transform_enable(true);
        m_control->transform_setOrigin(*m_translation, m_rotationY);
    }

    m_mode = 1;
    reset();

    m_data = NULL;
    m_branchData = (u8*)p_data;
    return 1;
}

/* 80039CF8-80039D4C 034638 0054+00 1/1 2/2 0/0 .text            end__7dDemo_cFv */
void dDemo_c::end() {
    JUT_ASSERT(0, m_system != 0);

    m_control->destroyObject_all();
    m_object->remove();
    m_data = NULL;
    m_mode = 0;
}

/* 80039D4C-80039DA4 03468C 0058+00 1/1 0/0 0/0 .text            branch__7dDemo_cFv */
void dDemo_c::branch() {
    JUT_ASSERT(0, m_system != 0);

    m_control->destroyObject_all();
    const u8* branchData = m_branchData;
    m_branchData = NULL;

    int rt = start(branchData, m_translation, m_rotationY);
    JUT_ASSERT(0, rt);
}

/* 80039DA4-80039EDC 0346E4 0138+00 0/0 1/1 0/0 .text            update__7dDemo_cFv */
int dDemo_c::update() {
    JUT_ASSERT(0, m_system != 0);

    if (m_data == NULL) {
        if (m_branchData == NULL) {
            return 0;
        } else {
            m_data = m_branchData;
            m_branchData = NULL;
            return 1;
        }
    } else if (isStatus(1)) {
        OS_REPORT(">>>>>>>>>>>>>>>>>>>>>>>>>>>> Movie Start Wait !\n");
        daMP_c::daMP_c_THPPlayerPlay();
        if (isStatus(1)) {
            return 1;
        }
    }

    if (m_control->forward(1) != 0) {
        m_frame++;

        if (m_control->getSuspend() <= 0) {
            m_frameNoMsg++;
        }
    } else {
        m_mode = 2;
    }

    if (m_branchData != NULL) {
        branch();
    }

    if (dComIfGs_staffroll_next_go_check() != 0) {
        dScnKy_env_light_c* env_light = &g_env_light;

        if (dComIfGs_staffroll_next_go_check() > 10) {
            env_light->staffroll_next_timer = 0;
            m_mode = 2;
        } else {
            if (dComIfGs_staffroll_next_go_check() == 1) {
                mDoGph_gInf_c::fadeOut(0.1f, g_blackColor);
            }
            env_light->staffroll_next_timer++;
        }
    }

    return 1;
}

/* 80039EDC-80039EEC 03481C 0010+00 1/1 0/0 0/0 .text            setBranchType__7dDemo_cFUs */
void dDemo_c::setBranchType(u16 type) {
    m_branchType = type;
    m_branchId = -1;
}

/* 80039EEC-80039F04 03482C 0018+00 0/0 2/2 0/0 .text            setBranchId__7dDemo_cFUss */
void dDemo_c::setBranchId(u16 param_0, s16 branchId) {
    if (param_0 != m_branchType) {
        return;
    }

    m_branchId = branchId;
}

/* 80039F04-80039F1C 034844 0018+00 2/2 0/0 0/0 .text            reset__7dDemo_cFv */
void dDemo_c::reset() {
    m_frame = 0;
    m_frameNoMsg = 0;
    m_status = 0;
    m_branchData = NULL;
}

/* 80039F1C-80039F9C 03485C 0080+00 1/0 0/0 0/0 .text emitter_create__16dDemo_particle_cFUl */
JPABaseEmitter* dDemo_particle_c::emitter_create(u32 i_id) {
    cXyz pos(0.0f, 0.0f, 0.0f);
    return dComIfGp_particle_set(i_id, &pos, NULL, NULL, 0xFF, NULL,
                                 dComIfGp_roomControl_getStayNo(), NULL, NULL, NULL);
}

/* 80039F9C-80039FFC 0348DC 0060+00 1/0 0/0 0/0 .text            __dt__16dDemo_particle_cFv */
dDemo_particle_c::~dDemo_particle_c() {}

/* 80039FFC-8003A05C 03493C 0060+00 1/0 0/0 0/0 .text            __dt__14dDemo_camera_cFv */
dDemo_camera_c::~dDemo_camera_c() {}

static void dummyString2() {
    DEAD_STRING("デモデータ再読み込みエラー！！\n");
}
