#include "HBMAnmController.h"

#include <revolution/types.h>

#include "HBMFrameController.h"

#include "nw4hbm/lyt/animation.h"
#include "nw4hbm/lyt/group.h"
#include "nw4hbm/lyt/pane.h"
#include "nw4hbm/ut/LinkList.h"

namespace homebutton {

    GroupAnmController::GroupAnmController() : mpGroup(NULL), mpAnimGroup(NULL) {}

    GroupAnmController::~GroupAnmController() {}

    void GroupAnmController::do_calc() {
        bool flag;

        if (mState == eState_Playing) {
            calc();

            flag = TRUE;

            mpAnimGroup->SetFrame(mCurFrame);
        } else {
            flag = FALSE;
        }

        nw4hbm::lyt::detail::PaneLink::LinkList& list = mpGroup->GetPaneList();

        NW4HBM_RANGE_FOR(it, list)
        it->mTarget->SetAnimationEnable(mpAnimGroup, flag, FALSE);
    }

}  // namespace homebutton
