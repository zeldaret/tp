/* 80018B28 00015A68  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80018B2C 00015A6C  7C 08 02 A6 */ mflr r0
/* 80018B30 00015A70  90 01 00 14 */ stw r0, 0x14(r1)
/* 80018B34 00015A74  3C 60 80 3F */ lis r3, g_HIO@ha
/* 80018B38 00015A78  38 63 1B BC */ addi r3, r3, g_HIO@l
/* 80018B3C 00015A7C  4B FF FE 09 */ bl fapGm_HIO_c
/*.global fapGm_HIO_c_NS_dtor*/
/* 80018B40 00015A80  3C 80 80 02 */ lis r4, fapGm_HIO_c_NS_dtor@ha
/*.global fapGm_HIO_c_NS_dtor*/
/* 80018B44 00015A84  38 84 8A E0 */ addi r4, r4, fapGm_HIO_c_NS_dtor@l
/* 80018B48 00015A88  3C A0 80 3F */ lis r5, lbl_803F1BB0@ha
/* 80018B4C 00015A8C  38 A5 1B B0 */ addi r5, r5, lbl_803F1BB0@l
/* 80018B50 00015A90  48 34 90 D5 */ bl func_80361C24
/* 80018B54 00015A94  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80018B58 00015A98  7C 08 03 A6 */ mtlr r0
/* 80018B5C 00015A9C  38 21 00 10 */ addi r1, r1, 0x10
/* 80018B60 00015AA0  4E 80 00 20 */ blr
