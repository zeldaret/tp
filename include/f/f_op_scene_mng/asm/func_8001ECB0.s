/* 8001ECB0 0001BBF0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001ECB4 0001BBF4  7C 08 02 A6 */ mflr r0
/* 8001ECB8 0001BBF8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001ECBC 0001BBFC  90 61 00 08 */ stw r3, 8(r1)
/*.global fpcSch_JudgeByID*/
/* 8001ECC0 0001BC00  3C 60 80 02 */ lis r3, fpcSch_JudgeByID@ha
/*.global fpcSch_JudgeByID*/
/* 8001ECC4 0001BC04  38 63 35 90 */ addi r3, r3, fpcSch_JudgeByID@l
/* 8001ECC8 0001BC08  38 81 00 08 */ addi r4, r1, 8
/* 8001ECCC 0001BC0C  4B FF FF A9 */ bl fopScnIt_Judge
/* 8001ECD0 0001BC10  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001ECD4 0001BC14  7C 08 03 A6 */ mtlr r0
/* 8001ECD8 0001BC18  38 21 00 10 */ addi r1, r1, 0x10
/* 8001ECDC 0001BC1C  4E 80 00 20 */ blr
