#include "d/dolzel.h" // IWYU pragma: keep

#include "d/d_kantera_icon_meter.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter_HIO.h"
#include "d/d_pane_class.h"

dKantera_icon_c::dKantera_icon_c() {
    initiate();
}

dKantera_icon_c::~dKantera_icon_c() {
    J2DScreen* screen = mpKanteraIcon->getScreen();
    delete screen;
    delete mpKanteraIcon;
    mpKanteraIcon = NULL;

    delete mpParent;
    mpParent = NULL;

    delete mpGauge;
    mpGauge = NULL;
}

void dKantera_icon_c::initiate() {
    mpKanteraIcon = new dDlst_KanteraIcon_c();
    JUT_ASSERT(71, mpKanteraIcon != NULL);

    J2DScreen* mp_scrn = new J2DScreen();
    JUT_ASSERT(74, mp_scrn != NULL);
    mp_scrn->setPriority("zelda_kantera_icon_mater.blo", 0x20000, dComIfGp_getMain2DArchive());
    dPaneClass_showNullPane(mp_scrn);
    mpKanteraIcon->setScreen(mp_scrn);

    mpParent = new CPaneMgr(mp_scrn, MULTI_CHAR('kan_m_n'), 2, NULL);
    JUT_ASSERT(84, mpParent != NULL);

    mpGauge = new CPaneMgr(mp_scrn, MULTI_CHAR('yellow_m'), 0, NULL);
    JUT_ASSERT(87, mpGauge != NULL);
}

void dKantera_icon_c::setAlphaRate(f32 alphaRate) {
    mpParent->setAlphaRate(alphaRate);
}

void dKantera_icon_c::setPos(f32 x, f32 y) {
    mpParent->translate(x + g_drawHIO.mLanternIconMeterPosX, y + g_drawHIO.mLanternIconMeterPosY);
}

void dKantera_icon_c::setScale(f32 h, f32 v) {
    mpParent->scale(h * g_drawHIO.mLanternIconMeterSize, v * g_drawHIO.mLanternIconMeterSize);
}

void dKantera_icon_c::setNowGauge(u16 h, u16 v) {
    f32 aspect = (f32)v / (f32)h;
    mpGauge->scale(aspect, 1.0f);
}

void dDlst_KanteraIcon_c::draw() {
    J2DGrafContext* curGraf = dComIfGp_getCurrentGrafPort();
    curGraf->setup2D();
    mp_scrn->draw(0.0f, 0.0f, curGraf);
}

dDlst_KanteraIcon_c::~dDlst_KanteraIcon_c() {}
