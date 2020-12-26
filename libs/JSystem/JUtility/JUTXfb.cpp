#include "JSystem/JUtility/JUTXfb/JUTXfb.h"

void JUTXfb::clearIndex() {
    this->active_xfb_index = -1;
    this->last_drawn_xfb_index = -1;
    this->next_xfb_buffer = -1;
    return;
}