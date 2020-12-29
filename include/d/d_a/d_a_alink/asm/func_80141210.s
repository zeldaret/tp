/* 80141210 0013E150  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80141214 0013E154  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80141218 0013E158  88 03 00 15 */ lbz r0, 0x15(r3)
/* 8014121C 0013E15C  20 60 00 FF */ subfic r3, r0, 0xff
/* 80141220 0013E160  30 03 FF FF */ addic r0, r3, -1
/* 80141224 0013E164  7C 00 19 10 */ subfe r0, r0, r3
/* 80141228 0013E168  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 8014122C 0013E16C  4E 80 00 20 */ blr
