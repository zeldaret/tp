#ifndef JSYSTEM_JMATH_H_
#define JSYSTEM_JMATH_H_

struct sinCosTableEntry {
    float sin;
    float cos;
};

extern sinCosTableEntry lbl_80439A20[0x2000]; // JMath::JMath::sincosTable_

#endif