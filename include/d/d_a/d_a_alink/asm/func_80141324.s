/* 80141324 0013E264  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 80141328 0013E268  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 8014132C 0013E26C  54 60 20 36 */ slwi r0, r3, 4
/* 80141330 0013E270  7C 65 02 14 */ add r3, r5, r0
/* 80141334 0013E274  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 80141338 0013E278  7C 03 20 38 */ and r3, r0, r4
/* 8014133C 0013E27C  4E 80 00 20 */ blr
