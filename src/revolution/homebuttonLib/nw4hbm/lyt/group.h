#ifndef NW4HBM_LYT_GROUP_H
#define NW4HBM_LYT_GROUP_H

#include <revolution/types.h>

#include "../macros.h"

#include "common.h"
#include "pane.h"

#include "../ut/LinkList.h"

namespace nw4hbm {
    namespace lyt {
        namespace res {
            static u32 const SIGNATURE_GROUP_BLOCK = NW4HBM_FOUR_CHAR('g', 'r', 'p', '1');

            static u32 const SIGNATURE_GROUP_BLOCK_START = NW4HBM_FOUR_CHAR('g', 'r', 's', '1');
            static u32 const SIGNATURE_GROUP_BLOCK_END = NW4HBM_FOUR_CHAR('g', 'r', 'e', '1');

            struct Group {
                // static members
            public:
                static u32 const NAME_LENGTH = 16;

                // members
            public:
                DataBlockHeader blockHeader;  // size 0x08, offset 0x00
                char name[NAME_LENGTH];       // size 0x10, offset 0x08
                u16 paneNum;                  // size 0x02, offset 0x18
                u8 padding[2];
            };  // size 0x1c
        }  // namespace res

        class Group {
            // typedefs
        public:
            /* offsetof(Group, mLink) */
            typedef ut::LinkList<Group, 4> LinkList;

            // methods
        public:
            // cdtors
            Group();
            Group(res::Group const* pResGroup, Pane* pRootPane);
            virtual ~Group();

            // methods
            detail::PaneLink::LinkList& GetPaneList() { return mPaneLinkList; }
            char const* GetName() const { return mName; }
            bool IsUserAllocated() const { return mbUserAllocated; }

            void Init();
            void AppendPane(Pane* pPane);

            // static members
        public:
            static u32 const NAME_LENGTH = res::Group::NAME_LENGTH;

            // members
        private:
            /* vtable */                               // size 0x04, offset 0x00
            ut::LinkListNode mLink;                    // size 0x08, offset 0x04
            detail::PaneLink::LinkList mPaneLinkList;  // size 0x0c, offset 0x0c
            char mName[NAME_LENGTH];                   // size 0x10, offset 0x18
            bool mbUserAllocated;                      // size 0x01, offset 0x28
                                                       /* 3 bytes padding */
        };  // size 0x2c

        class GroupContainer {
            // methods
        public:
            // cdtors
            GroupContainer() {}
            ~GroupContainer();

            // methods
            void AppendGroup(Group* pGroup);
            Group* FindGroupByName(char const* findName);

            // members
        private:
            Group::LinkList mGroupList;  // size 0x0c, offset 0x00
        };  // size 0x0c
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_GROUP_H
