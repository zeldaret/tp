/* 8007398C 000708CC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80073990 000708D0  7C 08 02 A6 */ mflr r0
/* 80073994 000708D4  90 01 00 14 */ stw r0, 0x14(r1)
/* 80073998 000708D8  90 81 00 08 */ stw r4, 8(r1)
/*.global fpcSch_JudgeByID*/
/* 8007399C 000708DC  3C 60 80 02 */ lis r3, fpcSch_JudgeByID@ha
/*.global fpcSch_JudgeByID*/
/* 800739A0 000708E0  38 63 35 90 */ addi r3, r3, fpcSch_JudgeByID@l
/* 800739A4 000708E4  38 81 00 08 */ addi r4, r1, 8
/* 800739A8 000708E8  4B FA 5E 51 */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800739AC 000708EC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800739B0 000708F0  7C 08 03 A6 */ mtlr r0
/* 800739B4 000708F4  38 21 00 10 */ addi r1, r1, 0x10
/* 800739B8 000708F8  4E 80 00 20 */ blr
