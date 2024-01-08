//
// JAUSeqDataBlockMgr
//

#include "JSystem/JAudio2/JAUSeqDataBlockMgr.h"
#include "JSystem/JAudio2/JAUSoundInfo.h"
#include "JSystem/JAudio2/JASResArcLoader.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "dolphin/types.h"

/* 802A68F4-802A6928 2A1234 0034+00 0/0 2/2 0/0 .text            __ct__15JAUSeqDataBlockFv */
JAUSeqDataBlock::JAUSeqDataBlock() : field_0x0(this) {}

/* 802A6928-802A6974 2A1268 004C+00 1/1 0/0 0/0 .text getSeqData__16JAUSeqDataBlocksF10JAISoundID
 */
u8* JAUSeqDataBlocks::getSeqData(JAISoundID param_0) {
    // fake match. Should be
    // if (param_0.isAnonymous()) {
    // But doesn't match
    if ((u32)param_0 == 0xffffffff) {
        return NULL;
    }
    for (JSULink<JAUSeqDataBlock>* link = field_0x0.getFirst(); link != NULL;
            link = link->getNext())
    {
        if ((u32)link->getObject()->field_0x10 == (u32)param_0) {
            return link->getObject()->field_0x14.addr;
        }
    }
    return NULL;
}

/* 802A6974-802A69D8 2A12B4 0064+00 1/1 0/0 0/0 .text seekFreeBlock__16JAUSeqDataBlocksFUl */
JSULink<JAUSeqDataBlock>* JAUSeqDataBlocks::seekFreeBlock(u32 size) {
    u32 currentBlockSize = 0xffffffff;
    JSULink<JAUSeqDataBlock>* rv = NULL;
    for (JSULink<JAUSeqDataBlock>* link = field_0x0.getFirst(); link != NULL; link = link->getNext())
    {
        if (link->getObject()->field_0x10.isAnonymous()) {
            u32 blockSize = link->getObject()->field_0x14.size;
            if (blockSize >= size && blockSize < currentBlockSize) {
                rv = link;
                currentBlockSize = blockSize;
            }
        }
    }
    if (rv != NULL) {
        return rv;
    }
    return NULL;
}

/* 802A69D8-802A69F8 2A1318 0020+00 5/5 0/0 0/0 .text
 * append__16JAUSeqDataBlocksFP26JSULink<15JAUSeqDataBlock>     */
bool JAUSeqDataBlocks::append(JSULink<JAUSeqDataBlock>* param_0) {
    return field_0x0.append(param_0);
}

/* 802A69F8-802A6A18 2A1338 0020+00 4/4 0/0 0/0 .text
 * remove__16JAUSeqDataBlocksFP26JSULink<15JAUSeqDataBlock>     */
bool JAUSeqDataBlocks::remove(JSULink<JAUSeqDataBlock>* param_0) {
    return field_0x0.remove(param_0);
}

/* 802A6A18-802A6A58 2A1358 0040+00 1/1 0/0 0/0 .text
 * hasFailedBlock__16JAUSeqDataBlocksF10JAISoundID              */
bool JAUSeqDataBlocks::hasFailedBlock(JAISoundID param_0) {
    JSULink<JAUSeqDataBlock>* rv = NULL;
    for (JSULink<JAUSeqDataBlock>* link = field_0x0.getFirst(); link != NULL; link = link->getNext())
    {
        if (link->getObject()->field_0x10 == param_0) {
            link->getObject()->field_0x10.setAnonymous();
            return true;
        }
    }
    return false;
}

/* 802A6A58-802A6AA0 2A1398 0048+00 0/0 2/2 0/0 .text            __ct__23JAUDynamicSeqDataBlocksFv
 */
JAUDynamicSeqDataBlocks::JAUDynamicSeqDataBlocks() {
    seqDataArchive_ = NULL;
}

/* 802A6AA0-802A6AA8 -00001 0008+00 0/0 0/0 0/0 .text
 * setSeqDataArchive__23JAUDynamicSeqDataBlocksFP10JKRArchive   */
void JAUDynamicSeqDataBlocks::setSeqDataArchive(JKRArchive* param_0) {
    *(u32*)(((u8*)this) + 36) /* this->field_0x24 */ = (u32)(param_0);
}

/* 802A6AA8-802A6B8C 2A13E8 00E4+00 0/0 1/1 0/0 .text
 * getSeqData__23JAUDynamicSeqDataBlocksF10JAISoundIDP14JAISeqDataUserP10JAISeqDatab */
s32 JAUDynamicSeqDataBlocks::getSeqData(JAISoundID param_0, JAISeqDataUser* param_1,
                                        JAISeqData* param_2, bool param_3) {
    rearrangeLoadingSeqs_();
    if (field_0x0.hasFailedBlock(param_0)) {
        return 0;
    }

    if (field_0xc.getSeqData(param_0)) {
        return 1;
    }

    u8* seqData = field_0x18.getSeqData(param_0);
    if (seqData != NULL) {
        param_2->field_0x0 = seqData;
        param_2->field_0x4 = 0;
        return 2;
    }

    if (loadDynamicSeq(param_0, param_3, param_1)) {
        return 1;
    }
    return 0;
}

/* 802A6B8C-802A6BF4 2A14CC 0068+00 0/0 2/2 0/0 .text
 * appendDynamicSeqDataBlock__23JAUDynamicSeqDataBlocksFP15JAUSeqDataBlock */
bool JAUDynamicSeqDataBlocks::appendDynamicSeqDataBlock(JAUSeqDataBlock* seqDataBlock) {
    rearrangeLoadingSeqs_();
    if (seqDataBlock->field_0x10.isAnonymous()) {
        field_0x0.append(&seqDataBlock->field_0x0);
    } else {
        field_0x18.append(&seqDataBlock->field_0x0);
    }
    return 1;
}

/* 802A6BF4-802A6C18 2A1534 0024+00 1/1 0/0 0/0 .text
 * JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl                */
static void JAUDynamicSeqDataBlocks_receiveLoaded_(u32 param_0, u32 param_1) {
    JAUSeqDataBlock* seqDataBlock = ((JSULink<JAUSeqDataBlock>*)param_1)->getObject();
    if (param_0 != NULL) {
        seqDataBlock->field_0x1c = 2;
    } else {
        seqDataBlock->field_0x1c = 0;
    }
}

/* 802A6C18-802A6D48 2A1558 0130+00 1/1 2/2 0/0 .text
 * loadDynamicSeq__23JAUDynamicSeqDataBlocksF10JAISoundIDbP14JAISeqDataUser */
bool JAUDynamicSeqDataBlocks::loadDynamicSeq(JAISoundID param_0, bool param_1,
                                             JAISeqDataUser* param_2) {
    if (seqDataArchive_ == NULL) {
        return false;
    }
    JAUSoundInfo* soundInfo = JASGlobalInstance<JAUSoundInfo>::getInstance();
    if (soundInfo == NULL) {
        return false;
    } 
    u16 resourceId = soundInfo->getBgmSeqResourceID(param_0);
    size_t resSize = JASResArcLoader::getResSize(seqDataArchive_, resourceId);
    JSULink<JAUSeqDataBlock>* link = field_0x0.seekFreeBlock(resSize);
    if (link == NULL) {
        if (param_1) {
            link = &releaseIdleDynamicSeqDataBlock_(param_2, resSize)->field_0x0;
            if (link == NULL) {
                return false;
            }
        } else {
            return false;
        }
    }
    field_0x0.remove(link);
    JAUSeqDataBlock* seqDataBlock = link->getObject();
    seqDataBlock->field_0x10 = param_0;
    link->getObject()->field_0x1c = 1;
    field_0xc.append(link);
    JASResArcLoader::loadResourceAsync(
        seqDataArchive_, resourceId,
        link->getObject()->field_0x14.addr, link->getObject()->field_0x14.size,
        JAUDynamicSeqDataBlocks_receiveLoaded_, (u32)link);
    return true;
}

/* 802A6D48-802A6E00 2A1688 00B8+00 0/0 1/1 0/0 .text
 * releaseIdleDynamicSeqDataBlock__23JAUDynamicSeqDataBlocksFP14JAISeqDataUser */
u32 JAUDynamicSeqDataBlocks::releaseIdleDynamicSeqDataBlock(JAISeqDataUser* param_0) {
    rearrangeLoadingSeqs_();
    u32 size = 0;
    JSULink<JAUSeqDataBlock>* nextLink;
    for (JSULink<JAUSeqDataBlock>* link = field_0x18.field_0x0.getFirst(); link != NULL; ) {
        nextLink = link->getNext();
        JAUSeqDataBlock* seqDataBlock = link->getObject();
        if (param_0 == NULL || !param_0->isUsingSeqData(seqDataBlock->field_0x14)) {
            field_0x18.remove(link);
            JAUSeqDataBlock* seqDataBlock = link->getObject();
            link->getObject()->field_0x10.setAnonymous();
            if (size < seqDataBlock->field_0x14.size) {
                size = seqDataBlock->field_0x14.size;
            }
            field_0x0.append(link);
        }
        link = nextLink;
    }
    return size;
}

/* 802A6E00-802A6EDC 2A1740 00DC+00 1/1 0/0 0/0 .text
 * releaseIdleDynamicSeqDataBlock___23JAUDynamicSeqDataBlocksFP14JAISeqDataUserUl */
JAUSeqDataBlock*
JAUDynamicSeqDataBlocks::releaseIdleDynamicSeqDataBlock_(JAISeqDataUser* param_0, u32 param_1) {
    rearrangeLoadingSeqs_();
    u32 minSize = 0xffffffff;
    JSULink<JAUSeqDataBlock>* foundBlock = NULL;
    JSULink<JAUSeqDataBlock>* link = field_0x18.field_0x0.getFirst();
    JSULink<JAUSeqDataBlock>* nextLink;
    while (link != NULL) {
        nextLink = link->getNext();
        JAUSeqDataBlock* seqDataBlock = link->getObject();
        if (param_0 == NULL || !param_0->isUsingSeqData(seqDataBlock->field_0x14)) {
            u32 size = seqDataBlock->field_0x14.size;
            if (size >= param_1 && size < minSize) {
                foundBlock = link;
                minSize = size;
            }
        }
        link = nextLink;
    }
    if (foundBlock != NULL) {
        field_0x18.remove(foundBlock);
        JAUSeqDataBlock* seqDataBlock = foundBlock->getObject();
        seqDataBlock->field_0x10.setAnonymous();
        field_0x0.append(foundBlock);
        return foundBlock->getObject();
    }
    return NULL;
}

/* 802A6EDC-802A6F70 2A181C 0094+00 4/4 0/0 0/0 .text
 * rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv           */
void JAUDynamicSeqDataBlocks::rearrangeLoadingSeqs_() {
    JSULink<JAUSeqDataBlock>* link = field_0xc.field_0x0.getFirst();
    JSULink<JAUSeqDataBlock>* nextLink;
    while (link != NULL) {
        nextLink = link->getNext();
        JAUSeqDataBlock* seqDataBlock = link->getObject();
        if (seqDataBlock->field_0x1c == 0) {
            field_0xc.remove(link);
            field_0x0.append(link);
        } else if (seqDataBlock->field_0x1c == 2) {
            field_0xc.remove(link);
            field_0x18.append(link);
        }
        link = nextLink;
    }
}
