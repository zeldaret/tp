#include "ptmf.h"

/* ############################################################################################## */
/* 803A2180-803A2190 02E7E0 000C+04 0/0 23/23 249/249 .rodata          __ptmf_null */
__ptmf const __ptmf_null = {
    0,
    0,
    0,
};

/* 80362018-80362048 35C958 0030+00 0/0 10/10 345/345 .text            __ptmf_test */
asm long __ptmf_test(register __ptmf* ptmf) {
    // clang-format off
    nofralloc

    lwz r5, __ptmf.this_delta(r3)
    lwz r6, __ptmf.v_offset(r3)
    lwz r7, __ptmf.f_data(r3)
    li r3, 1
    cmpwi r5, 0
    cmpwi cr6, r6, 0
    cmpwi cr7, r7, 0
    bnelr 
    bnelr cr6
    bnelr cr7
    li r3, 0
    blr
    // clang-format on
}

/* 80362048-80362084 35C988 003C+00 0/0 0/0 217/217 .text            __ptmf_cmpr */
asm long __ptmf_cmpr(void) {
    // clang-format off
    nofralloc

    lwz r5, 0(r3)
    lwz r6, 0(r4)
    lwz r7, 4(r3)
    lwz r8, 4(r4)
    lwz r9, 8(r3)
    lwz r10, 8(r4)
    li r3, 1
    cmpw r5, r6
    cmpw cr6, r7, r8
    cmpw cr7, r9, r10
    bnelr 
    bnelr cr6
    bnelr cr7
    li r3, 0
    blr
    // clang-format on
}

/* 80362084-803620AC 35C9C4 0028+00 0/0 125/125 741/741 .text            __ptmf_scall */
asm void __ptmf_scall(...) {
    // clang-format off
    nofralloc

    lwz r0, 0(r12)
    lwz r11, 4(r12)
    lwz r12, 8(r12)
    add r3, r3, r0
    cmpwi r11, 0
    blt lbl_803620A4

    lwzx r12, r3, r12
    lwzx r12, r12, r11

lbl_803620A4:
    mtctr r12
    bctr
    // clang-format on
}