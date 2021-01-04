#include "JSystem/JKernel/JKRDvdFile/JKRDvdFile.h"
#include "global.h"

JKRDvdFile::JKRDvdFile() : JKRFile(), mDvdLink(this) {
    this->initiate();
}

#ifdef NONMATCHING
JKRDvdFile::JKRDvdFile(char const* param_1) : JKRFile(), mDvdLink(this) {
    this->initiate();
    bool result = this->open(param_1);
    this->mIsAvailable = result;
}
#else
asm JKRDvdFile::JKRDvdFile(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdFile/asm/func_802D95F8.s"
}
#endif

#ifdef NONMATHCING
JKRDvdFile::JKRDvdFile(long param_1) : JKRFile(), mDvdLink(this) {
    this->initiate();
    bool result = this->open(param_1);
    this->mIsAvailable = result;
}
#else
asm JKRDvdFile::JKRDvdFile(long) {
    nofralloc
#include "JSystem/JKernel/JKRDvdFile/asm/func_802D96A0.s"
}
#endif

#ifndef NONMATCHING
JKRDvdFile::~JKRDvdFile() {
    this->close();
}
#else
asm JKRDvdFile::~JKRDvdFile() {
    nofralloc
#include "JSystem/JKernel/JKRDvdFile/asm/func_802D9748.s"
}
#endif

// #include "JSystem/JKernel/JKRDvdFile/asm/func_802D97E4.s"
void JKRDvdFile::initiate(void) {
    this->mDvdFile = this;
    OSInitMutex(&this->mMutex1);
    OSInitMutex(&this->mMutex2);
    OSInitMessageQueue(&this->mQueue2, this->mMessages2, 1);
    OSInitMessageQueue(&this->mQueue1, this->mMessages1, 1);
    this->mOSThread = NULL;
    this->field_0x50 = 0;
    this->field_0x58 = 0;
}

// #include "JSystem/JKernel/JKRDvdFile/asm/func_802D9850.s"
bool JKRDvdFile::open(char const* param_1) {
    if (!this->mIsAvailable) {
        this->mIsAvailable = DVDOpen(param_1, &this->file_info);
        if (this->mIsAvailable) {
            lbl_8043436C.append(&this->mDvdLink);
            this->getStatus();
        }
    }
    return this->mIsAvailable;
}

// #include "JSystem/JKernel/JKRDvdFile/asm/func_802D98C4.s"
bool JKRDvdFile::open(long param_1) {
    if (!this->mIsAvailable) {
        this->mIsAvailable = DVDFastOpen(param_1, &this->file_info);
        if (this->mIsAvailable) {
            lbl_8043436C.append(&this->mDvdLink);
            this->getStatus();
        }
    }
    return this->mIsAvailable;
}

// #include "JSystem/JKernel/JKRDvdFile/asm/func_802D9938.s"
void JKRDvdFile::close() {
    if (this->mIsAvailable) {
        s32 result = DVDClose(&this->file_info);
        if (result != 0) {
            this->mIsAvailable = false;
            lbl_8043436C.remove(&this->mDvdLink);
        } else {
            const char* filename = lbl_8039D260;       // "JKRDvdFile.cpp"
            const char* format = lbl_8039D260 + 0x0F;  // "%s"
            const char* arg1 = lbl_8039D260 + 0x12;    // "cannot close DVD file\n"
            JUTException_NS_panic_f(filename, 0xd5, format, arg1);
        }
    }
}

#define JUT_ASSERT(CONDITION)

//#include "JSystem/JKernel/JKRDvdFile/asm/func_802D99B4.s"
s32 JKRDvdFile::readData(void* param_1, long length, long param_3) {
    JUT_ASSERT((length & 0x1f) == 0);

    OSLockMutex(&this->mMutex1);
    if (this->mOSThread) {
        OSUnlockMutex(&this->mMutex1);
        return -1;
    }

    this->mOSThread = OSGetCurrentThread();

    s32 result = -1;
    s32 readAsyncResult = DVDReadAsyncPrio(&this->file_info, param_1, length, param_3,
                                           JKRDvdFile::doneProcess, 2);
    if (readAsyncResult) {
        result = this->sync();
    }

    this->mOSThread = NULL;
    OSUnlockMutex(&this->mMutex1);

    return result;
}

// #include "JSystem/JKernel/JKRDvdFile/asm/func_802D9A68.s"
s32 JKRDvdFile::writeData(void const*, long, long) {
    return -1;
}

// #include "JSystem/JKernel/JKRDvdFile/asm/func_802D9A70.s"
s32 JKRDvdFile::sync(void) {
    OSMessage message;
    OSLockMutex(&this->mMutex1);
    OSReceiveMessage(&this->mQueue2, &message, 1);
    this->mOSThread = NULL;
    OSUnlockMutex(&this->mMutex1);
    return (int)message;
}

// #include "JSystem/JKernel/JKRDvdFile/asm/func_802D9AC4.s"
void JKRDvdFile::doneProcess(long id, DVDFileInfo* fileInfo) {
    // fileInfo->field_0x3c looks like some kind of user pointer?
    JKRDvdFile* dvdFile = *(JKRDvdFile**)((u8*)fileInfo + 0x3c);
    OSSendMessage(&dvdFile->mQueue2, (OSMessage)id, 0);
}

// #include "JSystem/JKernel/JKRDvdFile/asm/func_802D9AF8.s"
s32 JKRDvdFile::getFileSize(void) const {
    return this->file_info.length;
}
