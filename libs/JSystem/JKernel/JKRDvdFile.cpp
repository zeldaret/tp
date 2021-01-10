#include "JSystem/JKernel/JKRDvdFile/JKRDvdFile.h"
#include "global.h"

JKRDvdFile::JKRDvdFile() : JKRFile(), mDvdLink(this) {
    initiate();
}

JKRDvdFile::JKRDvdFile(const char* name) : JKRFile(), mDvdLink(this) {
    initiate();
    bool result = open(name);
    mIsAvailable = result;
    // weird code. doesn't match without this, maybe remains from assert or something?
    if (mIsAvailable)
        return;
    else
        return;
}

JKRDvdFile::JKRDvdFile(long entryNum) : JKRFile(), mDvdLink(this) {
    initiate();
    bool result = open(entryNum);
    mIsAvailable = result;
    // weird code. doesn't match without this, maybe remains from assert or something?
    if (mIsAvailable)
        return;
    else
        return;
}

JKRDvdFile::~JKRDvdFile() {
    close();
}

void JKRDvdFile::initiate(void) {
    mDvdFile = this;
    OSInitMutex(&mMutex1);
    OSInitMutex(&mMutex2);
    OSInitMessageQueue(&mMessageQueue2, &mMessage2, 1);
    OSInitMessageQueue(&mMessageQueue1, &mMessage1, 1);
    mOSThread = NULL;
    field_0x50 = 0;
    field_0x58 = 0;
}

bool JKRDvdFile::open(const char* param_1) {
    if (!mIsAvailable) {
        mIsAvailable = DVDOpen(param_1, &mFileInfo);
        if (mIsAvailable) {
            getDvdList().append(&mDvdLink);
            getStatus();
        }
    }
    return mIsAvailable;
}

bool JKRDvdFile::open(long entryNum) {
    if (!mIsAvailable) {
        mIsAvailable = DVDFastOpen(entryNum, &mFileInfo);
        if (mIsAvailable) {
            getDvdList().append(&mDvdLink);
            getStatus();
        }
    }
    return mIsAvailable;
}

void JKRDvdFile::close() {
    if (mIsAvailable) {
        s32 result = DVDClose(&mFileInfo);
        if (result != 0) {
            mIsAvailable = false;
            getDvdList().remove(&mDvdLink);
        } else {
            const char* filename = lbl_8039D260;       // "JKRDvdFile.cpp"
            const char* format = lbl_8039D260 + 0x0F;  // "%s"
            const char* arg1 = lbl_8039D260 + 0x12;    // "cannot close DVD file\n"
            JUTException_NS_panic_f(filename, 0xd5, format, arg1);
        }
    }
}

s32 JKRDvdFile::readData(void* param_1, long length, long param_3) {
    JUT_ASSERT((length & 0x1f) == 0);

    OSLockMutex(&mMutex1);
    if (mOSThread) {
        OSUnlockMutex(&mMutex1);
        return -1;
    }

    mOSThread = OSGetCurrentThread();

    s32 result = -1;
    s32 readAsyncResult =
        DVDReadAsyncPrio(&mFileInfo, param_1, length, param_3, JKRDvdFile::doneProcess, 2);
    if (readAsyncResult) {
        result = sync();
    }

    mOSThread = NULL;
    OSUnlockMutex(&mMutex1);

    return result;
}

s32 JKRDvdFile::writeData(const void*, long, long) {
    return -1;
}

s32 JKRDvdFile::sync(void) {
    OSMessage message;
    OSLockMutex(&mMutex1);
    OSReceiveMessage(&mMessageQueue2, &message, 1);
    mOSThread = NULL;
    OSUnlockMutex(&mMutex1);
    return (int)message;
}

void JKRDvdFile::doneProcess(long id, DVDFileInfo* fileInfo) {
    // fileInfo->field_0x3c looks like some kind of user pointer?
    JKRDvdFile* dvdFile = *(JKRDvdFile**)((u8*)fileInfo + 0x3c);
    OSSendMessage(&dvdFile->mMessageQueue2, (OSMessage)id, OS_MESSAGE_NON_BLOCKING);
}

s32 JKRDvdFile::getFileSize(void) const {
    return mFileInfo.length;
}
