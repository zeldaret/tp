#ifndef OBJECT_ID_H
#define OBJECT_ID_H

#include "dolphin/types.h"

namespace JStudio {
namespace object {

struct TPRObject_ID_equal {};

struct TIDData {
public:
    TIDData(const void* id, u32 id_size) : mID(id), mID_size(id_size) {}

    /* 80288988 */ void isEqual(JStudio::object::TIDData const&, JStudio::object::TIDData const&);

private:
    /* 0x00 */ const void* mID;
    /* 0x04 */ u32 mID_size;
};

struct TObject_ID : public TIDData {
    TObject_ID(const void* id, u32 id_size) : TIDData(id, id_size) {}
};

}  // namespace object
}  // namespace JStudio

#endif /* OBJECT_ID_H */
