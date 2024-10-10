#include "JSystem/J3DGraphBase/J3DShape.h"
#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "JSystem/J3DGraphBase/J3DVertex.h"
#include "dolphin/gd.h"
#include "dolphin/os.h"

void J3DGDSetVtxAttrFmtv(_GXVtxFmt, GXVtxAttrFmtList const*, bool);
void J3DFifoLoadPosMtxImm(Mtx, u32);
void J3DFifoLoadNrmMtxImm(Mtx, u32);


enum {
    kVcdVatDLSize = 0xC0,
};

void J3DShape::initialize() {
    mMaterial = NULL;
    mIndex = -1;
    mMtxGroupNum = 0;
    mFlags = 0;
    mRadius = 0.0f;
    mMin.x = 0.0f;
    mMin.y = 0.0f;
    mMin.z = 0.0f;
    mMax.x = 0.0f;
    mMax.y = 0.0f;
    mMax.z = 0.0f;
    mVtxDesc = NULL;
    mShapeMtx = NULL;
    mShapeDraw = NULL;
    mVertexData = NULL;
    mDrawMtxData = NULL;
    mScaleFlagArray = NULL;
    mDrawMtx = NULL;
    mNrmMtx = NULL;
    mCurrentViewNo = &j3dDefaultViewNo;
    mHasNBT = false;
    mHasPNMTXIdx = false;
}

/* 80314BB8-80314CBC 30F4F8 0104+00 0/0 1/1 0/0 .text addTexMtxIndexInDL__8J3DShapeF7_GXAttrUl */
void J3DShape::addTexMtxIndexInDL(GXAttr attr, u32 valueBase) {
    u32 kSize[] = {0, 1, 1, 2};

    s32 pnmtxidxOffs = -1;
    s32 attrOffs = -1;
    s32 stride = 0;
    bool found = false;

    for (GXVtxDescList* vtxDesc = mVtxDesc; vtxDesc->attr != GX_VA_NULL; vtxDesc++) {
        if (vtxDesc->attr == GX_VA_PNMTXIDX)
            pnmtxidxOffs = stride;

        if (attr < vtxDesc->attr && !found) {
            attrOffs = stride;
            found = true;
        }

        stride = stride + kSize[vtxDesc->type];
    }

    if (pnmtxidxOffs == -1)
        return;

    for (u16 i = 0; i < getMtxGroupNum(); i++)
        getShapeDraw(i)->addTexMtxIndexInDL(stride, attrOffs, (s32)valueBase);
}

/* 80314CBC-80314DA8 30F5FC 00EC+00 0/0 1/1 0/0 .text addTexMtxIndexInVcd__8J3DShapeF7_GXAttr */
void J3DShape::addTexMtxIndexInVcd(GXAttr attr) {
    s32 attrIdx = -1;
    GXVtxDescList* vtxDesc = mVtxDesc;
    s32 attrCount = 0;

    for (; vtxDesc->attr != GX_VA_NULL; attrCount++, vtxDesc++) {
        if (vtxDesc->attr == GX_VA_PNMTXIDX)
            attrIdx = 0;
    }

    if (attrIdx == -1)
        return;

    GXVtxDescList* newVtxDesc = new GXVtxDescList[attrCount + 2];
    bool inserted = false;

    vtxDesc = mVtxDesc;
    GXVtxDescList* dst = newVtxDesc;
    for (; vtxDesc->attr != GX_VA_NULL; dst++, vtxDesc++) {
        if ((attr < vtxDesc->attr) && !inserted) {
            dst->attr = attr;
            dst->type = GX_DIRECT;
            inserted = true;
            dst++;
        }

        *dst = *vtxDesc;
    }

    dst->attr = GX_VA_NULL;
    dst->type = GX_NONE;
    mVtxDesc = newVtxDesc;
    makeVcdVatCmd();
}

/* 80314DA8-80314E28 30F6E8 0080+00 0/0 1/1 0/0 .text
 * calcNBTScale__8J3DShapeFRC3VecPA3_A3_fPA3_A3_f               */
void J3DShape::calcNBTScale(Vec const& param_0, f32 (*param_1)[3][3], f32 (*param_2)[3][3]) {
    for (u16 i = 0; i < getMtxGroupNum(); i++)
        getShapeMtx(i)->calcNBTScale(param_0, param_1, param_2);
}

/* 80314E28-80314E98 30F768 0070+00 0/0 1/1 0/0 .text            countBumpMtxNum__8J3DShapeCFv */
u32 J3DShape::countBumpMtxNum() const {
    u32 num = 0;
    for (u16 i = 0; i < getMtxGroupNum(); i++)
        num += getShapeMtx(i)->getUseMtxNum();
    return num;
}

/* 80314E98-80314EB0 30F7D8 0018+00 1/1 0/0 0/0 .text            J3DLoadCPCmd__FUcUl */
void J3DLoadCPCmd(u8 cmd, u32 param) {
    GXWGFifo.u8 = GX_CMD_LOAD_CP_REG;
    GXWGFifo.u8 = cmd;
    GXWGFifo.u32 = param;
}

/* 80314EB0-80314EEC 30F7F0 003C+00 1/1 0/0 0/0 .text            J3DLoadArrayBasePtr__F7_GXAttrPv */
static void J3DLoadArrayBasePtr(_GXAttr attr, void* data) {
    u32 idx = (attr == GX_VA_NBT) ? 1 : (attr - GX_VA_POS);
    J3DLoadCPCmd(0xA0 + idx, ((u32)data & 0x7FFFFFFF));
}

/* 80314EEC-80314F5C 30F82C 0070+00 3/3 0/0 0/0 .text            loadVtxArray__8J3DShapeCFv */
void J3DShape::loadVtxArray() const {
    J3DLoadArrayBasePtr(GX_VA_POS, j3dSys.getVtxPos());
    if (!mHasNBT) {
        J3DLoadArrayBasePtr(GX_VA_NRM, j3dSys.getVtxNrm());
    }
    J3DLoadArrayBasePtr(GX_VA_CLR0, j3dSys.getVtxCol());
}

/* 80314F5C-80314F98 30F89C 003C+00 0/0 1/1 0/0 .text isSameVcdVatCmd__8J3DShapeFP8J3DShape */
bool J3DShape::isSameVcdVatCmd(J3DShape* other) {
    u8* a = other->mVcdVatCmd;
    u8* b = mVcdVatCmd;
    for (u32 i = 0; i < kVcdVatDLSize; i++)
        if (a[i] != b[i])
            return false;
    return true;
}

/* 80314F98-80315260 30F8D8 02C8+00 1/1 0/0 0/0 .text            makeVtxArrayCmd__8J3DShapeFv */
void J3DShape::makeVtxArrayCmd() {
    GXVtxAttrFmtList* vtxAttr = mVertexData->getVtxAttrFmtList();

    u8 stride[0x0C];
    void* array[0x0C];
    for (u32 i = 0; i < 0x0C; i++) {
        stride[i] = 0;
        array[i] = 0;
    }

    for (; vtxAttr->mAttrib != GX_VA_NULL; vtxAttr++) {
        switch (vtxAttr->mAttrib) {
        case GX_VA_POS: {
            if (vtxAttr->mCompType == GX_F32)
                stride[vtxAttr->mAttrib - GX_VA_POS] = 0x0C;
            else
                stride[vtxAttr->mAttrib - GX_VA_POS] = 0x06;
            array[vtxAttr->mAttrib - GX_VA_POS] = mVertexData->getVtxPosArray();
            mVertexData->setVtxPosFrac(vtxAttr->mCompShift);
            mVertexData->setVtxPosType((GXCompType)vtxAttr->mCompType);
        } break;
        case GX_VA_NRM: {
            if (vtxAttr->mCompType == GX_F32)
                stride[vtxAttr->mAttrib - GX_VA_POS] = 0x0C;
            else
                stride[vtxAttr->mAttrib - GX_VA_POS] = 0x06;
            array[vtxAttr->mAttrib - GX_VA_POS] = mVertexData->getVtxNrmArray();
            mVertexData->setVtxNrmFrac(vtxAttr->mCompShift);
            mVertexData->setVtxNrmType((GXCompType)vtxAttr->mCompType);
        } break;
        case GX_VA_CLR0:
        case GX_VA_CLR1: {
            stride[vtxAttr->mAttrib - GX_VA_POS] = 0x04;
            array[vtxAttr->mAttrib - GX_VA_POS] =
                mVertexData->getVtxColorArray(vtxAttr->mAttrib - GX_VA_CLR0);
        } break;
        case GX_VA_TEX0:
        case GX_VA_TEX1:
        case GX_VA_TEX2:
        case GX_VA_TEX3:
        case GX_VA_TEX4:
        case GX_VA_TEX5:
        case GX_VA_TEX6:
        case GX_VA_TEX7: {
            if (vtxAttr->mCompType == GX_F32)
                stride[vtxAttr->mAttrib - GX_VA_POS] = 0x08;
            else
                stride[vtxAttr->mAttrib - GX_VA_POS] = 0x04;
            array[vtxAttr->mAttrib - GX_VA_POS] =
                mVertexData->getVtxTexCoordArray(vtxAttr->mAttrib - GX_VA_TEX0);
        } break;
        default:
            break;
        }
    }

    GXVtxDescList* vtxDesc = mVtxDesc;
    mHasPNMTXIdx = false;
    for (; vtxDesc->attr != GX_VA_NULL; vtxDesc++) {
        if (vtxDesc->attr == GX_VA_NBT && vtxDesc->type != GX_NONE) {
            mHasNBT = true;
            stride[GX_VA_NRM - GX_VA_POS] *= 3;
            array[GX_VA_NRM - GX_VA_POS] = mVertexData->getVtxNBTArray();
        } else if (vtxDesc->attr == GX_VA_PNMTXIDX && vtxDesc->type != GX_NONE) {
            mHasPNMTXIdx = true;
        }
    }

    for (u32 i = 0; i < 0x0C; i++) {
        if (array[i] != 0)
            GDSetArray((GXAttr)(i + GX_VA_POS), array[i], stride[i]);
        else
            GDSetArrayRaw((GXAttr)(i + GX_VA_POS), NULL, stride[i]);
    }
}

/* ############################################################################################## */
/* 804515C8-804515CC 000AC8 0004+00 1/1 0/0 0/0 .sbss            sInterruptFlag$903 */
static s32 sInterruptFlag;

/* 804515CC-804515D0 000ACC 0004+00 1/1 0/0 0/0 .sbss            None */
static s8 sInitInterruptFlag;

/* 80315260-80315300 30FBA0 00A0+00 1/1 2/2 0/0 .text            makeVcdVatCmd__8J3DShapeFv */
void J3DShape::makeVcdVatCmd() {
    if (!sInitInterruptFlag) {
        sInterruptFlag = OSDisableInterrupts();
        sInitInterruptFlag = true;
    }
    OSDisableScheduler();

    GDLObj gdl_obj;
    GDInitGDLObj(&gdl_obj, mVcdVatCmd, kVcdVatDLSize);
    GDSetCurrent(&gdl_obj);
    GDSetVtxDescv(mVtxDesc);
    makeVtxArrayCmd();
    J3DGDSetVtxAttrFmtv(GX_VTXFMT0, mVertexData->getVtxAttrFmtList(), mHasNBT);
    GDPadCurr32();
    GDFlushCurrToMem();
    GDSetCurrent(NULL);
    OSEnableScheduler();
    OSRestoreInterrupts(sInterruptFlag);
}

/* ############################################################################################## */
/* 804515D0-804515D4 000AD0 0004+00 5/5 25/25 9/9 .sbss            sOldVcdVatCmd__8J3DShape */
void* J3DShape::sOldVcdVatCmd;

/* 80315300-80315398 30FC40 0098+00 2/2 6/6 3/3 .text            loadPreDrawSetting__8J3DShapeCFv */
void J3DShape::loadPreDrawSetting() const {
    if (sOldVcdVatCmd != mVcdVatCmd) {
        GXCallDisplayList(mVcdVatCmd, kVcdVatDLSize);
        sOldVcdVatCmd = mVcdVatCmd;
    }

    mCurrentMtx.load();
}

/* ############################################################################################## */
/* 804515D4-804515D8 000AD4 0004+00 3/3 0/0 0/0 .sbss            None */
static u8 data_804515D4[4];

/* 80315398-8031544C 30FCD8 00B4+00 1/1 0/0 0/0 .text setArrayAndBindPipeline__8J3DShapeCFv */
void J3DShape::setArrayAndBindPipeline() const {
    J3DShapeMtx::setCurrentPipeline(getPipeline());
    loadVtxArray();
    j3dSys.setModelDrawMtx(mDrawMtx[*mCurrentViewNo]);
    j3dSys.setModelNrmMtx(mNrmMtx[*mCurrentViewNo]);
    J3DShapeMtx::sCurrentScaleFlag = mScaleFlagArray;
    // The below struct_804515B0 is actually a continuation of sCurrentScaleFlag, I believe?
    // Also, there seems to be an extra entry in the array that's only there in DEBUG builds.
    J3DShapeMtx::sNBTFlag = mHasNBT;
    data_804515D4[0] = mHasPNMTXIdx;
    J3DShapeMtx::sTexMtxLoadType = getTexMtxLoadType();
}

/* 8031544C-803155E0 30FD8C 0194+00 1/0 0/0 0/0 .text            drawFast__8J3DShapeCFv */
void J3DShape::drawFast() const {
    if (sOldVcdVatCmd != mVcdVatCmd) {
        GXCallDisplayList(mVcdVatCmd, kVcdVatDLSize);
        sOldVcdVatCmd = mVcdVatCmd;
    }

    if (data_804515D4[0] != 0 && !mHasPNMTXIdx)
        mCurrentMtx.load();

    setArrayAndBindPipeline();
    if (!checkFlag(J3DShpFlag_NoMtx)) {
        // LOD flag shenanigans
        if (J3DShapeMtx::getLODFlag() != 0)
            J3DShapeMtx::resetMtxLoadCache();

        for (u16 n = getMtxGroupNum(), i = 0; i < n; i++) {
            if (getShapeMtx(i) != NULL)
                getShapeMtx(i)->load();
            if (getShapeDraw(i) != NULL)
                getShapeDraw(i)->draw();
        }
    } else {
        J3DFifoLoadPosMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), GX_PNMTX0);
        J3DFifoLoadNrmMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), GX_PNMTX0);
        for (u16 n = getMtxGroupNum(), i = 0; i < n; i++)
            if (getShapeDraw(i) != NULL)
                getShapeDraw(i)->draw();
    }
}

/* 803155E0-80315628 30FF20 0048+00 1/0 0/0 0/0 .text            draw__8J3DShapeCFv */
void J3DShape::draw() const {
    sOldVcdVatCmd = NULL;
    loadPreDrawSetting();
    drawFast();
}

/* 80315628-803156AC 30FF68 0084+00 1/0 0/0 0/0 .text            simpleDraw__8J3DShapeCFv */
void J3DShape::simpleDraw() const {
    resetVcdVatCache();
    loadPreDrawSetting();
    J3DShapeMtx::setCurrentPipeline(getPipeline());
    loadVtxArray();
    for (u16 n = getMtxGroupNum(), i = 0; i < n; i++) {
        if (getShapeDraw(i) != NULL) {
            getShapeDraw(i)->draw();
        }
    }
}

/* 803156AC-803157A0 30FFEC 00F4+00 1/0 0/0 0/0 .text            simpleDrawCache__8J3DShapeCFv */
void J3DShape::simpleDrawCache() const {
    if (sOldVcdVatCmd != mVcdVatCmd) {
        GXCallDisplayList(mVcdVatCmd, kVcdVatDLSize);
        sOldVcdVatCmd = mVcdVatCmd;
    }

    if (data_804515D4[0] != 0 && !mHasPNMTXIdx)
        mCurrentMtx.load();

    loadVtxArray();
    for (u16 n = getMtxGroupNum(), i = 0; i < n; i++)
        if (getShapeDraw(i) != NULL)
            getShapeDraw(i)->draw();
}