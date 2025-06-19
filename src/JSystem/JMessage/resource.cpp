#include "JSystem/JMessage/resource.h"
#include "JSystem/JGadget/search.h"
#include "JSystem/JGadget/define.h"
#include <algorithm.h>
#include <string.h>

/* 802A8CDC-802A8EC0 2A361C 01E4+00 0/0 1/1 0/0 .text
 * toMessageIndex_messageID__Q28JMessage9TResourceCFUlUlPb      */
u16 JMessage::TResource::toMessageIndex_messageID(u32 uMsgID, u32 upperHalf, bool* pbValid) const {
    if (!oParse_TBlock_messageID_.getRaw()) {
        return 0xFFFF;
    }

    JUT_ASSERT(87, oParse_TBlock_messageID_.get_form()==0);

    u32 uMsgValue = 0xFFFFFFFF;
    bool valid = true;

    u8 uFormSupplement = oParse_TBlock_messageID_.get_formSupplement();
    switch (uFormSupplement) {
    case 0:
        if (upperHalf != 0) {
            valid = false;
        }
        uMsgValue = uMsgID;
        break;
    case 1:
        if (uMsgID > 0xFFFFFF || upperHalf > 0xFF) {
            valid = false;
        }
        uMsgValue = ((uMsgID << 8) & 0xFFFFFF00) | (upperHalf & 0xFF);
        break;
    case 2:
        if (uMsgID > 0xFFFF || upperHalf > 0xFFFF) {
            valid = false;
        }
        uMsgValue = ((uMsgID << 16) & 0xFFFF0000) | (upperHalf & 0xFFFF);
        break;
    case 3:
        if (uMsgID > 0xFF || upperHalf > 0xFFFFFF) {
            valid = false;
        }
        uMsgValue = ((uMsgID << 24) & 0xFF000000) | (upperHalf & 0x00FFFFFF);
        break;
    case 4:
        if (uMsgID != 0) {
            valid = false;
        }
        uMsgValue = upperHalf;
        break;
    default:
        JGADGET_WARNMSG1(122, "form-supplement unknown", uFormSupplement);
        return 0xFFFF;
    }

    if (pbValid) {
        *pbValid = valid;
    }

    if (uMsgValue == 0xFFFFFFFF) {
        return 0xFFFF;
    }

    int nMsgNumber = oParse_TBlock_messageID_.get_number();

    const u32* pContent = oParse_TBlock_messageID_.getContent();
    JUT_ASSERT(131, pContent!=0);

    const u32* pFirst = pContent;
    const u32* pLast = pFirst + nMsgNumber;
    const u32* pEntry;

    if (oParse_TBlock_messageID_.get_isOrdered()) {
        pEntry = std::lower_bound(pFirst, pLast, uMsgValue);
        if (pEntry == pLast || *pEntry != uMsgValue) {
            return 0xFFFF;
        }
    } else {
        pEntry = std::find(pFirst, pLast, uMsgValue);
        if (pEntry == pLast) {
            return 0xFFFF;
        }
    }

    int nIndex = pEntry - pFirst;
    JUT_ASSERT(154, (data::MESSAGEINDEX_USER_ENUM_MIN<=nIndex)&& (nIndex<=data::MESSAGEINDEX_USER_ENUM_MAX));
    return nIndex;
}

/* 803C9C80-803C9C94 -00001 0014+00 1/1 0/0 0/0 .data
 * sapfnParseCharacter___Q28JMessage18TResourceContainer        */
JMessage::locale::parseCharacter_function JMessage::TResourceContainer::sapfnParseCharacter_[5] = {
    NULL,
    JMessage::locale::parseCharacter_1Byte,
    JMessage::locale::parseCharacter_2Byte,
    JMessage::locale::parseCharacter_ShiftJIS,
    JMessage::locale::parseCharacter_UTF8,
};

/* 802A8EC0-802A8EF8 2A3800 0038+00 1/1 0/0 0/0 .text
 * __ct__Q38JMessage18TResourceContainer10TCResourceFv          */
JMessage::TResourceContainer::TCResource::TCResource() {}

/* 802A8EF8-802A8F6C 2A3838 0074+00 1/0 2/2 0/0 .text
 * __dt__Q38JMessage18TResourceContainer10TCResourceFv          */
JMessage::TResourceContainer::TCResource::~TCResource() {
    JGADGET_ASSERTWARN(173, empty());
}

/* 802A8F6C-802A8FFC 2A38AC 0090+00 0/0 1/1 0/0 .text
 * Get_groupID__Q38JMessage18TResourceContainer10TCResourceFUs  */
// NONMATCHING - likely due to incorrect enumerator setup compared to debug
JMessage::TResource* JMessage::TResourceContainer::TCResource::Get_groupID(u16 u16GroupID) {
    JGadget::TContainerEnumerator<TResource, 0> enumerator(this);
	while (enumerator) {
		const TResource* res = &(*enumerator);
		if (res->getGroupID() == u16GroupID)
			return (TResource*)res;
	}

	return NULL;
}

/* 802A8FFC-802A9048 2A393C 004C+00 1/0 0/0 0/0 .text
 * Do_create__Q38JMessage18TResourceContainer10TCResourceFv     */
JMessage::TResource* JMessage::TResourceContainer::TCResource::Do_create() {
    return new TResource();
}

/* 802A9048-802A906C 2A3988 0024+00 1/0 0/0 0/0 .text
 * Do_destroy__Q38JMessage18TResourceContainer10TCResourceFPQ28JMessage9TResource */
// NONMATCHING extra null comparison
void JMessage::TResourceContainer::TCResource::Do_destroy(JMessage::TResource* pResource) {
    delete pResource;
}

/* 802A906C-802A90B8 2A39AC 004C+00 0/0 2/2 0/0 .text __ct__Q28JMessage18TResourceContainerFv */
JMessage::TResourceContainer::TResourceContainer() : encodingType_(0), pfnParseCharacter_(NULL) {}

/* 802A90B8-802A90F0 2A39F8 0038+00 1/1 0/0 0/0 .text
 * setEncoding__Q28JMessage18TResourceContainerFUc              */
void JMessage::TResourceContainer::setEncoding(u8 e) {
    if (e == 0) {
        encodingType_ = e;
        pfnParseCharacter_ = NULL;
    } else {
        JGADGET_ASSERTWARN(285, isEncodingSettable(e));
        setEncoding_(e);
    }
}

/* 802A90F0-802A9130 2A3A30 0040+00 1/1 0/0 0/0 .text
 * setEncoding___Q28JMessage18TResourceContainerFUc             */
void JMessage::TResourceContainer::setEncoding_(u8 e) {
    encodingType_ = e;
    pfnParseCharacter_ = JGadget::toValueFromIndex<JMessage::locale::parseCharacter_function>(e, sapfnParseCharacter_, 5, NULL);
    JUT_ASSERT(299, pfnParseCharacter_!=0);
}

/* 802A9130-802A9158 2A3A70 0028+00 0/0 2/2 0/0 .text
 * __ct__Q28JMessage6TParseFPQ28JMessage18TResourceContainer    */
JMessage::TParse::TParse(JMessage::TResourceContainer* pContainer) {
    JUT_ASSERT(324, pContainer!=0);
    pContainer_ = pContainer;
    pResource_ = NULL;
}

/* 802A9158-802A91B8 2A3A98 0060+00 1/0 0/0 0/0 .text            __dt__Q28JMessage6TParseFv */
JMessage::TParse::~TParse() {}

/* 802A91B8-802A92F4 2A3AF8 013C+00 1/0 0/0 0/0 .text
 * parseHeader_next__Q28JMessage6TParseFPPCvPUlUl               */
// NONMATCHING regalloc, missing clrlwi
bool JMessage::TParse::parseHeader_next(const void** ppData_inout, u32* puBlock_out, u32 param_2) {
    JUT_ASSERT(343, ppData_inout!=0);
    JUT_ASSERT(344, puBlock_out!=0);

    const void* pData = *ppData_inout;
    JUT_ASSERT(346, pData!=0);

    data::TParse_THeader oHeader(pData);
    *ppData_inout = oHeader.getContent();
    *puBlock_out = oHeader.get_blockNumber();

    JUT_ASSERT(350, pContainer_!=0);

    if (memcmp(oHeader.get_signature(), &data::ga4cSignature, sizeof(data::ga4cSignature)) != 0) {
        JGADGET_WARNMSG(355, "unknown signature");
        return 0;
    }

    if (oHeader.get_type() != 'bmg1') {
        JGADGET_WARNMSG(360, "unknown type");
        return 0;
    }

    u8 uEncoding = oHeader.get_encoding();
    if (uEncoding != 0) {
        if (!pContainer_->isEncodingSettable(uEncoding)) {
            JGADGET_WARNMSG(369, "encoding not acceptable");
            return 0;
        }

        pContainer_->setEncoding(uEncoding);
    }

    if (param_2 & 0x10) {
        return 1;
    }

    TResourceContainer::TCResource* pResContainer = &pContainer_->resContainer_;
    pResource_ = pResContainer->Do_create();

    if (pResource_ == NULL) {
        JGADGET_WARNMSG(384, "can't create resource");
        if (param_2 & 0x20) {
            return 1;
        } else {
            return 0;
        }
    } else {
        pResContainer->Push_back(pResource_);
        pResource_->setData_header(oHeader.getRaw());
        return 1;
    }
}

/* 802A92F4-802A9490 2A3C34 019C+00 1/0 0/0 0/0 .text
 * parseBlock_next__Q28JMessage6TParseFPPCvPUlUl                */
bool JMessage::TParse::parseBlock_next(const void** ppData_inout, u32* puData_out, u32 param_2) {
    JUT_ASSERT(401, ppData_inout!=0);
    JUT_ASSERT(402, puData_out!=0);

    const void* pData = *ppData_inout;
    JUT_ASSERT(404, pData!=0);

    data::TParse_TBlock oBlock(pData);

    *ppData_inout = oBlock.getNext();
    *puData_out = oBlock.get_size();

    TResourceContainer::TCResource& rcResource = pContainer_->resContainer_;
    JUT_ASSERT(412, pResource_==&*--(rcResource.end()));

    u32 uType = oBlock.get_type();
    switch (uType) {
    case 'INF1': {
        pResource_->setData_block_info(pData);
        break;
    }
    case 'FLI1':
        break;
    case 'FLW1':
        break;
    case 'DAT1': {
        pResource_->setData_block_messageText(pData);
        u16 u16GroupID = pResource_->getGroupID();

        if (param_2 & 0x80) {
            JGadget::TLinkList<JMessage::TResource, 0>::iterator iResource(rcResource.begin());
            JMessage::TResource* pResource;
            while ((pResource = &*iResource) != pResource_) {
                if ((u16)u16GroupID != pResource->getGroupID()) {
                    ++iResource;
                } else {
                    iResource = rcResource.Erase_destroy(pResource);
                }
            }
        } else {
            #ifdef DEBUG
            JMessage::TResource* pResource = rcResource.Get_groupID(u16GroupID);
            if (pResource != pResource_) {
                JGADGET_WARNMSG1(444, "group-ID already exist : ", u16GroupID);
            }
            #endif
        }
        break;
    }
    case 'STR1': {
        pResource_->setData_block_stringAttribute(pData);
        break;
    }
    case 'MID1': {
        pResource_->setData_block_messageID(pData);
        break;
    }
    default:
        JGADGET_WARNMSG1(463, "unknown block : ", uType);
        if (!(param_2 & 0x40)) {
            return 0;
        }
        break;
    }

    return 1;
}

/* 802A9490-802A94A8 2A3DD0 0018+00 1/0 0/0 0/0 .text
 * parseCharacter_1Byte__Q28JMessage6localeFPPCc                */
int JMessage::locale::parseCharacter_1Byte(char const** ppszText) {
    u8** ppuText = (u8**)ppszText;
    int parse_char = **ppuText & 0xFF;

    (*ppuText)++;
    return parse_char;
}

/* 802A94A8-802A94D4 2A3DE8 002C+00 1/0 0/0 0/0 .text
 * parseCharacter_2Byte__Q28JMessage6localeFPPCc                */
int JMessage::locale::parseCharacter_2Byte(char const** ppszText) {
    u8** ppuText = (u8**)ppszText;

    int parse_char = **ppuText & 0xFF;
    (*ppuText)++;

    parse_char <<= 8;

    parse_char |= **ppuText & 0xFF;
    (*ppuText)++;

    return parse_char;
}
