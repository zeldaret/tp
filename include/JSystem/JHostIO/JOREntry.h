#ifndef JORENTRY_H
#define JORENTRY_H

#include "JSystem/JHostIO/JHIComm.h"

template<typename T, int I>
class JHIpvector {
public:
    JHIpvector() { m_size = 0; }

    s32 size() const { return m_size; }
    T& get(u32 i) const { return m_vector[i]; }

    s32 push_back(T p) {
        if (m_size >= I) {
            return 0;
        }

        m_vector[m_size++] = p;
        return 1;
    }

    /* 0x00 */ T m_vector[I];
    /* 0x28 */ s32 m_size;
};

template<typename T>
class JHIComPortManager {
public:
    JHIComPortManager() {
        field_0x10040 = 0;
        field_0x10041 = 0;
    }

    T& getRefPort() { return port; }

    void addTag(JHITag<T>* pTag) {
        field_0x8 = this;
        field_0xc.push_back(pTag);
    }

    static JHIComPortManager<T>* create() {
        if (instance == NULL) {
            instance = new JHIComPortManager<T>();
        }

        return instance;
    }

    static JHIComPortManager<T>* instance;

    /* 0x00000 */ T port;
    /* 0x00008 */ JHIComPortManager<T>* field_0x8;
    /* 0x0000C */ JHIpvector<JHITag<T>*, 10> field_0xc;
    /* 0x00038 */ u8 field_0x38[0x10000];
    /* 0x10038 */ u32 field_0x10038;
    /* 0x1003C */ u32 field_0x1003c;
    /* 0x10040 */ u8 field_0x10040;
    /* 0x10041 */ u8 field_0x10041;
};

#endif /* JORENTRY_H */
