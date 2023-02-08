#ifndef JSTUDIO_MATH_H
#define JSTUDIO_MATH_H

#include "dolphin/types.h"
#include "dolphin/mtx/mtxvec.h"

namespace JStudio {
namespace math {
    /* 802859DC */ void getRotation_xyz(MtxP, f32, f32, f32);
    /* 80285B44 */ void getTransformation_SRxyzT(MtxP, Vec const&, Vec const&, Vec const&);
    /* 80285BCC */ void getFromTransformation_SRxyzT(Vec*, Vec*, Vec*, CMtxP);
};
};  // namespace JStudio

#endif /* JSTUDIO_MATH_H */
