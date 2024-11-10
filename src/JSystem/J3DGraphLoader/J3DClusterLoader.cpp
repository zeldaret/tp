//
// J3DClusterLoader
//

#include "JSystem/J3DGraphLoader/J3DClusterLoader.h"
#include "JSystem/J3DGraphAnimator/J3DSkinDeform.h"
#include "JSystem/JSupport/JSupport.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "dolphin/os.h"
#include "string.h"

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

/* 803A2098-803A2098 02E6F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
