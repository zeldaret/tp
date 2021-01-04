#include "JSystem/JKernel/JKRFileFinder/JKRFileFinder.h"
#include "dvd/dvd.h"
#include "global.h"

asm JKRArcFinder::JKRArcFinder(JKRArchive*, long, long) {
    nofralloc
#include "JSystem/JKernel/JKRFileFinder/asm/func_802D4638.s"
}

asm bool JKRArcFinder::findNextFile(void){nofralloc
#include "JSystem/JKernel/JKRFileFinder/asm/func_802D46C4.s"
}

JKRDvdFinder::JKRDvdFinder(const char* directory)
    : JKRFileFinder() {
    mDvdIsOpen = DVDOpenDir(directory, &mDvdDirectory);
    mIsAvailable = mDvdIsOpen;
    findNextFile();
}

// JKRFileFinder::~JKRFileFinder is not inlined
#ifdef NONMATCHING
JKRDvdFinder::~JKRDvdFinder() {
    if (mDvdIsOpen) {
        DVDCloseDir(&mDvdDirectory);
    }
}
#else
asm JKRDvdFinder::~JKRDvdFinder() {
    nofralloc
#include "JSystem/JKernel/JKRFileFinder/asm/func_802D47F4.s"
}
#endif

bool JKRDvdFinder::findNextFile(void) {
    if (mIsAvailable) {
        DVDDirectoryEntry directoryEntry;
        mIsAvailable = DVDReadDir(&mDvdDirectory, &directoryEntry);

        if (mIsAvailable) {
            mIsFileOrDirectory = directoryEntry.is_directory != 0;
            mEntryName = directoryEntry.name;
            mEntryFileIndex = directoryEntry.entry_number;
            mEntryId = 0;

            bool test = mIsFileOrDirectory == true;
            u16 flags = 1;
            if(test) flags = 2;
            mEntryTypeFlags = flags;
        }
    }

    return mIsAvailable;
}

JKRFileFinder::~JKRFileFinder() {}

asm JKRArcFinder::~JKRArcFinder() {
    nofralloc
#include "JSystem/JKernel/JKRFileFinder/asm/func_802D4958.s"
}
