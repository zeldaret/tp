//
// Generated By: dol2asm
// Translation Unit: J3DClusterLoader
//

#include "JSystem/J3DGraphLoader/J3DClusterLoader.h"
#include "JSystem/J3DGraphAnimator/J3DSkinDeform.h"
#include "JSystem/JSupport/JSupport.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "dol2asm.h"
#include "dolphin/os.h"
#include "string.h"

//
// Forward References:
//

extern "C" void load__24J3DClusterLoaderDataBaseFPCv();
extern "C" void __ct__20J3DClusterLoader_v15Fv();
extern "C" void __dt__20J3DClusterLoader_v15Fv();
extern "C" void load__20J3DClusterLoader_v15FPCv();
extern "C" void readCluster__20J3DClusterLoader_v15FPC15J3DClusterBlock();
extern "C" void __dt__16J3DClusterLoaderFv();
extern "C" void func_80334644(void* _this, void const*, void const*);
extern "C" void func_8033465C(void* _this, void const*, void const*);
extern "C" void func_80334674(void* _this, void const*, void const*);
extern "C" extern char const* const J3DClusterLoader__stringBase0;

//
// External References:
//

extern "C" void* __nw__FUl();
extern "C" void* __nwa__FUl();
extern "C" void* __nwa__FUli();
extern "C" void __dl__FPv();
extern "C" void __ct__10JUTNameTabFPC7ResNTAB();
extern "C" void func_802F42C0(void* _this, void const*, void const*);
extern "C" void func_8030A530(void* _this, void const*, void const*);
extern "C" void func_8030A560(void* _this, void const*, void const*);
extern "C" void __ct__13J3DDeformDataFv();
extern "C" void __ct__11J3DDeformerFP13J3DDeformData();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _restgpr_23();
extern "C" void _restgpr_26();

//
// Declarations:
//

/* 80334130-803341CC 32EA70 009C+00 0/0 1/1 0/0 .text load__24J3DClusterLoaderDataBaseFPCv */
void* J3DClusterLoaderDataBase::load(const void* i_data) {
    const JUTDataFileHeader* fileHeader = (JUTDataFileHeader*)i_data;
    if (fileHeader->mMagic == 'J3D1' && fileHeader->mType == 'bls1') {
        J3DClusterLoader_v15 loader;
        return loader.load(i_data);
    } else if (fileHeader->mMagic == 'J3D2' && fileHeader->mType == 'bls2') {
        return NULL;
    }
    return NULL;
}

/* ############################################################################################## */
/* 803CF0E8-803CF0F8 02C208 0010+00 2/2 0/0 0/0 .data            __vt__20J3DClusterLoader_v15 */
SECTION_DATA extern void* __vt__20J3DClusterLoader_v15[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)load__20J3DClusterLoader_v15FPCv,
    (void*)__dt__20J3DClusterLoader_v15Fv,
};

/* 803CF0F8-803CF108 02C218 0010+00 3/3 0/0 0/0 .data            __vt__16J3DClusterLoader */
SECTION_DATA extern void* __vt__16J3DClusterLoader[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__16J3DClusterLoaderFv,
};

/* 803341CC-803341E8 32EB0C 001C+00 1/1 0/0 0/0 .text            __ct__20J3DClusterLoader_v15Fv */
J3DClusterLoader_v15::J3DClusterLoader_v15() {}

/* 803341E8-80334244 32EB28 005C+00 2/1 0/0 0/0 .text            __dt__20J3DClusterLoader_v15Fv */
J3DClusterLoader_v15::~J3DClusterLoader_v15() {}

/* 80334244-803342F8 32EB84 00B4+00 2/1 0/0 0/0 .text            load__20J3DClusterLoader_v15FPCv */
void* J3DClusterLoader_v15::load(const void* i_data) {
    mpDeformData = new J3DDeformData();

    const JUTDataFileHeader* fileHeader = (JUTDataFileHeader*)i_data;
    const JUTDataBlockHeader* block = &fileHeader->mFirstBlock;
    for (int i = 0; i < fileHeader->mBlockNum; i++) {
        switch (block->mType) {
        case 'CLS1':
            readCluster((J3DClusterBlock*)block);
            break;
        default:
            OSReport("Unknown data block\n");
            break;
        }
        block = block->getNext();
    }

    return mpDeformData;
}

/* 803342F8-803345FC 32EC38 0304+00 1/1 0/0 0/0 .text
 * readCluster__20J3DClusterLoader_v15FPC15J3DClusterBlock      */
void J3DClusterLoader_v15::readCluster(const J3DClusterBlock* block) {
    mpDeformData->mClusterNum = block->mClusterNum;
    mpDeformData->mClusterKeyNum = block->mClusterKeyNum;
    mpDeformData->mVtxPosNum = block->mVtxPosNum;
    mpDeformData->mVtxNrmNum = block->mVtxNrmNum;
    mpDeformData->mClusterVertexNum = block->mClusterVertexNum;

    if (block->mClusterName != NULL) {
        mpDeformData->mClusterName =
            new JUTNameTab(JSUConvertOffsetToPtr<ResNTAB>(block, block->mClusterName));
    } else {
        mpDeformData->mClusterName = NULL;
    }
    if (block->mClusterKeyName != NULL) {
        mpDeformData->mClusterKeyName =
            new JUTNameTab(JSUConvertOffsetToPtr<ResNTAB>(block, block->mClusterKeyName));
    } else {
        mpDeformData->mClusterKeyName = NULL;
    }

    mpDeformData->mVtxPos = JSUConvertOffsetToPtr<f32>(block, block->mVtxPos);
    mpDeformData->mVtxNrm = JSUConvertOffsetToPtr<f32>(block, block->mVtxNrm);

    void* clusterPointer = block->mClusterPointer;
    int clusterKeyPointerSize = (int)block->mClusterKeyPointer - (int)clusterPointer;
    int clusterVertexPointerSize = (int)block->mClusterVertex - (int)clusterPointer;
    int vtxPosSize = (int)block->mVtxPos - (int)clusterPointer;
    u8* arr = new (0x20) u8[vtxPosSize];
    memcpy(arr, JSUConvertOffsetToPtr<J3DCluster>(block, clusterPointer), vtxPosSize);
    mpDeformData->mClusterPointer = (J3DCluster*)arr;
    mpDeformData->mClusterKeyPointer = (J3DClusterKey*)&arr[clusterKeyPointerSize];
    mpDeformData->mClusterVertex = (J3DClusterVertex*)&arr[clusterVertexPointerSize];

    for (int i = 0; i < mpDeformData->getClusterNum(); i++) {
        J3DCluster* cluster = &mpDeformData->mClusterPointer[i];
        cluster->mClusterKey = JSUConvertOffsetToPtr<J3DClusterKey>(arr - (int)clusterPointer, cluster->mClusterKey);
        cluster->field_0x18 = JSUConvertOffsetToPtr<u16>(block, cluster->field_0x18);
        cluster->mClusterVertex =
            JSUConvertOffsetToPtr<J3DClusterVertex>(arr - (int)clusterPointer, cluster->mClusterVertex);
        J3DDeformer* deformer = new J3DDeformer(mpDeformData);
        if (cluster->field_0x14 != 0) {
            deformer->field_0xc = new f32[cluster->field_0x14 * 3];
        } else {
            deformer->field_0xc = NULL;
        }
        deformer->mFlags = cluster->mFlags;
        deformer->field_0x8 = new f32[cluster->mKeyNum];
        cluster->setDeformer(deformer);
    }

    for (int i = 0; i < mpDeformData->getClusterKeyNum(); i++) {
        J3DClusterKey* clusterKey = &mpDeformData->mClusterKeyPointer[i];
        clusterKey->field_0x4 = JSUConvertOffsetToPtr<u16>(block, clusterKey->field_0x4);
        clusterKey->field_0x8 = JSUConvertOffsetToPtr<u16>(block, clusterKey->field_0x8);
    }

    for (int i = 0; i < mpDeformData->mClusterVertexNum; i++) {
        J3DClusterVertex* clusterVertex = &mpDeformData->mClusterVertex[i];
        clusterVertex->field_0x4 = JSUConvertOffsetToPtr<u16>(block, clusterVertex->field_0x4);
        clusterVertex->field_0x8 = JSUConvertOffsetToPtr<u16>(block, clusterVertex->field_0x8);
    }

    DCStoreRange(arr, vtxPosSize);
}


/* 803345FC-80334644 32EF3C 0048+00 1/0 0/0 0/0 .text            __dt__16J3DClusterLoaderFv */
// Remove when JSUConvertOffsetToPtr is ok
void __dt__16J3DClusterLoaderFv() {
//asm J3DClusterLoader::~J3DClusterLoader() {
    // NONMATCHING
}

/* 80334644-8033465C 32EF84 0018+00 1/1 0/0 0/0 .text
 * JSUConvertOffsetToPtr<16J3DClusterVertex>__FPCvPCv           */
extern "C" void func_80334644(void* _this, void const* param_0, void const* param_1) {
    // NONMATCHING
}

/* 8033465C-80334674 32EF9C 0018+00 1/1 0/0 0/0 .text
 * JSUConvertOffsetToPtr<13J3DClusterKey>__FPCvPCv              */
extern "C" void func_8033465C(void* _this, void const* param_0, void const* param_1) {
    // NONMATCHING
}

/* 80334674-8033468C 32EFB4 0018+00 1/1 0/0 0/0 .text JSUConvertOffsetToPtr<10J3DCluster>__FPCvPCv
 */
extern "C" void func_80334674(void* _this, void const* param_0, void const* param_1) {
    // NONMATCHING
}

/* 803A2098-803A2098 02E6F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */