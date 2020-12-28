/* 801413D8 0013E318  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801413DC 0013E31C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801413E0 0013E320  88 03 00 14 */ lbz r0, 0x14(r3)
/* 801413E4 0013E324  20 60 00 FF */ subfic r3, r0, 0xff
/* 801413E8 0013E328  30 03 FF FF */ addic r0, r3, -1
/* 801413EC 0013E32C  7C 00 19 10 */ subfe r0, r0, r3
/* 801413F0 0013E330  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 801413F4 0013E334  4E 80 00 20 */ blr
