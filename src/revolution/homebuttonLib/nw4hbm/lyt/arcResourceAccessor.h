#ifndef NW4HBM_LYT_ARC_RESOURCE_ACCESSOR_H
#define NW4HBM_LYT_ARC_RESOURCE_ACCESSOR_H

#include <revolution/types.h>

#include "resourceAccessor.h"

#include "../ut/LinkList.h"

#include <revolution/arc.h>

// context declarations
namespace nw4hbm { namespace ut { class Font; }}

namespace nw4hbm {
    namespace lyt {
        class FontRefLink {
            // typedefs
        public:
            /* offsetof(FontRefLink, mLink) */
            typedef ut::LinkList<FontRefLink, 0> LinkList;

            // methods
        public:
            // cdtors
            FontRefLink();
            /* ~FontRefLink() = default; */

            // methods
            char const* GetFontName() const { return mFontName; }
            ut::Font* GetFont() const { return mpFont; }

            void Set(char const* name, ut::Font* pFont);

            // static members
        public:
            static u32 const FONT_NAME_SIZE = 128;

            // members
        private:
            ut::LinkListNode mLink;          // size 0x08, offset 0x00
            char mFontName[FONT_NAME_SIZE];  // size 0x80, offset 0x08
            ut::Font* mpFont;                // size 0x04, offset 0x88
        };  // size 0x8c

        class ArcResourceLink {
            // typedefs
        public:
            /* offsetof(ArcResourceLink, mLink) */
            typedef ut::LinkList<ArcResourceLink, 0> LinkList;

            // methods
        public:
            // cdtors
            /* ArcResourceLink() = default; */
            /* ~ArcResourceLink() = default; */

            // methods
            ARCHandle* GetArcHandle() { return &mArcHandle; }
            char const* GetResRootDir() const { return mResRootDir; }

            void* GetArchiveDataStart() const;

            bool Set(void* archiveStart, char const* resourceRootDirectory);

            // static members
        public:
            static u32 const RES_ROOT_DIR_SIZE = 128;

            // members
        private:
            ut::LinkListNode mLink;               // size 0x08, offset 0x00
            ARCHandle mArcHandle;                 // size 0x1c, offset 0x08
            char mResRootDir[RES_ROOT_DIR_SIZE];  // size 0x80, offset 0x24
        };  // size 0xa4

        class ArcResourceAccessor : public ResourceAccessor {
            // methods
        public:
            // cdtors
            ArcResourceAccessor();
            /* virtual ~ArcResourceAccessor() = default; */

            // virtual function ordering
            // vtable ResourceAccessor
            virtual void* GetResource(u32 resType, char const* name, u32* pSize);
            virtual ut::Font* GetFont(char const* name);

            // methods
            bool Attach(void* archiveStart, char const* resourceRootDirectory);
            void* Detach();

            void RegistFont(FontRefLink* pLink);
            void UnregistFont(FontRefLink* pLink);

            // static members
        public:
            static u32 const RES_ROOT_DIR_SIZE = 128;

            // members
        private:
            /* base ResourceAccessor */           // size 0x04, offset 0x00
            ARCHandle mArcHandle;                 // size 0x1c, offset 0x04
            void* mArcBuf;                        // size 0x04, offset 0x20
            FontRefLink::LinkList mFontList;      // size 0x0c, offset 0x24
            char mResRootDir[RES_ROOT_DIR_SIZE];  // size 0x80, offset 0x30
        };  // size 0xb0

        class MultiArcResourceAccessor : public ResourceAccessor {
            // methods
        public:
            // cdtors
            MultiArcResourceAccessor();
            virtual ~MultiArcResourceAccessor();

            // virtual function ordering
            // vtable ResourceAccessor
            virtual void* GetResource(u32 resType, char const* name, u32* pSize);
            virtual ut::Font* GetFont(char const* name);

            // methods
            void Attach(ArcResourceLink* pLink);
            void Detach(ArcResourceLink* pLink);
            void DetachAll();

            ArcResourceLink* Detach(void const* archiveStart);

            void RegistFont(FontRefLink* pLink);
            void UnregistFont(FontRefLink* pLink);

            // members
        private:
            /* base ResourceAccessor */          // size 0x04, offset 0x00
            ArcResourceLink::LinkList mArcList;  // size 0x08, offset 0x04
            FontRefLink::LinkList mFontList;     // size 0x08, offset 0x10
        };  // size 0x1c

        namespace detail {
            ut::Font* FindFont(FontRefLink::LinkList* pFontRefList, char const* name);
        }  // namespace detail
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_ARC_RESOURCE_ACCESSOR_H
