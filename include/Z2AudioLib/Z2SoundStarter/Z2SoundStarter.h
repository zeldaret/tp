#ifndef __Z2SOUNDSTARTER_H__
#define __Z2SOUNDSTARTER_H__


struct Z2SoundStarter_vtable {
    void* field_0x0;
    void* field_0x4;
    void* dtor;
    void* startSound1;
    void* startSound2;
};

struct Z2SoundStarter {
    Z2SoundStarter_vtable * vtable;
};

extern Z2SoundStarter* lbl_80450B74;


#endif