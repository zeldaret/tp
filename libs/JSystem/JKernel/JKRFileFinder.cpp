#include "JSystem/JKernel/JKRFileFinder/JKRFileFinder.h"
#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "dvd/dvd.h"
#include "global.h"

JKRArcFinder::JKRArcFinder(JKRArchive* archive, long startIndex, long numEntries)
    : JKRFileFinder() {
    mArchive = archive;
    mIsAvailable = numEntries > 0;
    mStartIndex = startIndex;
    mEndIndex = startIndex + numEntries - 1;
    mNextIndex = mStartIndex;
    findNextFile();
}

bool JKRArcFinder::findNextFile(void) {
    JKRArchive::SDirEntry entry;

    if (mIsAvailable) {
        mIsAvailable = !(mNextIndex > mEndIndex);
        if (mIsAvailable) {
            mIsAvailable = mArchive->getDirEntry(&entry, mNextIndex);
            mEntryName = entry.name;
            mEntryFileIndex = mNextIndex;
            mEntryId = entry.id;
            mEntryTypeFlags = entry.type_flags;
            mIsFileOrDirectory = (mEntryTypeFlags >> 1) & 1;
            mNextIndex++;
        }
    }
    return mIsAvailable;
}

JKRDvdFinder::JKRDvdFinder(const char* directory) : JKRFileFinder() {
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

// everything matches except:
//       u16 flags = 1;
//       if(mIsFileOrDirectory) flags = 2;
//       mEntryTypeFlags = flags;
#ifdef NONMATCHING
bool JKRDvdFinder::findNextFile(void) {
    if (mIsAvailable) {
        DVDDirectoryEntry directoryEntry;
        mIsAvailable = DVDReadDir(&mDvdDirectory, &directoryEntry);

        if (mIsAvailable) {
            mIsFileOrDirectory = directoryEntry.is_directory != 0;
            mEntryName = directoryEntry.name;
            mEntryFileIndex = directoryEntry.entry_number;
            mEntryId = 0;

            u16 flags = 1;
            if (mIsFileOrDirectory)
                flags = 2;
            mEntryTypeFlags = flags;
        }
    }

    return mIsAvailable;
}
#else
asm bool JKRDvdFinder::findNextFile(void) {
    nofralloc
#include "JSystem/JKernel/JKRFileFinder/asm/func_802D4874.s"
}
#endif

JKRFileFinder::~JKRFileFinder() {}

// JKRFileFinder::~JKRFileFinder is not inlined (same problem as with JKRDvdFinder::~JKRDvdFinder)
#ifdef NONMATCHING
JKRArcFinder::~JKRArcFinder() {}
#else
asm JKRArcFinder::~JKRArcFinder() {
    nofralloc
#include "JSystem/JKernel/JKRFileFinder/asm/func_802D4958.s"
}
#endif