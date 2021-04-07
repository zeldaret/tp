lbl_801413D8:
/* 801413D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801413DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801413E0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801413E4  20 60 00 FF */	subfic r3, r0, 0xff
/* 801413E8  30 03 FF FF */	addic r0, r3, -1
/* 801413EC  7C 00 19 10 */	subfe r0, r0, r3
/* 801413F0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801413F4  4E 80 00 20 */	blr 
