/**
 * d_meter_haihai.cpp
 * UI Arrows
 */

#include "d/dolzel.h"

#include "d/d_meter_haihai.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter_HIO.h"
#include "d/d_pane_class.h"

/* 8020AE8C-8020AEF0 2057CC 0064+00 0/0 4/4 0/0 .text            __ct__14dMeterHaihai_cFUc */
dMeterHaihai_c::dMeterHaihai_c(u8 i_type) {
    mType = i_type;
    _create();
}

/* 8020AEF0-8020AF6C 205830 007C+00 1/0 0/0 0/0 .text            __dt__14dMeterHaihai_cFv */
dMeterHaihai_c::~dMeterHaihai_c() {
    _delete();
}

/* 8020AF6C-8020B0F4 2058AC 0188+00 1/0 0/0 0/0 .text            _create__14dMeterHaihai_cFv */
int dMeterHaihai_c::_create() {
    mpHaihaiScreen = new J2DScreen();
    JUT_ASSERT(0, mpHaihaiScreen != 0);

    bool fg =
        mpHaihaiScreen->setPriority("zelda_hihi_cursor.blo", 0x20000, dComIfGp_getMain2DArchive());
    JUT_ASSERT(0, fg != false);
    dPaneClass_showNullPane(mpHaihaiScreen);

    mpParent = new CPaneMgr(mpHaihaiScreen, 'n_all', 2, NULL);
    JUT_ASSERT(0, mpParent != 0);

    OSInitFastCast();
    mpCursorBck = (J2DAnmTransformKey*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_hihi_cursor.bck", dComIfGp_getMain2DArchive()));
    mBckFrame = 0.0f;

    mpCursorBtk = (J2DAnmTextureSRTKey*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_hihi_cursor.btk", dComIfGp_getMain2DArchive()));
    mpCursorBtk->searchUpdateMaterialID(mpHaihaiScreen);
    mBtkFrame = 0.0f;

    mpCursorBpk = (J2DAnmColor*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_hihi_cursor.bpk", dComIfGp_getMain2DArchive()));
    mpCursorBpk->searchUpdateMaterialID(mpHaihaiScreen);
    mBpkFrame = 0.0f;

    mFlags = 0;
    onPlayAllAnime();
    return cPhs_COMPLEATE_e;
}

/* 8020B0F4-8020B140 205A34 004C+00 1/0 0/0 0/0 .text            _execute__14dMeterHaihai_cFUl */
int dMeterHaihai_c::_execute(u32 i_flags) {
    mFlags = i_flags;
    updateHaihai();
    alphaAnimeHaihai(i_flags);
    return 1;
}

/* 8020B140-8020B518 205A80 03D8+00 1/0 0/0 0/0 .text            draw__14dMeterHaihai_cFv */
void dMeterHaihai_c::draw() {
    if ((mFlags & 8) || (mFlags & 0x10) || (mFlags & 0x1000000) || (mFlags & 0x800000) ||
        (mFlags & 0x20) || (mFlags & 0x4000000))
    {
        return;
    }

    f32 x_pos[2];
    f32 y_pos[2];
    bool i_forceDraw;
    u8 direction;

    if (mType == 4) {
        direction = dComIfGp_getAdvanceDirection();
        i_forceDraw = g_drawHIO.mWiiLockArrowDisplayAll;

        for (int i = 0; i < 2; i++) {
            x_pos[i] = g_drawHIO.mWiiLockArrowPosX[i];
            y_pos[i] = g_drawHIO.mWiiLockArrowPosY[i];
        }
    } else if (mType == 1) {
        direction = dComIfGp_getAdvanceDirection();
        i_forceDraw = g_drawHIO.mScrollArrowDisplayAll;

        x_pos[0] = g_drawHIO.mScrollArrowPosX[0] - 2.6f;
        y_pos[0] = g_drawHIO.mScrollArrowPosY[0] - 39.0f;
        x_pos[1] = g_drawHIO.mScrollArrowPosX[1] - 58.0f;
        y_pos[1] = g_drawHIO.mScrollArrowPosY[1];
    } else {
        direction = dComIfGp_getAdvanceDirection();
        i_forceDraw = g_drawHIO.mScrollArrowDisplayAll;

        for (int i = 0; i < 2; i++) {
            x_pos[i] = g_drawHIO.mScrollArrowPosX[i];
            y_pos[i] = g_drawHIO.mScrollArrowPosY[i];
        }
    }

    if (direction & DIR_DOWN_e || i_forceDraw) {
        mpParent->getPanePtr()->translate(x_pos[0] + 304.0f, y_pos[0] + 224.0f);
        mpParent->getPanePtr()->rotate(mpParent->getPanePtr()->getWidth() / 2,
                                       mpParent->getPanePtr()->getHeight() / 2, ROTATE_Z, 0.0f);
        mpHaihaiScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
    }

    if (direction & DIR_RIGHT_e || i_forceDraw) {
        mpParent->getPanePtr()->translate(x_pos[1] + 304.0f, y_pos[1] + 224.0f);
        mpParent->getPanePtr()->rotate(mpParent->getPanePtr()->getWidth() / 2,
                                       mpParent->getPanePtr()->getHeight() / 2, ROTATE_Z, 90.0f);
        mpHaihaiScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
    }

    if (direction & DIR_UP_e || i_forceDraw) {
        mpParent->getPanePtr()->translate(x_pos[0] + 304.0f, 224.0f - y_pos[0]);
        mpParent->getPanePtr()->rotate(mpParent->getPanePtr()->getWidth() / 2,
                                       mpParent->getPanePtr()->getHeight() / 2, ROTATE_Z, 180.0f);
        mpHaihaiScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
    }

    if (direction & DIR_LEFT_e || i_forceDraw) {
        mpParent->getPanePtr()->translate(304.0f - x_pos[1], y_pos[1] + 224.0f);
        mpParent->getPanePtr()->rotate(mpParent->getPanePtr()->getWidth() / 2,
                                       mpParent->getPanePtr()->getHeight() / 2, ROTATE_Z, 270.0f);
        mpHaihaiScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
    }
}

/* 8020B518-8020B814 205E58 02FC+00 0/0 1/1 0/0 .text            drawHaihai__14dMeterHaihai_cFUc */
void dMeterHaihai_c::drawHaihai(u8 i_direction) {
    f32 center_x = 304.0f;
    f32 center_y = 224.0f;

    if (mType == 1) {
        center_x += (3.0f + g_drawHIO.mScrollArrowCenterPosX);
        center_y += (g_drawHIO.mScrollArrowCenterPosY - 5.0f);
    } else {
        center_x += g_drawHIO.mScrollArrowCenterPosX;
        center_y += g_drawHIO.mScrollArrowCenterPosY;
    }

    if (mType == 1) {
        if ((i_direction & DIR_DOWN_e) || g_drawHIO.mScrollArrowDisplayAll) {
            drawHaihaiBottom(center_x + (g_drawHIO.mScrollArrowPosX[0] - 2.6f),
                             center_y + (g_drawHIO.mScrollArrowPosY[0] - 39.0f));
        }

        if ((i_direction & DIR_RIGHT_e) || g_drawHIO.mScrollArrowDisplayAll) {
            drawHaihaiRight(70.0f + (center_x + (g_drawHIO.mScrollArrowPosX[1] - 58.0f)),
                            center_y + g_drawHIO.mScrollArrowPosY[1]);
        }

        if ((i_direction & DIR_UP_e) || g_drawHIO.mScrollArrowDisplayAll) {
            drawHaihaiTop(center_x + (g_drawHIO.mScrollArrowPosX[0] - 2.6f),
                          50.0f + (center_y - (g_drawHIO.mScrollArrowPosY[0] - 39.0f)));
        }

        if ((i_direction & DIR_LEFT_e) || g_drawHIO.mScrollArrowDisplayAll) {
            drawHaihaiLeft((center_x - (g_drawHIO.mScrollArrowPosX[1] - 58.0f)) - 70.0f,
                           center_y + g_drawHIO.mScrollArrowPosY[1]);
        }
    } else {
        if ((i_direction & DIR_DOWN_e) || g_drawHIO.mScrollArrowDisplayAll) {
            drawHaihaiBottom(center_x + g_drawHIO.mScrollArrowPosX[0],
                             center_y + g_drawHIO.mScrollArrowPosY[0]);
        }

        if ((i_direction & DIR_RIGHT_e) || g_drawHIO.mScrollArrowDisplayAll) {
            drawHaihaiRight(70.0f + (center_x + g_drawHIO.mScrollArrowPosX[1]),
                            center_y + g_drawHIO.mScrollArrowPosY[1]);
        }

        if ((i_direction & DIR_UP_e) || g_drawHIO.mScrollArrowDisplayAll) {
            drawHaihaiTop(center_x + g_drawHIO.mScrollArrowPosX[0],
                          50.0f + (center_y - g_drawHIO.mScrollArrowPosY[0]));
        }

        if ((i_direction & DIR_LEFT_e) || g_drawHIO.mScrollArrowDisplayAll) {
            drawHaihaiLeft((center_x - g_drawHIO.mScrollArrowPosX[1]) - 70.0f,
                           center_y + g_drawHIO.mScrollArrowPosY[1]);
        }
    }
}

/* 8020B814-8020B9B0 206154 019C+00 0/0 2/2 0/0 .text            drawHaihai__14dMeterHaihai_cFUcffff
 */
void dMeterHaihai_c::drawHaihai(u8 i_direction, f32 i_posX, f32 i_posY, f32 param_3, f32 param_4) {
    if (mType == 1) {
        i_posX += (3.0f + g_drawHIO.mScrollArrowCenterPosX);
        i_posY += (g_drawHIO.mScrollArrowCenterPosY - 5.0f);
    } else {
        i_posX += g_drawHIO.mScrollArrowCenterPosX;
        i_posY += g_drawHIO.mScrollArrowCenterPosY;
    }

    if ((i_direction & DIR_DOWN_e) || g_drawHIO.mScrollArrowDisplayAll) {
        drawHaihaiBottom(i_posX, i_posY + (param_4 / 2));
    }

    if ((i_direction & DIR_RIGHT_e) || g_drawHIO.mScrollArrowDisplayAll) {
        drawHaihaiRight(i_posX + (param_3 / 2), i_posY);
    }

    if ((i_direction & DIR_UP_e) || g_drawHIO.mScrollArrowDisplayAll) {
        drawHaihaiTop(i_posX, i_posY - (param_4 / 2));
    }

    if ((i_direction & DIR_LEFT_e) || g_drawHIO.mScrollArrowDisplayAll) {
        drawHaihaiLeft(i_posX - (param_3 / 2), i_posY);
    }
}

/* 8020B9B0-8020BA4C 2062F0 009C+00 2/2 0/0 0/0 .text            drawHaihaiLeft__14dMeterHaihai_cFff
 */
void dMeterHaihai_c::drawHaihaiLeft(f32 i_transX, f32 i_transY) {
    mpParent->translate(i_transX, i_transY);
    mpParent->getPanePtr()->rotate(mpParent->getPanePtr()->getWidth() / 2,
                                   mpParent->getPanePtr()->getHeight() / 2, ROTATE_Z, 270.0f);
    mpHaihaiScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
}

/* 8020BA4C-8020BAE8 20638C 009C+00 2/2 0/0 0/0 .text drawHaihaiRight__14dMeterHaihai_cFff */
void dMeterHaihai_c::drawHaihaiRight(f32 i_transX, f32 i_transY) {
    mpParent->translate(i_transX, i_transY);
    mpParent->getPanePtr()->rotate(mpParent->getPanePtr()->getWidth() / 2,
                                   mpParent->getPanePtr()->getHeight() / 2, ROTATE_Z, 90.0f);
    mpHaihaiScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
}

/* 8020BAE8-8020BB84 206428 009C+00 2/2 0/0 0/0 .text            drawHaihaiTop__14dMeterHaihai_cFff
 */
void dMeterHaihai_c::drawHaihaiTop(f32 i_transX, f32 i_transY) {
    mpParent->translate(i_transX, i_transY);
    mpParent->getPanePtr()->rotate(mpParent->getPanePtr()->getWidth() / 2,
                                   mpParent->getPanePtr()->getHeight() / 2, ROTATE_Z, 180.0f);
    mpHaihaiScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
}

/* 8020BB84-8020BC20 2064C4 009C+00 2/2 0/0 0/0 .text drawHaihaiBottom__14dMeterHaihai_cFff */
void dMeterHaihai_c::drawHaihaiBottom(f32 i_transX, f32 i_transY) {
    mpParent->translate(i_transX, i_transY);
    mpParent->getPanePtr()->rotate(mpParent->getPanePtr()->getWidth() / 2,
                                   mpParent->getPanePtr()->getHeight() / 2, ROTATE_Z, 0.0f);
    mpHaihaiScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
}

/* 8020BC20-8020BDAC 206560 018C+00 1/1 1/1 0/0 .text            setScale__14dMeterHaihai_cFf */
void dMeterHaihai_c::setScale(f32 i_scaleFactor) {
    if (mType == 1) {
        mpParent->scale(g_drawHIO.mScrollArrowScaleX * 0.6f * 0.8f * 0.8f * i_scaleFactor,
                        g_drawHIO.mScrollArrowScaleY * 0.6f * 0.8f * 0.8f * i_scaleFactor);
    } else if (mType == 2) {
        mpParent->scale(g_drawHIO.mScrollArrowScaleX * 0.6f * i_scaleFactor,
                        g_drawHIO.mScrollArrowScaleY * 0.6f * i_scaleFactor);
    } else if (mType == 3) {
        mpParent->scale(g_drawHIO.mOptionScreen.mArrowSize * i_scaleFactor,
                        g_drawHIO.mOptionScreen.mArrowSize * i_scaleFactor);
    } else if (mType == 4) {
        mpParent->scale(g_drawHIO.mWiiLockArrowScaleX * i_scaleFactor,
                        g_drawHIO.mWiiLockArrowScaleY * i_scaleFactor);
    } else {
        mpParent->scale(g_drawHIO.mScrollArrowScaleX * i_scaleFactor,
                        g_drawHIO.mScrollArrowScaleY * i_scaleFactor);
    }
}

/* 8020BDAC-8020BEA0 2066EC 00F4+00 1/0 0/0 0/0 .text            _delete__14dMeterHaihai_cFv */
int dMeterHaihai_c::_delete() {
    delete mpHaihaiScreen;
    mpHaihaiScreen = NULL;

    delete mpParent;
    mpParent = NULL;

    delete mpCursorBck;
    mpCursorBck = NULL;

    delete mpCursorBtk;
    mpCursorBtk = NULL;

    delete mpCursorBpk;
    mpCursorBpk = NULL;
    return 1;
}

/* 8020BEA0-8020BEA4 2067E0 0004+00 1/1 0/0 0/0 .text alphaAnimeHaihai__14dMeterHaihai_cFUl */
void dMeterHaihai_c::alphaAnimeHaihai(u32 i_flags) {}

/* 8020BEA4-8020BF00 2067E4 005C+00 1/1 0/0 0/0 .text            updateHaihai__14dMeterHaihai_cFv */
void dMeterHaihai_c::updateHaihai() {
    playBckAnime(mpCursorBck);
    playBtkAnime(mpCursorBtk);
    playBpkAnime(mpCursorBpk);
    mpHaihaiScreen->animation();
    setScale(1.0f);
}

/* 8020BF00-8020C078 206840 0178+00 1/1 0/0 0/0 .text
 * playBckAnime__14dMeterHaihai_cFP18J2DAnmTransformKey         */
void dMeterHaihai_c::playBckAnime(J2DAnmTransformKey* i_bck) {
    if (checkPlayAnime(1)) {
        if (i_bck != NULL) {
            if (mType == 4) {
                mBckFrame += g_drawHIO.mWiiLockArrowBCKAnimSpeed;
            } else {
                mBckFrame += g_drawHIO.mScrollArrowBCKAnimSpeed;
            }

            if (mBckFrame >= i_bck->getFrameMax()) {
                mBckFrame -= i_bck->getFrameMax();
            }
        } else {
            mBtkFrame = 1.0f;
        }

        i_bck->setFrame(mBckFrame);
        mpHaihaiScreen->search('n_anim')->setAnimation(i_bck);
        mpHaihaiScreen->search('n_anim')->animationTransform();
        mpHaihaiScreen->search('n_anim')->setAnimation((J2DAnmTransform*)NULL);
    }
}

/* 8020C078-8020C1CC 2069B8 0154+00 1/1 0/0 0/0 .text
 * playBtkAnime__14dMeterHaihai_cFP19J2DAnmTextureSRTKey        */
void dMeterHaihai_c::playBtkAnime(J2DAnmTextureSRTKey* i_btk) {
    if (checkPlayAnime(2)) {
        if (i_btk != NULL) {
            if (mType == 4) {
                mBtkFrame += g_drawHIO.mWiiLockArrowBTKAnimSpeed;
            } else {
                mBtkFrame += g_drawHIO.mScrollArrowBTKAnimSpeed;
            }

            if (mBtkFrame >= i_btk->getFrameMax()) {
                mBtkFrame -= i_btk->getFrameMax();
            }
        } else {
            mBtkFrame = 1.0f;
        }

        i_btk->setFrame(mBtkFrame);
        mpHaihaiScreen->search('yaji00')->setAnimation(i_btk);
        mpHaihaiScreen->search('yaji01')->setAnimation(i_btk);
    }
}

/* 8020C1CC-8020C320 206B0C 0154+00 1/1 0/0 0/0 .text
 * playBpkAnime__14dMeterHaihai_cFP11J2DAnmColor                */
void dMeterHaihai_c::playBpkAnime(J2DAnmColor* i_bpk) {
    if (checkPlayAnime(0)) {
        if (i_bpk != NULL) {
            if (mType == 4) {
                mBpkFrame += g_drawHIO.mWiiLockArrowBPKAnimSpeed;
            } else {
                mBpkFrame += g_drawHIO.mScrollArrowBPKAnimSpeed;
            }

            if (mBpkFrame >= i_bpk->getFrameMax()) {
                mBpkFrame -= i_bpk->getFrameMax();
            }
        } else {
            mBpkFrame = 1.0f;
        }

        i_bpk->setFrame(mBpkFrame);
        mpHaihaiScreen->search('npc_l1')->setAnimation(i_bpk);
        mpHaihaiScreen->search('yaji_l')->setAnimation(i_bpk);
    }
}
