/* 8016C368 001692A8  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 8016C36C 001692AC  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 8016C370 001692B0  54 60 20 36 */ slwi r0, r3, 4
/* 8016C374 001692B4  7C 65 02 14 */ add r3, r5, r0
/* 8016C378 001692B8  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 8016C37C 001692BC  7C 03 20 38 */ and r3, r0, r4
/* 8016C380 001692C0  4E 80 00 20 */ blr