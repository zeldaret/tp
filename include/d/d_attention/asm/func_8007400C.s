/* 8007400C 00070F4C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80074010 00070F50  7C 08 02 A6 */ mflr r0
/* 80074014 00070F54  90 01 00 14 */ stw r0, 0x14(r1)
/* 80074018 00070F58  3C 60 80 42 */ lis r3, lbl_80424B0C@ha
/* 8007401C 00070F5C  38 63 4B 0C */ addi r3, r3, lbl_80424B0C@l
/* 80074020 00070F60  4B FF C1 39 */ bl dAttDrawParam_c
/*.global dAttDrawParam_c_NS_dtor*/
/* 80074024 00070F64  3C 80 80 07 */ lis r4, dAttDrawParam_c_NS_dtor@ha
/*.global dAttDrawParam_c_NS_dtor*/
/* 80074028 00070F68  38 84 3F C4 */ addi r4, r4, dAttDrawParam_c_NS_dtor@l
/* 8007402C 00070F6C  3C A0 80 42 */ lis r5, lbl_80424B00@ha
/* 80074030 00070F70  38 A5 4B 00 */ addi r5, r5, lbl_80424B00@l
/* 80074034 00070F74  48 2E DB F1 */ bl func_80361C24
/* 80074038 00070F78  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8007403C 00070F7C  7C 08 03 A6 */ mtlr r0
/* 80074040 00070F80  38 21 00 10 */ addi r1, r1, 0x10
/* 80074044 00070F84  4E 80 00 20 */ blr