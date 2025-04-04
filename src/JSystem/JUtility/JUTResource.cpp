#include "JSystem/JUtility/JUTResource.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JSupport/JSUInputStream.h"
#include "string.h"

/* 802DE078-802DE120 2D89B8 00A8+00 0/0 1/1 0/0 .text
 * getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive */
void* JUTResReference::getResource(JSUInputStream* stream, u32 resType, JKRArchive* archive) {
    stream->read(&mType, 1);
    stream->read(&mNameLength, 1);
    stream->read(&mName, mNameLength);

    if (mType == RESTYPE_Unk2 || mType == RESTYPE_Unk3 || mType == RESTYPE_Unk4) {
        mName[mNameLength] = 0;
    }

    return getResource(resType, archive);
}

/* 802DE120-802DE1BC 2D8A60 009C+00 0/0 2/2 0/0 .text
 * getResource__15JUTResReferenceFPCvUlP10JKRArchive            */

void* JUTResReference::getResource(const void* data, u32 resType, JKRArchive* archive) {
    mType = *(u8*)data;
    mNameLength = *((u8*)data + 1);

    if (mNameLength != 0) {
        memcpy(&mName, &((u8*)data)[2], mNameLength);
    }

    if (mType == RESTYPE_Unk2 || mType == RESTYPE_Unk3 || mType == RESTYPE_Unk4) {
        mName[mNameLength] = 0;
    }

    return getResource(resType, archive);
}

/* 802DE1BC-802DE234 2D8AFC 0078+00 2/2 0/0 0/0 .text
 * getResource__15JUTResReferenceFUlP10JKRArchive               */
void* JUTResReference::getResource(u32 resType, JKRArchive* archive) {
    void* res = NULL;
    switch (mType) {
    case RESTYPE_Unk1:
        break;
    case RESTYPE_Unk2:
        res = JKRArchive::getGlbResource(resType, mName, archive);
        break;
    case RESTYPE_Unk3:
        res = JKRFileLoader::getGlbResource(mName, archive);
        break;
    case RESTYPE_Unk4:
        res = JKRFileLoader::getGlbResource(mName);
        break;
    }

    return res;
}