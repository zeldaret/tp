#include "HBMBase.h"

// TODO: More enumerations! More naming! Go go go

#include <cstring.h>
#include <new.h>

#include "global.h"

#include <revolution/types.h>

#include "HBMAnmController.h"
#include "HBMAxSound.h"
#include "HBMCommon.h"
#include "HBMController.h"
#include "HBMFrameController.h"
#include "HBMGUIManager.h"
#include "HBMRemoteSpk.h"

#include "nw4hbm/lyt/animation.h"
#include "nw4hbm/lyt/arcResourceAccessor.h"
#include "nw4hbm/lyt/drawInfo.h"
#include "nw4hbm/lyt/group.h"
#include "nw4hbm/lyt/layout.h"
#include "nw4hbm/lyt/pane.h"
#include "nw4hbm/lyt/textBox.h"
#include "nw4hbm/math/triangular.h"
#include "nw4hbm/math/types.h"
#include "nw4hbm/ut/Font.h"  // IWYU pragma: keep (text)
#include "nw4hbm/ut/LinkList.h"
#include "nw4hbm/ut/Rect.h"
#include "nw4hbm/ut/RuntimeTypeInfo.h"

#include <revolution/ax.h>
#include <revolution/axfx.h>
#include <revolution/gx.h>
#include <revolution/hbm.h>
#include <revolution/os/OSAlarm.h>
#include <revolution/os/OSMutex.h>
#include <revolution/os/OSTime.h>
#include <revolution/sc.h>
#include <revolution/wpad.h>
#include <revolution/vi.h>

#define REVO_IPL_FONT "RevoIpl_UtrilloProGrecoStd_M_32_I4.brfnt"

struct AnmControllerTable {
    int pane;  // size 0x04, offset 0x00
    int anm;   // size 0x04, offset 0x04
};  // size 0x08

namespace homebutton {
    static void initgx();
    static void initgxfortex();

    static void drawBlackPlate(f32 left, f32 top, f32 right, f32 bottom, GXColor clr);
    static void drawTexPlate(void* graphicBuf, u16 width, u16 height, GXTexFmt texFmt, f32 left,
                             f32 top, f32 right, f32 bottom, f32 z, GXColor clr);

    static u32 get_comma_length(char* pBuf);

    static void SpeakerCallback(OSAlarm* alm, OSContext* ctx);
    static void MotorCallback(OSAlarm* alm, OSContext* ctx);
    static void RetrySimpleSyncCallback(OSAlarm* alm, OSContext* ctx);
    static void SimpleSyncCallback(s32 result, s32 num);
}  // namespace homebutton

#include "HBMBase.inl"

namespace homebutton {
#if 0 /* synopsis of HBMBase.inl */
	// .rodata
	static AnmControllerTable const scAnmTable[12];
	static AnmControllerTable const scGroupAnmTable[74];

	int const HomeButton::scReConnectTime		= 3600;
	int const HomeButton::scReConnectTime2		= 3570;
	int const HomeButton::scPadDrawWaitTime		= 5;
	int const HomeButton::scGetPadInfoTime		= 100;
	int const HomeButton::scForcusSEWaitTime	= 2;
	f32 const HomeButton::scOnPaneVibTime		= 3.0f;
	f32 const HomeButton::scOnPaneVibWaitTime	= 9.0f;
	int const HomeButton::scWaitStopMotorTime	= 30;
	int const HomeButton::scWaitDisConnectTime	= 180;

	// .data
	char const *HomeButton::scCursorLytName[WPAD_MAX_CONTROLLERS];
	char const *HomeButton::scCursorPaneName;
	char const *HomeButton::scCursorRotPaneName;
	char const *HomeButton::scCursorSRotPaneName;
	char const *HomeButton::scBtnName[4];
	char const *HomeButton::scTxtName[4];
	char const *HomeButton::scGrName[8];
	char const *HomeButton::scAnimName[3];
	char const *HomeButton::scPairGroupAnimName[15];
	char const *HomeButton::scPairGroupName[15];
	char const *HomeButton::scGroupAnimName[22];
	char const *HomeButton::scGroupName[35];
	char const *HomeButton::scFuncPaneName[5];
	char const *HomeButton::scFuncTouchPaneName[10];
	char const *HomeButton::scFuncTextPaneName[3];
	char const *HomeButton::scBatteryPaneName[WPAD_MAX_CONTROLLERS][4];
#endif

    // .bss
    HomeButton* HomeButton::spHomeButtonObj;
    OSMutex HomeButton::sMutex;
    WPADInfo HomeButton::sWpadInfo[WPAD_MAX_CONTROLLERS];
}  // namespace homebutton

namespace homebutton {

    static void initgx() {
        Mtx view_mtx;

        GXSetCullMode(GX_CULL_NONE);
        MTXIdentity(view_mtx);
        GXLoadPosMtxImm(view_mtx, 0);
        GXSetCurrentMtx(0);

        GXClearVtxDesc();
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);

        GXSetNumChans(1);
        GXSetChanCtrl(GX_COLOR0A0, FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                      GX_AF_NONE);
        GXSetChanCtrl(GX_COLOR1A1, FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                      GX_AF_NONE);

        GXSetNumTexGens(0);

        GXSetNumTevStages(1);
        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);

        GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
        GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_NOOP);
        GXSetAlphaUpdate(FALSE);
        GXSetZMode(FALSE, GX_ALWAYS, FALSE);
        GXSetDispCopyGamma(GX_GM_1_0);

        GXSetNumIndStages(0);
        GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    }

    static void initgxfortex() {
        GXClearVtxDesc();
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
        GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);

        GXSetChanCtrl(GX_COLOR0A0, FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                      GX_AF_NONE);
        GXSetNumChans(1);

        GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 60);
        GXSetNumTexGens(1);

        GXSetTevColor(GX_TEVREG0, (GXColor){255, 255, 255, 255});
        GXSetTevColor(GX_TEVREG1, (GXColor){0, 0, 0, 0});
        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_C1);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, GX_CA_A0, GX_CA_A1);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);

        GXSetTevDirect(GX_TEVSTAGE0);
        GXSetNumTevStages(1);
        GXSetNumIndStages(0);
        GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);

        GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);
        GXSetZMode(GX_TRUE, GX_ALWAYS, GX_FALSE);
        GXSetZCompLoc(0);
        GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_AND, GX_ALWAYS, 0);
        GXSetColorUpdate(GX_TRUE);
        GXSetAlphaUpdate(GX_FALSE);
    }

    static void drawBlackPlate(f32 left, f32 top, f32 right, f32 bottom, GXColor clr) {
        GXSetTevColor(GX_TEVREG0, clr);

        GXBegin(GX_QUADS, GX_VTXFMT0, 4);
        GXPosition2f32(left, top);
        GXPosition2f32(left, bottom);
        GXPosition2f32(right, bottom);
        GXPosition2f32(right, top);
        GXEnd();
    }

    static void drawTexPlate(void* graphicBuf, u16 width, u16 height, GXTexFmt texFmt, f32 left,
                             f32 top, f32 right, f32 bottom, f32 z, GXColor clr) {
        GXTexObj texObj;
        GXInitTexObj(&texObj, graphicBuf, (u16)width, (u16)height, texFmt, GX_CLAMP, GX_CLAMP,
                     GX_FALSE);
        GXInitTexObjLOD(&texObj, GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE,
                        GX_ANISO_1);
        GXInitTexObjFilter(&texObj, GX_LIN_MIP_LIN, GX_LINEAR);

        GXLoadTexObj(&texObj, GX_TEXMAP0);

        GXSetTevColor(GX_TEVREG0, clr);

        GXBegin(GX_QUADS, GX_VTXFMT0, 4);
        GXPosition3f32(left, top, z);
        GXTexCoord2f32(0.0f, 0.0f);

        GXPosition3f32(left, bottom, z);
        GXTexCoord2f32(0.0f, 1.0f);

        GXPosition3f32(right, bottom, z);
        GXTexCoord2f32(1.0f, 1.0f);

        GXPosition3f32(right, top, z);
        GXTexCoord2f32(1.0f, 0.0f);
        GXEnd();
    }

    HomeButton::HomeButton(HBMDataInfo const* pHBInfo)
        : mpHBInfo(pHBInfo), mpHBInfoEx(NULL), mpLayout(NULL), mpPaneManager(NULL), mFader(30) {
        iVISetBlackFlag = TRUE;
        mState = State2;
        mSelectBtnNum = HBM_SELECT_NULL;
        mSelectAnmNum = -1;
        mMsgCount = 0;
        mSequence = eSeq_Normal;
        mForcusSEWaitTime = 0;
        mLetterFlag = FALSE;
        mBar0AnmRev = 0;
        mBar1AnmRev = 0;
        mBar0AnmRevHold = 0;
        mBar1AnmRevHold = 0;
        mAdjustFlag = FALSE;
        mReassignedFlag = FALSE;
        mEndInitSoundFlag = FALSE;

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            OSCreateAlarm(&mAlarm[i]);
            OSCreateAlarm(&mSpeakerAlarm[i]);
        }

        OSCreateAlarm(&mSimpleSyncAlarm);
        OSInitMutex(&sMutex);
    }

    HomeButton::~HomeButton() {
        int i;

        mpResAccessor->~ArcResourceAccessor();
        HBMFreeMem(mpResAccessor);

        mpLayout->~Layout();
        HBMFreeMem(mpLayout);

        if (!mpHBInfo->cursor) {
            for (i = 0; i < (int)ARRAY_SIZE(mpCursorLayout); ++i) {
                mpCursorLayout[i]->~Layout();
                HBMFreeMem(mpCursorLayout[i]);
            }
        }

        for (i = 0; i < mAnmNum; ++i) {
            mpAnmController[i]->~GroupAnmController();
            HBMFreeMem(mpAnmController[i]);
        }

        for (i = 0; i < (int)ARRAY_SIZE(mpPairGroupAnmController); ++i) {
            mpPairGroupAnmController[i]->~GroupAnmController();
            HBMFreeMem(mpPairGroupAnmController[i]);
        }

        for (i = 0; i < (int)ARRAY_SIZE(mpGroupAnmController); ++i) {
            mpGroupAnmController[i]->~GroupAnmController();
            HBMFreeMem(mpGroupAnmController[i]);
        }

        mpHomeButtonEventHandler->HomeButtonEventHandler::~HomeButtonEventHandler();
        HBMFreeMem(mpHomeButtonEventHandler);

        mpPaneManager->~PaneManager();
        HBMFreeMem(mpPaneManager);

        for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            if (mInitFlag)
                mpController[i]->clearCallback();

            mpController[i]->~Controller();
            HBMFreeMem(mpController[i]);
        }

        mpRemoteSpk->~RemoteSpk();
        HBMFreeMem(mpRemoteSpk);
        mpRemoteSpk = NULL;

        WPADSetSimpleSyncCallback(mSimpleSyncCallback);

        HBMFreeMem(mpLayoutName);
        HBMFreeMem(mpAnmName);

        // wants its own i
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            OSCancelAlarm(&mAlarm[i]);
            OSCancelAlarm(&mSpeakerAlarm[i]);
        }

        OSCancelAlarm(&mSimpleSyncAlarm);
    }

    void HomeButton::createInstance(HBMDataInfo const* pHBInfo) {
        ASSERTLINE(356, !spHomeButtonObj);

        if (void* pMem = HBMAllocMem(sizeof *spHomeButtonObj))
            spHomeButtonObj = new (pMem) HomeButton(pHBInfo);

        ASSERTLINE(362, spHomeButtonObj);
    }

    void HomeButton::deleteInstance() {
        ASSERTLINE(370, spHomeButtonObj);

        spHomeButtonObj->~HomeButton();
        HBMFreeMem(spHomeButtonObj);
        spHomeButtonObj = NULL;
    }

    HomeButton* HomeButton::getInstance() {
        return spHomeButtonObj;
    }

    void HomeButton::create() {
        int i;
        char anmNameBuf[64];

        mInitFlag = FALSE;
        mForceSttInitProcFlag = FALSE;
        mForceSttFadeInProcFlag = FALSE;

        set_config();
        set_text();

        if (void* pMem = HBMAllocMem(sizeof *mpResAccessor))
            mpResAccessor = new (pMem) nw4hbm::lyt::ArcResourceAccessor;

        ASSERTLINE(406, mpResAccessor);
        mpResAccessor->Attach(mpHBInfo->layoutBuf, "arc");

        if (!mpHBInfo->cursor) {
            for (i = 0; i < (int)ARRAY_SIZE(mpCursorLayout); ++i) {
                if (void* pMem = HBMAllocMem(sizeof *mpCursorLayout[i]))
                    mpCursorLayout[i] = new (pMem) nw4hbm::lyt::Layout;

                ASSERTLINE(418, mpCursorLayout[i]);

                {  // 0x53a7 wants separate lexical_block?
                    void* lytRes = mpResAccessor->GetResource(0, scCursorLytName[i], NULL);

                    mpCursorLayout[i]->Build(lytRes, mpResAccessor);
                }
            }
        }

        if (void* pMem = HBMAllocMem(sizeof *mpLayout))
            mpLayout = new (pMem) nw4hbm::lyt::Layout;

        {  // 0x53ef wants lexical_block?

            // is this a macro?
            void* lytRes = mpResAccessor->GetResource(0, mpLayoutName, NULL);
            mpLayout->Build(lytRes, mpResAccessor);
        }

        nw4hbm::lyt::Pane* proot = mpLayout->GetRootPane();

        NW4HBM_RANGE_FOR(it, proot->GetChildList()) {
            if (!std::strcmp(it->GetName(), "back_00") || !std::strcmp(it->GetName(), "back_01") ||
                !std::strcmp(it->GetName(), "back_02"))
            {
                it->SetScale(nw4hbm::math::VEC2(1.5f, 1.5f));
            }
        }

        mpLayout->GetRootPane()
            ->FindPaneByName("bar_line_00", TRUE)
            ->SetScale(nw4hbm::math::VEC2(1.5f, 1.0f));

        mpLayout->GetRootPane()
            ->FindPaneByName("bar_line_10", TRUE)
            ->SetScale(nw4hbm::math::VEC2(1.5f, 1.0f));

        for (i = 0; i < mAnmNum; ++i) {
            std::strcpy(anmNameBuf, mpAnmName);
            std::strcat(anmNameBuf, scAnimName[scAnmTable[i].anm]);

            void* lpaRes = mpResAccessor->GetResource(0, anmNameBuf, NULL);
            ASSERTLINE(476, lpaRes);

            if (void* pMem = HBMAllocMem(sizeof *mpAnmController[i]))
                mpAnmController[i] = new (pMem) GroupAnmController;

            ASSERTLINE(482, mpAnmController[i]);

            mpAnmController[i]->mpAnimGroup = mpLayout->CreateAnimTransform(lpaRes, mpResAccessor);

            mpAnmController[i]->mpGroup =
                mpLayout->GetGroupContainer()->FindGroupByName(scGrName[scAnmTable[i].pane]);

            nw4hbm::lyt::detail::PaneLink::LinkList& list =
                mpAnmController[i]->mpGroup->GetPaneList();

            NW4HBM_RANGE_FOR(it, list)
            it->mTarget->BindAnimation(mpAnmController[i]->mpAnimGroup, FALSE);

            mpAnmController[i]->init(FrameController::eAnmType_Forward,
                                     mpAnmController[i]->mpAnimGroup->GetFrameMax(), 0,
                                     mpHBInfo->frameDelta);
        }

        for (i = 0; i < (int)ARRAY_SIZE(mpGroupAnmController); ++i) {
            std::strcpy(anmNameBuf, mpAnmName);
            std::strcat(anmNameBuf, scGroupAnimName[scGroupAnmTable[i].anm]);

            void* lpaRes = mpResAccessor->GetResource(0, anmNameBuf, NULL);

            ASSERTLINE(508, lpaRes);

            if (void* pMem = HBMAllocMem(sizeof *mpGroupAnmController[i]))
                mpGroupAnmController[i] = new (pMem) GroupAnmController;

            ASSERTLINE(514, mpGroupAnmController[i]);

            mpGroupAnmController[i]->mpAnimGroup =
                mpLayout->CreateAnimTransform(lpaRes, mpResAccessor);

            mpGroupAnmController[i]->mpGroup = mpLayout->GetGroupContainer()->FindGroupByName(
                scGroupName[scGroupAnmTable[i].pane]);

            nw4hbm::lyt::detail::PaneLink::LinkList& list =
                mpGroupAnmController[i]->mpGroup->GetPaneList();

            NW4HBM_RANGE_FOR(it, list) {
                it->mTarget->BindAnimation(mpGroupAnmController[i]->mpAnimGroup, FALSE);
            }

            mpGroupAnmController[i]->init(FrameController::eAnmType_Forward,
                                          mpGroupAnmController[i]->mpAnimGroup->GetFrameMax(), 0,
                                          mpHBInfo->frameDelta);
        }

        for (i = 0; i < (int)ARRAY_SIZE(mpPairGroupAnmController); ++i) {
            std::strcpy(anmNameBuf, mpAnmName);
            std::strcat(anmNameBuf, scPairGroupAnimName[i]);

            void* lpaRes = mpResAccessor->GetResource(0, anmNameBuf, NULL);

            ASSERTLINE(540, lpaRes);

            if (void* pMem = HBMAllocMem(sizeof *mpPairGroupAnmController[i]))
                mpPairGroupAnmController[i] = new (pMem) GroupAnmController;

            ASSERTLINE(546, mpPairGroupAnmController[i]);

            mpPairGroupAnmController[i]->mpAnimGroup =
                mpLayout->CreateAnimTransform(lpaRes, mpResAccessor);

            mpPairGroupAnmController[i]->mpGroup =
                mpLayout->GetGroupContainer()->FindGroupByName(scPairGroupName[i]);

            nw4hbm::lyt::detail::PaneLink::LinkList& list =
                mpPairGroupAnmController[i]->mpGroup->GetPaneList();

            NW4HBM_RANGE_FOR(it, list) {
                it->mTarget->BindAnimation(mpPairGroupAnmController[i]->mpAnimGroup, FALSE);
            }

            mpPairGroupAnmController[i]->init(
                FrameController::eAnmType_Forward,
                mpPairGroupAnmController[i]->mpAnimGroup->GetFrameMax(), 0, mpHBInfo->frameDelta);
        }

        if (void* pMem = HBMAllocMem(sizeof *mpHomeButtonEventHandler))
            mpHomeButtonEventHandler = new (pMem) HomeButtonEventHandler(this);

        ASSERTLINE(569, mpHomeButtonEventHandler);

        if (void* pMem = HBMAllocMem(sizeof *mpPaneManager)) {
            mpPaneManager =
                new (pMem) gui::PaneManager(mpHomeButtonEventHandler, NULL, spAllocator);
        }

        ASSERTLINE(576, mpPaneManager);

        mpPaneManager->createLayoutScene(*mpLayout);

        if (void* pMem = HBMAllocMem(sizeof *mpRemoteSpk))
            mpRemoteSpk = new (pMem) RemoteSpk(mpHBInfo->spkSeBuf);

        for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            if (void* pMem = HBMAllocMem(sizeof *mpController[i]))
                mpController[i] = new (pMem) Controller(i, mpRemoteSpk);
        }

        mpPaneManager->setDrawInfo(&mDrawInfo);

        nw4hbm::math::VEC2 ad_v(1.0f / mpHBInfo->adjust.x, 1.0f);
        mDrawInfo.SetLocationAdjustScale(ad_v);
        mDrawInfo.SetLocationAdjust(mAdjustFlag);

        nw4hbm::math::MTX34 viewMtx;
        nw4hbm::math::MTX34Identity(&viewMtx);
        mDrawInfo.SetViewMtx(viewMtx);

        init_msg();
    }

    static u32 get_comma_length(char* pBuf) {
        u32 len;

        for (len = 0; pBuf[len] != '\0'; ++len) {
            if (pBuf[len] == ',')
                break;
        }

        return len;
    }

    void HomeButton::set_config() {
        int i = 0, j = 0;

        char* pConfig = static_cast<char*>(mpHBInfo->configBuf);
        // char* pEnd = static_cast<char*>(mpHBInfo->configBuf) + mpHBInfo->configBufSize;
        char* pEnd = static_cast<char*>(mpHBInfo->configBuf);
        u32 len = get_comma_length(pConfig);

        mpLayoutName = static_cast<char*>(HBMAllocMem(len + 1));

        ASSERTLINE(633, mpLayoutName);

        std::strncpy(mpLayoutName, pConfig, len);
        mpLayoutName[len] = '\0';

        pConfig += len + 1;

        len = get_comma_length(pConfig);
        mpAnmName = static_cast<char*>(HBMAllocMem(len + 1));

        ASSERTLINE(643, mpAnmName);

        std::strncpy(mpAnmName, pConfig, len);
        mpAnmName[len] = '\0';

        pConfig += len;

        i = 0;  // comma operator generates a temporary
        j = 0;  // but also like they were initialized earlier? this is redundant
        for (; pConfig[i] && pConfig + i < pEnd; ++i) {
            if (pConfig[i] == ',') {
                if (pConfig[i + 1] == '1')
                    mDialogFlag[j] = TRUE;
                else
                    mDialogFlag[j] = FALSE;

                ++j;
            }
        }

        mButtonNum = j;
        mAnmNum = mButtonNum * 3;
    }

    void HomeButton::set_text() {
        int i = 0, j = 0, k = 0;
        bool flag = FALSE;  // more accurately insideStringFlag

        wchar_t* message = static_cast<wchar_t*>(mpHBInfo->msgBuf);
        for (; message[i]; ++i) {
            if (message[i] == L'\"') {
                if (!flag) {
                    flag = TRUE;

                    mpText[j][k] = &message[i + 1];
                    ++j;

                    if (j == L'\n') {
                        j = 0;
                        ++k;
                    }
                } else {
                    flag = FALSE;
                }
            }
        }
    }

    void HomeButton::init() {
        int i;

        if (mInitFlag)
            return;

        mInitFlag = TRUE;
        mBatteryCheck = 1;

        WPADStopSimpleSync();

        mForceSttInitProcFlag = FALSE;
        mForceSttFadeInProcFlag = FALSE;
        mStartBlackOutFlag = FALSE;
        mForceStopSyncFlag = FALSE;
        mSimpleSyncCallback = NULL;
        iReConnectTime = 3600.0f / getInstance()->getHBMDataInfo()->frameDelta;
        iReConnectTime2 = 3570.0f / getInstance()->getHBMDataInfo()->frameDelta;

        if (mEndInitSoundFlag) {
            AXFXReverbHiShutdown(&mAxFxReverb);
            AXRegisterAuxACallback(mAuxCallback, mpAuxContext);
            AXFXSetHooks(mAxFxAlloc, mAxFxFree);
            AXSetAuxAReturnVolume(mAppVolume[0]);
            AXSetAuxBReturnVolume(mAppVolume[1]);
            AXSetAuxCReturnVolume(mAppVolume[2]);

            mEndInitSoundFlag = FALSE;
        }

        for (i = 0; i < (int)ARRAY_SIZE(mPaneCounter); ++i)
            mPaneCounter[i] = 0;

        mState = State0;
        mSequence = eSeq_Normal;
        mReassignedFlag = FALSE;

        mpPaneManager->init();
        mpPaneManager->setAllComponentTriggerTarget(FALSE);

        for (i = 0; i < mButtonNum; ++i) {
            nw4hbm::lyt::Pane* pTouchPane =
                mpLayout->GetRootPane()->FindPaneByName(scBtnName[i], TRUE);

            mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(TRUE);
        }

        updateTrigPane();

        nw4hbm::ut::Rect layoutRect = mpLayout->GetLayoutRect();
        mDrawInfo.SetViewRect(layoutRect);
        mpLayout->CalculateMtx(mDrawInfo);

        nw4hbm::math::VEC2 pos(-1000.0f, -1000.0f);

        for (i = 0; i < (int)ARRAY_SIZE(mpCursorLayout); ++i) {
            mpCursorLayout[i]->CalculateMtx(mDrawInfo);

            mpCursorLayout[i]
                ->GetRootPane()
                ->FindPaneByName(scCursorPaneName, TRUE)
                ->SetTranslate(pos);
        }

        reset_guiManager(-1);

        for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            mPadDrawTime[i] = 0;

            mpController[i]->setInValidPos();
            mpController[i]->clrKpadButton();
            mpController[i]->disconnect();
            mpController[i]->clrBatteryFlag();
            mpController[i]->initCallback();
            mpController[i]->initSound();

            mOnPaneVibFrame[i] = 0.0f;
            mOnPaneVibWaitFrame[i] = 0.0f;
        }

        mpLayout->GetRootPane()->FindPaneByName(scFuncPaneName[0], TRUE)->SetVisible(FALSE);

        mpLayout->GetRootPane()->FindPaneByName("N_cntrl_01", TRUE)->SetVisible(TRUE);

        mpLayout->GetRootPane()->FindPaneByName("bar_00", TRUE)->SetVisible(TRUE);
        mpLayout->GetRootPane()->FindPaneByName("bar_10", TRUE)->SetVisible(TRUE);

        // 2-6: "B_optnBtn_XX" entries in scFuncTouchPaneName
        for (i = 2; i < 7; ++i) {
            mpLayout->GetRootPane()
                ->FindPaneByName(scFuncTouchPaneName[i], TRUE)
                ->SetVisible(FALSE);
        }

        for (i = 0; i < (int)ARRAY_SIZE(scFuncTextPaneName); ++i) {
            mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[i], TRUE)->SetVisible(FALSE);
        }

        mpRemoteSpk->Start();
        calc(NULL);

        mFader.init(30.0f / getInstance()->getHBMDataInfo()->frameDelta);
    }

    void HomeButton::init_msg() {
        int i, len;

        for (i = 0; i < (int)ARRAY_SIZE(scFuncTextPaneName); ++i) {
            nw4hbm::lyt::Pane* p_pane =
                mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[i], TRUE);

            ASSERTLINE(879, p_pane);

            nw4hbm::lyt::TextBox* p_text =
                nw4hbm::ut::DynamicCast<nw4hbm::lyt::TextBox*, nw4hbm::lyt::Pane>(p_pane);

            ASSERTLINE(881, p_text);

            for (len = 0; TRUE; ++len) {
                // why not just make this the controlling expression?
                if (mpText[mpHBInfo->region][i][len] == L'\"')
                    break;
            }

            p_text->SetString(mpText[mpHBInfo->region][i], 0, len);
        }
    }

    void HomeButton::init_volume() {
        int i, anm_no;

        mVolumeNum = getVolume();
        setVolume(10);

        for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
            getController(i)->connect();
        }

        for (i = 0; i < 10; ++i) {
            if (i < mVolumeNum) {
                anm_no = findGroupAnimator(i + 21, 10);
                mpGroupAnmController[anm_no]->start();
            } else {
                anm_no = findGroupAnimator(i + 21, 9);
                mpGroupAnmController[anm_no]->start();
            }
        }
    }

    void HomeButton::init_vib() {
        int anm_no;

        mVibFlag = getVibFlag();
        if (mVibFlag) {
            anm_no = findGroupAnimator(13, 6);
            mpGroupAnmController[anm_no]->start();

            anm_no = findGroupAnimator(14, 8);
            mpGroupAnmController[anm_no]->start();
        } else {
            anm_no = findGroupAnimator(13, 8);
            mpGroupAnmController[anm_no]->start();

            anm_no = findGroupAnimator(14, 6);
            mpGroupAnmController[anm_no]->start();
        }
    }

    void HomeButton::init_sound() {
        if (mpHBInfo->sound_callback)
            (*mpHBInfo->sound_callback)(HBM_SOUND_EVENT_0, 0);

        mAppVolume[0] = AXGetAuxAReturnVolume();
        mAppVolume[1] = AXGetAuxBReturnVolume();
        mAppVolume[2] = AXGetAuxCReturnVolume();

        AXFXGetHooks(&mAxFxAlloc, &mAxFxFree);
        AXGetAuxACallback(&mAuxCallback, &mpAuxContext);
        AXFXSetHooks(&HBMAllocMem, &HBMFreeMem);

        mAxFxReverb.preDelay = 0.0f;
        mAxFxReverb.time = 2.5f;
        mAxFxReverb.coloration = 0.5f;
        mAxFxReverb.damping = 0.0f;
        mAxFxReverb.crosstalk = 0.0f;
        mAxFxReverb.mix = 1.0f;

        AXFXReverbHiInit(&mAxFxReverb);
        AXRegisterAuxACallback(&AXFXReverbHiCallback, &mAxFxReverb);
        AXSetAuxAReturnVolume(0x8000);
        AXSetAuxBReturnVolume(0);
        AXSetAuxCReturnVolume(0);

        if (mpHBInfo->sound_callback)
            (*mpHBInfo->sound_callback)(HBM_SOUND_EVENT_1, 0);

        SetSoundMode(SCGetSoundMode());
        mEndInitSoundFlag = TRUE;
    }

    void HomeButton::init_battery(HBMControllerData const* pController) {
        int anm_no;

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            if (pController->wiiCon[i].kpad) {
                if (!mpHBInfo->cursor) {
                    mpCursorLayout[i]
                        ->GetRootPane()
                        ->FindPaneByName(scCursorPaneName, TRUE)
                        ->SetVisible(TRUE);
                }

                anm_no = findGroupAnimator(i + 31, 17);
                mpGroupAnmController[anm_no]->start();
                mControllerFlag[i] = TRUE;

                getController(i)->getInfoAsync(&sWpadInfo[i]);
            } else {
                if (!mpHBInfo->cursor) {
                    mpCursorLayout[i]
                        ->GetRootPane()
                        ->FindPaneByName(scCursorPaneName, TRUE)
                        ->SetVisible(FALSE);
                }

                anm_no = findGroupAnimator(i + 31, 16);
                mpGroupAnmController[anm_no]->start();
                mControllerFlag[i] = FALSE;
            }
        }

        reset_battery();
        mGetPadInfoTime = 0;
    }

    void HomeButton::calc(HBMControllerData const* pController) {
        int i;

        mpPaneManager->calc();

        for (i = 0; i < mAnmNum; ++i)
            mpAnmController[i]->do_calc();

        for (i = 0; i < (int)ARRAY_SIZE(mpPairGroupAnmController); ++i)
            mpPairGroupAnmController[i]->do_calc();

        for (i = 0; i < (int)ARRAY_SIZE(mpGroupAnmController); ++i)
            mpGroupAnmController[i]->do_calc();

        for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            if (mOnPaneVibFrame[i] > 0.0f) {
                if (!mControllerFlag[i] || !getController(i)->isRumbling()) {
                    mOnPaneVibFrame[i] = 0.0f;
                    mOnPaneVibWaitFrame[i] = 0.0f;

                    if (getController(i)->isRumbling())
                        getController(i)->stopMotor();
                } else {
                    mOnPaneVibFrame[i] -= mpHBInfo->frameDelta;

                    if (mOnPaneVibFrame[i] <= 0.0f || mState == State17) {
                        getController(i)->stopMotor();
                        mOnPaneVibFrame[i] = 0.0f;
                        mOnPaneVibWaitFrame[i] = 9.0f;
                    }
                }
            } else if (mOnPaneVibWaitFrame[i] > 0.0f) {
                mOnPaneVibWaitFrame[i] -= mpHBInfo->frameDelta;

                if (mOnPaneVibWaitFrame[i] <= 0.0f)
                    mOnPaneVibWaitFrame[i] = 0.0f;
            }
        }

        switch (mState) {
        case State0:
            if (mpHBInfo->backFlag) {
                mSelectAnmNum = findGroupAnimator(2, 0);

                mpLayout->GetRootPane()->FindPaneByName("back_00", TRUE)->SetVisible(FALSE);

                mpLayout->GetRootPane()->FindPaneByName("back_02", TRUE)->SetVisible(TRUE);
            } else {
                mSelectAnmNum = findGroupAnimator(0, 0);

                mpLayout->GetRootPane()->FindPaneByName("back_00", TRUE)->SetVisible(TRUE);

                mpLayout->GetRootPane()->FindPaneByName("back_02", TRUE)->SetVisible(FALSE);
            }

            mpGroupAnmController[mSelectAnmNum]->start();

            if (pController) {
                mState = State1;

                init_battery(pController);
            }

            break;

        case State1:
            if (!mpGroupAnmController[mSelectAnmNum]->isPlaying()) {
                init_volume();
                init_vib();
                init_sound();
                play_sound(HBM_SOUND_HOME_BUTTON);

                mState = State2;
            }

            break;

        default:
        case State2:
            break;

        case State3:
            if (!mpGroupAnmController[mSelectAnmNum]->isPlaying() && mSelectAnmNum != 5) {
                reset_battery();
                mSelectAnmNum = 5;
                mpPairGroupAnmController[mSelectAnmNum]->start();
            }

            --mWaitStopMotorCount;
            if (mWaitStopMotorCount <= 0) {
                for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
                    WPADDisconnect(i);

                mState = State4;
                mDisConnectCount = 180.0f / getInstance()->getHBMDataInfo()->frameDelta;  // ?
            }

            break;

        case State4:
            if (!mpGroupAnmController[mSelectAnmNum]->isPlaying()) {
                if (mDisConnectCount > 0) {
                    for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                        u32 type;
                        if (WPADProbe(i, &type) != WPAD_ENODEV)
                            break;
                    }

                    if (i < WPAD_MAX_CONTROLLERS) {
                        --mDisConnectCount;
                        break;
                    }

                    mDisConnectCount = 0;
                }

                mState = State5;
                mMsgCount = 0;
                mSoundRetryCnt = 0;
                mSimpleSyncCallback = WPADSetSimpleSyncCallback(&SimpleSyncCallback);
                mEndSimpleSyncFlag = FALSE;
                mForthConnectFlag = FALSE;

                for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
                    getController(i)->setEnableRumble(TRUE);

                mSimpleSyncFlag = WPADStartFastSimpleSync();

                if (!mSimpleSyncFlag)
                    setSimpleSyncAlarm(0);
            }

            break;

        case State5:
        case State6:
            if (mSimpleSyncFlag && !mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                if (mMsgCount == 0) {
                    reset_control();
                    reset_btn();

                    mpPairGroupAnmController[14]->setAnmType(FrameController::eAnmType_Wrap);
                    mpPairGroupAnmController[14]->start();
                }

                for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                    if (!mControllerFlag[i])
                        break;
                }

                if (i >= WPAD_MAX_CONTROLLERS)
                    mForthConnectFlag = TRUE;

                if (mForthConnectFlag) {
                    if (mState != State6) {
                        if (!getController(mConnectNum)->isPlayReady() ||
                            getController(mConnectNum)->isPlayingSoundId(5))
                        {
                            mState = State6;
                            mMsgCount = iReConnectTime2;
                        }

                        ++mSoundRetryCnt;
                        if (mSoundRetryCnt > iReConnectTime2) {
                            mState = State6;
                            mMsgCount = iReConnectTime2;
                        }
                    } else {
                        ++mMsgCount;
                        if (mMsgCount > iReConnectTime) {
                            mState = State7;

                            if (!WPADStopSimpleSync())
                                setSimpleSyncAlarm(1);

                            mEndSimpleSyncFlag = TRUE;
                        }
                    }
                } else {
                    ++mMsgCount;
                    if (mMsgCount > iReConnectTime) {
                        mState = State7;

                        if (!WPADStopSimpleSync())
                            setSimpleSyncAlarm(1);

                        mEndSimpleSyncFlag = TRUE;
                    }
                }
            }

            break;

        case State7:
            if (mEndSimpleSyncFlag) {
                WPADSetSimpleSyncCallback(mSimpleSyncCallback);
                mpRemoteSpk->ClearPcm();
                reset_guiManager(-1);

                mSelectAnmNum = 6;
                mpPairGroupAnmController[mSelectAnmNum]->start();

                mState = State8;
                mpPairGroupAnmController[14]->setAnmType(FrameController::eAnmType_Forward);

                play_sound(HBM_SOUND_END_CONNECT_WINDOW);
            }

            break;

        case State8:
            if (!mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                if (mSelectAnmNum == 13) {
                    reset_window();

                    mpLayout->GetRootPane()
                        ->FindPaneByName(scFuncTextPaneName[2], TRUE)
                        ->SetVisible(FALSE);
                } else if (mSelectAnmNum == 6) {
                    mpLayout->GetRootPane()
                        ->FindPaneByName(scFuncTextPaneName[0], TRUE)
                        ->SetVisible(FALSE);

                    mpLayout->GetRootPane()
                        ->FindPaneByName(scFuncTextPaneName[1], TRUE)
                        ->SetVisible(FALSE);
                }

                mState = State2;
            }

            break;

        case State9:
            if (!mpGroupAnmController[mSelectAnmNum]->isPlaying()) {
                if (mVibFlag) {
                    for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
                        getController(i)->stopMotor();
                }

                mState = State2;
            }

            break;

        case State10:
            if (!mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                mBar0AnmRev = 0;
                mBar1AnmRev = 0;
                mBar0AnmRevHold = 0;
                mBar1AnmRevHold = 0;

                if (mSequence != eSeq_Control) {
                    // 2-6: "B_optnBtn_XX" entries in scFuncTouchPaneName
                    for (i = 2; i < 7; ++i) {
                        mpLayout->GetRootPane()
                            ->FindPaneByName(scFuncTouchPaneName[i], TRUE)
                            ->SetVisible(FALSE);
                    }

                    mState = State2;
                } else if (mSequence == eSeq_Control)  // ? already TRUE
                {
                    mpLayout->GetRootPane()->FindPaneByName("bar_00", TRUE)->SetVisible(FALSE);

                    mSelectAnmNum = 10;
                    mpPairGroupAnmController[mSelectAnmNum]->start();

                    mSelectAnmNum = 1;
                    play_sound(HBM_SOUND_OPEN_CONTROLLER);

                    mState = State8;
                }

                updateTrigPane();
            }

            break;

        case State11:
            if (!mpAnmController[mSelectAnmNum]->isPlaying()) {
                mSelectAnmNum = 7;
                mpPairGroupAnmController[mSelectAnmNum]->start();

                mState = State12;
            }

            break;

        case State12:
            if (!mpPairGroupAnmController[mSelectAnmNum]->isPlaying()) {
                updateTrigPane();
                reset_btn();
                mState = State2;
            }

            break;

        case State13:
            if (!mpGroupAnmController[mSelectAnmNum]->isPlaying()) {
                // only case is SELECT_NULL
                if (mSelectBtnNum >= HBM_SELECT_HOMEBTN) {
                    mFader.start();
                    mState = State19;
                    mFadeOutSeTime = mFader.getMaxFrame();

                    if (mSelectBtnNum != HBM_SELECT_BTN3 && mpHBInfo->sound_callback) {
                        (*mpHBInfo->sound_callback)(HBM_SOUND_EVENT_3, mFadeOutSeTime);
                    }
                } else {
                    updateTrigPane();

                    mSelectAnmNum = 13;
                    mpPairGroupAnmController[mSelectAnmNum]->start();

                    mState = State8;
                }

                reset_guiManager(-1);
            }

            break;

        case State14:
            if (!mpPairGroupAnmController[mSelectAnmNum]->isPlaying())
                calc_fadeoutAnm();

            break;

        case State15:
            if (!mpAnmController[mSelectAnmNum]->isPlaying()) {
                mFader.start();
                mStartBlackOutFlag = TRUE;
                mState = State19;
                mFadeOutSeTime = mFader.getMaxFrame();

                if (mSelectBtnNum != HBM_SELECT_BTN3 && mpHBInfo->sound_callback)
                    (*mpHBInfo->sound_callback)(HBM_SOUND_EVENT_3, mFadeOutSeTime);
            }

            break;

        case State16: {
            GroupAnmController* anim;

            mBatteryCheck = FALSE;

            // ERRATUM: anim is used uninitialized whenever the condition is FALSE
            if (mSequence <= eSeq_Cmn)
                anim = mpGroupAnmController[mSelectAnmNum];

            /* Changed! */
            if (!anim->isPlaying()) {
                mState = State17;

                fadeout_sound(0.0f);
            } else {
                f32 restFrame = anim->getMaxFrame() - anim->getCurrentFrame();

                fadeout_sound(restFrame / mFadeOutSeTime);
            }
        } break;

        case State17:
            mState = State18;

            if (mSelectBtnNum != HBM_SELECT_BTN3) {
                StopAllSeq();

                if (mEndInitSoundFlag) {
                    AXFXReverbHiShutdown(&mAxFxReverb);
                    AXRegisterAuxACallback(mAuxCallback, mpAuxContext);
                    AXFXSetHooks(mAxFxAlloc, mAxFxFree);
                    AXSetAuxAReturnVolume(mAppVolume[0]);
                    AXSetAuxBReturnVolume(mAppVolume[1]);
                    AXSetAuxCReturnVolume(mAppVolume[2]);
                }

                mEndInitSoundFlag = FALSE;
            }

            setVolume(mVolumeNum);
            WPADSaveConfig(NULL);

            mpRemoteSpk->ClearPcm();
            mpRemoteSpk->Stop();

            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                mpController[i]->stopMotor();
                mpController[i]->clearCallback();
            }

            if (mSelectBtnNum != HBM_SELECT_BTN3 && mpHBInfo->sound_callback)
                (*mpHBInfo->sound_callback)(HBM_SOUND_EVENT_4, 0);

            for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                int anm_no;

                anm_no = findGroupAnimator(i + 31, 17);
                mpGroupAnmController[anm_no]->stop();

                anm_no = findGroupAnimator(i + 31, 18);
                mpGroupAnmController[anm_no]->stop();

                anm_no = findGroupAnimator(i + 31, 15);
                mpGroupAnmController[anm_no]->stop();
            }

            mInitFlag = FALSE;
            break;

        case State18:
            mState = State2;
            break;

        case State19:
            if (mForceSttInitProcFlag) {
                init_battery(pController);
                mForceSttInitProcFlag = FALSE;
            }

            if (mForceSttFadeInProcFlag) {
                init_volume();
                init_vib();
                mForceSttFadeInProcFlag = FALSE;
            }

            if (mFader.isDone()) {
                if (mForceStopSyncFlag) {
                    if (!mEndSimpleSyncFlag)
                        break;

                    WPADSetSimpleSyncCallback(mSimpleSyncCallback);
                    mForceStopSyncFlag = FALSE;
                }

                if (mForceEndMsgAnmFlag) {
                    int anm_no;

                    anm_no = 5;
                    mpPairGroupAnmController[anm_no]->initFrame();
                    mpPairGroupAnmController[anm_no]->stop();

                    mpLayout->GetRootPane()
                        ->FindPaneByName(scFuncTextPaneName[0], TRUE)
                        ->SetVisible(FALSE);
                    mpLayout->GetRootPane()
                        ->FindPaneByName(scFuncTextPaneName[1], TRUE)
                        ->SetVisible(FALSE);

                    anm_no = 14;
                    if (mpPairGroupAnmController[anm_no]->isPlaying()) {
                        mpPairGroupAnmController[anm_no]->initFrame();
                        mpPairGroupAnmController[anm_no]->stop();
                    }
                }

                mState = State17;

                VISetBlack(iVISetBlackFlag || !mFader.getFadeColorEnable());
                VIFlush();
                fadeout_sound(0.0f);
            } else {
                f32 restFrame = mFader.getMaxFrame() - mFader.getFrame();

                fadeout_sound(restFrame / mFadeOutSeTime);
            }

            break;
        }

        if (mBar0AnmRev && isUpBarActive()) {
            if (mBar0AnmRev && mBar0AnmRev != mBar0AnmRevHold) {
                mpPairGroupAnmController[mBar0AnmRev]->start();
                mBar0AnmRevHold = mBar0AnmRev;
            }

            mBar0AnmRev = 0;
        }

        if (mBar1AnmRev && isDownBarActive()) {
            if (mBar1AnmRev && mBar1AnmRev != mBar1AnmRevHold) {
                mpGroupAnmController[mBar1AnmRev]->start();
                mBar1AnmRevHold = mBar1AnmRev;
            }

            mBar1AnmRev = 0;
        }

        if (pController && mBatteryCheck)
            update(pController);

        mpLayout->Animate(0);
        mpLayout->CalculateMtx(mDrawInfo);

        if (!mpHBInfo->cursor) {
            for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
                mpCursorLayout[i]->CalculateMtx(mDrawInfo);
        }

        if (mForcusSEWaitTime <= 2)
            ++mForcusSEWaitTime;
    }

    void HomeButton::calc_fadeoutAnm() {
        mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[2], TRUE)->SetVisible(FALSE);

        if (mpHBInfo->backFlag)
            mSelectAnmNum = findGroupAnimator(3, 1);
        else
            mSelectAnmNum = findGroupAnimator(1, 1);

        mpGroupAnmController[mSelectAnmNum]->start();
        mState = State16;
        mFadeOutSeTime = mpGroupAnmController[mSelectAnmNum]->getMaxFrame();

        if (mpHBInfo->sound_callback)
            (*mpHBInfo->sound_callback)(HBM_SOUND_EVENT_2, mFadeOutSeTime);
    }

    void HomeButton::calc_battery(int chan) {
        // presumably j because it is the second index
        for (int j = 0; j < (int)ARRAY_SIZE(scBatteryPaneName[chan]); ++j) {
            if (j < sWpadInfo[chan].battery) {
                mpLayout->GetRootPane()
                    ->FindPaneByName(scBatteryPaneName[chan][j], TRUE)
                    ->SetVisible(TRUE);
            } else {
                mpLayout->GetRootPane()
                    ->FindPaneByName(scBatteryPaneName[chan][j], TRUE)
                    ->SetVisible(FALSE);
            }
        }

        if (sWpadInfo[chan].battery < 2) {
            int anm_no = findGroupAnimator(chan + 31, 21);
            mpGroupAnmController[anm_no]->start();
        } else {
            int anm_no = findGroupAnimator(chan + 31, 17);
            mpGroupAnmController[anm_no]->start();
        }

        if (mGetPadInfoTime < 100)
            mGetPadInfoTime = 0;

        getController(chan)->clrBatteryFlag();
    }

    void HomeButton::calc_letter() {
        if (mLetterFlag && !mpPairGroupAnmController[0]->isPlaying()) {
            mpLayout->GetRootPane()->FindPaneByName(scFuncPaneName[0], TRUE)->SetVisible(TRUE);

            mpPairGroupAnmController[0]->setAnmType(FrameController::eAnmType_Wrap);
            mpPairGroupAnmController[0]->start();
        } else if (!mLetterFlag) {
            mpLayout->GetRootPane()->FindPaneByName(scFuncPaneName[0], TRUE)->SetVisible(FALSE);

            mpPairGroupAnmController[0]->stop();
        }
    }

    void HomeButton::draw() {
        GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, (GXColor){0, 0, 0, 0xff});
        GXSetTexCoordScaleManually(GX_TEXCOORD0, 0, 0, 0);
        GXSetTexCoordCylWrap(GX_TEXCOORD0, 0, 0);
        GXSetTexCoordScaleManually(GX_TEXCOORD1, 0, 0, 0);
        GXSetTexCoordCylWrap(GX_TEXCOORD1, 0, 0);

        initgx();
        drawBlackPlate(-500.0f, 228.0f, 500.0f, 500.0f, (GXColor){0, 0, 0, 0xff});
        drawBlackPlate(-500.0f, -500.0f, 500.0f, -228.0f, (GXColor){0, 0, 0, 0xff});

        initgx();

        mpLayout->Draw(mDrawInfo);

        if (!mpHBInfo->cursor) {
            for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; --i)
                mpCursorLayout[i]->Draw(mDrawInfo);
        }

        mFader.draw();
    }

    static void SpeakerCallback(OSAlarm* alm, OSContext*) {
        u32 data = (u32)OSGetAlarmUserData(alm);
        int chan = (data >> 16) & 0xffff;
        int id = data & 0xffff;

        HomeButton* pHBObj = HomeButton::getInstance();
        ASSERTLINE(1978, pHBObj);

        if (!WPADIsSpeakerEnabled(chan) || !pHBObj->getController(chan)->isPlayReady()) {
            pHBObj->setSpeakerAlarm(chan, 50);
        } else {
            pHBObj->getController(chan)->playSound(id);
        }
    }

    static void MotorCallback(OSAlarm* alm, OSContext*) {
        Controller* pController = (Controller*)OSGetAlarmUserData(alm);

        pController->stopMotor();
    }

    void HomeButton::setSpeakerAlarm(int chan, int msec) {
        OSSetAlarmUserData(&mSpeakerAlarm[chan], (void*)((chan << 16) | (chan + 2)));
        OSCancelAlarm(&mSpeakerAlarm[chan]);
        OSSetAlarm(&mSpeakerAlarm[chan], OSMillisecondsToTicks(msec), &SpeakerCallback);
    }

    static void RetrySimpleSyncCallback(OSAlarm* alm, OSContext*) {
        HomeButton* pHBObj = HomeButton::getInstance();
        int type = (int)OSGetAlarmUserData(alm);
        bool retrySuccessFlag = FALSE;

        ASSERTLINE(2013, pHBObj);

        if (type == 0) {
            if (WPADStartFastSimpleSync()) {
                pHBObj->setSimpleSyncFlag(TRUE);
                retrySuccessFlag = TRUE;
            }
        } else {
            if (WPADStopSimpleSync())
                retrySuccessFlag = TRUE;
        }

        if (!retrySuccessFlag)
            pHBObj->setSimpleSyncAlarm(type);
    }

    static void SimpleSyncCallback(s32 result, s32 num) {
        ASSERTLINE(2045, HomeButton::getInstance());

        if (result == 1)
            HomeButton::getInstance()->setEndSimpleSyncFlag(TRUE);

        HomeButton::getInstance()->callSimpleSyncCallback(result, num);
    }

    void HomeButton::setSimpleSyncAlarm(int type) {
        OSCancelAlarm(&mSimpleSyncAlarm);
        OSSetAlarmUserData(&mSimpleSyncAlarm, (void*)type);
        OSSetAlarm(&mSimpleSyncAlarm, OSMillisecondsToTicks(100), &RetrySimpleSyncCallback);
    }

    void HomeButton::callSimpleSyncCallback(s32 result, s32 num) {
        if (mSimpleSyncCallback)
            (*mSimpleSyncCallback)(result, num);
    }

    void HomeButton::update(HBMControllerData const* pController) {
#define IsValidDevType_(x)                                                                         \
    (((x)->use_devtype == WPAD_DEV_CLASSIC && (x)->kpad->dev_type == WPAD_DEV_CLASSIC) ||          \
     ((x)->use_devtype == WPAD_DEV_MPLS_PT_CLASSIC &&                                              \
      (x)->kpad->dev_type == WPAD_DEV_MPLS_PT_CLASSIC))

        int i, anm_no;

        mFader.calc();

        for (i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            if (pController->wiiCon[i].kpad) {
                if (pController->wiiCon[i].kpad->wpad_err != WPAD_ENODEV) {
                    if (mPadDrawTime[i] >
                        static_cast<int>(5.0f / getInstance()->getHBMDataInfo()->frameDelta + 0.5f))
                    {
                        if (pController->wiiCon[i].kpad->wpad_err == WPAD_ESUCCESS ||
                            pController->wiiCon[i].kpad->wpad_err == WPAD_EBADE)
                        {
                            bool pointerEnableFlag;

                            if (!IsValidDevType_(&pController->wiiCon[i])) {
                                if (pController->wiiCon[i].kpad->dpd_valid_fg > 0)
                                    pointerEnableFlag = TRUE;
                                else
                                    pointerEnableFlag = FALSE;
                            } else {
                                pointerEnableFlag = TRUE;
                            }

                            mpController[i]->setKpad(&pController->wiiCon[i], pointerEnableFlag);

                            if (!mpHBInfo->cursor) {
                                mpCursorLayout[i]
                                    ->GetRootPane()
                                    ->FindPaneByName(scCursorPaneName, TRUE)
                                    ->SetVisible(TRUE);
                            }
                        }
                    } else {
                        ++mPadDrawTime[i];
                    }

                    if (!IsValidDevType_(&pController->wiiCon[i]) &&
                        pController->wiiCon[i].kpad->dpd_valid_fg <= 0)
                    {
                        s32 result;
                        u32 type;

                        result = WPADProbe(i, &type);

                        if (pController->wiiCon[i].kpad->wpad_err != WPAD_EBUSY &&
                            result != WPAD_EBUSY)
                        {
                            mpController[i]->setInValidPos();
                        }
                    }
                } else {
                    mpController[i]->setInValidPos();

                    if (!mpHBInfo->cursor) {
                        mpCursorLayout[i]
                            ->GetRootPane()
                            ->FindPaneByName(scCursorPaneName, TRUE)
                            ->SetVisible(FALSE);
                    }
                }

                if (!mControllerFlag[i]) {
                    mConnectNum = i;
                    mControllerFlag[i] = TRUE;

                    getController(i)->getInfoAsync(&sWpadInfo[i]);

                    // TODO: 31 + i due to play_sound below?
                    anm_no = findGroupAnimator(i + 31, 17);
                    mpGroupAnmController[anm_no]->start();

                    anm_no = findGroupAnimator(i + 31, 18);
                    mpGroupAnmController[anm_no]->stop();

                    anm_no = findGroupAnimator(i + 31, 15);
                    mpGroupAnmController[anm_no]->start();

                    play_sound(HBM_SOUND_CONNECTED1 + i);
                    getController(i)->connect();
                    getController(i)->startMotor();

                    OSSetAlarmUserData(&mAlarm[i], (void*)getController(i));
                    OSCancelAlarm(&mAlarm[i]);
                    OSSetAlarm(&mAlarm[i], OSMillisecondsToTicks(300), &MotorCallback);

                    setSpeakerAlarm(i, 400);
                }

                if (pController->wiiCon[i].kpad->wpad_err == WPAD_ESUCCESS ||
                    pController->wiiCon[i].kpad->wpad_err == WPAD_EBADE)
                {
                    nw4hbm::math::VEC3 vec;

                    if (IsValidDevType_(&pController->wiiCon[i])) {
                        vec = nw4hbm::math::VEC3(0.0f, 0.0f, 15.0f);
                    } else {
                        Vec2 v = pController->wiiCon[i].kpad->horizon;
                        f32 mRad = nw4hbm::math::Atan2Deg(-v.y, v.x);

                        vec = nw4hbm::math::VEC3(0.0f, 0.0f, mRad);
                    }

                    if (!mpHBInfo->cursor) {
                        mpCursorLayout[i]
                            ->GetRootPane()
                            ->FindPaneByName(scCursorRotPaneName, TRUE)
                            ->SetRotate(vec);

                        mpCursorLayout[i]
                            ->GetRootPane()
                            ->FindPaneByName(scCursorSRotPaneName, TRUE)
                            ->SetRotate(vec);
                    }

                    if (mGetPadInfoTime > 100)
                        getController(i)->getInfoAsync(&sWpadInfo[i]);

                    update_controller(i);

                    if (!mpHBInfo->cursor)
                        update_posController(i);
                }

                if (getController(i)->getBatteryFlag())
                    calc_battery(i);
            } else {
                if (mControllerFlag[i]) {
                    anm_no = findGroupAnimator(i + 31, 17);
                    mpGroupAnmController[anm_no]->start();

                    anm_no = findGroupAnimator(i + 31, 18);
                    mpGroupAnmController[anm_no]->start();

                    for (int j = 0; j < (int)ARRAY_SIZE(scBatteryPaneName[i]); ++j) {
                        mpLayout->GetRootPane()
                            ->FindPaneByName(scBatteryPaneName[i][j], TRUE)
                            ->SetVisible(FALSE);
                    }

                    if (!mpHBInfo->cursor) {
                        mpCursorLayout[i]
                            ->GetRootPane()
                            ->FindPaneByName(scCursorPaneName, TRUE)
                            ->SetVisible(FALSE);
                    }

                    mPadDrawTime[i] = 0;
                    mControllerFlag[i] = FALSE;

                    mpController[i]->setInValidPos();
                    mpController[i]->clrKpadButton();
                    mpController[i]->disconnect();
                }

                reset_guiManager(i);
            }
        }

        if (mGetPadInfoTime > 100)
            mGetPadInfoTime = 0;
        else
            ++mGetPadInfoTime;

#undef IsValidDevType_
    }

    void HomeButton::update_controller(int id) {
        int anm_no;

        if (isActive()) {
            Controller::HBController* pCon = mpController[id]->getController();

            f32 x = pCon->x * 608.0f / 2.0f;
            f32 y = pCon->y * 456.0f / 2.0f;

            if (mAdjustFlag) {
                x *= mpHBInfo->adjust.x;
                y *= mpHBInfo->adjust.y;
            }

            mpPaneManager->update(id, x, -y, pCon->trig, pCon->hold, pCon->release, pCon);

            if (pCon->trig & WPAD_BUTTON_HOME && isActive()) {
                if (mSequence == eSeq_Control) {
                    mpLayout->GetRootPane()->FindPaneByName("bar_00", TRUE)->SetVisible(TRUE);

                    mpPaneManager->update(id, 0.0f, -180.0f, 0, 0, 0, NULL);

                    mpPairGroupAnmController[4]->start();

                    mSelectAnmNum = 2;
                    mpPairGroupAnmController[mSelectAnmNum]->start();

                    int anm_no;  // ?

                    anm_no = 11;
                    mpPairGroupAnmController[anm_no]->start();

                    mState = State10;
                    mSequence = eSeq_Normal;
                    play_sound(HBM_SOUND_CLOSE_CONTROLLER);
                } else if (mSequence == eSeq_Normal) {
                    if (mpPairGroupAnmController[3]->isPlaying())
                        mpPairGroupAnmController[3]->stop();

                    if (mpPairGroupAnmController[12]->isPlaying())
                        mpPairGroupAnmController[12]->stop();

                    mSelectBtnNum = HBM_SELECT_HOMEBTN;

                    mSelectAnmNum = 4;
                    mpPairGroupAnmController[mSelectAnmNum]->start();

                    mState = State14;
                    play_sound(HBM_SOUND_RETURN_APP);
                }
            } else if (mSequence == eSeq_Control && isActive()) {
                if (pCon->trig & WPAD_BUTTON_MINUS) {
                    if (mVolumeNum > 0) {
                        --mVolumeNum;

                        anm_no = findGroupAnimator(mVolumeNum + 21, 10);
                        mpGroupAnmController[anm_no]->stop();

                        anm_no = findGroupAnimator(mVolumeNum + 21, 9);
                        mpGroupAnmController[anm_no]->start();

                        anm_no = findGroupAnimator(11, 5);
                        mpGroupAnmController[anm_no]->start();

                        if (mVolumeNum == 0) {
                            play_sound(HBM_SOUND_VOLUME_MINUS_LIMIT);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                                getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
                                getController(i)->playSound(1);
                            }
                        } else {
                            play_sound(HBM_SOUND_VOLUME_MINUS);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                                getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
                                getController(i)->playSound(1);
                            }
                        }
                    } else {
                        play_sound(HBM_SOUND_NOTHING_DONE);
                    }
                } else if (pCon->trig & WPAD_BUTTON_PLUS) {
                    if (mVolumeNum < 10) {
                        anm_no = findGroupAnimator(mVolumeNum + 21, 9);
                        mpGroupAnmController[anm_no]->stop();

                        anm_no = findGroupAnimator(mVolumeNum + 21, 10);
                        mpGroupAnmController[anm_no]->start();

                        ++mVolumeNum;

                        anm_no = findGroupAnimator(12, 5);
                        mpGroupAnmController[anm_no]->start();

                        if (mVolumeNum == 10) {
                            play_sound(HBM_SOUND_VOLUME_PLUS_LIMIT);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                                getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
                                getController(i)->playSound(1);
                            }
                        } else {
                            play_sound(HBM_SOUND_VOLUME_PLUS);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                                getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
                                getController(i)->playSound(1);
                            }
                        }
                    } else {
                        play_sound(HBM_SOUND_NOTHING_DONE);
                    }
                }
            }
        } else if (mSequence == eSeq_Control && mState == State5 &&
                   !mpPairGroupAnmController[mSelectAnmNum]->isPlaying())
        {
            Controller::HBController* pCon = mpController[id]->getController();

            if (pCon->trig)
                mMsgCount = iReConnectTime;
        }
    }

    void HomeButton::update_posController(int id) {
        Controller::HBController* pCon = mpController[id]->getController();
        nw4hbm::ut::Rect layoutRect = mpLayout->GetLayoutRect();

        f32 x = pCon->x * layoutRect.right;
        f32 y = pCon->y * layoutRect.bottom;
        nw4hbm::math::VEC2 pos(x, y);

        mpCursorLayout[id]
            ->GetRootPane()
            ->FindPaneByName(scCursorPaneName, TRUE)
            ->SetTranslate(pos);
    }

    void HomeButton::updateTrigPane() {
        int i;

        switch (mSequence) {
        case eSeq_Normal:
            for (i = 0; i < (int)ARRAY_SIZE(scFuncTouchPaneName); ++i) {
                if (i < 2 || i == 9) {
                    nw4hbm::lyt::Pane* pTouchPane =
                        mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], TRUE);

                    mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(TRUE);
                } else {
                    nw4hbm::lyt::Pane* pTouchPane =
                        mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], TRUE);

                    mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(FALSE);
                }
            }

            break;

        case eSeq_Control:
            for (i = 0; i < (int)ARRAY_SIZE(scFuncTouchPaneName); ++i) {
                if ((i > 0 && i < 7) || i == 9) {
                    nw4hbm::lyt::Pane* pTouchPane =
                        mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], TRUE);

                    mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(TRUE);
                } else {
                    nw4hbm::lyt::Pane* pTouchPane =
                        mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], TRUE);

                    mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(FALSE);
                }
            }

            break;

        case eSeq_Cmn:
            for (i = 0; i < (int)ARRAY_SIZE(scFuncTouchPaneName); ++i) {
                if (i < 7 || i == 9) {
                    nw4hbm::lyt::Pane* pTouchPane =
                        mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], TRUE);

                    mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(FALSE);
                } else {
                    nw4hbm::lyt::Pane* pTouchPane =
                        mpLayout->GetRootPane()->FindPaneByName(scFuncTouchPaneName[i], TRUE);

                    mpPaneManager->getPaneComponentByPane(pTouchPane)->setTriggerTarget(TRUE);
                }
            }

            break;
        }
    }

    void HomeButton::startPointEvent(nw4hbm::lyt::Pane const* pPane, void* pData) {
        int anm_no;
        int btn_no = getPaneNo(pPane);
        Controller::HBController* pCon = static_cast<Controller::HBController*>(pData);
        bool onFlag = FALSE;

        if (isActive() && btn_no != -1 && !mPaneCounter[btn_no]) {
            if (mSequence != eSeq_Cmn && btn_no < mButtonNum) {
                anm_no = findAnimator(btn_no, 0);
                mpAnmController[anm_no]->start();

                if (mSequence == eSeq_Normal) {
                    setForcusSE();
                    onFlag = TRUE;
                }
            } else {
                switch (btn_no - mButtonNum) {
                case 0:
                    if (mSequence == eSeq_Normal) {
                        if (isUpBarActive()) {
                            mpPairGroupAnmController[3]->start();
                            mBar0AnmRevHold = 3;
                            mBar0AnmRev = 0;
                            setForcusSE();
                            onFlag = TRUE;
                        } else {
                            mBar0AnmRev = 3;
                        }
                    }

                    break;

                case 1:
                case 9:
                    if (mSequence == eSeq_Normal) {
                        anm_no = findGroupAnimator(4, 2);

                        if (homebutton::HomeButton::isDownBarActive()) {
                            mpGroupAnmController[anm_no]->start();
                            mBar1AnmRevHold = anm_no;
                            mBar1AnmRev = 0;
                            setForcusSE();
                            onFlag = TRUE;
                        } else {
                            mBar1AnmRev = anm_no;
                        }
                    } else if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(4, 19);

                        if (isDownBarActive()) {
                            mpGroupAnmController[anm_no]->start();
                            mBar1AnmRevHold = anm_no;
                            mBar1AnmRev = 0;
                            setForcusSE();
                            onFlag = TRUE;
                        } else {
                            mBar1AnmRev = anm_no;
                        }
                    }

                    break;

                case 2:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(6, 4);
                        mpGroupAnmController[anm_no]->start();

                        setForcusSE();
                        onFlag = TRUE;
                    }

                    break;

                case 3:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(7, 4);
                        mpGroupAnmController[anm_no]->start();

                        setForcusSE();
                        onFlag = TRUE;
                    }

                    break;

                case 4:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(8, 4);
                        mpGroupAnmController[anm_no]->start();

                        setForcusSE();
                        onFlag = TRUE;
                    }

                    break;

                case 5:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(9, 4);
                        mpGroupAnmController[anm_no]->start();

                        setForcusSE();
                        onFlag = TRUE;
                    }

                    break;

                case 6:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(10, 4);
                        mpGroupAnmController[anm_no]->start();

                        setForcusSE();
                        onFlag = TRUE;
                    }

                    break;

                case 7:
                    if (mSequence == eSeq_Cmn) {
                        anm_no = findGroupAnimator(17, 11);
                        mpGroupAnmController[anm_no]->start();

                        setForcusSE();
                        onFlag = TRUE;
                    }

                    break;

                case 8:
                    if (mSequence == eSeq_Cmn) {
                        anm_no = findGroupAnimator(18, 11);
                        mpGroupAnmController[anm_no]->start();

                        setForcusSE();
                        onFlag = TRUE;
                    }

                    break;
                }
            }
        }

        if (btn_no == mButtonNum + 1 || btn_no == mButtonNum + 9) {
            ++mPaneCounter[mButtonNum + 1];
            ++mPaneCounter[mButtonNum + 9];
        } else {
            ++mPaneCounter[btn_no];
        }

        if (onFlag && pCon) {
            if (!getController(pCon->chan)->isRumbling() && mOnPaneVibWaitFrame[pCon->chan] <= 0.0f)
            {
                mOnPaneVibFrame[pCon->chan] = 3.0f;
                getController(pCon->chan)->startMotor();
            }
        }
    }

    void HomeButton::startLeftEvent(nw4hbm::lyt::Pane const* pPane) {
        int anm_no;
        int btn_no = getPaneNo(pPane);

        if (0 < mPaneCounter[btn_no]) {
            if (btn_no == mButtonNum + 1 || btn_no == mButtonNum + 9) {
                --mPaneCounter[mButtonNum + 1];
                --mPaneCounter[mButtonNum + 9];
            } else {
                --mPaneCounter[btn_no];
            }
        }

        if (isActive() && btn_no != -1 && !mPaneCounter[btn_no]) {
            if (mSequence != eSeq_Cmn && btn_no < mButtonNum) {
                anm_no = findAnimator(btn_no, 2);
                mpAnmController[anm_no]->start();
            } else {
                switch (btn_no - mButtonNum) {
                case 0:
                    if (mSequence == eSeq_Normal) {
                        if (isUpBarActive()) {
                            mpPairGroupAnmController[12]->start();
                            mBar0AnmRevHold = 12;
                            mBar0AnmRev = 0;
                        } else {
                            mBar0AnmRev = 12;
                        }
                    }

                    break;

                case 1:
                case 9:
                    if (mSequence == eSeq_Normal) {
                        anm_no = findGroupAnimator(5, 3);

                        if (isDownBarActive()) {
                            mpGroupAnmController[anm_no]->start();
                            mBar1AnmRevHold = anm_no;
                            mBar1AnmRev = 0;
                        } else {
                            mBar1AnmRev = anm_no;
                        }
                    } else if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(5, 20);

                        if (isDownBarActive()) {
                            mpGroupAnmController[anm_no]->start();
                            mBar1AnmRevHold = anm_no;
                            mBar1AnmRev = 0;
                        } else {
                            mBar1AnmRev = anm_no;
                        }
                    }

                    break;

                case 2:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(6, 7);
                        mpGroupAnmController[anm_no]->start();
                    }

                    break;

                case 3:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(7, 7);
                        mpGroupAnmController[anm_no]->start();
                    }

                    break;

                case 4:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(8, 7);
                        mpGroupAnmController[anm_no]->start();
                    }

                    break;

                case 5:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(9, 7);
                        mpGroupAnmController[anm_no]->start();
                    }

                    break;

                case 6:
                    if (mSequence == eSeq_Control) {
                        anm_no = findGroupAnimator(10, 7);
                        mpGroupAnmController[anm_no]->start();
                    }

                    break;

                case 7:
                    if (mSequence == eSeq_Cmn) {
                        anm_no = findGroupAnimator(17, 12);
                        mpGroupAnmController[anm_no]->start();
                    }

                    break;

                case 8:
                    if (mSequence == eSeq_Cmn) {
                        anm_no = findGroupAnimator(18, 12);
                        mpGroupAnmController[anm_no]->start();
                    }

                    break;
                }
            }
        }
    }

    void HomeButton::startTrigEvent(nw4hbm::lyt::Pane const* pPane) {
        int anm_no;
        int btn_no;

        btn_no = getPaneNo(pPane);

        if (isActive() && btn_no != -1) {
            if (mSequence == eSeq_Normal && btn_no < mButtonNum) {
                mSelectBtnNum = static_cast<HBMSelectBtnNum>(btn_no + 1);

                mSelectAnmNum = findAnimator(btn_no + 4, 1);
                mpAnmController[mSelectAnmNum]->start();
                play_sound(HBM_SOUND_SELECT);

                if (mDialogFlag[btn_no]) {
                    mState = State11;
                    mSequence = eSeq_Cmn;

                    nw4hbm::lyt::Pane* p_pane =
                        mpLayout->GetRootPane()->FindPaneByName(scFuncTextPaneName[2], TRUE);

                    ASSERTLINE(3009, p_pane);

                    nw4hbm::lyt::TextBox* p_text =
                        nw4hbm::ut::DynamicCast<nw4hbm::lyt::TextBox*>(p_pane);

                    ASSERTLINE(3011, p_text);

                    u16 len;
                    if (1 /* mpHBInfo->messageFlag & btn_no + 1 */) {
                        for (len = 0; TRUE; ++len) {
                            // U+FF1F FULLWIDTH QUESTION MARK
                            if (mpText[mpHBInfo->region][btn_no + 2][len] == L'？')
                                break;

                            // U+003F QUESTION MARK
                            if (mpText[mpHBInfo->region][btn_no + 2][len] == L'?')
                                break;
                        }
                    } else {
                        // NOTE: don't merge for consistency with the previous for
                        for (len = 0; TRUE; ++len) {
                            // U+0022 QUOTATION MARK
                            if (mpText[mpHBInfo->region][btn_no + 2][len + 1] == L'"') {
                                break;
                            }
                        }
                    }

                    p_text->SetString(mpText[mpHBInfo->region][btn_no + 2], 0, ++len);

                    mpLayout->GetRootPane()
                        ->FindPaneByName(scFuncTextPaneName[2], TRUE)
                        ->SetVisible(TRUE);
                } else {
                    mState = State15;
                }
            } else {
                switch (btn_no - mButtonNum) {
                case 0:
                    if (mpPairGroupAnmController[12]->isPlaying())
                        mpPairGroupAnmController[12]->stop();

                    if (mpPairGroupAnmController[3]->isPlaying())
                        mpPairGroupAnmController[3]->stop();

                    mSelectBtnNum = HBM_SELECT_HOMEBTN;
                    mSelectAnmNum = 4;
                    mpPairGroupAnmController[mSelectAnmNum]->start();

                    mState = State14;
                    play_sound(HBM_SOUND_RETURN_APP);

                    break;

                case 1:
                case 9:
                    if (mSequence == eSeq_Control) {
                        mpLayout->GetRootPane()->FindPaneByName("bar_00", TRUE)->SetVisible(TRUE);

                        mpPairGroupAnmController[4]->start();
                        mpPairGroupAnmController[11]->start();

                        mSelectAnmNum = 2;
                        mpPairGroupAnmController[mSelectAnmNum]->start();

                        mState = State10;
                        mSequence = eSeq_Normal;
                        play_sound(HBM_SOUND_CLOSE_CONTROLLER);
                    } else if (mSequence == eSeq_Normal) {
                        mpPairGroupAnmController[1]->start();
                        mSelectAnmNum = 9;
                        mpPairGroupAnmController[mSelectAnmNum]->start();
                        mState = State10;

                        // 2-6: "B_optnBtn_XX" entries in scFuncTouchPaneName
                        for (int i = 2; i < 7; ++i) {
                            mpLayout->GetRootPane()
                                ->FindPaneByName(scFuncTouchPaneName[i], TRUE)
                                ->SetVisible(TRUE);
                        }

                        mSequence = eSeq_Control;
                        play_sound(HBM_SOUND_SELECT);
                    }

                    break;

                case 2:
                    if (mVolumeNum > 0) {
                        --mVolumeNum;

                        anm_no = findGroupAnimator(mVolumeNum + 21, 10);
                        mpGroupAnmController[anm_no]->stop();

                        anm_no = findGroupAnimator(mVolumeNum + 21, 9);
                        mpGroupAnmController[anm_no]->start();

                        if (mVolumeNum == 0) {
                            play_sound(HBM_SOUND_VOLUME_MINUS_LIMIT);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                                getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
                                getController(i)->playSound(1);
                            }
                        } else {
                            play_sound(HBM_SOUND_VOLUME_MINUS);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                                getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
                                getController(i)->playSound(1);
                            }
                        }

                        anm_no = findGroupAnimator(11, 5);
                        mpGroupAnmController[anm_no]->start();
                    } else {
                        play_sound(HBM_SOUND_NOTHING_DONE);
                    }

                    break;

                case 3:
                    if (mVolumeNum < 10) {
                        anm_no = findGroupAnimator(mVolumeNum + 21, 9);
                        mpGroupAnmController[anm_no]->stop();

                        anm_no = findGroupAnimator(mVolumeNum + 21, 10);
                        mpGroupAnmController[anm_no]->start();

                        ++mVolumeNum;

                        if (mVolumeNum == 10) {
                            play_sound(HBM_SOUND_VOLUME_PLUS_LIMIT);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                                getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
                                getController(i)->playSound(1);
                            }
                        } else {
                            play_sound(HBM_SOUND_VOLUME_PLUS);

                            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                                getController(i)->setSpeakerVol(mVolumeNum / 10.0f);
                                getController(i)->playSound(1);
                            }
                        }

                        anm_no = findGroupAnimator(12, 5);
                        mpGroupAnmController[anm_no]->start();
                    } else {
                        play_sound(HBM_SOUND_NOTHING_DONE);
                    }

                    break;

                case 4:
                    if (!mVibFlag) {
                        mVibFlag = TRUE;

                        setVibFlag(mVibFlag);

                        anm_no = findGroupAnimator(14, 8);
                        mpGroupAnmController[anm_no]->start();

                        mSelectAnmNum = findGroupAnimator(16, 6);
                        mpGroupAnmController[mSelectAnmNum]->start();

                        play_sound(HBM_SOUND_VIBE_ON);
                    } else {
                        mSelectAnmNum = findGroupAnimator(16, 14);
                        mpGroupAnmController[mSelectAnmNum]->start();

                        play_sound(HBM_SOUND_NOTHING_DONE);
                    }

                    for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                        getController(i)->startMotor();
                        mOnPaneVibFrame[i] = 0.0f;
                        mOnPaneVibWaitFrame[i] = 0.0f;
                    }

                    mState = State9;

                    break;

                case 5:
                    if (mVibFlag) {
                        mVibFlag = FALSE;
                        setVibFlag(mVibFlag);

                        anm_no = findGroupAnimator(14, 6);
                        mpGroupAnmController[anm_no]->start();

                        mSelectAnmNum = findGroupAnimator(13, 8);
                        mpGroupAnmController[mSelectAnmNum]->start();

                        play_sound(HBM_SOUND_VIBE_OFF);
                    } else {
                        play_sound(HBM_SOUND_NOTHING_DONE);
                    }

                    mState = State9;

                    break;

                case 6:
                    mSelectAnmNum = findGroupAnimator(15, 5);
                    mpGroupAnmController[mSelectAnmNum]->start();

                    mState = State3;
                    setReassignedFlag(TRUE);

                    for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
                        mOnPaneVibFrame[i] = 0.0f;
                        mOnPaneVibWaitFrame[i] = 0.0f;
                        getController(i)->stopMotor();
                        getController(i)->setEnableRumble(FALSE);
                    }

                    mWaitStopMotorCount = 30.0f / getInstance()->getHBMDataInfo()->frameDelta;

                    mpLayout->GetRootPane()
                        ->FindPaneByName(scFuncTextPaneName[0], TRUE)
                        ->SetVisible(TRUE);

                    mpLayout->GetRootPane()
                        ->FindPaneByName(scFuncTextPaneName[1], TRUE)
                        ->SetVisible(TRUE);

                    play_sound(HBM_SOUND_SELECT);
                    play_sound(HBM_SOUND_START_CONNECT_WINDOW);

                    break;

                case 7:
                    mSelectAnmNum = findGroupAnimator(19, 13);
                    mpGroupAnmController[mSelectAnmNum]->start();

                    mState = State13;
                    mSequence = eSeq_Normal;

                    if (mSelectBtnNum == HBM_SELECT_BTN1) {
                        play_sound(HBM_SOUND_GOTO_MENU);
                        mFader.setFadeColorEnable(FALSE);
                    } else if (mSelectBtnNum == HBM_SELECT_BTN2) {
                        play_sound(HBM_SOUND_RESET_APP);
                        mFader.setFadeColorEnable(TRUE);
                    } else if (mSelectBtnNum == HBM_SELECT_BTN4) {
                        play_sound(HBM_SOUND_RESET_APP);
                        mFader.setFadeColorEnable(FALSE);
                    }

                    break;

                case 8:
                    mSelectAnmNum = findGroupAnimator(20, 13);
                    mpGroupAnmController[mSelectAnmNum]->start();

                    mState = State13;
                    mSelectBtnNum = HBM_SELECT_NULL;

                    mSequence = eSeq_Normal;

                    play_sound(HBM_SOUND_CANCEL);

                    break;
                }
            }
        }
    }

    void HomeButton::reset_btn() {
        int anm_no;

        for (int i = 0; i < mButtonNum; ++i) {
            if (mPaneCounter[i]) {
                anm_no = findAnimator(i, 2);
                mpAnmController[anm_no]->start();
                mPaneCounter[i] = 0;
            }
        }

        if (mPaneCounter[mButtonNum]) {
            mpPairGroupAnmController[12]->start();
            mPaneCounter[mButtonNum + 1] = 0;
        }

        if (mPaneCounter[mButtonNum + 1]) {
            if (mSequence == eSeq_Control) {
                if (!mMsgCount) {
                    anm_no = findGroupAnimator(5, 20);
                    mpGroupAnmController[anm_no]->start();
                    mPaneCounter[mButtonNum] = 0;
                }
            } else {
                anm_no = findGroupAnimator(5, 3);
                mpGroupAnmController[anm_no]->start();
                mPaneCounter[mButtonNum] = 0;
            }
        }
    }

    void HomeButton::reset_control() {
        int anm_no;

        for (int i = 0; i < 5; ++i) {
            anm_no = findGroupAnimator(i + 6, 7);
            mpGroupAnmController[anm_no]->start();
        }
    }

    void HomeButton::reset_window() {
        int anm_no;

        anm_no = findGroupAnimator(17, 12);
        mpGroupAnmController[anm_no]->start();

        anm_no = findGroupAnimator(18, 12);
        mpGroupAnmController[anm_no]->start();
    }

    void HomeButton::reset_battery() {
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i) {
            for (int j = 0; j < (int)ARRAY_SIZE(scBatteryPaneName[i]); ++j) {
                mpLayout->GetRootPane()
                    ->FindPaneByName(scBatteryPaneName[i][j], TRUE)
                    ->SetVisible(FALSE);
            }
        }
    }

    void HomeButton::reset_guiManager(int num) {
        if (num < 0)  // presumably a -1 = all case
        {
            for (int i = 0; i < 8; ++i) /* sizeof Component::mabPointed */
                mpPaneManager->update(i, -1e4f, -1e4f, 0, 0, 0, NULL);
        } else {
            mpPaneManager->update(num, -1e4f, -1e4f, 0, 0, 0, NULL);
        }
    }

    bool HomeButton::isActive() const {
        return mState == State2;
    }

    bool HomeButton::isUpBarActive() const {
        bool flag = TRUE;

        if (!isActive() || mpPairGroupAnmController[12]->isPlaying() ||
            mpPairGroupAnmController[3]->isPlaying())
        {
            flag = FALSE;
        }

        return flag;
    }

    bool HomeButton::isDownBarActive() {
        bool flag = TRUE;

        int anm_no[4];
        anm_no[0] = findGroupAnimator(4, 2);
        anm_no[1] = findGroupAnimator(5, 3);
        anm_no[2] = findGroupAnimator(4, 19);
        anm_no[3] = findGroupAnimator(5, 20);

        if (!isActive() || mpGroupAnmController[anm_no[0]]->isPlaying() ||
            mpGroupAnmController[anm_no[1]]->isPlaying() ||
            mpGroupAnmController[anm_no[2]]->isPlaying() ||
            mpGroupAnmController[anm_no[3]]->isPlaying())
        {
            flag = FALSE;
        }

        return flag;
    }

    int HomeButton::getPaneNo(nw4hbm::lyt::Pane const* pPane) {
        int ret = -1;
        char const* panename = pPane->GetName();

        for (int i = 0; i < mButtonNum; ++i) {
            if (std::strcmp(panename, getPaneName(i)) == 0) {
                ret = i;
                break;
            }
        }

        for (int i = 0; i < (int)ARRAY_SIZE(scFuncTouchPaneName); ++i) {
            if (std::strcmp(panename, getFuncPaneName(i)) == 0) {
                ret = i + mButtonNum;
                break;
            }
        }

        return ret;
    }

    int HomeButton::findAnimator(int pane, int anm) {
        for (int i = 0; i < mAnmNum; ++i) {
            if (scAnmTable[i].pane == pane && scAnmTable[i].anm == anm)
                return i;
        }

        return -1;
    }

    int HomeButton::findGroupAnimator(int pane, int anm) {
        for (int i = 0; i < (int)ARRAY_SIZE(scGroupAnmTable); ++i) {
            if (scGroupAnmTable[i].pane == pane && scGroupAnmTable[i].anm == anm)
                return i;
        }

        return -1;
    }

    HBMSelectBtnNum HomeButton::getSelectBtnNum() {
        // Interesting
        if (mState != State18)
            return HBM_SELECT_NULL;
        else
            return mSelectBtnNum;
    }

    void HomeButton::setForcusSE() {
        if (mForcusSEWaitTime <= 2)
            return;

        play_sound(HBM_SOUND_FOCUS);
        mForcusSEWaitTime = 0;
    }

    void HomeButton::setAdjustFlag(BOOL flag) {
        nw4hbm::math::VEC2 sc_v;

        mAdjustFlag = static_cast<bool>(flag);
        mDrawInfo.SetLocationAdjust(mAdjustFlag);

        if (mAdjustFlag) {
            sc_v = nw4hbm::math::VEC2(mpHBInfo->adjust.x, mpHBInfo->adjust.y);
            mpLayout->GetRootPane()->SetScale(sc_v);

            if (!mpHBInfo->cursor) {
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
                    mpCursorLayout[i]->GetRootPane()->SetScale(sc_v);
            }
        } else {
            sc_v = nw4hbm::math::VEC2(1.0f, 1.0f);
            mpLayout->GetRootPane()->SetScale(sc_v);

            if (!mpHBInfo->cursor) {
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
                    mpCursorLayout[i]->GetRootPane()->SetScale(sc_v);
            }
        }
    }

    void HomeButton::setVolume(int vol) {
        // TODO: how to derive? 256 - 2 = 254 / 2 = 127 / 10 = 12.7?
        WPADSetSpeakerVolume(vol * 12.7f);
    }

    int HomeButton::getVolume() {
        return WPADGetSpeakerVolume() * (1.0f / 12.7f) + 0.9f;
    }

    void HomeButton::setVibFlag(bool flag) {
        WPADEnableMotor(flag);
    }

    bool HomeButton::getVibFlag() {
        return WPADIsMotorEnabled();
    }

    void HomeButtonEventHandler::onEvent(u32 uID, EventType uEvent, void* pData) {
        gui::PaneComponent* p_panecpt =  // forced downcast
            static_cast<gui::PaneComponent*>(mpManager->getComponent(uID));
        nw4hbm::lyt::Pane const* pPane = p_panecpt->getPane();

        HomeButton* p_hbtn = getHomeButton();
        ASSERTLINE(3804, p_hbtn);

        Controller::HBController* pCon = static_cast<Controller::HBController*>(pData);

        switch (uEvent) {
        case PointEvent:
            p_hbtn->startPointEvent(pPane, pData);
            break;

        case LeftEvent:
            p_hbtn->startLeftEvent(pPane);
            break;

        case TrigEvent:
            if (pCon->trig & WPAD_BUTTON_A)
                p_hbtn->startTrigEvent(pPane);

            break;
        }
    }

    /* New! */
    void homebutton::HomeButton::startBlackOut() {
        if (!mStartBlackOutFlag) {
            mStartBlackOutFlag = TRUE;

            for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
                getController(i)->stopMotor();

            mForceSttInitProcFlag = FALSE;
            mForceSttFadeInProcFlag = FALSE;
            mForceStopSyncFlag = FALSE;
            mForceEndMsgAnmFlag = FALSE;

            switch (mState) {
            case State0:
                mForceSttInitProcFlag = TRUE;
            case State1:
                mForceSttFadeInProcFlag = TRUE;
                break;

            case State3:
            case State5:
            case State6:
            case State7:
                if ((mState == State3 && mSelectAnmNum == 5) ||
                    (mState == State5 && !mSimpleSyncFlag))
                {
                    OSCancelAlarm(&mSimpleSyncAlarm);
                    WPADSetSimpleSyncCallback(mSimpleSyncCallback);
                } else if (!mEndSimpleSyncFlag && mState > State3) {
                    mForceStopSyncFlag = TRUE;

                    if (!WPADStopSimpleSync())
                        setSimpleSyncAlarm(1);
                } else {
                    WPADSetSimpleSyncCallback(mSimpleSyncCallback);
                }

                mForceEndMsgAnmFlag = TRUE;

                break;
            }

            mState = State19;
            mFader.start();
            mSelectBtnNum = HBM_SELECT_BTN2;
            mFadeOutSeTime = mFader.getMaxFrame();

            if (mpHBInfo->sound_callback)
                (*mpHBInfo->sound_callback)(HBM_SOUND_EVENT_3, mFadeOutSeTime);
        }
    }

    void HomeButton::setBlackOutColor(u8 red, u8 green, u8 blue) {
        mFader.setColor(red, green, blue);
    }

    void HomeButton::setVIBlack(BOOL flag) {
        iVISetBlackFlag = flag;
    }

    GXColor HomeButton::getBlackOutColor() {
        return mFader.getColor();
    }

    void HomeButton::BlackFader::init(int maxFrame) {
        frame_ = 0;
        maxFrame_ = maxFrame;
        state_ = StateNone;
        flag = TRUE;
    }

    void HomeButton::BlackFader::calc() {
        if (state_ == StateForward)
            ++frame_;
        else if (state_ == StateBackward)
            --frame_;

        if (frame_ < 0)
            frame_ = 0;
        else if (frame_ > maxFrame_)
            frame_ = maxFrame_;
    }

    bool HomeButton::BlackFader::isDone() {
        if (state_ == StateForward && frame_ == maxFrame_)
            return TRUE;
        else if (state_ == StateBackward && frame_ == 0)
            return TRUE;
        else
            return FALSE;
    }

    void HomeButton::BlackFader::draw() {
        u8 alpha = frame_ * 255 / maxFrame_;

        initgx();

        GXColor clr = flag ? (GXColor){red_, green_, blue_, alpha} : (GXColor){0, 0, 0, alpha};

        drawBlackPlate(-1000.0f, -1000.0f, 1000.0f, 1000.0f, clr);
    }

    // Pooling
    int const HomeButton::scSoundHeapSize_but2 = 0x60000;
    int const HomeButton::scSoundHeapSize_but3 = 0x6f800;
    int const HomeButton::scSoundThreadPrio = 4;
    int const HomeButton::scDvdThreadPrio = 3;

    void HomeButton::update_sound() {
        AxSoundMain();

        for (int i = 0; i < WPAD_MAX_CONTROLLERS; ++i)
            mpController[i]->updateSound();
    }

    void HomeButton::play_sound(int id) {
        BOOL ret = FALSE;

        if (mpHBInfo->sound_callback)
            ret = (*mpHBInfo->sound_callback)(HBM_SOUND_EVENT_PLAY, id);

        if (!ret)
            PlaySeq(id);
    }

    void HomeButton::fadeout_sound(f32 gain) {
        if (mSelectBtnNum != HBM_SELECT_BTN3) {
            if (mEndInitSoundFlag)
                AXSetAuxAReturnVolume(gain * 32768.0f);

            SetVolumeAllSeq(gain);
        }
    }

}  // namespace homebutton
