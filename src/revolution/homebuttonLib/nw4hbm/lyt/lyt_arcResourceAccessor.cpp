#include "arcResourceAccessor.h"

#include <cstring.h>
#include <extras.h>

#include "../macros.h"

#include <revolution/types.h>

#include "../ut/LinkList.h"

#include <revolution/arc.h>

namespace {
    using namespace nw4hbm;
    using namespace nw4hbm::lyt;

    s32 FindNameResource(ARCHandle* pArcHandle, char const* resName);
    void* GetResourceSub(ARCHandle* pArcHandle, char const* resRootDir, u32 resType,
                         char const* name, u32* pSize);
}  // unnamed namespace

namespace {

    s32 FindNameResource(ARCHandle* pArcHandle, char const* resName) {
        s32 entryNum = ARC_ENTRY_NUM_INVALID;

        ARCDir dir;
        BOOL bSuccess = ARCOpenDir(pArcHandle, ".", &dir);

        ARCDirEntry dirEntry;
        while (ARCReadDir(&dir, &dirEntry)) {
            if (dirEntry.isDir) {
                bSuccess = ARCChangeDir(pArcHandle, dirEntry.name);
                entryNum = FindNameResource(pArcHandle, resName);
                bSuccess = ARCChangeDir(pArcHandle, "..");

                if (entryNum != ARC_ENTRY_NUM_INVALID)
                    break;
            } else if (stricmp(resName, dirEntry.name) == 0) {
                entryNum = dirEntry.entryNum;
                break;
            }
        }

        bSuccess = ARCCloseDir(&dir);

        // stripped assert? maybe on bSuccess?
        (void)0;

        return entryNum;
    }

    void* GetResourceSub(ARCHandle* pArcHandle, char const* resRootDir, u32 resType,
                         char const* name, u32* pSize) {
        s32 entryNum = ARC_ENTRY_NUM_INVALID;

        if (ARCConvertPathToEntrynum(pArcHandle, resRootDir) != ARC_ENTRY_NUM_INVALID &&
            ARCChangeDir(pArcHandle, resRootDir))
        {
            if (!resType) {
                entryNum = FindNameResource(pArcHandle, name);
            } else {
                char resTypeStr[sizeof(u32) + 1];
                resTypeStr[0] = resType >> 24;
                resTypeStr[1] = resType >> 16;
                resTypeStr[2] = resType >> 8;
                resTypeStr[3] = resType;
                resTypeStr[4] = '\0';

                if (ARCConvertPathToEntrynum(pArcHandle, resTypeStr) != ARC_ENTRY_NUM_INVALID &&
                    ARCChangeDir(pArcHandle, resTypeStr))
                {
                    entryNum = ARCConvertPathToEntrynum(pArcHandle, name);
                    BOOL bSuccess = ARCChangeDir(pArcHandle, "..");
                }
            }

            BOOL bSuccess = ARCChangeDir(pArcHandle, "..");
        }

        if (entryNum != ARC_ENTRY_NUM_INVALID) {
            ARCFileInfo arcFileInfo;
            BOOL bSuccess = ARCFastOpen(pArcHandle, entryNum, &arcFileInfo);

            void* resPtr = ARCGetStartAddrInMem(&arcFileInfo);

            if (pSize)
                *pSize = ARCGetLength(&arcFileInfo);

            ARCClose(&arcFileInfo);

            return resPtr;
        }

        return NULL;
    }

}  // unnamed namespace

namespace nw4hbm {
    namespace lyt {

        FontRefLink::FontRefLink() : mpFont(NULL) {}

        void FontRefLink::Set(char const* name, ut::Font* pFont) {
            std::strcpy(mFontName, name);

            mpFont = pFont;
        }

        namespace detail {

            ut::Font* FindFont(FontRefLink::LinkList* pFontRefList, char const* name) {
                NW4HBM_RANGE_FOR(it, *pFontRefList) {
                    if (std::strcmp(name, it->GetFontName()) == 0)
                        return it->GetFont();
                }

                return NULL;
            }

        }  // namespace detail

        ArcResourceAccessor::ArcResourceAccessor() : mArcBuf(NULL) {}

        bool ArcResourceAccessor::Attach(void* archiveStart, char const* resourceRootDirectory) {
            BOOL bSuccess = ARCInitHandle(archiveStart, &mArcHandle);

            if (!bSuccess)
                return FALSE;

            mArcBuf = archiveStart;

            std::strncpy(mResRootDir, resourceRootDirectory, RES_ROOT_DIR_SIZE - 1);
            mResRootDir[RES_ROOT_DIR_SIZE - 1] = '\0';

            return TRUE;
        }

        void* ArcResourceAccessor::Detach() {
            void* ret = mArcBuf;

            mArcBuf = NULL;

            return ret;
        }

        void* ArcResourceAccessor::GetResource(u32 resType, char const* name, u32* pSize) {
            return GetResourceSub(&mArcHandle, mResRootDir, resType, name, pSize);
        }

        bool ArcResourceLink::Set(void* archiveStart, char const* resourceRootDirectory) {
            BOOL bSuccess = ARCInitHandle(archiveStart, &mArcHandle);

            if (!bSuccess)
                return FALSE;

            std::strncpy(mResRootDir, resourceRootDirectory, RES_ROOT_DIR_SIZE - 1);
            mResRootDir[RES_ROOT_DIR_SIZE - 1] = '\0';

            return TRUE;
        }

        void* ArcResourceLink::GetArchiveDataStart() const {
            return mArcHandle.archiveStartAddr;
        }

        void ArcResourceAccessor::RegistFont(FontRefLink* pLink) {
            mFontList.PushBack(pLink);
        }

        void ArcResourceAccessor::UnregistFont(FontRefLink* pLink) {
            mFontList.Erase(pLink);
        }

        ut::Font* ArcResourceAccessor::GetFont(char const* name) {
            return detail::FindFont(&mFontList, name);
        }

        MultiArcResourceAccessor::MultiArcResourceAccessor() {}

        MultiArcResourceAccessor::~MultiArcResourceAccessor() {
            DetachAll();
        }

        void MultiArcResourceAccessor::Attach(ArcResourceLink* pLink) {
            mArcList.PushBack(pLink);
        }

        ArcResourceLink* MultiArcResourceAccessor::Detach(void const* archiveStart) {
            NW4HBM_RANGE_FOR(it, mArcList) {
                if (archiveStart == it->GetArchiveDataStart()) {
                    ArcResourceLink* ret = &(*it);

                    mArcList.Erase(it);

                    return ret;
                }
            }

            return NULL;
        }

        void MultiArcResourceAccessor::Detach(ArcResourceLink* pLink) {
            mArcList.Erase(pLink);
        }

        void MultiArcResourceAccessor::DetachAll() {
            // Who is doing this

            // TODO(FAKE): What
            // NOTE: C-style cast is for static_cast with extensions to private bases
            ((ut::detail::LinkListImpl*)&mArcList)->Clear();
        }

        void* MultiArcResourceAccessor::GetResource(u32 resType, char const* name, u32* pSize) {
            NW4HBM_RANGE_FOR(it, mArcList) {
                ARCHandle* pArcHandle = it->GetArcHandle();

                if (void* resPtr =
                        GetResourceSub(pArcHandle, it->GetResRootDir(), resType, name, pSize))
                {
                    return resPtr;
                }
            }

            return NULL;
        }

        void MultiArcResourceAccessor::RegistFont(FontRefLink* pLink) {
            mFontList.PushBack(pLink);
        }

        void MultiArcResourceAccessor::UnregistFont(FontRefLink* pLink) {
            mFontList.Erase(pLink);
        }

        ut::Font* MultiArcResourceAccessor::GetFont(char const* name) {
            return detail::FindFont(&mFontList, name);
        }

    }  // namespace lyt
}  // namespace nw4hbm
