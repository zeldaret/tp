#include "JSystem/JKernel/JKRFileFinder.h"
#include "JSystem/JKernel/JKRArchive.h"

/* 802D4638-802D46C4 2CEF78 008C+00 0/0 1/1 0/0 .text __ct__12JKRArcFinderFP10JKRArchivell */
JKRArcFinder::JKRArcFinder(JKRArchive* archive, s32 startIndex, s32 numEntries) : JKRFileFinder() {
    mArchive = archive;
    mIsAvailable = numEntries > 0;
    mStartIndex = startIndex;
    mEndIndex = startIndex + numEntries - 1;
    mNextIndex = mStartIndex;
    findNextFile();
}

/* 802D46C4-802D4770 2CF004 00AC+00 1/0 0/0 0/0 .text            findNextFile__12JKRArcFinderFv */
bool JKRArcFinder::findNextFile(void) {
    JKRArchive::SDirEntry entry;

    if (mIsAvailable) {
        mIsAvailable = !(mNextIndex > mEndIndex);
        if (mIsAvailable) {
            mIsAvailable = mArchive->getDirEntry(&entry, mNextIndex);
            mEntryName = entry.name;
            mEntryFileIndex = mNextIndex;
            mEntryId = entry.id;
            mEntryTypeFlags = entry.flags;
            mIsFileOrDirectory = (mEntryTypeFlags >> 1) & 1;
            mNextIndex++;
        }
    }
    return mIsAvailable;
}

/* 802D4770-802D47F4 2CF0B0 0084+00 0/0 1/1 0/0 .text            __ct__12JKRDvdFinderFPCc */
JKRDvdFinder::JKRDvdFinder(const char* directory) : JKRFileFinder() {
    mDvdIsOpen = DVDOpenDir(directory, &mDvdDirectory);
    mIsAvailable = mDvdIsOpen;
    findNextFile();
}

/* 802D47F4-802D4874 2CF134 0080+00 1/0 0/0 0/0 .text            __dt__12JKRDvdFinderFv */
JKRDvdFinder::~JKRDvdFinder() {
    if (mDvdIsOpen) {
        DVDCloseDir(&mDvdDirectory);
    }
}

/* 802D4874-802D4910 2CF1B4 009C+00 1/0 0/0 0/0 .text            findNextFile__12JKRDvdFinderFv */
bool JKRDvdFinder::findNextFile(void) {
    if (mIsAvailable) {
        DVDDirectoryEntry directoryEntry;
        mIsAvailable = DVDReadDir(&mDvdDirectory, &directoryEntry);

        if (mIsAvailable) {
            mIsFileOrDirectory = directoryEntry.is_directory != 0;
            mEntryName = directoryEntry.name;
            mEntryFileIndex = directoryEntry.entry_number;
            mEntryId = 0;

            // only matches with enum
            // TODO: placeholder
            enum EntryTypeFlags {
                EntryTypeFlags1 = 1,
                EntryTypeFlags2 = 2,
            };
            mEntryTypeFlags = mIsFileOrDirectory ? EntryTypeFlags2 : EntryTypeFlags1;
        }
    }

    return mIsAvailable;
}
