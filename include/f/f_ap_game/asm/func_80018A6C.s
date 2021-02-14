/* 80018A6C 000159AC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80018A70 000159B0  7C 08 02 A6 */ mflr r0
/* 80018A74 000159B4  90 01 00 14 */ stw r0, 0x14(r1)
/* 80018A78 000159B8  38 60 00 00 */ li r3, 0
/*.global fapGm_After*/
/* 80018A7C 000159BC  3C 80 80 02 */ lis r4, fapGm_After@ha
/*.global fapGm_After*/
/* 80018A80 000159C0  38 84 8A 44 */ addi r4, r4, fapGm_After@l
/* 80018A84 000159C4  48 00 96 D5 */ bl fpcM_Management__FPFv_vPFv_v
/* 80018A88 000159C8  38 60 00 00 */ li r3, 0
/* 80018A8C 000159CC  48 24 D3 91 */ bl cCt_Counter
/* 80018A90 000159D0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80018A94 000159D4  7C 08 03 A6 */ mtlr r0
/* 80018A98 000159D8  38 21 00 10 */ addi r1, r1, 0x10
/* 80018A9C 000159DC  4E 80 00 20 */ blr
