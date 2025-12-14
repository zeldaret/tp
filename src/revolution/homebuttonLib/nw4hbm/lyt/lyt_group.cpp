#include "group.h"

#include <cstring.h>
#include <new.h>

#include "../macros.h"

#include <revolution/types.h>

#include "common.h"
#include "layout.h"
#include "pane.h"
#include "types.h"

#include "../ut/LinkList.h"

namespace nw4hbm {
    namespace lyt {

        Group::Group() {
            Init();
        }

        Group::Group(res::Group const* pResGroup, Pane* pRootPane) {
            Init();
            std::memcpy(mName, pResGroup->name, sizeof mName);

            char const* paneName = detail::ConvertOffsToPtr<char>(pResGroup, sizeof *pResGroup);

            for (int i = 0; i < pResGroup->paneNum; ++i) {
                // Thank you int, very cool! (This is sarcasm. It is not "very cool".)
                Pane* pFindPane = pRootPane->FindPaneByName(paneName + (int)NAME_LENGTH * i, TRUE);

                if (pFindPane)
                    AppendPane(pFindPane);
            }
        }

        void Group::Init() {
            mbUserAllocated = FALSE;
        }

        Group::~Group() {
            NW4HBM_RANGE_FOR_NO_AUTO_INC(it, mPaneLinkList) {
                decltype(it) currIt = it++;

                mPaneLinkList.Erase(currIt);
                Layout::FreeMemory(&(*currIt));
            }
        }

        void Group::AppendPane(Pane* pPane) {
            if (void* pMem = Layout::AllocMemory(sizeof(detail::PaneLink))) {
                detail::PaneLink* pPaneLink = new (pMem) detail::PaneLink;

                pPaneLink->mTarget = pPane;
                mPaneLinkList.PushBack(pPaneLink);
            }
        }

        GroupContainer::~GroupContainer() {
            NW4HBM_RANGE_FOR_NO_AUTO_INC(it, mGroupList) {
                decltype(it) currIt = it++;

                mGroupList.Erase(currIt);

                if (!currIt->IsUserAllocated()) {
                    currIt->~Group();
                    Layout::FreeMemory(&(*currIt));
                }
            }
        }

        void GroupContainer::AppendGroup(Group* pGroup) {
            mGroupList.PushBack(pGroup);
        }

        Group* GroupContainer::FindGroupByName(char const* findName) {
            NW4HBM_RANGE_FOR(it, mGroupList) {
                if (detail::EqualsPaneName(it->GetName(), findName))
                    return &(*it);
            }

            return NULL;
        }

    }  // namespace lyt
}  // namespace nw4hbm
