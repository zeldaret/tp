#ifndef JSTUDIO_OBJECT_ID_H
#define JSTUDIO_OBJECT_ID_H

#include "dolphin/types.h"

namespace JStudio {
namespace object {

class TIDData {
public:
    TIDData(const void* id, u32 id_size) : mID(id), mID_size(id_size) {}

private:
    const void* mID;
    u32 mID_size;
};

struct TObject_ID : public TIDData {
    TObject_ID(const void* id, u32 id_size) : TIDData(id, id_size) {}
};

}  // namespace object
}  // namespace JStudio

#endif  // JSTUDIO_OBJECT_ID_H
