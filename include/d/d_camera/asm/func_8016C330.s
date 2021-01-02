/* 8016C330 00169270  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 8016C334 00169274  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 8016C338 00169278  54 60 20 36 */ slwi r0, r3, 4
/* 8016C33C 0016927C  7C 65 02 14 */ add r3, r5, r0
/* 8016C340 00169280  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 8016C344 00169284  7C 03 20 38 */ and r3, r0, r4
/* 8016C348 00169288  4E 80 00 20 */ blr
