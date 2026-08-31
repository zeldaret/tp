#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JStudio/JStudio/fvb.h"
#include "JSystem/JUtility/JUTException.h"
#include <cstring>

namespace JStudio {
namespace fvb {

TObject::~TObject() {
    JGADGET_ASSERTWARN(26, pfv_!=NULL);
}

void TObject::prepare(data::TParse_TBlock const& rBlock, TControl* pControl) {
    JUT_ASSERT(35, pfv_!=NULL);
    JUT_ASSERT(36, pControl!=NULL);
    TFunctionValueAttributeSet set = pfv_->getAttributeSet();
    const void* pNext = (const void*)rBlock.getNext();
    const void* pData = (const void*)rBlock.getContent();
    while (pData < pNext) {
        data::TParse_TParagraph para(pData);
        data::TParse_TParagraph::TData dat;
        para.getData(&dat);
        u32 u32Type = dat.u32Type;
        u32 u32Size = dat.u32Size;
        const void* pContent = dat.pContent;
        switch (u32Type) {
        case 0:
            goto end;
        case 1:
            prepare_data_(dat, pControl);
            break;
        case 0x10: {
            JGADGET_ASSERTWARN(61, u32Size>=4);
            JUT_ASSERT(62, pContent!=NULL);
            TFunctionValueAttribute_refer* pfvaRefer = set.refer_get();
            JGADGET_ASSERTWARN(64, pfvaRefer!=NULL);
            if (pfvaRefer == NULL) {
                JGADGET_WARNMSG(67, "invalid paragraph");
                break;
            }
            JGadget::TVector_pointer<TFunctionValue*>& rCnt = pfvaRefer->refer_referContainer();
            u8* content = (u8*)pContent;
            u32 i = *(u32*)content;
            u8* ptr = content + 4;
            for (; i != 0; i--) {
                u32 size = *(u32*)ptr;
                TObject* pObject = pControl->getObject(ptr + 4, size);
                if (pObject != NULL) {
                    TFunctionValue* const rfv = pObject->referFunctionValue();
                    TFunctionValue* const* pRfv = &rfv;
                    rCnt.push_back(*pRfv);
                } else {
                    JGADGET_WARNMSG(85, "object not found by ID");
                }
                ptr += align_roundUp(size, 4) + 4;
            }
        } break;
        case 0x11: {
            JGADGET_ASSERTWARN(93, u32Size>=4);
            JUT_ASSERT(94, pContent!=NULL);
            TFunctionValueAttribute_refer* pfvaRefer = set.refer_get();
            JGADGET_ASSERTWARN(96, pfvaRefer!=NULL);
            if (pfvaRefer == NULL) {
                JGADGET_WARNMSG(99, "invalid paragraph");
                break;
            }

            JGadget::TVector_pointer<TFunctionValue*>& rCnt = pfvaRefer->refer_referContainer();
            u8* ptr = (u8*)pContent;
            u32 i = *(u32*)ptr;
            for (; ptr += 4, i != 0; i--) {
                u32 index = *(u32*)ptr;
                TObject* pObject = pControl->getObject_index(index);
                if (pObject != NULL) {
                    TFunctionValue* const rfv = pObject->referFunctionValue();
                    TFunctionValue* const* pRfv = &rfv;
                    rCnt.push_back(*pRfv);
                } else {
                    JGADGET_WARNMSG(114, "object not found by index : " << index);
                }
            }
        } break;
        case 0x12: {
            JGADGET_ASSERTWARN(121, u32Size==8);
            JUT_ASSERT(122, pContent!=NULL);
            TFunctionValueAttribute_range* pfvaRange = set.range_get();
            JGADGET_ASSERTWARN(124, pfvaRange!=NULL);
            if (pfvaRange == NULL) {
                JGADGET_WARNMSG(127, "invalid paragraph");
                break;
            }
            f32* arr = (f32*)pContent;
            pfvaRange->range_set(arr[0], arr[1]);
        } break;
        case 0x13: {
            JGADGET_ASSERTWARN(138, u32Size==4);
            JUT_ASSERT(139, pContent!=NULL);
            TFunctionValueAttribute_range* pfvaRange = set.range_get();
            JGADGET_ASSERTWARN(141, pfvaRange!=NULL);
            if (pfvaRange == NULL) {
                JGADGET_WARNMSG(144, "invalid paragraph");
                break;
            }

            TFunctionValue::TEProgress prog = *(TFunctionValue::TEProgress*)pContent;
            pfvaRange->range_setProgress(prog);
        } break;
        case 0x14: {
            JGADGET_ASSERTWARN(156, u32Size==4);
            JUT_ASSERT(157, pContent!=NULL);
            TFunctionValueAttribute_range* pfvaRange = set.range_get();
            JGADGET_ASSERTWARN(159, pfvaRange!=NULL);
            if (pfvaRange == NULL) {
                JGADGET_WARNMSG(162, "invalid paragraph");
                break;
            }

            TFunctionValue::TEAdjust adjust = *(TFunctionValue::TEAdjust*)pContent;
            pfvaRange->range_setAdjust(adjust);
        } break;
        case 0x15: {
            JGADGET_ASSERTWARN(174, u32Size==4);
            JUT_ASSERT(175, pContent!=NULL);
            TFunctionValueAttribute_range* pfvaRange = set.range_get();
            JGADGET_ASSERTWARN(177, pfvaRange!=NULL);
            if (pfvaRange == NULL) {
                JGADGET_WARNMSG(180, "invalid paragraph");
                break;
            }

            u16* out = (u16*)pContent;
            pfvaRange->range_setOutside((TFunctionValue::TEOutside)out[0],
                                        (TFunctionValue::TEOutside)out[1]);
        } break;
        case 0x16: {
            JGADGET_ASSERTWARN(193, u32Size==4);
            JUT_ASSERT(194, pContent!=NULL);
            TFunctionValueAttribute_interpolate* pfvaInterpolate = set.interpolate_get();
            JGADGET_ASSERTWARN(197, pfvaInterpolate!=NULL);
            if (pfvaInterpolate == NULL) {
                JGADGET_WARNMSG(200, "invalid paragraph");
                break;
            }

            TFunctionValue::TEInterpolate interp = *(TFunctionValue::TEInterpolate*)pContent;
            pfvaInterpolate->interpolate_set(interp);
        } break;
        default:
            JGADGET_WARNMSG(211, "unknown paragraph : " << u32Type);
        }
        pData = dat.next;
        JUT_ASSERT(214, pData!=NULL);
    }
end:
    JGADGET_ASSERTWARN(216, pData==pNext);
    pfv_->prepare();
}

namespace {

TFunctionValue_composite::TData getCompositeData_raw_(const void* arg1) {
    return TFunctionValue_composite::TData(*(uint*)arg1);
}

TFunctionValue_composite::TData getCompositeData_index_(const void* arg1) {
    return TFunctionValue_composite::TData(*(TFunctionValue::TEOutside*)arg1);
}

TFunctionValue_composite::TData getCompositeData_parameter_(const void* arg1) {
    return TFunctionValue_composite::TData(*(f32*)arg1);
}

TFunctionValue_composite::TData getCompositeData_add_(const void* arg1) {
    return TFunctionValue_composite::TData(*(f32*)arg1);
}

TFunctionValue_composite::TData getCompositeData_subtract_(const void* arg1) {
    return TFunctionValue_composite::TData(*(f32*)arg1);
}

TFunctionValue_composite::TData getCompositeData_multiply_(const void* arg1) {
    return TFunctionValue_composite::TData(*(f32*)arg1);
}

TFunctionValue_composite::TData getCompositeData_divide_(const void* arg1) {
    return TFunctionValue_composite::TData(*(f32*)arg1);
}

const data::CompositeOperation saCompositeOperation_[8] = {
    {NULL, NULL},
    {&TFunctionValue_composite::composite_raw, &getCompositeData_raw_},
    {&TFunctionValue_composite::composite_index, &getCompositeData_index_},
    {&TFunctionValue_composite::composite_parameter, &getCompositeData_parameter_},
    {&TFunctionValue_composite::composite_add, &getCompositeData_add_},
    {&TFunctionValue_composite::composite_subtract, &getCompositeData_subtract_},
    {&TFunctionValue_composite::composite_multiply, &getCompositeData_multiply_},
    {&TFunctionValue_composite::composite_divide, &getCompositeData_divide_},
};

static const data::CompositeOperation* getCompositeOperation_(data::TEComposite e) {
    JUT_ASSERT(286, e<data::COMPOSITE_ENUM_SIZE);
    return &saCompositeOperation_[e];
}

} // namespace

TObject_composite::TObject_composite(const data::TParse_TBlock& block) : TObject(block, &fnValue) {}

void TObject_composite::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                      TControl* control) {
    JUT_ASSERT(306, rData.u32Type==data::PARAGRAPH_DATA);
    u32 u32Size = rData.u32Size;
    struct unknown {
        data::TEComposite composite_type;
        u32 data;
    };

    const unknown* pContent = static_cast<const unknown*>(rData.pContent);
    JGADGET_ASSERTWARN(310, u32Size==8);
    JUT_ASSERT(311, pContent!=NULL);

    data::TEComposite type = pContent->composite_type;
    const data::CompositeOperation* op = getCompositeOperation_(type);
    data::CompositeDataFunc pfn = op->getCompositeData;
    JUT_ASSERT(316, pfn!=NULL);
    fnValue.data_set(op->composite, pfn(&pContent->data));
}

TObject_constant::TObject_constant(data::TParse_TBlock const& param_0)
    : TObject(param_0, &fnValue) {}

void TObject_constant::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                     TControl* control) {
    JUT_ASSERT(337, rData.u32Type==data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    const f32* pContent = static_cast<const f32*>(rData.pContent);
    JGADGET_ASSERTWARN(341, u32Size==4);
    JUT_ASSERT(342, pContent!=NULL);
    f32 val = pContent[0];
    fnValue.data_set(val);
}

TObject_transition::TObject_transition(data::TParse_TBlock const& param_0)
    : TObject(param_0, &fnValue) {}

void TObject_transition::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                       TControl* control) {
    JUT_ASSERT(364, rData.u32Type==data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    const f32* pContent = static_cast<const f32*>(rData.pContent);
    JGADGET_ASSERTWARN(368, u32Size==8);
    JUT_ASSERT(369, pContent!=NULL);

    fnValue.data_set(pContent[0], pContent[1]);
}

TObject_list::TObject_list(data::TParse_TBlock const& param_0) : TObject(param_0, &fnValue) {}

void TObject_list::prepare_data_(const data::TParse_TParagraph::TData& rData, TControl* control) {
    JUT_ASSERT(391, rData.u32Type==data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    const ListData* pContent = static_cast<const ListData*>(rData.pContent);
    JGADGET_ASSERTWARN(395, u32Size>=8);
    JUT_ASSERT(396, pContent!=NULL);

    fnValue.data_setInterval(pContent->_0);
    fnValue.data_set(pContent->_8, pContent->_4);
}

TObject_list_parameter::TObject_list_parameter(const void* id, u32 id_size) : TObject(id, id_size, &fnValue) {}

TObject_list_parameter::TObject_list_parameter(data::TParse_TBlock const& param_0)
    : TObject(param_0, &fnValue) {}

void TObject_list_parameter::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                           TControl* control) {
    JUT_ASSERT(421, rData.u32Type==data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    const ListData* pContent = static_cast<const ListData*>(rData.pContent);
    JGADGET_ASSERTWARN(425, u32Size>=8);
    JUT_ASSERT(426, pContent!=NULL);

    fnValue.data_set(pContent->_4, pContent->_0);
}

TObject_hermite::TObject_hermite(data::TParse_TBlock const& param_0) : TObject(param_0, &fnValue) {}

void TObject_hermite::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                    TControl* control) {
    JUT_ASSERT(448, rData.u32Type==data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    const ListData* pContent = static_cast<const ListData*>(rData.pContent);
    JGADGET_ASSERTWARN(452, u32Size>=8);
    JUT_ASSERT(453, pContent!=NULL);

    fnValue.data_set(pContent->_4, pContent->_0 & 0xFFFFFFF, pContent->_0 >> 0x1C);
}

TControl::TControl() : pFactory(NULL) {}

TControl::~TControl() {
    JGADGET_ASSERTWARN(483, ocObject_.empty());
}

void TControl::appendObject(TObject* p) {
    JUT_ASSERT(495, p!=NULL);
    ocObject_.Push_back(p);
}

void TControl::removeObject(TObject* p) {
    JUT_ASSERT(502, p!=NULL);
    ocObject_.Erase(p);
}

void TControl::destroyObject(TObject* object) {
    removeObject(object);
    TFactory* pFactory = getFactory();
    JUT_ASSERT(518, pFactory!=NULL);
    pFactory->destroy(object);
}

void TControl::destroyObject_all() {
    while (!ocObject_.empty()) {
        destroyObject(&ocObject_.back());
    }
}

TObject* TControl::getObject(void const* id, u32 idSize) {
    typedef JGadget::TLinkList<TObject, -12>::iterator iterator;
    iterator begin = ocObject_.begin();
    iterator end = ocObject_.end();
    iterator it = std::find_if(begin, end, object::TPRObject_ID_equal(id, idSize));
    return it != end ? &*it : NULL;
}

TObject* TControl::getObject_index(u32 index) {
    if (index >= ocObject_.size()) {
        return NULL;
    }

    JGadget::TLinkList<TObject, -12>::iterator it = ocObject_.begin();
    std::advance(it, index);
    return &*it;
}

TFactory::~TFactory() {}

TObject* TFactory::create(data::TParse_TBlock const& rBlock) {
    int type = rBlock.get_type();
    switch (type) {
    case 1:
        return new TObject_composite(rBlock);
    case 2:
        return new TObject_constant(rBlock);
    case 3:
        return new TObject_transition(rBlock);
    case 4:
        return new TObject_list(rBlock);
    case 5:
        return new TObject_list_parameter(rBlock);
    case 6:
        return new TObject_hermite(rBlock);
    default:
        JGADGET_WARNMSG1(583, "unknown type : ", type);
        return NULL;
    }
}

void TFactory::destroy(TObject* pObject) {
    delete pObject;
}

TParse::TParse(TControl* pControl) : pControl_(pControl) {
    JUT_ASSERT(604, pControl_!=NULL);
}

TParse::~TParse() {}

bool TParse::parseHeader_next(void const** ppData_inout, u32* puBlock_out, u32 flags) {
    JUT_ASSERT(620, ppData_inout!=NULL);
    JUT_ASSERT(621, puBlock_out!=NULL);
    const void* pData = *ppData_inout;
    JUT_ASSERT(623, pData!=NULL);

    const data::TParse_THeader header(pData);
    *ppData_inout = header.getContent();
    *puBlock_out = header.get_blockNumber();

    if (memcmp(header.get_signature(), &data::ga4cSignature, 4) != 0) {
        JGADGET_WARNMSG(631, "unknown signature");
        return false;
    }

    if (header.get_byteOrder() != 0xFEFF) {
        JGADGET_WARNMSG(636, "illegal byte-order");
        return false;
    }
    u16 version = header.get_version();
    if (version < 2) {
        JGADGET_WARNMSG1(643, "obsolete version : ", version);
        return false;
    } else if (version > 0x100) {
        JGADGET_WARNMSG1(648, "unknown version : ", version);
        return false;
    }
    return true;
}

bool TParse::parseBlock_next(void const** ppData_inout, u32* puData_out, u32 flags) {
    JUT_ASSERT(659, ppData_inout!=NULL);
    JUT_ASSERT(660, puData_out!=NULL);
    const void* pData = *ppData_inout;
    JUT_ASSERT(662, pData!=NULL);
    data::TParse_TBlock blk(pData);
    *ppData_inout = blk.getNext();
    *puData_out = blk.get_size();

    TControl* pControl = getControl();
    JUT_ASSERT(668, pControl!=NULL);

    if (flags & 0x10) {
        if (pControl->getObject(blk.get_ID(), blk.get_IDSize()) != NULL)
            return 1;
    }
    if (flags & 0x20) {
        return 1;
    }

    TFactory* pFactory = pControl->getFactory();
    if (pFactory == NULL) {
        JGADGET_WARNMSG(686, "factory not specified");
        return 0;
    }

    TObject* pObject = pFactory->create(blk);
    if (pObject == NULL) {
        JGADGET_WARNMSG(692, "can't create function-value");
        if (flags & 0x40) {
            return 1;
        }
        return 0;
    }
    pObject->prepare(blk, pControl);
    pControl->appendObject(pObject);
    return 1;
}

}  // namespace fvb
}  // namespace JStudio
