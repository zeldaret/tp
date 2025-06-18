#include "JSystem/JMessage/processor.h"
#include "JSystem/JMessage/control.h"
#include "JSystem/JUtility/JUTAssert.h"
#include <cstdint.h>

/* 802A7AF8-802A7B40 2A2438 0048+00 1/0 2/2 0/0 .text            __dt__Q28JMessage10TReferenceFv */
JMessage::TReference::~TReference() {}

/* 802A7B40-802A7B48 2A2480 0008+00 1/0 2/0 0/0 .text do_word__Q28JMessage10TReferenceCFUl */
const char* JMessage::TReference::do_word(u32 param_0) const {
    return NULL;
}

/* 802A7B48-802A7B90 2A2488 0048+00 3/2 0/0 0/0 .text            __dt__Q28JMessage10TProcessorFv */
JMessage::TProcessor::~TProcessor() {}

/* 802A7B90-802A7BF8 2A24D0 0068+00 0/0 1/1 0/0 .text            reset__Q28JMessage10TProcessorFv */
void JMessage::TProcessor::reset() {
    on_resetStatus_(NULL);
    do_reset();
}

/* 802A7BF8-802A7C30 2A2538 0038+00 1/1 8/8 0/0 .text
 * stack_pushCurrent__Q28JMessage10TProcessorFPCc               */
void JMessage::TProcessor::stack_pushCurrent(char const* pszText) {
    if (pszText != NULL) {
        if (!oStack_.IsPushable()) {
            JGADGET_WARNMSG(113, "stack full");
            return;
        }

        stack_pushCurrent_(pszText);
    }
}

/* 802A7C30-802A7C54 2A2570 0024+00 1/1 0/0 0/0 .text stack_popCurrent__Q28JMessage10TProcessorFv
 */
void JMessage::TProcessor::stack_popCurrent() {
    JGADGET_ASSERTWARN(122, !oStack_.empty());
    stack_popCurrent_();
}

/* 802A7C54-802A7CD4 2A2594 0080+00 1/1 1/1 0/0 .text
 * getResource_groupID__Q28JMessage10TProcessorCFUs             */
const JMessage::TResource* JMessage::TProcessor::getResource_groupID(u16 u16GroupID) const {
    if (isResourceCache_groupID(u16GroupID)) {
        return pResourceCache_;
    }

    pResourceCache_ = getResource_groupID_uncached(u16GroupID);
    return pResourceCache_;
}

/* 802A7CD4-802A7E38 2A2614 0164+00 0/0 1/1 0/0 .text
 * toMessageCode_messageID__Q28JMessage10TProcessorCFUlUlPb     */
// NONMATCHING - regalloc, likely due to wrong enumerator implementation
u32 JMessage::TProcessor::toMessageCode_messageID(u32 uMsgID, u32 param_1, bool* pbValid) const {
    const TResource* pResourceCache = getResourceCache();
    if (pResourceCache != NULL) {
        u16 u16Index = pResourceCache->toMessageIndex_messageID(uMsgID, param_1, pbValid);
        if (u16Index != 0xFFFF) {
            return u16Index | (pResourceCache->getGroupID() << 16);
        }
    }

    TResourceContainer* pResourceContainer = getResourceContainer();
    if (pResourceContainer == NULL) {
        return 0xFFFFFFFF;
    }

    JGadget::TContainerEnumerator_const<JMessage::TResource, 0> enumerator(pResourceContainer->getResourceContainer());
    const TResource* pResource;
    while (enumerator) {
        pResource = (const TResource*)&(*enumerator);
        if (pResource != pResourceCache) {
            u16 u16Index = pResource->toMessageIndex_messageID(uMsgID, param_1, pbValid);
            if (u16Index != 0xFFFF) {
                ((JMessage::TProcessor*)this)->pResourceCache_ = pResource;
                return u16Index | (pResource->getGroupID() << 16);
            }
        }
    }

    return 0xFFFFFFFF;
}

/* 802A7E38-802A7EDC 2A2778 00A4+00 1/1 0/0 0/0 .text
 * on_select_begin__Q28JMessage10TProcessorFPFPQ28JMessage10TProcessor_PCcPCvPCcUl */
void JMessage::TProcessor::on_select_begin(char const* (*pfn)(JMessage::TProcessor*),
                                           void const* pOffset, char const* pcBase, u32 uNumber) {
    JUT_ASSERT(191, uNumber>0);

    if (!stack_isPushable()) {
        JGADGET_WARNMSG(194, "stack full");
    } else {
        oProcess_.reset_select();

        oProcess_.rData.pfn = pfn;
        oProcess_.rData.pcBase = pcBase;
        oProcess_.rData.pOffset = pOffset;
        oProcess_.rData.uRest = uNumber;
        
        JUT_ASSERT(205, pfn!=0);
        const char* psz = pfn(this);
        JUT_ASSERT(207, psz!=0);
    
        stack_pushCurrent_(psz);
        do_select_begin(uNumber);
    }
}

/* 802A7EDC-802A7F34 2A281C 0058+00 1/1 0/0 0/0 .text on_select_end__Q28JMessage10TProcessorFv */
void JMessage::TProcessor::on_select_end() {
    TProcess_::rdata& rData = oProcess_.rData;
    JUT_ASSERT(219, rData.uRest==0);
    oProcess_.reset_normal();

    JUT_ASSERT(223, stack_isPushable());
    stack_popCurrent_();
    do_select_end();
}

/* 802A7F34-802A7FC0 2A2874 008C+00 1/1 0/0 0/0 .text
 * on_select_separate__Q28JMessage10TProcessorFv                */
void JMessage::TProcessor::on_select_separate() {
    stack_popCurrent_();
    JUT_ASSERT(234, stack_isPushable());

    TProcess_::rdata& rData = oProcess_.rData;
    JUT_ASSERT(237, rData.uRest>0);

    const char* (*pfn)(TProcessor*) = rData.pfn;
    JUT_ASSERT(240, pfn!=0);

    const char* psz = pfn(this);
    JUT_ASSERT(242, psz!=0);

    stack_pushCurrent_(psz);
    do_select_separate();
}

/* 802A7FC0-802A7FC4 2A2900 0004+00 3/0 2/0 0/0 .text            do_reset__Q28JMessage10TProcessorFv
 */
void JMessage::TProcessor::do_reset() {}

/* 802A7FC4-802A7FC8 2A2904 0004+00 3/0 0/0 0/0 .text do_begin__Q28JMessage10TProcessorFPCvPCc */
void JMessage::TProcessor::do_begin(void const* pEntry, char const* pszText) {}

/* 802A7FC8-802A7FCC 2A2908 0004+00 3/0 0/0 0/0 .text            do_end__Q28JMessage10TProcessorFv
 */
void JMessage::TProcessor::do_end() {}

/* 802A7FCC-802A7FD0 2A290C 0004+00 3/0 0/0 0/0 .text do_character__Q28JMessage10TProcessorFi */
void JMessage::TProcessor::do_character(int iCharacter) {}

/* 802A7FD0-802A7FD8 2A2910 0008+00 3/0 0/0 0/0 .text do_tag__Q28JMessage10TProcessorFUlPCvUl */
bool JMessage::TProcessor::do_tag(u32 uTag, void const* pData, u32 uSize) {
    return false;
}

/* 802A7FD8-802A7FDC 2A2918 0004+00 3/0 6/0 0/0 .text do_select_begin__Q28JMessage10TProcessorFUl
 */
void JMessage::TProcessor::do_select_begin(u32 uNumber) {}

/* 802A7FDC-802A7FE0 2A291C 0004+00 3/0 6/0 0/0 .text do_select_end__Q28JMessage10TProcessorFv */
void JMessage::TProcessor::do_select_end() {}

/* 802A7FE0-802A7FE4 2A2920 0004+00 3/0 6/0 0/0 .text
 * do_select_separate__Q28JMessage10TProcessorFv                */
void JMessage::TProcessor::do_select_separate() {}

/* 802A7FE4-802A8084 2A2924 00A0+00 1/1 0/0 0/0 .text            on_tag___Q28JMessage10TProcessorFv
 */
void JMessage::TProcessor::on_tag_() {
    u32 uSize;
    char* psz = (char*)getCurrent();
    JUT_ASSERT(292, psz!=0);
    JUT_ASSERT(293, psz[-1]==data::gcTagBegin);

    uSize = *(u8*)psz;
    pszCurrent_ = uSize + psz - 1;

    psz++;

    u32 uTag = *(u8*)psz & 0xFF;
    psz++;

    uTag <<= 8;
    uTag |= *(u8*)psz & 0xFF;
    psz++;

    uTag <<= 8;
    uTag |= *(u8*)psz & 0xFF;
    psz++;

    on_tag(uTag, psz, uSize - 5);
}

/* 802A8084-802A8088 2A29C4 0004+00 2/0 4/0 0/0 .text do_resetStatus___Q28JMessage10TProcessorFPCc
 */
void JMessage::TProcessor::do_resetStatus_(char const* pszText) {}

/* 802A8088-802A8090 2A29C8 0008+00 2/0 4/0 0/0 .text
 * do_setBegin_isReady___Q28JMessage10TProcessorCFv             */
bool JMessage::TProcessor::do_setBegin_isReady_() const {
    return true;
}

/* 802A8090-802A81EC 2A29D0 015C+00 2/2 0/0 0/0 .text do_tag___Q28JMessage10TProcessorFUlPCvUl */
void JMessage::TProcessor::do_tag_(u32 uTag, void const* pData, u32 uSize) {
    u8 uGroupID = data::getTagGroup(uTag);
    unsigned int uCode = data::getTagCode(uTag);

    switch (uGroupID) {
    case 0xFF:
        switch (uCode & 0xFFFF) {
        case 4:
            JUT_ASSERT(331, uSize==4);
            stack_pushCurrent(on_word(JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u32> >::parse(pData)));
            break;
        case 5:
            JUT_ASSERT(341, uSize==4);
            stack_pushCurrent(on_message(JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u32> >::parse(pData)));
            break;
        default:
            JGADGET_WARNMSG1(351, "unknown system-tag-code : ", uCode & 0xFFFF);
        }
        break;
    case 0xFE:
        JUT_ASSERT(356, uSize==0);
        stack_pushCurrent(on_word(uCode & 0xFFFF));
        break;
    case 0xFD:
        JUT_ASSERT(361, uSize==0);
        stack_pushCurrent(on_message_limited(uCode));
        break;
    case 0xF6: {
        u32 uNumber = uCode & 0xFFFF;
        JUT_ASSERT(368, uSize==4*uNumber);
        on_select_begin(process_onSelect_limited_, pData, (char*)pData + uSize, uCode);
        break;
    }
    case 0xF5:
        u32 uNumber = uCode & 0xFFFF;
        JUT_ASSERT(377, uSize==4*uNumber);
        on_select_begin(process_onSelect_, pData, (char*)pData + uSize, uCode);
        break;
    }

    JGADGET_WARNMSG4(387, "unknown tag-value : [", (unsigned int)uGroupID, "-", uCode & 0xFFFF, ']');
}

/* 802A81EC-802A828C 2A2B2C 00A0+00 2/2 0/0 0/0 .text
 * process_character___Q28JMessage10TProcessorFv                */
bool JMessage::TProcessor::process_character_() {
    JUT_ASSERT(397, pszCurrent_!=0);
    int iCharacter = on_parseCharacter(&pszCurrent_);

    switch (iCharacter) {
    case 0:
        if (!oProcess_.pfnProcess_onCharacterEnd(this)) {
            return false;
        }
        break;
    case data::gcTagBegin:
        on_tag_();
        break;
    default:
        on_character(iCharacter);
    }

    return true;
}

/* 802A828C-802A82F4 2A2BCC 0068+00 6/6 6/6 0/0 .text
 * process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor */
bool JMessage::TProcessor::process_onCharacterEnd_normal_(JMessage::TProcessor* pThis) {
    JUT_ASSERT(420, pThis->oProcess_.pfnProcess_onCharacterEnd== &process_onCharacterEnd_normal_);

    if (!pThis->oStack_.empty()) {
        pThis->stack_popCurrent();
        return true;
    }

    pThis->on_end();
    return false;
}

/* 802A82F4-802A833C 2A2C34 0048+00 1/1 0/0 0/0 .text
 * process_onCharacterEnd_select___Q28JMessage10TProcessorFPQ28JMessage10TProcessor */
bool JMessage::TProcessor::process_onCharacterEnd_select_(JMessage::TProcessor* pThis) {
    JUT_ASSERT(435, pThis->oProcess_.pfnProcess_onCharacterEnd== &process_onCharacterEnd_select_);
    JUT_ASSERT(436, !pThis->oStack_.empty());

    TProcess_::rdata& rData = pThis->oProcess_.rData;
    rData.uRest--;

    u32 uRest = rData.uRest;
    if (uRest != 0) {
        pThis->on_select_separate();
        return true;
    }

    pThis->on_select_end();
    return true;
}

/* 802A833C-802A8358 2A2C7C 001C+00 1/1 0/0 0/0 .text
 * process_onSelect_limited___Q28JMessage10TProcessorFPQ28JMessage10TProcessor */
const char* JMessage::TProcessor::process_onSelect_limited_(JMessage::TProcessor* pThis) {
    TProcess_::rdata& rData = pThis->oProcess_.rData;
    JUT_ASSERT(454, rData.pfn==&process_onSelect_limited_);
    JUT_ASSERT(455, rData.pcBase!=0);
    JUT_ASSERT(456, rData.pOffset!=0);
    JUT_ASSERT(457, rData.uRest>0);

    u16* puOffset = (u16*)rData.pOffset;
    u16 uData = JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u16> >::parse(puOffset);

    rData.pOffset = (void*)(puOffset + 1);
    return &rData.pcBase[uData];
}

/* 802A8358-802A8374 2A2C98 001C+00 1/1 0/0 0/0 .text
 * process_onSelect___Q28JMessage10TProcessorFPQ28JMessage10TProcessor */
const char* JMessage::TProcessor::process_onSelect_(JMessage::TProcessor* pThis) {
    TProcess_::rdata& rData = pThis->oProcess_.rData;
    JUT_ASSERT(471, rData.pfn==&process_onSelect_);
    JUT_ASSERT(472, rData.pcBase!=0);
    JUT_ASSERT(473, rData.pOffset!=0);
    JUT_ASSERT(474, rData.uRest>0);

    u32* puOffset = (u32*)rData.pOffset;
    u32 uData = JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u32> >::parse(puOffset);

    rData.pOffset = (void*)(puOffset + 1);
    return &rData.pcBase[uData];
}

/* 802A8374-802A83B8 2A2CB4 0044+00 0/0 2/2 0/0 .text
 * __ct__Q28JMessage18TSequenceProcessorFPCQ28JMessage10TReferencePQ28JMessage8TControl */
JMessage::TSequenceProcessor::TSequenceProcessor(JMessage::TReference const* pReference,
                                                 JMessage::TControl* pControl)
    : TProcessor(pReference),
      pControl_(pControl),
      eStatus_(STATUS_READY)
      {}

/* 802A83B8-802A8418 2A2CF8 0060+00 1/0 2/2 0/0 .text __dt__Q28JMessage18TSequenceProcessorFv */
JMessage::TSequenceProcessor::~TSequenceProcessor() {}

/* 802A8418-802A85A4 2A2D58 018C+00 0/0 1/1 0/0 .text process__Q28JMessage18TSequenceProcessorFPCc
 */
const char* JMessage::TSequenceProcessor::process(char const* pszText) {
    do {
        switch (eStatus_) {
        case STATUS_NORMAL:
            break;
        case STATUS_JUMP: {
            JUT_ASSERT(549, pControl_!=0);

            if (!on_jump_isReady()) {
                return pszCurrent_;
            }

            eStatus_ = STATUS_NORMAL;

            TProcess_& process = oProcess2_;
            TSequenceProcessor::jumpPfn pfn = process.process.jump_process.jumpFn;
            JUT_ASSERT(556, pfn!=0);

            const void* pEntry = pfn(this);
            if (pEntry != NULL) {
                on_jump(pEntry, pControl_->getMessageText_begin());
            }
            break;
        }
        case STATUS_BRANCH: {
            JUT_ASSERT(567, pControl_!=0);

            u32 queryResult = on_branch_queryResult();
            if (queryResult > 0x7FFFFFFF) {
                switch (queryResult) {
                case -1:
                    return pszCurrent_;
                case -2:
                    eStatus_ = STATUS_NORMAL;
                    break;
                default:
                    JUT_ASSERT(579, false);
                }
            } else {
                eStatus_ = STATUS_NORMAL;

                TProcess_& process = oProcess2_;
                if (queryResult >= process.process.branch_process.uTarget) {
                    JGADGET_WARNMSG1(588, "unknown result : ", queryResult);
                } else {
                    TSequenceProcessor::branchPfn pfn = process.process.branch_process.branchFn;
                    JUT_ASSERT(592, pfn!=0);

                    const void* pEntry = pfn(this, queryResult);
                    if (pEntry != NULL) {
                        on_branch(pEntry, pControl_->getMessageText_begin());
                    }
                }
            }
            break;
        }
        default:
            JUT_ASSERT(602, false);
        }

        if (pszCurrent_ == pszText) {
            on_end();
            return NULL;
        }

        if (!on_isReady()) {
            return pszCurrent_;
        }
    } while (process_character_());

    return NULL;
}

/* 802A85A4-802A85D0 2A2EE4 002C+00 1/1 0/0 0/0 .text
 * on_isReady__Q28JMessage18TSequenceProcessorFv                */
bool JMessage::TSequenceProcessor::on_isReady() {
    JUT_ASSERT(629, eStatus_==STATUS_NORMAL);
    return do_isReady();
}

/* 802A85D0-802A85E4 2A2F10 0014+00 1/1 0/0 0/0 .text
 * on_jump_register__Q28JMessage18TSequenceProcessorFPFPCQ28JMessage18TSequenceProcessor_PCvUl */
void JMessage::TSequenceProcessor::on_jump_register(JMessage::TSequenceProcessor::jumpPfn pfn, u32 u32Target) {
    JUT_ASSERT(638, eStatus_==STATUS_NORMAL);
    eStatus_ = STATUS_JUMP;

    TProcess_& process = oProcess2_;
    process.process.jump_process.jumpFn = pfn;
    process.process.jump_process.u32Target = u32Target;
}

/* 802A85E4-802A8610 2A2F24 002C+00 1/1 0/0 0/0 .text
 * on_jump_isReady__Q28JMessage18TSequenceProcessorFv           */
bool JMessage::TSequenceProcessor::on_jump_isReady() {
    JUT_ASSERT(649, eStatus_==STATUS_JUMP);
    return do_jump_isReady();
}

/* 802A8610-802A8690 2A2F50 0080+00 1/1 0/0 0/0 .text
 * on_jump__Q28JMessage18TSequenceProcessorFPCvPCc              */
void JMessage::TSequenceProcessor::on_jump(void const* pEntry, char const* pszText) {
    on_resetStatus_(pszText);

    JUT_ASSERT(658, eStatus_==STATUS_NORMAL);
    JUT_ASSERT(659, pEntry!=0);
    JUT_ASSERT(660, pszText!=0);
    do_jump(pEntry, pszText);
}

/* 802A8690-802A86A0 2A2FD0 0010+00 1/1 0/0 0/0 .text
 * on_branch_register__Q28JMessage18TSequenceProcessorFPFPCQ28JMessage18TSequenceProcessorUl_PCvPCvUl
 */
void JMessage::TSequenceProcessor::on_branch_register(JMessage::TSequenceProcessor::branchPfn pfn, void const* pTarget, u32 uTarget) {
    JUT_ASSERT(669, eStatus_==STATUS_NORMAL);

    TProcess_& process = oProcess2_;
    process.process.branch_process.branchFn = pfn;
    process.process.branch_process.pTarget = pTarget;
    process.process.branch_process.uTarget = uTarget;
}

/* 802A86A0-802A86D4 2A2FE0 0034+00 1/1 0/0 0/0 .text
 * on_branch_query__Q28JMessage18TSequenceProcessorFUl          */
void JMessage::TSequenceProcessor::on_branch_query(u32 uCode) {
    JUT_ASSERT(680, eStatus_==STATUS_NORMAL);
    eStatus_ = STATUS_BRANCH;
    do_branch_query(uCode);
}

/* 802A86D4-802A8700 2A3014 002C+00 1/1 0/0 0/0 .text
 * on_branch_queryResult__Q28JMessage18TSequenceProcessorFv     */
u32 JMessage::TSequenceProcessor::on_branch_queryResult() {
    JUT_ASSERT(691, eStatus_==STATUS_BRANCH);
    u32 result = do_branch_queryResult();
    return result;
}

/* 802A8700-802A8780 2A3040 0080+00 1/1 0/0 0/0 .text
 * on_branch__Q28JMessage18TSequenceProcessorFPCvPCc            */
void JMessage::TSequenceProcessor::on_branch(void const* pEntry, char const* pszText) {
    on_resetStatus_(pszText);

    JUT_ASSERT(717, eStatus_==STATUS_NORMAL);
    JUT_ASSERT(718, pEntry!=0);
    JUT_ASSERT(719, pszText!=0);
    do_branch(pEntry, pszText);
}

/* 802A8780-802A8788 2A30C0 0008+00 1/0 0/0 0/0 .text
 * do_isReady__Q28JMessage18TSequenceProcessorFv                */
bool JMessage::TSequenceProcessor::do_isReady() {
    return true;
}

/* 802A8788-802A8790 2A30C8 0008+00 1/0 0/0 0/0 .text
 * do_jump_isReady__Q28JMessage18TSequenceProcessorFv           */
bool JMessage::TSequenceProcessor::do_jump_isReady() {
    return true;
}

/* 802A8790-802A8794 2A30D0 0004+00 1/0 0/0 0/0 .text
 * do_jump__Q28JMessage18TSequenceProcessorFPCvPCc              */
void JMessage::TSequenceProcessor::do_jump(void const* pEntry, char const* pszText) {}

/* 802A8794-802A8798 2A30D4 0004+00 1/0 2/0 0/0 .text
 * do_branch_query__Q28JMessage18TSequenceProcessorFUl          */
void JMessage::TSequenceProcessor::do_branch_query(u32 uCode) {}

/* 802A8798-802A87A0 2A30D8 0008+00 1/0 2/0 0/0 .text
 * do_branch_queryResult__Q28JMessage18TSequenceProcessorFv     */
s32 JMessage::TSequenceProcessor::do_branch_queryResult() {
    return -2;
}

/* 802A87A0-802A87A4 2A30E0 0004+00 1/0 2/0 0/0 .text
 * do_branch__Q28JMessage18TSequenceProcessorFPCvPCc            */
void JMessage::TSequenceProcessor::do_branch(void const* pEntry, char const* pszText) {}

/* 802A87A4-802A87C0 2A30E4 001C+00 1/0 2/0 0/0 .text
 * do_resetStatus___Q28JMessage18TSequenceProcessorFPCc         */
void JMessage::TSequenceProcessor::do_resetStatus_(char const* pszText) {
    eStatus_ = STATUS_READY;

    if (pszText != NULL) {
        eStatus_ = STATUS_NORMAL;
    }
}

/* 802A87C0-802A87D0 2A3100 0010+00 1/0 2/0 0/0 .text
 * do_setBegin_isReady___Q28JMessage18TSequenceProcessorCFv     */
bool JMessage::TSequenceProcessor::do_setBegin_isReady_() const {
    return eStatus_ == STATUS_READY;
}

/* 802A87D0-802A87D4 2A3110 0004+00 1/0 2/0 0/0 .text
 * do_begin___Q28JMessage18TSequenceProcessorFPCvPCc            */
void JMessage::TSequenceProcessor::do_begin_(void const* pEntry, char const* pszText) {
    JUT_ASSERT(782, eStatus_==STATUS_NORMAL);
}

/* 802A87D4-802A87E0 2A3114 000C+00 1/0 2/0 0/0 .text do_end___Q28JMessage18TSequenceProcessorFv
 */
void JMessage::TSequenceProcessor::do_end_() {
    JUT_ASSERT(789, eStatus_==STATUS_NORMAL);
    eStatus_ = STATUS_ONE;
}

/* 802A87E0-802A892C 2A3120 014C+00 2/0 2/0 0/0 .text
 * do_tag___Q28JMessage18TSequenceProcessorFUlPCvUl             */
void JMessage::TSequenceProcessor::do_tag_(u32 uTag, void const* pData, u32 uSize) {
    u8 uGroupID = data::getTagGroup(uTag);
    unsigned int uCode = data::getTagCode(uTag);

    switch (uGroupID) {
    case 0xFF:
        switch (uCode & 0xFFFF) {
        case 0:
        case 1:
        case 2:
        case 3:
            break;
        case 6: {
            JUT_ASSERT(807, uSize==4);
            u32 u32Target = JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u32> >::parse(pData);
            on_jump_register(process_onJump_, u32Target);
            break;
        }
        case 7:
            break;
        default: {
            TProcessor::do_tag_(uTag, pData, uSize);
            break;
        }
        }
        break;
    case 0xFC: {
        JUT_ASSERT(828, uSize==0);
        on_jump_register(process_onJump_limited_, uCode & 0xFFFF);
        break;
    }
    case 0xFB: {
        u32 uNumber = uCode & 0xFFFF;
        JUT_ASSERT(835, uSize==2*uNumber);
        on_branch_register(process_onBranch_limited_, pData, uNumber);
        break;
    }
    case 0xFA: {
        u32 uNumber = uCode & 0xFFFF;
        JUT_ASSERT(843, uSize==4*uNumber);
        on_branch_register(process_onBranch_, pData, uNumber);
        break;
    }
    case 0xF9: {
        JUT_ASSERT(849, uSize==0);
        on_branch_query(uCode & 0xFFFF);
        break;
    }
    case 0xF8: {
        u16* pu16Data = (u16*)pData;
        u32 uNumber = JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u16> >::parse(pu16Data);
        JUT_ASSERT(859, uSize==2+2*uNumber);
        on_branch_register(process_onBranch_limited_, pu16Data + 1, uNumber);
        on_branch_query(uCode & 0xFFFF);
        break;
    }
    case 0xF7: {
        u16* pu16Data = (u16*)pData;
        u32 uNumber = JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u16> >::parse(pu16Data);
        JUT_ASSERT(871, uSize==2+4*uNumber);
        on_branch_register(process_onBranch_, pu16Data + 1, uNumber);
        on_branch_query(uCode & 0xFFFF);
        break;
    }
    default:
        TProcessor::do_tag_(uTag, pData, uSize);
    }
}

/* 802A892C-802A8944 2A326C 0018+00 1/1 0/0 0/0 .text
 * process_setMessageIndex_reserved___Q28JMessage18TSequenceProcessorFUs */
void JMessage::TSequenceProcessor::process_setMessageIndex_reserved_(u16 u16Index) {
    JUT_ASSERT(890, (data::MESSAGEINDEX_RESERVED_ENUM_MIN<=u16Index)&& (u16Index<=data::MESSAGEINDEX_RESERVED_ENUM_MAX));

    switch (u16Index) {
    case 0xFFFF:
        JGADGET_WARNMSG1(896, "message-index reserved : ", u16Index);
        return;
    }
}

/* 802A8944-802A89B8 2A3284 0074+00 4/4 0/0 0/0 .text
 * process_setMessageCode___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUsUs */
void* JMessage::TSequenceProcessor::process_setMessageCode_(JMessage::TSequenceProcessor const* pProcessor, u16 u16GroupID, u16 u16Index) {
    JGADGET_ASSERTWARN(904, u16GroupID<=data::MESSAGEGROUPID_USER_ENUM_MIN);

    if (u16Index >= 0xFF00) {
        process_setMessageIndex_reserved_(u16Index);
        return NULL;
    }

    TControl* pControl = pProcessor->getControl();
    JUT_ASSERT(911, pControl!=0);

    if (!pControl->setMessageCode_inSequence_(pProcessor, u16GroupID, u16Index)) {
        JGADGET_WARNMSG1(914, "message-code undefined : ", pControl->getMessageCode());
        return NULL;
    }

    return pControl->getMessageEntry();
}

/* 802A89B8-802A89EC 2A32F8 0034+00 1/1 0/0 0/0 .text
 * process_onJump_limited___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessor */
const void*
JMessage::TSequenceProcessor::process_onJump_limited_(JMessage::TSequenceProcessor const* pProcessor) {
    const TProcess_::processData::jumpData& rData = pProcessor->oProcess2_.process.jump_process;

    JUT_ASSERT(925, rData.u32Target<=std::uint16_t(-1));
    return process_setMessageIndex_(pProcessor, rData.u32Target);
}

/* 802A89EC-802A8A18 2A332C 002C+00 1/1 0/0 0/0 .text
 * process_onJump___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessor */
const void*
JMessage::TSequenceProcessor::process_onJump_(JMessage::TSequenceProcessor const* pProcessor) {
    const TProcess_::processData::jumpData& rData = pProcessor->oProcess2_.process.jump_process;
    return process_setMessageCode_(pProcessor, rData.u32Target);
}

/* 802A8A18-802A8A50 2A3358 0038+00 1/1 0/0 0/0 .text
 * process_onBranch_limited___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl */
const void*
JMessage::TSequenceProcessor::process_onBranch_limited_(JMessage::TSequenceProcessor const* pProcessor, u32 uTargetIndex) {
    const TProcess_::processData::branchData& rData = pProcessor->oProcess2_.process.branch_process;

    JUT_ASSERT(942, rData.pTarget!=0);
    JUT_ASSERT(943, uTargetIndex<rData.uTarget);

    u16 u16Index = JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u16> >::parse(rData.pTarget, uTargetIndex);
    return process_setMessageIndex_(pProcessor, u16Index);
}

/* 802A8A50-802A8A84 2A3390 0034+00 1/1 0/0 0/0 .text
 * process_onBranch___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl */
const void*
JMessage::TSequenceProcessor::process_onBranch_(JMessage::TSequenceProcessor const* pProcessor, u32 uTargetIndex) {
    const TProcess_::processData::branchData& rData = pProcessor->oProcess2_.process.branch_process;

    JUT_ASSERT(957, rData.pTarget!=0);
    JUT_ASSERT(958, uTargetIndex<rData.uTarget);

    u32 uCode = JGadget::binary::TParseValue<JGadget::binary::TParseValue_endian_big_<u32> >::parse(rData.pTarget, uTargetIndex);
    return process_setMessageCode_(pProcessor, uCode);
}

/* 802A8A84-802A8AC0 2A33C4 003C+00 0/0 4/4 0/0 .text
 * __ct__Q28JMessage19TRenderingProcessorFPCQ28JMessage10TReference */
JMessage::TRenderingProcessor::TRenderingProcessor(JMessage::TReference const* pReference)
    : TProcessor(pReference) {}

/* 802A8AC0-802A8B20 2A3400 0060+00 1/0 6/6 0/0 .text __dt__Q28JMessage19TRenderingProcessorFv */
JMessage::TRenderingProcessor::~TRenderingProcessor() {}

/* 802A8B20-802A8BA4 2A3460 0084+00 0/0 4/4 0/0 .text
 * process__Q28JMessage19TRenderingProcessorFPCc                */
int JMessage::TRenderingProcessor::process(char const* pszText) {
    do {
        if (pszCurrent_ == pszText) {
            on_end();
            return 0;
        }
    } while (process_character_());

    return 0;
}

/* 802A8BA4-802A8BA8 2A34E4 0004+00 1/0 4/0 0/0 .text
 * do_begin___Q28JMessage19TRenderingProcessorFPCvPCc           */
void JMessage::TRenderingProcessor::do_begin_(void const* pEntry, char const* pszText) {}

/* 802A8BA8-802A8BAC 2A34E8 0004+00 1/0 4/0 0/0 .text do_end___Q28JMessage19TRenderingProcessorFv
 */
void JMessage::TRenderingProcessor::do_end_() {}

/* 802A8BAC-802A8C24 2A34EC 0078+00 1/0 4/0 0/0 .text
 * do_tag___Q28JMessage19TRenderingProcessorFUlPCvUl            */
void JMessage::TRenderingProcessor::do_tag_(u32 uTag, void const* pData, u32 uSize) {
    u8 uGroupID = data::getTagGroup(uTag);
    unsigned int uCode = data::getTagCode(uTag);

    switch (uGroupID) {
    case 0xFF:
        switch (uCode & 0xFFFF) {
        case 0:
        case 1:
        case 2:
        case 3:
            JGADGET_WARNMSG1(1047, "system-tag-code ignored : ", uCode & 0xFFFF);
            break;
        case 6:
            break;
        case 7:
            break;
        default:
            TProcessor::do_tag_(uTag, pData, uSize);
            break;
        }
        break;
    case 0xFC:
    case 0xFB:
    case 0xFA:
    case 0xF9:
    case 0xF8:
    case 0xF7:
        break;
    default:
        TProcessor::do_tag_(uTag, pData, uSize);
        break;
    }
}
