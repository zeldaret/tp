#include "JSystem/JStudio/fvb.h"

extern void (*lbl_803C49C0)();  // vtbl

extern "C" {
extern void getObject_index__Q37JStudio3fvb8TControlFUl();
extern void insert__Q27JGadget20TVector_pointer_voidFPPvRCPv();
extern void getObject__Q37JStudio3fvb8TControlFPCvUl();
extern void getData__Q47JStudio3fvb4data17TParse_TParagraphCFPQ57JStudio3fvb4data17TParse_TParagraph5TData();
extern void range_set__Q27JStudio29TFunctionValueAttribute_rangeFdd();
void __ct__Q27JStudio24TFunctionValue_compositeFv();
extern void getCompositeOperation___Q27JStudio3fvbFQ47JStudio3fvb4data11TEComposite();
extern void __ct__Q27JStudio23TFunctionValue_constantFv();
extern void __ct__Q27JStudio25TFunctionValue_transitionFv();
extern void __ct__Q27JStudio19TFunctionValue_listFv();
extern void __ct__Q27JStudio29TFunctionValue_list_parameterFv();
extern void __ct__Q27JStudio22TFunctionValue_hermiteFv();
}

extern u32 lbl_803C4AB0;
extern u32 lbl_803C4AA0;
extern u32 lbl_803C4A90;
extern u32 lbl_803C4A80;
extern u32 lbl_803C4A70;
extern u32 lbl_803C4A60;
extern u32 lbl_803C4A50;

extern JStudio::fvb::data::CompositeOperation lbl_8039AA00[];

namespace JStudio {
namespace fvb {

TObject::~TObject() {}

asm void TObject::prepare(const data::TParse_TBlock& block, TControl* control){nofralloc
#include "JSystem/JStudio/asm/prepare__Q37JStudio3fvb7TObjectFRCQ47JStudio3fvb4data13TParse_TBlockPQ37JStudio3fvb8TControl.s"
}

//! @todo: FORCEACTIVE will not work with anonymous namespaces.
//! recreate symbol when this is properly referenced

// namespace {

TFunctionValue_composite::TData getCompositeData_raw_(const void* arg1) {
    return TFunctionValue_composite::TData(*(const void**)arg1);
}

TFunctionValue_composite::TData getCompositeData_index_(const void* arg1) {
    return TFunctionValue_composite::TData(*(u32*)arg1);
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

data::CompositeOperation* getCompositeOperation_(data::TEComposite comp) {
    return &lbl_8039AA00[comp * 2];
}

//}  // namespace

// need an extra temp
asm TObject_composite::TObject_composite(const data::TParse_TBlock& block)
    : TObject(block, &fnValue) {
    nofralloc
#include "JSystem/JStudio/asm/__ct__Q37JStudio3fvb17TObject_compositeFRCQ47JStudio3fvb4data13TParse_TBlock.s"
}

#ifdef NONMATCHING  // incomplete
void TObject_composite::prepare_data_(const TParse_TParagraph::TData& rData, TControl* control) {
    JUT_ASSERT(rData.u32Type == data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    JUT_EXPECT(u32Size == 8);

    const TFunctionValue_composite* pContent =
        static_cast<const TFunctionValue_composite*>(rData.pContent);
    JUT_ASSERT(pContent != NULL);

    data::CompositeOperation* ops = getCompositeOperation_(*(data::TEComposite*)pContent);
    data::CompositeOperation pfn = ops[1];

    JUT_ASSERT(pfn != NULL);

    pfn(comp->data);
}
#else
asm void TObject_composite::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                          TControl* control) {
    nofralloc
#include "JSystem/JStudio/asm/prepare_data___Q37JStudio3fvb17TObject_compositeFRCQ57JStudio3fvb4data17TParse_TParagraph5TDataPQ37JStudio3fvb8TControl.s"
}
#endif

// need an extra temp
asm TObject_constant::TObject_constant(const data::TParse_TBlock& block)
    : TObject(block, &fnValue) {
    nofralloc
#include "JSystem/JStudio/asm/__ct__Q37JStudio3fvb16TObject_constantFRCQ47JStudio3fvb4data13TParse_TBlock.s"
}

void TObject_constant::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                     TControl* control) {
    JUT_ASSERT(rData.u32Type == data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    JUT_EXPECT(u32Size == 4);

    const f32* pContent = static_cast<const f32*>(rData.pContent);
    JUT_ASSERT(pContent != NULL);

    fnValue.data_set(pContent[0]);
}

// need an extra temp
asm TObject_transition::TObject_transition(const data::TParse_TBlock& block)
    : TObject(block, &fnValue) {
    nofralloc
#include "JSystem/JStudio/asm/__ct__Q37JStudio3fvb18TObject_transitionFRCQ47JStudio3fvb4data13TParse_TBlock.s"
}

void TObject_transition::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                       TControl* control) {
    JUT_ASSERT(rData.u32Type == data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    JUT_EXPECT(u32size == 8);

    const f32* pContent = static_cast<const f32*>(rData.pContent);
    JUT_ASSERT(pContent != NULL);

    fnValue.data_set(pContent[0], pContent[1]);
}

asm TObject_list::TObject_list(const data::TParse_TBlock& block) : TObject(block, &fnValue) {
    nofralloc
#include "JSystem/JStudio/asm/__ct__Q37JStudio3fvb12TObject_listFRCQ47JStudio3fvb4data13TParse_TBlock.s"
}

void TObject_list::prepare_data_(const data::TParse_TParagraph::TData& rData, TControl* control) {
    JUT_ASSERT(rData.u32Type == data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    JUT_EXPECT(u32size >= 8);

    const ListData* pContent = static_cast<const ListData*>(rData.pContent);
    JUT_ASSERT(pContent != NULL);

    fnValue.data_setInterval(pContent->_0);
    fnValue.data_set(pContent->_8, pContent->_4);
}

asm TObject_list_parameter::TObject_list_parameter(const data::TParse_TBlock& block)
    : TObject(block, &fnValue) {
    nofralloc
#include "JSystem/JStudio/asm/__ct__Q37JStudio3fvb22TObject_list_parameterFRCQ47JStudio3fvb4data13TParse_TBlock.s"
}

void TObject_list_parameter::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                           TControl* control) {
    JUT_ASSERT(rData.u32Type == data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    JUT_EXPECT(u32size >= 8);

    const ListData* pContent = static_cast<const ListData*>(rData.pContent);
    JUT_ASSERT(pContent != NULL);

    fnValue.data_set(pContent->_4, pContent->_0);
}

asm TObject_hermite::TObject_hermite(const data::TParse_TBlock& block) : TObject(block, &fnValue) {
    nofralloc
#include "JSystem/JStudio/asm/__ct__Q37JStudio3fvb15TObject_hermiteFRCQ47JStudio3fvb4data13TParse_TBlock.s"
}

void TObject_hermite::prepare_data_(const data::TParse_TParagraph::TData& rData,
                                    TControl* control) {
    JUT_ASSERT(rData.u32Type == data::PARAGRAPH_DATA);

    u32 u32Size = rData.u32Size;
    JUT_EXPECT(u32size >= 8);

    const ListData* pContent = static_cast<const ListData*>(rData.pContent);
    JUT_ASSERT(pContent != NULL);

    fnValue.data_set(pContent->_4, pContent->_0 & 0xFFFFFFF, pContent->_0 >> 0x1C);
}

TControl::TControl() : _4(0) {}

TControl::~TControl() {
    JUT_EXPECT(ocObject_.empty());
}

// TObject::TObject(void const* id, u32 id_size, TFunctionValue* value)
//     : object::TObject_ID(id, id_size), pfv_(value) {
//     JUT_ASSERT(pfv_ != NULL);
// }

}  // namespace fvb
}  // namespace JStudio
