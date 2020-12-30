/* 800738CC 0007080C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800738D0 00070810  7C 08 02 A6 */ mflr r0
/* 800738D4 00070814  90 01 00 14 */ stw r0, 0x14(r1)
/* 800738D8 00070818  90 81 00 08 */ stw r4, 8(r1)
/*.global fpcSch_JudgeByID*/
/* 800738DC 0007081C  3C 60 80 02 */ lis r3, fpcSch_JudgeByID@ha
/*.global fpcSch_JudgeByID*/
/* 800738E0 00070820  38 63 35 90 */ addi r3, r3, fpcSch_JudgeByID@l
/* 800738E4 00070824  38 81 00 08 */ addi r4, r1, 8
/* 800738E8 00070828  4B FA 5F 11 */ bl fopAcIt_Judge
/* 800738EC 0007082C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800738F0 00070830  7C 08 03 A6 */ mtlr r0
/* 800738F4 00070834  38 21 00 10 */ addi r1, r1, 0x10
/* 800738F8 00070838  4E 80 00 20 */ blr