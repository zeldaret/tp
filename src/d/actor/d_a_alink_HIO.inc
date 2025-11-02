/**
 * d_a_alink_HIO.inc
 * Player HostIO interface handling
 */

#include "d/actor/d_a_alink.h"

#ifdef DEBUG

static void daAlinkHIO_setAnmGenMessage(daAlinkHIO_anm_c* i_anmP, JORMContext* ctx, char* param_3, f32 param_4, int param_5) {
    size_t sVar1;
    char acStack_94[100];
    
    sVar1 = strlen(param_3);
    sprintf(acStack_94,param_3);

    // A Speed
    sprintf(acStack_94 + sVar1, "Ａ速度");
    ctx->genSlider(acStack_94, &i_anmP->mSpeed, 0.0f, 10.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // Starting F
    sprintf(acStack_94 + sVar1,"開始Ｆ");
    ctx->genSlider(acStack_94, &i_anmP->mStartFrame, 0.0f, param_4, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // Ending F
    sprintf(acStack_94 + sVar1,"終了Ｆ");
    ctx->genSlider(acStack_94, &i_anmP->mEndFrame, 0, param_4, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    if (param_5 != 0) {
        sprintf(acStack_94 + sVar1,"ＣＦ");
        ctx->genSlider(acStack_94, &i_anmP->mCancelFrame, -1.0f, param_4 + 1.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    }

    // Interpolation
    sprintf(acStack_94 + sVar1,"補間");
    ctx->genSlider(acStack_94, &i_anmP->mInterpolation, 0.0f, 20.0f, 0, NULL, 0xffff,0xffff,0x200,0x18);
}

static void daAlinkHIO_setReverseAnmGenMessage(daAlinkHIO_anm_c * i_anmP, JORMContext* ctx, char *param_3, f32 param_4, int param_5) {
    size_t sVar1;
    char acStack_94[100];

    sVar1 = strlen(param_3);
    sprintf(acStack_94,param_3);

    // A Speed
    sprintf(acStack_94 + sVar1,"Ａ速度");
    ctx->genSlider(acStack_94, &i_anmP->mSpeed, -10.0f, 0.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // Starting F
    sprintf(acStack_94 + sVar1,"開始Ｆ");
    ctx->genSlider(acStack_94, &i_anmP->mEndFrame, 0, param_4, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // Ending F
    sprintf(acStack_94 + sVar1,"終了Ｆ");
    ctx->genSlider(acStack_94, &i_anmP->mStartFrame, 0.0f, param_4, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
  
    if (param_5 != 0) {
        sprintf(acStack_94 + sVar1,"ＣＦ");
        ctx->genSlider(acStack_94, &i_anmP->mCancelFrame, -1.0f, param_4 + 1.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    }

    // Interpolation
    sprintf(acStack_94 + sVar1,"補間");
    ctx->genSlider(acStack_94, &i_anmP->mInterpolation, 0.0f, 20.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}


// NONMATCHING - regalloc + extra mr instruction
void daAlinkHIO_data_c::setStructData(char* param_1) {
    u8* pfVar2;
    u8* pfVar4;

    sprintf(param_1 + strlen(param_1), m_name_string);
    pfVar2 = (u8*)mp_data;

    for (int i = 0; i < m_anm_num; i++) {
        sprintf(param_1 + strlen(param_1), "\t{\n");
        pfVar4 = pfVar2;
        
        for (int i = 0; i < 2; i++) {
            sprintf(param_1 + strlen(param_1), "\t\t%d,\n", *(s16*)pfVar4);
            pfVar4 += 2;
        }

        pfVar4 = pfVar2;

        for (int i = 0; i < 4; i++) {
            sprintf(param_1 + strlen(param_1), "\t\t%ff,\n",*(f32*)pfVar4);
            pfVar4 += 4;
        }

        pfVar2 += 0x14;
        sprintf(param_1 + strlen(param_1), "\t},\n");
    }

    pfVar4 = pfVar2;

    for (int i = 0; i < m_u8_num; i++) {
        sprintf(param_1 + strlen(param_1), "\t%d,\n", *(u8*)pfVar2);
        pfVar2++;
    }

    for (int i = 0; i < m_s16_num; i++) {
        sprintf(param_1 + strlen(param_1), "\t%d,\n", *(s16*)pfVar2);
        pfVar2+=2;
    }

    for (int i = 0; i < m_f32_num; i++) {
        sprintf(param_1 + strlen(param_1), "\t%ff,\n", *(f32*)pfVar2);
        pfVar2 += 4;
    }

    sprintf(param_1 + strlen(param_1), "};\n\n");
}

daAlinkHIO_data_c* l_HIO_before;
daAlinkHIO_data_c* l_HIO_top;

void daAlinkHIO_data_c::checkDataSize() {
    u32 dataSize = (m_u8_num + m_anm_num * 0x14) + (m_s16_num * 2) + (m_f32_num * 4);
    JUT_ASSERT(188, dataSize == m_len);

    if (l_HIO_before != NULL) {
        l_HIO_before->mpNext = this;
    } else {
        l_HIO_top = this;
    }

    mpNext = NULL;
    l_HIO_before = this;
}


void daAlinkHIO_data_c::baseCopy() {
    cLib_memCpy(mp_data,mp_src_data,m_len);
}

// NONMATCHING
void daAlinkHIO_data_c::update() {
    baseCopy();
    JORMContext* ctx = attachJORMContext(8);
    ctx->startUpdateNode(this);
    u8* local_20 = (u8*)mp_data;

    for (int i = 0; i < m_anm_num; i++) {
        ctx->updateSlider(2,(s16*)local_20,0,0,0);

        for (int j = 0; j < 4; local_20 += 4, j++) {
            ctx->updateSlider(2,(f32*)local_20,0.0f,0.0f,0);
        }
    }

    for (int i = 0; i < f14; i++) {
        ctx->updateCheckBox(2, local_20, 1, 0);
    }

    for (int i  = 0; i < f18; i++) {
        ctx->updateComboBox(2, local_20,0);
        // local_20++;
    }

    for (int i = 0; i < (m_u8_num - f14 + f18); i++) {
        // local_20++;
    }

    int iVar1 = f1c;
    int iVar3 = m_s16_num;

    for (int i = 0; i < iVar3 - iVar1; i++) {
        ctx->updateSlider(2,(s16*)local_20,0,0,0);
        // local_20 += 2;
    }

    for (int i = 0; i < f1c; i++) {
        // local_20 += 2;
    }

    for (int i = 0; i < m_f32_num; i++) {
        ctx->updateSlider(2,(f32*)local_20,0.0f,0.0f,0);
        // local_20 += 4;
    }
    
    ctx->endUpdateNode();
    releaseJORMContext(ctx);
}

void daAlinkHIO_data_c::listenPropertyEvent(const JORPropertyEvent* event) {
    JORReflexible::listenPropertyEvent(event);
    
    switch(event->id)
    case 0x4000003:
        update();
}

void daAlinkHIO_basic_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_basic_c::daAlinkHIO_basic_c() {
    static char* plabel = "const daAlinkHIO_basic_c1 daAlinkHIO_basic_c0::m = {\n";   
    m_len = 88;
    mp_src_data = (void*)&daAlinkHIO_basic_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 2;
    m_s16_num = 9;
    m_f32_num = 17;
    f14 = 1;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

daAlinkHIO_data_c::~daAlinkHIO_data_c() {}
\
daAlinkHIO_data_c::daAlinkHIO_data_c() {}

void daAlinkHIO_move_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_move_c::daAlinkHIO_move_c() {
    static char* plabel = "const daAlinkHIO_move_c1 daAlinkHIO_move_c0::m = {\n";
    m_len = 88;
    mp_src_data = (void*)&daAlinkHIO_move_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 1;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 15;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_atnMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_atnMove_c::daAlinkHIO_atnMove_c() {
    static char* plabel = "const daAlinkHIO_atnMove_c1 daAlinkHIO_atnMove_c0::m = {\n";   
    m_len = 84;
    mp_src_data = (void*)&daAlinkHIO_atnMove_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 19;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_noActAtnMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_noActAtnMove_c::daAlinkHIO_noActAtnMove_c() {
    static char* plabel = "const daAlinkHIO_noActAtnMove_c1 daAlinkHIO_noActAtnMove_c0::m = {\n";   
    m_len = 84;
    mp_src_data = (void*)&daAlinkHIO_noActAtnMove_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 19;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_frontRoll_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_frontRoll_c::daAlinkHIO_frontRoll_c() {
    // NONMATCHING
}

void daAlinkHIO_backJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_backJump_c::daAlinkHIO_backJump_c() {
    // NONMATCHING
}

void daAlinkHIO_sideStep_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_sideStep_c::daAlinkHIO_sideStep_c() {
    // NONMATCHING
}

void daAlinkHIO_slide_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_slide_c::daAlinkHIO_slide_c() {
    // NONMATCHING
}

void daAlinkHIO_cutNormal_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutNormal_c::daAlinkHIO_cutNormal_c(int, float) {
    // NONMATCHING
}

void daAlinkHIO_cutFinish_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutFinish_c::daAlinkHIO_cutFinish_c(int, float) {
    // NONMATCHING
}

void daAlinkHIO_cutFnJU_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutFnJU_c::daAlinkHIO_cutFnJU_c() {
    // NONMATCHING
}

void daAlinkHIO_cutDash_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutDash_c::daAlinkHIO_cutDash_c(int, float) {
    // NONMATCHING
}

void daAlinkHIO_cutJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutJump_c::daAlinkHIO_cutJump_c() {
    // NONMATCHING
}

void daAlinkHIO_cutTurn_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutTurn_c::daAlinkHIO_cutTurn_c() {
    // NONMATCHING
}

void daAlinkHIO_hoCut_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_hoCut_c::daAlinkHIO_hoCut_c(int, float) {
    // NONMATCHING
}

void daAlinkHIO_hoCutCharge_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_hoCutCharge_c::daAlinkHIO_hoCutCharge_c() {
    // NONMATCHING
}

void daAlinkHIO_cutDown_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutDown_c::daAlinkHIO_cutDown_c() {
    // NONMATCHING
}

void daAlinkHIO_cutHead_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutHead_c::daAlinkHIO_cutHead_c() {
    // NONMATCHING
}

void daAlinkHIO_cutLargeJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cutLargeJump_c::daAlinkHIO_cutLargeJump_c() {
    // NONMATCHING
}

void daAlinkHIO_cut_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_cut_c::daAlinkHIO_cut_c() {
    // NONMATCHING
}

daAlinkHIO_cutLargeJump_c::~daAlinkHIO_cutLargeJump_c() {}
daAlinkHIO_cutHead_c::~daAlinkHIO_cutHead_c() {}
daAlinkHIO_cutDown_c::~daAlinkHIO_cutDown_c() {}
daAlinkHIO_cutDash_c::~daAlinkHIO_cutDash_c() {}
daAlinkHIO_hoCutCharge_c::~daAlinkHIO_hoCutCharge_c() {}
daAlinkHIO_hoCut_c::~daAlinkHIO_hoCut_c() {}
daAlinkHIO_cutTurn_c::~daAlinkHIO_cutTurn_c() {}
daAlinkHIO_cutJump_c::~daAlinkHIO_cutJump_c() {}
daAlinkHIO_cutFnJU_c::~daAlinkHIO_cutFnJU_c() {}
daAlinkHIO_cutFinish_c::~daAlinkHIO_cutFinish_c() {}
daAlinkHIO_cutNormal_c::~daAlinkHIO_cutNormal_c() {}

void daAlinkHIO_guardAttack_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_guardAttack_c::daAlinkHIO_guardAttack_c(int, float) {
    // NONMATCHING
}

void daAlinkHIO_turnMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_turnMove_c::daAlinkHIO_turnMove_c() {
    // NONMATCHING
}

void daAlinkHIO_guard_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_guard_c::daAlinkHIO_guard_c() {
    // NONMATCHING
}

daAlinkHIO_turnMove_c::~daAlinkHIO_turnMove_c() {}
daAlinkHIO_guardAttack_c::~daAlinkHIO_guardAttack_c() {}

void daAlinkHIO_crouch_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_crouch_c::daAlinkHIO_crouch_c() {
    // NONMATCHING
}

void daAlinkHIO_autoJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_autoJump_c::daAlinkHIO_autoJump_c() {
    // NONMATCHING
}

void daAlinkHIO_smallJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_smallJump_c::daAlinkHIO_smallJump_c() {
    // NONMATCHING
}

void daAlinkHIO_wallCatch_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wallCatch_c::daAlinkHIO_wallCatch_c() {
    // NONMATCHING
}

void daAlinkHIO_wallFall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wallFall_c::daAlinkHIO_wallFall_c() {
    // NONMATCHING
}

void daAlinkHIO_wallMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wallMove_c::daAlinkHIO_wallMove_c() {
    // NONMATCHING
}

void daAlinkHIO_wallHang_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wallHang_c::daAlinkHIO_wallHang_c() {
    // NONMATCHING
}

daAlinkHIO_wallMove_c::~daAlinkHIO_wallMove_c() {}
daAlinkHIO_wallFall_c::~daAlinkHIO_wallFall_c() {}
daAlinkHIO_wallCatch_c::~daAlinkHIO_wallCatch_c() {}
daAlinkHIO_smallJump_c::~daAlinkHIO_smallJump_c() {}

void daAlinkHIO_pushpull_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_pushpull_c::daAlinkHIO_pushpull_c() {
    // NONMATCHING
}

void daAlinkHIO_damNormal_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damNormal_c::daAlinkHIO_damNormal_c() {
    // NONMATCHING
}

void daAlinkHIO_damLaHu_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damLaHu_c::daAlinkHIO_damLaHu_c(int) {
    // NONMATCHING
}

void daAlinkHIO_damHorse_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damHorse_c::daAlinkHIO_damHorse_c() {
    // NONMATCHING
}

void daAlinkHIO_damFall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damFall_c::daAlinkHIO_damFall_c() {
    // NONMATCHING
}

void daAlinkHIO_damCaught_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damCaught_c::daAlinkHIO_damCaught_c() {
    // NONMATCHING
}

void daAlinkHIO_damSwim_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damSwim_c::daAlinkHIO_damSwim_c() {
    // NONMATCHING
}

void daAlinkHIO_damage_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damage_c::daAlinkHIO_damage_c() {
    // NONMATCHING
}

daAlinkHIO_damSwim_c::~daAlinkHIO_damSwim_c() {}
daAlinkHIO_damCaught_c::~daAlinkHIO_damCaught_c() {}
daAlinkHIO_damFall_c::~daAlinkHIO_damFall_c() {}
daAlinkHIO_damHorse_c::~daAlinkHIO_damHorse_c() {}
daAlinkHIO_damLaHu_c::~daAlinkHIO_damLaHu_c() {}
daAlinkHIO_damNormal_c::~daAlinkHIO_damNormal_c() {}

void daAlinkHIO_horse_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_horse_c::daAlinkHIO_horse_c() {
    // NONMATCHING
}

void daAlinkHIO_canoe_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_canoe_c::daAlinkHIO_canoe_c() {
    // NONMATCHING
}

void daAlinkHIO_bow_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_bow_c::daAlinkHIO_bow_c() {
    // NONMATCHING
}

void daAlinkHIO_boom_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_boom_c::daAlinkHIO_boom_c() {
    // NONMATCHING
}

void daAlinkHIO_bomb_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_bomb_c::daAlinkHIO_bomb_c() {
    // NONMATCHING
}

void daAlinkHIO_light_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_light_c::daAlinkHIO_light_c(int) {
    // NONMATCHING
}

void daAlinkHIO_kandelaar_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_kandelaar_c::daAlinkHIO_kandelaar_c() {
    // NONMATCHING
}

void daAlinkHIO_magneBoots_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_magneBoots_c::daAlinkHIO_magneBoots_c() {
    // NONMATCHING
}

void daAlinkHIO_fmChain_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_fmChain_c::daAlinkHIO_fmChain_c() {
    // NONMATCHING
}

void daAlinkHIO_hookshot_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_hookshot_c::daAlinkHIO_hookshot_c() {
    // NONMATCHING
}

void daAlinkHIO_spinner_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_spinner_c::daAlinkHIO_spinner_c() {
    // NONMATCHING
}

void daAlinkHIO_ironBall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_ironBall_c::daAlinkHIO_ironBall_c() {
    // NONMATCHING
}

void daAlinkHIO_copyRod_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_copyRod_c::daAlinkHIO_copyRod_c() {
    // NONMATCHING
}

void daAlinkHIO_pickUp_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_pickUp_c::daAlinkHIO_pickUp_c() {
    // NONMATCHING
}

void daAlinkHIO_board_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_board_c::daAlinkHIO_board_c() {
    // NONMATCHING
}

void daAlinkHIO_bottle_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_bottle_c::daAlinkHIO_bottle_c() {
    // NONMATCHING
}

void daAlinkHIO_item_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_item_c::daAlinkHIO_item_c() {
    // NONMATCHING
}

daAlinkHIO_copyRod_c::~daAlinkHIO_copyRod_c() {}
daAlinkHIO_ironBall_c::~daAlinkHIO_ironBall_c() {}
daAlinkHIO_spinner_c::~daAlinkHIO_spinner_c() {}
daAlinkHIO_hookshot_c::~daAlinkHIO_hookshot_c() {}
daAlinkHIO_bottle_c::~daAlinkHIO_bottle_c() {}
daAlinkHIO_board_c::~daAlinkHIO_board_c() {}
daAlinkHIO_pickUp_c::~daAlinkHIO_pickUp_c() {}
daAlinkHIO_magneBoots_c::~daAlinkHIO_magneBoots_c() {}
daAlinkHIO_fmChain_c::~daAlinkHIO_fmChain_c() {}
daAlinkHIO_kandelaar_c::~daAlinkHIO_kandelaar_c() {}
daAlinkHIO_light_c::~daAlinkHIO_light_c() {}
daAlinkHIO_bomb_c::~daAlinkHIO_bomb_c() {}
daAlinkHIO_boom_c::~daAlinkHIO_boom_c() {}
daAlinkHIO_bow_c::~daAlinkHIO_bow_c() {}

void daAlinkHIO_ladder_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_ladder_c::daAlinkHIO_ladder_c() {
    // NONMATCHING
}

void daAlinkHIO_roofHang_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_roofHang_c::daAlinkHIO_roofHang_c() {
    // NONMATCHING
}

void daAlinkHIO_grab_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_grab_c::daAlinkHIO_grab_c() {
    // NONMATCHING
}

void daAlinkHIO_swim_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_swim_c::daAlinkHIO_swim_c() {
    // NONMATCHING
}

void daAlinkHIO_wlMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlMove_c::daAlinkHIO_wlMove_c() {
    static char* plabel = "const daAlinkHIO_wlMove_c1 daAlinkHIO_wlMove_c0::m = {\n";
    field_0x20 = 256;
    field_0x24 = &daAlinkHIO_wlMove_c0::m;
    field_0x28 = (daAlinkHIO_wlMove_c*)field_0x34;
    field_0x2c = plabel;
    baseCopy();
    checkDataSize();
}

void daAlinkHIO_wlMoveNoP_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlMoveNoP_c::daAlinkHIO_wlMoveNoP_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtnMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtnMove_c::daAlinkHIO_wlAtnMove_c() {
    // NONMATCHING
}

void daAlinkHIO_wlHowl_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlHowl_c::daAlinkHIO_wlHowl_c() {
    // NONMATCHING
}

void daAlinkHIO_wlSideStep_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlSideStep_c::daAlinkHIO_wlSideStep_c() {
    // NONMATCHING
}

void daAlinkHIO_wlBackJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlBackJump_c::daAlinkHIO_wlBackJump_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAutoJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAutoJump_c::daAlinkHIO_wlAutoJump_c() {
    // NONMATCHING
}

void daAlinkHIO_wlPush_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlPush_c::daAlinkHIO_wlPush_c() {
    // NONMATCHING
}

void daAlinkHIO_wlLie_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlLie_c::daAlinkHIO_wlLie_c() {
    // NONMATCHING
}

void daAlinkHIO_wlWallHang_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlWallHang_c::daAlinkHIO_wlWallHang_c() {
    // NONMATCHING
}

void daAlinkHIO_wlDamNormal_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamNormal_c::daAlinkHIO_wlDamNormal_c() {
    // NONMATCHING
}

void daAlinkHIO_wlDamLaHu_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamLaHu_c::daAlinkHIO_wlDamLaHu_c(int) {
    // NONMATCHING
}

void daAlinkHIO_wlDamCaught_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamCaught_c::daAlinkHIO_wlDamCaught_c() {
    // NONMATCHING
}

void daAlinkHIO_wlDamFall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamFall_c::daAlinkHIO_wlDamFall_c() {
    // NONMATCHING
}

void daAlinkHIO_wlDamage_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamage_c::daAlinkHIO_wlDamage_c() :
    mWlDamCaught(),
    mWlDamFall(),
    mWlDamLaHu1(1),
    mWlDamLaHu2(1),
    mWlDamNormal() {
    // NONMATCHING
}

daAlinkHIO_wlDamCaught_c::~daAlinkHIO_wlDamCaught_c() {}
daAlinkHIO_wlDamFall_c::~daAlinkHIO_wlDamFall_c() {}
daAlinkHIO_wlDamLaHu_c::~daAlinkHIO_wlDamLaHu_c() {}
daAlinkHIO_wlDamNormal_c::~daAlinkHIO_wlDamNormal_c() {}

void daAlinkHIO_wlSlide_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlSlide_c::daAlinkHIO_wlSlide_c() {
    // NONMATCHING
}

void daAlinkHIO_wlRope_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlRope_c::daAlinkHIO_wlRope_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtWait_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtWait_c::daAlinkHIO_wlAtWait_c(int, float) {
    // NONMATCHING
}

void daAlinkHIO_wlAtRoll_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtRoll_c::daAlinkHIO_wlAtRoll_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtNjump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtNjump_c::daAlinkHIO_wlAtNjump_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtCjump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtCjump_c::daAlinkHIO_wlAtCjump_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtLand_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtLand_c::daAlinkHIO_wlAtLand_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtDown_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtDown_c::daAlinkHIO_wlAtDown_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtLock_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtLock_c::daAlinkHIO_wlAtLock_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtBite_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtBite_c::daAlinkHIO_wlAtBite_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAttack_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAttack_c::daAlinkHIO_wlAttack_c() :
    mWlAtBite(),
    mWlAtLock(),
    mWlAtDown(),
    mWlAtLand(),
    mWlAtCjump(),
    mWlAtNjump(),
    mAtRoll(),
    mAtWait1(1, 1.0f),
    mAtWait2(1, 1.0f),
    mAtWait3(1, 1.0f) {
    // NONMATCHING
}

daAlinkHIO_wlAtBite_c::~daAlinkHIO_wlAtBite_c() {}
daAlinkHIO_wlAtLock_c::~daAlinkHIO_wlAtLock_c() {}
daAlinkHIO_wlAtDown_c::~daAlinkHIO_wlAtDown_c() {}
daAlinkHIO_wlAtLand_c::~daAlinkHIO_wlAtLand_c() {}
daAlinkHIO_wlAtCjump_c::~daAlinkHIO_wlAtCjump_c() {}
daAlinkHIO_wlAtNjump_c::~daAlinkHIO_wlAtNjump_c() {}
daAlinkHIO_wlAtRoll_c::~daAlinkHIO_wlAtRoll_c() {}
daAlinkHIO_wlAtWait_c::~daAlinkHIO_wlAtWait_c() {}

void daAlinkHIO_wlPoint_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlPoint_c::daAlinkHIO_wlPoint_c() {
    // NONMATCHING
}

void daAlinkHIO_wlChain_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlChain_c::daAlinkHIO_wlChain_c() {
    // NONMATCHING
}

void daAlinkHIO_wlSwim_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlSwim_c::daAlinkHIO_wlSwim_c() {
    // NONMATCHING
}

void daAlinkHIO_wlGrab_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlGrab_c::daAlinkHIO_wlGrab_c() {
    // NONMATCHING
}

void daAlinkHIO_wlBall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlBall_c::daAlinkHIO_wlBall_c() {
    // NONMATCHING
}

void daAlinkHIO_wolf_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

// NONMATCHING
daAlinkHIO_wolf_c::daAlinkHIO_wolf_c() : 
    mWlMove(),
    mWlMoveNoP(),
    mWlAtnMove(),
    mWlSideStep(),
    mWlBackJump(),
    mWlHowl(),
    mWlAutoJump(),
    mWlPush(),
    mWlLie(),
    mLight(1),
    mWlWallHang(),
    mWlDamage(),
    mWlSlide(),
    mWlRope(),
    mWlAttack(),
    mWlPoint(),
    mWlChain(),
    mWlSwim(),
    mWlGrab(),
    mWlBall()  {
        baseCopy();
        checkDataSize();
}

daAlinkHIO_wlBall_c::~daAlinkHIO_wlBall_c() {}
daAlinkHIO_wlGrab_c::~daAlinkHIO_wlGrab_c() {}
daAlinkHIO_wlSwim_c::~daAlinkHIO_wlSwim_c() {}
daAlinkHIO_wlChain_c::~daAlinkHIO_wlChain_c() {}
daAlinkHIO_wlPoint_c::~daAlinkHIO_wlPoint_c() {}
daAlinkHIO_wlAttack_c::~daAlinkHIO_wlAttack_c() {}
daAlinkHIO_wlRope_c::~daAlinkHIO_wlRope_c() {}
daAlinkHIO_wlSlide_c::~daAlinkHIO_wlSlide_c() {}
daAlinkHIO_wlDamage_c::~daAlinkHIO_wlDamage_c() {}
daAlinkHIO_wlWallHang_c::~daAlinkHIO_wlWallHang_c() {}
daAlinkHIO_wlLie_c::~daAlinkHIO_wlLie_c() {}
daAlinkHIO_wlPush_c::~daAlinkHIO_wlPush_c() {}
daAlinkHIO_wlAutoJump_c::~daAlinkHIO_wlAutoJump_c() {}
daAlinkHIO_wlHowl_c::~daAlinkHIO_wlHowl_c() {}
daAlinkHIO_wlBackJump_c::~daAlinkHIO_wlBackJump_c() {}
daAlinkHIO_wlSideStep_c::~daAlinkHIO_wlSideStep_c() {}
daAlinkHIO_wlAtnMove_c::~daAlinkHIO_wlAtnMove_c() {}
daAlinkHIO_wlMoveNoP_c::~daAlinkHIO_wlMoveNoP_c() {}
daAlinkHIO_wlMove_c::~daAlinkHIO_wlMove_c() {}

void daAlinkHIO_c::jumpStateUpdate(const cXyz* param_0, const cXyz* param_1, f32 param_2) {
  char buf[68];

  f32 xDiff = param_0->x - param_1->x;
  f32 zDiff = param_0->z - param_1->z;
  JORMContext* ctx = attachJORMContext(8);
  ctx->startUpdateNode(this);
  sprintf(buf, "水平距離 %-8.3f", JMAFastSqrt(xDiff * xDiff + zDiff * zDiff));
  ctx->updateLabel(2, 0x4000006, buf);
  sprintf(buf, "最頂点   %-8.3f", param_2);
  ctx->updateLabel(2, 0x4000007, buf);
  ctx->endUpdateNode();
  releaseJORMContext(ctx);
}

void daAlinkHIO_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

void daAlinkHIO_c::readFileData(char* param_0) {
    // NONMATCHING
}

void daAlinkHIO_c::makeFileOutData(char* param_0, char* param_1) {
    // NONMATCHING
}

void daAlinkHIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    // NONMATCHING
}

#endif

/* 80140B88-80140B98 13B4C8 0010+00 1/1 0/0 0/0 .text            __ct__12daAlinkHIO_cFv */
daAlinkHIO_c::daAlinkHIO_c() {}

/* 80140B98-80140BD4 13B4D8 003C+00 1/1 0/0 0/0 .text            __dt__17daAlinkHIO_wolf_cFv */
daAlinkHIO_wolf_c::~daAlinkHIO_wolf_c() {}

/* 80140BD4-80140C10 13B514 003C+00 1/1 0/0 0/0 .text            __dt__16daAlinkHIO_cut_cFv */
daAlinkHIO_cut_c::~daAlinkHIO_cut_c() {}

/* 80140C10-80140C80 13B550 0070+00 1/0 0/0 0/0 .text            __dt__12daAlinkHIO_cFv */
daAlinkHIO_c::~daAlinkHIO_c() {}
