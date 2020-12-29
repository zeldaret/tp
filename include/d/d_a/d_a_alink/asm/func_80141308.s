/* 80141308 0013E248  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 8014130C 0013E24C  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 80141310 0013E250  54 60 20 36 */ slwi r0, r3, 4
/* 80141314 0013E254  7C 65 02 14 */ add r3, r5, r0
/* 80141318 0013E258  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 8014131C 0013E25C  7C 03 20 38 */ and r3, r0, r4
/* 80141320 0013E260  4E 80 00 20 */ blr
