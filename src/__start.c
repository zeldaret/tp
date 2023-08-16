#include "MSL_C/stdlib.h"
#include "dol2asm.h"
#include "init.h"

//
// Forward References:
//

SECTION_INIT void __check_pad3(void);
SECTION_INIT void __set_debug_bba(void);
SECTION_INIT u8 __get_debug_bba(void);
SECTION_INIT void __start(void);

//
// External References:
//

void main();
void OSInit();
void OSResetSystem(s32, s32, s32);
void __init_user();
void DBInit();
void InitMetroTRK();
void InitMetroTRK_BBA();
extern u8 data_804516D0;
void __init_data();
void __init_hardware();
void __init_registers();

//
// Declarations:
//

/* ############################################################################################## */
/* 80003100-80003140 000000 0040+00 1/1 0/0 0/0 .init            __check_pad3 */
SECTION_INIT void __check_pad3(void) {
    if ((*(u16*)0x800030E4 & 0xEEF) == 0xEEF) {
        OSResetSystem(0, 0, 0);
    }
}

/* 80003140-8000314C 000040 000C+00 1/1 0/0 0/0 .init            __set_debug_bba */
void __set_debug_bba(void) {
    data_804516D0 = 1;
}

/* 8000314C-80003154 -00001 0008+00 0/0 0/0 0/0 .init            __get_debug_bba */
SECTION_INIT u8 __get_debug_bba(void) {
    return data_804516D0;
}

/* 80003154-800032B0 000054 015C+00 0/0 1/0 0/0 .init            __start */
SECTION_INIT asm void __start(void) {
    // clang-format off
    nofralloc

    bl __init_registers
    bl __init_hardware
    li r0, -1
    stwu r1, -8(r1)
    stw r0, 4(r1)
    stw r0, 0(r1)
    bl __init_data
    li r0, 0
    lis r6, 0x8000
    addi r6, r6, 0x0044
    stw r0, 0(r6)
    lis r6, 0x8000
    addi r6, r6, 0x00F4
    lwz r6, 0(r6)
    cmplwi r6, 0
    beq lbl_8000319C
    lwz r7, 0xc(r6)
    b lbl_800031BC

lbl_8000319C:
    lis r5, 0x8000
    addi r5, r5, 0x0034
    lwz r5, 0(r5)
    cmplwi r5, 0
    beq lbl_800031F8
    lis r7, 0x8000
    addi r7, r7, 0x30E8
    lwz r7, 0(r7)

lbl_800031BC:
    li r5, 0
    cmplwi r7, 2
    beq lbl_800031E8
    cmplwi r7, 3
    li r5, 1
    beq lbl_800031E8
    cmplwi r7, 4
    bne lbl_800031F8
    li r5, 2
    bl __set_debug_bba
    b lbl_800031F8

lbl_800031E8:
    lis r6, InitMetroTRK@ha
    addi r6, r6, InitMetroTRK@l
    mtlr r6
    blrl 

lbl_800031F8:
    lis r6, 0x8000
    addi r6, r6, 0x00F4
    lwz r5, 0(r6)
    cmplwi r5, 0
    beq+ lbl_80003258
    lwz r6, 8(r5)
    cmplwi r6, 0
    beq+ lbl_80003258
    add r6, r5, r6
    lwz r14, 0(r6)
    cmplwi r14, 0
    beq lbl_80003258
    addi r15, r6, 4
    mtctr r14

lbl_80003230:
    addi r6, r6, 4
    lwz r7, 0(r6)
    add r7, r7, r5
    stw r7, 0(r6)
    bdnz lbl_80003230
    lis r5, 0x8000
    addi r5, r5, 0x0034
    rlwinm r7, r15, 0, 0, 0x1a
    stw r7, 0(r5)
    b lbl_80003260
    
lbl_80003258:
    li r14, 0
    li r15, 0
    
lbl_80003260:
    bl DBInit
    bl OSInit
    lis r4, 0x8000
    addi r4, r4, 0x30E6
    lhz r3, 0(r4)
    andi. r5, r3, 0x8000
    beq lbl_80003288
    andi. r3, r3, 0x7fff
    cmplwi r3, 1
    bne lbl_8000328C
    
lbl_80003288:
    bl __check_pad3
    
lbl_8000328C:
    bl __get_debug_bba
    cmplwi r3, 1
    bne lbl_8000329C
    bl InitMetroTRK_BBA
    
lbl_8000329C:
    bl __init_user
    mr r3, r14
    mr r4, r15
    bl main
    b exit
    // clang-format on
}
