/* 8000CFB8 00009EF8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000CFBC 00009EFC  7C 08 02 A6 */ mflr r0
/* 8000CFC0 00009F00  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000CFC4 00009F04  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8000CFC8 00009F08  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8000CFCC 00009F0C  3B E3 D4 70 */ addi r31, r3, lbl_803DD470@l
/* 8000CFD0 00009F10  38 7F 00 30 */ addi r3, r31, 0x30
/* 8000CFD4 00009F14  90 6D 80 28 */ stw r3, lbl_804505A8-_SDA_BASE_(r13)
/* 8000CFD8 00009F18  38 03 03 00 */ addi r0, r3, 0x300
/* 8000CFDC 00009F1C  90 0D 80 2C */ stw r0, lbl_804505AC-_SDA_BASE_(r13)
/* 8000CFE0 00009F20  38 6D 86 98 */ addi r3, r13, 0x80450C18 - 0x80458580 /*SDA HACK; original: lbl_80450C18-_SDA_BASE_*/
/*.global __dt__14mDoMtx_stack_cFv*/
/* 8000CFE4 00009F24  3C 80 80 01 */ lis r4, __dt__14mDoMtx_stack_cFv@ha
/*.global __dt__14mDoMtx_stack_cFv*/
/* 8000CFE8 00009F28  38 84 D0 70 */ addi r4, r4, __dt__14mDoMtx_stack_cFv@l
/* 8000CFEC 00009F2C  38 BF 03 30 */ addi r5, r31, 0x330
/* 8000CFF0 00009F30  48 35 4C 35 */ bl func_80361C24
/* 8000CFF4 00009F34  38 7F 03 48 */ addi r3, r31, 0x348
/* 8000CFF8 00009F38  38 03 00 04 */ addi r0, r3, 4
/* 8000CFFC 00009F3C  90 1F 03 48 */ stw r0, 0x348(r31)
/* 8000D000 00009F40  38 03 00 14 */ addi r0, r3, 0x14
/* 8000D004 00009F44  90 03 01 14 */ stw r0, 0x114(r3)
/* 8000D008 00009F48  38 03 01 14 */ addi r0, r3, 0x114
/* 8000D00C 00009F4C  90 03 01 18 */ stw r0, 0x118(r3)
/*.global __dt__18mDoMtx_quatStack_cFv*/
/* 8000D010 00009F50  3C 80 80 01 */ lis r4, __dt__18mDoMtx_quatStack_cFv@ha
/*.global __dt__18mDoMtx_quatStack_cFv*/
/* 8000D014 00009F54  38 84 D0 34 */ addi r4, r4, __dt__18mDoMtx_quatStack_cFv@l
/* 8000D018 00009F58  38 BF 03 3C */ addi r5, r31, 0x33c
/* 8000D01C 00009F5C  48 35 4C 09 */ bl func_80361C24
/* 8000D020 00009F60  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8000D024 00009F64  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000D028 00009F68  7C 08 03 A6 */ mtlr r0
/* 8000D02C 00009F6C  38 21 00 10 */ addi r1, r1, 0x10
/* 8000D030 00009F70  4E 80 00 20 */ blr