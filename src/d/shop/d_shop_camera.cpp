/**
 * d_shop_camera.cpp
 * Shop Camera Handling
 */

#include "d/shop/d_shop_camera.h"
#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_player.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_camera.h"

struct SeiraCam {
    /* 0x00 */ Vec field_0x0;
    /* 0x0C */ Vec field_0xc;
    /* 0x18 */ f32 field_0x18;
    /* 0x1c */ Vec field_0x1c;
    /* 0x20 */ Vec field_0x28;
    /* 0x18 */ f32 field_0x34;
};

/* 803BB7C8-803BB800 0188E8 0038+00 1/0 0/0 0/0 .data            cam_seira_shop */
static SeiraCam cam_seira_shop = {
    {0.0f, 115.0f, 0.0f},      {0.0f, 115.0f, 150.0f}, 45.0f,
    {100.0f, 155.0f, -175.0f}, {100.0f, 155.0f, 0.0f}, 45.0f,
};

/* 803BB800-803BB838 018920 0038+00 1/0 0/0 0/0 .data            cam_seira_evnt_before */
static SeiraCam cam_seira_evnt_before = {
    {-50.0f, 115.0f, 0.0f},    {-50.0f, 115.0f, 150.0f}, 45.0f,
    {100.0f, 155.0f, -175.0f}, {100.0f, 155.0f, 0.0f},   45.0f,
};

/* 803BB838-803BB870 018958 0038+00 1/0 0/0 0/0 .data            cam_seira_evnt_after */
static SeiraCam cam_seira_evnt_after = {
    {0.0f, 115.0f, 0.0f},      {0.0f, 115.0f, 150.0f}, 45.0f,
    {100.0f, 155.0f, -175.0f}, {100.0f, 155.0f, 0.0f}, 45.0f,
};

/* 803BB870-803BB87C -00001 000C+00 2/2 0/0 0/0 .data            shop_cam_data_tbl */
static SeiraCam* shop_cam_data_tbl[3] = {
    &cam_seira_shop,
    &cam_seira_evnt_before,
    &cam_seira_evnt_after,
};

/* 80195C9C-80195E18 1905DC 017C+00 0/0 0/0 9/9 .text shop_cam_action_init__16ShopCam_action_cFv
 */
int ShopCam_action_c::shop_cam_action_init() {
    Save();

    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    player->onPlayerNoDraw();

    setCamAction(&ShopCam_action_c::shop_cam_action);
    if (field_0xd6 >= 0) {
        field_0x7c = shop_cam_data_tbl[field_0xd6]->field_0x0;
        field_0x88 = shop_cam_data_tbl[field_0xd6]->field_0xc;
        field_0x94 = shop_cam_data_tbl[field_0xd6]->field_0x18;
    } else if (field_0xd4 <= 0) {
        field_0x7c = field_0x38;
        field_0x88 = field_0x44;
        field_0x94 = field_0x50;
    } else {
        field_0x7c = field_0x54;
        field_0x88 = field_0x60;
        field_0x94 = field_0x6c;
    }

    SetSelectIdx(-1);
    return 1;
}

/* 80195E18-8019630C 190758 04F4+00 1/0 0/0 0/0 .text shop_cam_action__16ShopCam_action_cFv */
int ShopCam_action_c::shop_cam_action() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera->mCamera.Stay();
    camera->mCamera.SetTrimSize(1);

    cXyz acStack_4c;
    cXyz acStack_58;
    f32 dVar11;
    if (field_0xd4 <= 0) {
        if (field_0xd6 >= 0) {
            acStack_4c = shop_cam_data_tbl[field_0xd6]->field_0x0;
            acStack_58 = shop_cam_data_tbl[field_0xd6]->field_0xc;
            dVar11 = shop_cam_data_tbl[field_0xd6]->field_0x18;
        } else {
            acStack_4c = field_0x38;
            acStack_58 = field_0x44;
            dVar11 = field_0x50;
        }
    } else if (field_0xd6 >= 0) {
        acStack_4c = shop_cam_data_tbl[field_0xd6]->field_0x1c;
        acStack_58 = shop_cam_data_tbl[field_0xd6]->field_0x28;
        dVar11 = shop_cam_data_tbl[field_0xd6]->field_0x34;
    } else {
        acStack_4c = field_0x54;
        acStack_58 = field_0x60;
        dVar11 = field_0x6c;
    }

    cLib_addCalcPos2(&field_0x7c, acStack_4c, field_0xc0, field_0xc4);
    cLib_addCalcPos2(&field_0x88, acStack_58, field_0xc0, field_0xc4);
    cLib_addCalc2(&field_0x94, dVar11, field_0xc8, field_0xcc);

    cXyz cStack_64 = field_0x7c - acStack_4c;
    cXyz cStack_70 = field_0x88 - acStack_58;
    f32 dVar10 = field_0x94 - dVar11;
    bool r30 = false;
    bool r29 = false;
    bool r28 = false;

    if (cStack_64.abs() < 1.0f) {
        field_0x7c = acStack_4c;
        r30 = true;
    }

    if (cStack_70.abs() < 1.0f) {
        field_0x88 = acStack_58;
        r29 = true;
    }

    if (dVar10 < 1.0f) {
        field_0x94 = dVar11;
        r28 = true;
    }

    if (r30 && r29 && r28) {
        field_0xda = true;
    } else {
        field_0xda = false;
    }

    camera->mCamera.Set(field_0x7c, field_0x88, field_0x94, 0);
    return 1;
}

/* 8019630C-8019635C 190C4C 0050+00 1/1 0/0 12/12 .text            Save__16ShopCam_action_cFv */
void ShopCam_action_c::Save() {
    camera_class* camera = dComIfGp_getCamera(0);
    if (camera != NULL) {
        field_0x98 = *fopCamM_GetCenter_p(camera);
        field_0xa4 = *fopCamM_GetEye_p(camera);
        field_0xbc = fopCamM_GetFovy(camera);
    }
}

/* 8019635C-801963B4 190C9C 0058+00 0/0 0/0 9/9 .text EventRecoverNotime__16ShopCam_action_cFv */
void ShopCam_action_c::EventRecoverNotime() {
    dComIfGp_getPlayer(0);
    field_0xd8 = 2;
    dCam_getBody()->EventRecoverNotime();
    mCamAction = NULL;
}

/* 801963B4-801964C8 190CF4 0114+00 0/0 0/0 9/9 .text            Reset__16ShopCam_action_cFv */
void ShopCam_action_c::Reset() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    player->offPlayerNoDraw();

    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera->mCamera.Set(field_0x98, field_0xa4, field_0xbc, 0);
    camera->mCamera.Stay();
    camera->mCamera.Reset(field_0x98, field_0xa4, field_0xbc, 0);

    mCamAction = NULL;
}

/* 801964C8-80196544 190E08 007C+00 0/0 0/0 9/9 .text            move__16ShopCam_action_cFv */
void ShopCam_action_c::move() {
    if (mCamAction != NULL) {
        (this->*mCamAction)();
    }

    if (field_0xd8 > 0) {
        --field_0xd8;
        if (field_0xd8 == 0) {
            ((daPy_py_c*)dComIfGp_getPlayer(0))->offPlayerNoDraw();
        }
    }
}

/* 80196544-80196608 190E84 00C4+00 0/0 1/1 0/0 .text
 * setCamDataIdx__16ShopCam_action_cFP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP4cXyzP4cXyz
 */
void ShopCam_action_c::setCamDataIdx(fopAc_ac_c* param_1, fopAc_ac_c* param_2, fopAc_ac_c* param_3,
                                     fopAc_ac_c* param_4, cXyz* param_5, cXyz* param_6) {
    field_0xd6 = -1;
    if (field_0x18 == NULL) {
        field_0xb0 = param_1->eyePos;
    }

    field_0x18 = param_1;
    field_0x1c = param_2;
    field_0x20 = param_3;
    field_0x24 = param_4;
    field_0x28 = 0;
    field_0x2c = 0;
    field_0x30 = 0;
    field_0x34 = 0;

    field_0x44.x = param_5->x;
    field_0x44.y = param_5->y;
    field_0x44.z = param_5->z;
    field_0x50 = 45.0f;

    field_0x60.x = param_6->x;
    field_0x60.y = param_6->y;
    field_0x60.z = param_6->z;
    field_0x6c = 45.0f;

    field_0x70.set(*param_6);

    _debugSetCamera();
}

/* 80196608-801966D4 190F48 00CC+00 0/0 1/1 0/0 .text
 * setCamDataIdx2__16ShopCam_action_cFP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP4cXyzP4cXyz
 */
void ShopCam_action_c::setCamDataIdx2(fopAc_ac_c* param_1, fopAc_ac_c* param_2, fopAc_ac_c* param_3,
                                      fopAc_ac_c* param_4, fopAc_ac_c* param_5, fopAc_ac_c* param_6,
                                      fopAc_ac_c* param_7, cXyz* param_8, cXyz* param_9) {
    field_0xd6 = -1;
    if (field_0x18 == NULL) {
        field_0xb0 = param_1->eyePos;
    }

    field_0x18 = param_1;
    field_0x1c = param_2;
    field_0x20 = param_3;
    field_0x24 = param_4;
    field_0x28 = param_5;
    field_0x2c = param_6;
    field_0x30 = param_7;
    field_0x34 = 0;

    field_0x44.x = param_8->x;
    field_0x44.y = param_8->y;
    field_0x44.z = param_8->z;
    field_0x50 = 45.0f;

    field_0x60.x = param_9->x;
    field_0x60.y = param_9->y;
    field_0x60.z = param_9->z;
    field_0x6c = 45.0f;

    field_0x70.set(*param_9);

    _debugSetCamera();
}

/* 801966D4-801968B8 191014 01E4+00 2/2 0/0 0/0 .text _debugSetCamera__16ShopCam_action_cFv */
void ShopCam_action_c::_debugSetCamera() {
    field_0x38.x = field_0xb0.x;
    field_0x38.y = field_0xb0.y;
    field_0x38.z = field_0xb0.z;

    cXyz local_28;
    cXyz cStack_34;
    cXyz local_40;
    cXyz local_4c;
    bool bVar1 = false;

    if (field_0x1c != NULL && field_0x20 != NULL && field_0x24 != NULL && field_0x28 != NULL &&
        field_0x2c == NULL && field_0x30 == NULL)
    {
        local_4c.x = (field_0x24->home.pos.x + field_0x20->home.pos.x) / 2;
        local_4c.y = (field_0x24->home.pos.y + field_0x20->home.pos.y) / 2;
        local_4c.z = (field_0x24->home.pos.z + field_0x20->home.pos.z) / 2;
    } else {
        if (field_0x1c != NULL && field_0x20 != NULL && field_0x24 != NULL && field_0x28 != NULL &&
            field_0x2c != NULL && field_0x30 == NULL)
        {
            local_4c.set(field_0x28->home.pos);
            bVar1 = true;
        } else {
            local_4c.set(field_0x20->home.pos);
        }
    }

    if (bVar1) {
        field_0x54.x = 167.0f;
        field_0x54.y = 220.0f;
        field_0x54.z = 120.0f;
    } else {
        local_28 = local_4c - field_0x70;
        s16 sVar2 = cM_atan2s(local_28.x, local_28.z);
        cStack_34.set(0.0f, -50.0f, 350.0f);
        cLib_offsetPos(&local_40, &field_0x70, sVar2, &cStack_34);
        field_0x54.x = local_40.x;
        field_0x54.y = local_40.y;
        field_0x54.z = local_40.z;
    }
}

/* 801968B8-80196914 1911F8 005C+00 0/0 1/1 3/3 .text
 * setMasterCamCtrPos__16ShopCam_action_cFP4cXyz                */
void ShopCam_action_c::setMasterCamCtrPos(cXyz* param_0) {
    if (param_0 == NULL) {
        field_0xb0.set(field_0x18->eyePos);
    } else {
        field_0xb0.set(*param_0);
    }

    field_0x38.x = field_0xb0.x;
    field_0x38.y = field_0xb0.y;
    field_0x38.z = field_0xb0.z;
}
