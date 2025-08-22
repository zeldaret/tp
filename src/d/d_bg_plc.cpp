#include "d/dolzel.h"

#include "d/d_bg_plc.h"
#include "JSystem/JUtility/JUTAssert.h"

/* 80074074-80074080 06E9B4 000C+00 0/0 1/1 0/0 .text            __ct__6dBgPlcFv */
dBgPlc::dBgPlc() {
    m_base = NULL;
}

/* 80074080-800740BC 06E9C0 003C+00 0/0 1/1 0/0 .text            __dt__6dBgPlcFv */
dBgPlc::~dBgPlc() {}

/* 800740BC-800740C4 -00001 0008+00 0/0 0/0 0/0 .text            setBase__6dBgPlcFPv */
void dBgPlc::setBase(void* pbase) {
    m_base = (sBgPlc*)pbase;
}

/* 800740C4-800740DC 06EA04 0018+00 0/0 1/1 0/0 .text            getCode__6dBgPlcCFiPP5sBgPc */
sBgPc* dBgPlc::getCode(int index, sBgPc** ppcode) const {
    JUT_ASSERT(45, m_base != 0);
    JUT_ASSERT(46, m_base->m_code_size == ZELDA_CODE_SIZE);
    JUT_ASSERT(47, index >= 0 && index< m_base->m_num);
    sBgPc* code = m_base->m_code;
    code += index;

    *ppcode = code;
    return code;
}

/* 800740DC-800740F4 06EA1C 0018+00 0/0 1/1 0/0 .text            getGrpCode__6dBgPlcCFi */
u32 dBgPlc::getGrpCode(int index) const {
    JUT_ASSERT(62, m_base != 0);
    JUT_ASSERT(63, m_base->m_code_size == ZELDA_CODE_SIZE);
    JUT_ASSERT(64, 0 <= index && index < m_base->m_num);
    sBgPc* code = m_base->m_code;
    code += index;

    return code->code4;
}
