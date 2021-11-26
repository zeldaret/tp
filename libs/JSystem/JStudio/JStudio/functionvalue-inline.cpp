#include "JSystem/JStudio/JStudio/functionvalue.h"
#include "global.h"

namespace std {
template <typename A1>
struct less {};
/* less<f64> */
struct less__template0 {};

template <typename A1, typename B1, typename C1>
void upper_bound(/* ... */);
};  // namespace std

/* 80283E24-80283EB8 27E764 0094+00 1/1 0/0 0/0 .text
 * upper_bound<Q37JStudio29TFunctionValue_list_parameter15TIterator_data_,d,Q23std7less<d>>__3stdFQ37JStudio29TFunctionValue_list_parameter15TIterator_data_Q37JStudio29TFunctionValue_list_parameter15TIterator_data_RCdQ23std7less<d>
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
#pragma force_active on
extern "C" inline asm void
func_80283E24(void* _this, JStudio::TFunctionValue_list_parameter::TIterator_data_ param_0,
              JStudio::TFunctionValue_list_parameter::TIterator_data_ param_1, f64 const& param_2,
              std::less<f64> param_3) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio/functionvalue/func_80283E24.s"
}
#pragma pop

/* 80283EB8-80283F80 27E7F8 00C8+00 1/1 0/0 0/0 .text
 * upper_bound<Q37JStudio22TFunctionValue_hermite15TIterator_data_,d,Q23std7less<d>>__3stdFQ37JStudio22TFunctionValue_hermite15TIterator_data_Q37JStudio22TFunctionValue_hermite15TIterator_data_RCdQ23std7less<d>
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
#pragma force_active on
extern "C" inline asm void func_80283EB8(void* _this,
                                         JStudio::TFunctionValue_hermite::TIterator_data_ param_0,
                                         JStudio::TFunctionValue_hermite::TIterator_data_ param_1,
                                         f64 const& param_2, std::less<f64> param_3) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio/functionvalue/func_80283EB8.s"
}
#pragma pop
