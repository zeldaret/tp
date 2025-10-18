/**
 * @file d_a_obj_nagaisu.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_nagaisu.h"

/* 80C9F3B8-80C9F3D8 000078 0020+00 1/1 0/0 0/0 .text daObjNagaisu_c_createHeap__FP10fopAc_ac_c */
static int daObjNagaisu_c_createHeap(fopAc_ac_c* i_this) {
    return ((daObjNagaisu_c*)i_this)->createHeap();
}

/* 80CA0408-80CA040C -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Nagaisu";

/* 80C9F3D8-80C9F45C 000098 0084+00 2/2 0/0 0/0 .text            __ct__14daObjNagaisu_cFv */
daObjNagaisu_c::daObjNagaisu_c() {}

/* 80C9F4B8-80C9F5A8 000178 00F0+00 1/0 0/0 0/0 .text            __dt__14daObjNagaisu_cFv */
daObjNagaisu_c::~daObjNagaisu_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80C9F5A8-80C9F668 000268 00C0+00 1/1 0/0 0/0 .text            createHeap__14daObjNagaisu_cFv */
int daObjNagaisu_c::createHeap() {
    J3DModelData* a_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(156, a_model_data_p != NULL);

    mpModel = mDoExt_J3DModel__create(a_model_data_p, J3DMdlFlag_DifferedDLBuffer, BMD_DEFAULT_DIFF_FLAGS);
    if (mpModel == NULL) {
        return 0;
    }

    daObjIsuChild_c* a_child_p = mChild;
    for (int i = 0; i < 60; i++) {
        if (!a_child_p->getDeadFlg() && !a_child_p->createHeap()) {
            return 0;
        }

        a_child_p++;
    }

    return 1;
}

/* 80CA035C-80CA0378 000000 001C+00 3/3 0/0 0/0 .rodata          REMOVE_ISU_IDX__14daObjNagaisu_c */
const int daObjNagaisu_c::REMOVE_ISU_IDX[] = {
    6,
    7,
    11,
    14,
    18,
    21,
    29,
};

/* 80CA0378-80CA03BC 00001C 0044+00 0/1 0/0 0/0 .rodata          s_CcDCyl__15daObjIsuChild_c */
const dCcD_SrcCyl daObjIsuChild_c::s_CcDCyl = {
    {
        {0, {{0, 0, 0}, {0x400020, 0x11}, 0}},
        {dCcD_SE_NONE, 0, 0, 0, 0},
        {dCcD_SE_NONE, 0, 0, 0, 0},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        0.0f,
        0.0f,
    },
};

/* 80C9F668-80C9F7A8 000328 0140+00 1/1 0/0 0/0 .text            create__14daObjNagaisu_cFv */
int daObjNagaisu_c::create() {
    fopAcM_ct(this, daObjNagaisu_c);

    int phase_state = dComIfG_resLoad(this, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        current.pos.z -= 3300.0f;
        setIsu();

        if (!fopAcM_entrySolidHeap(this, daObjNagaisu_c_createHeap, 0x12000)) {
            return cPhs_ERROR_e;
        }

        init();

        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        daObjIsuChild_c* a_child_p = mChild;
        for (int i = 0; i < 60; i++) {
            a_child_p->create(this, &mCcStts);
            a_child_p++;
        }
    }

    return phase_state;
}

/* 80C9F7A8-80C9F81C 000468 0074+00 1/1 0/0 0/0 .text            Delete__14daObjNagaisu_cFv */
int daObjNagaisu_c::Delete() {
    daObjIsuChild_c* a_child_p = mChild;
    for (int i = 0; i < 60; i++) {
        a_child_p->Delete();
        a_child_p->setDeadFlg(true);
        a_child_p++;
    }

    this->~daObjNagaisu_c();
    return 1;
}

/* 80C9F81C-80C9F8C4 0004DC 00A8+00 1/1 0/0 0/0 .text            draw__14daObjNagaisu_cFv */
int daObjNagaisu_c::draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dMdl_c* a_mdl_p = dMdl_mng_c::entry(mpModel->getModelData(), 0, current.roomNo);
    if (a_mdl_p != NULL) {
        daObjIsuChild_c* a_child_p = mChild;
        for (int i = 0; i < 60; i++) {
            a_child_p->draw(a_mdl_p);
            a_child_p++;
        }
    }

    return 1;
}

/* 80C9F8C4-80C9F914 000584 0050+00 1/1 0/0 0/0 .text            execute__14daObjNagaisu_cFv */
int daObjNagaisu_c::execute() {
    daObjIsuChild_c* a_child_p = mChild;
    for (int i = 0; i < 60; i++) {
        a_child_p->execute();
        a_child_p++;
    }

    return 1;
}

/* 80C9F914-80C9F944 0005D4 0030+00 1/1 0/0 0/0 .text            init__14daObjNagaisu_cFv */
void daObjNagaisu_c::init() {
    mCcStts.Init(0xFF, 0, this);
}

/* 80C9F944-80C9FA90 000604 014C+00 1/1 0/0 0/0 .text            setIsu__14daObjNagaisu_cFv */
void daObjNagaisu_c::setIsu() {
    daObjIsuChild_c* a_child_p = mChild;
    f32 start_x_pos = current.pos.x;
    cXyz prev_pos(current.pos.x, current.pos.y, current.pos.z);
    cXyz pos(prev_pos);

    int row_start_idx = 0;
    int section_start_idx = 3;
    u8 is_remove_isu = false;

    for (int i = 0; i < 60; i++) {
        if (i == row_start_idx) {
            row_start_idx += 6;
            pos.x = start_x_pos;

            // after seven rows, move farther back to leave room for the entrance way
            if (i == (6 * 7)) {
                pos.z = 600.0f + prev_pos.z;
            } else {
                pos.z = 300.0f + prev_pos.z;
            }
        } else if (i == section_start_idx) {
            section_start_idx += 6;
            pos.x = 790.0f + prev_pos.x;
            pos.z = prev_pos.z;
        } else {
            pos.x = 280.0f + prev_pos.x;
            pos.z = prev_pos.z;
        }

        prev_pos.x = pos.x;
        prev_pos.z = pos.z;

        is_remove_isu = false;
        for (int j = 0; j < 7; j++) {
            if (i == REMOVE_ISU_IDX[j]) {
                is_remove_isu = true;
                break;
            }
        }

        if (is_remove_isu) {
            a_child_p->setDeadFlg(true);
        } else {
            a_child_p->setDeadFlg(false);
            a_child_p->setPos(pos);
        }

        a_child_p++;
    }
}

/* 80C9FA90-80C9FAFC 000750 006C+00 1/1 0/0 0/0 .text            __ct__15daObjIsuChild_cFv */
daObjIsuChild_c::daObjIsuChild_c() {
    mIsDead = false;
    mpBgW = NULL;
}

/* 80C9FCDC-80C9FD4C 00099C 0070+00 3/2 0/0 0/0 .text            __dt__15daObjIsuChild_cFv */
daObjIsuChild_c::~daObjIsuChild_c() {}

/* 80C9FD4C-80C9FE28 000A0C 00DC+00 1/1 0/0 0/0 .text            createHeap__15daObjIsuChild_cFv */
int daObjIsuChild_c::createHeap() {
    mpBgW = new dBgW();
    if (mpBgW == NULL) {
        return 0;
    }

    mDoMtx_stack_c::transS(mPos.x, mPos.y, mPos.z);
    mDoMtx_stack_c::YrotM(-0x8000);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    if (mpBgW->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 7), 1, &mBgMtx) == true) {
        return 0;
    }

    return 1;
}

/* 80C9FE28-80C9FF54 000AE8 012C+00 1/1 0/0 0/0 .text
 * create__15daObjIsuChild_cFP14daObjNagaisu_cP9dCcD_Stts       */
void daObjIsuChild_c::create(daObjNagaisu_c* i_parent, dCcD_Stts* i_ccStts) {
    static const int COL_OFFSET_X[] = {
        60,
        -60,
    };

    if (!mIsDead) {
        for (int i = 0; i < 2; i++) {
            mCcCyl[i].Set(s_CcDCyl);
            mCcCyl[i].SetStts(i_ccStts);

            cXyz center(mPos.x + COL_OFFSET_X[i], mPos.y, mPos.z + -50.0f);
            mCcCyl[i].SetC(center);
            mCcCyl[i].SetH(180.0f);
            mCcCyl[i].SetR(65.0f);
        }

        if (dComIfG_Bgsp().Regist(mpBgW, i_parent)) {
            return;
        }
    }
}

/* 80C9FF54-80CA0034 000C14 00E0+00 1/1 0/0 0/0 .text            execute__15daObjIsuChild_cFv */
int daObjIsuChild_c::execute() {
    if (!mIsDead) {
        if (chkHit()) {
            callEmt();
            mDoAud_seStart(Z2SE_OBJ_BREAK_WOOD_FURNITURE, &mPos, 0, 0);
            Delete();
            mIsDead = true;
        } else {
            for (int i = 0; i < 2; i++) {
                dComIfG_Ccsp()->Set(&mCcCyl[i]);
            }
        }
    }
}

/* 80CA0034-80CA00B8 000CF4 0084+00 1/1 0/0 0/0 .text            draw__15daObjIsuChild_cFP6dMdl_c */
int daObjIsuChild_c::draw(dMdl_c* i_mdl) {
    if (!mIsDead) {
        mDoMtx_stack_c::transS(mPos.x, mPos.y, mPos.z);
        mDoMtx_stack_c::YrotM(-0x8000);
        mMdlObj.setMtx(mDoMtx_stack_c::get());
        i_mdl->entryObj(&mMdlObj);
    }
}

/* 80CA00B8-80CA0118 000D78 0060+00 2/2 0/0 0/0 .text            Delete__15daObjIsuChild_cFv */
void daObjIsuChild_c::Delete() {
    if (!mIsDead) {
        if (mpBgW != NULL && mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }
    }
}

/* 80CA0118-80CA0180 000DD8 0068+00 1/1 0/0 0/0 .text            chkHit__15daObjIsuChild_cFv */
bool daObjIsuChild_c::chkHit() {
    for (int i = 0; i < 2; i++) {
        if (mCcCyl[i].ChkTgHit()) {
            return true;
        }
    }

    return false;
}

/* 80CA0180-80CA0258 000E40 00D8+00 1/1 0/0 0/0 .text            callEmt__15daObjIsuChild_cFv */
void daObjIsuChild_c::callEmt() {
    cXyz pos(mPos.x, mPos.y, mPos.z);
    csXyz rot(0, -0x8000, 0);
    cXyz size(1.25f, 1.25f, 1.25f);

    for (int i = 0; i < 4; i++) {
        static const u16 PARTICLE_NAME[] = {
            dPa_RM(ID_ZI_S_LV5KAGU_BREAK_A),
            dPa_RM(ID_ZI_S_LV5KAGU_BREAK_B),
            dPa_RM(ID_ZI_S_LV5KAGU_BREAK_C),
            dPa_RM(ID_ZI_S_LV5KAGU_BREAK_D),
        };

        dComIfGp_particle_set(PARTICLE_NAME[i], &pos, &rot, &size);
    }
}

/* 80CA0258-80CA02AC 000F18 0054+00 1/0 0/0 0/0 .text daObjNagaisu_create__FP14daObjNagaisu_c */
static int daObjNagaisu_create(daObjNagaisu_c* i_this) {
    fopAcM_ct(i_this, daObjNagaisu_c);
    return i_this->create();
}

/* 80CA02AC-80CA02CC 000F6C 0020+00 1/0 0/0 0/0 .text daObjNagaisu_Delete__FP14daObjNagaisu_c */
static int daObjNagaisu_Delete(daObjNagaisu_c* i_this) {
    return i_this->Delete();
}

/* 80CA02CC-80CA02EC 000F8C 0020+00 1/0 0/0 0/0 .text daObjNagaisu_execute__FP14daObjNagaisu_c */
static int daObjNagaisu_execute(daObjNagaisu_c* i_this) {
    return i_this->execute();
}

/* 80CA02EC-80CA030C 000FAC 0020+00 1/0 0/0 0/0 .text daObjNagaisu_draw__FP14daObjNagaisu_c */
static int daObjNagaisu_draw(daObjNagaisu_c* i_this) {
    return i_this->draw();
}

/* 80CA040C-80CA042C -00001 0020+00 1/0 0/0 0/0 .data            daObjNagaisu_METHODS */
static actor_method_class daObjNagaisu_METHODS = {
    (process_method_func)daObjNagaisu_create,
    (process_method_func)daObjNagaisu_Delete,
    (process_method_func)daObjNagaisu_execute,
    0,
    (process_method_func)daObjNagaisu_draw,
};

/* 80CA042C-80CA045C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Nagaisu */
extern actor_process_profile_definition g_profile_Obj_Nagaisu = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Nagaisu,        // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjNagaisu_c),  // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  739,                     // mPriority
  &daObjNagaisu_METHODS,   // sub_method
  0x00040000,              // mStatus
  fopAc_ENV_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
