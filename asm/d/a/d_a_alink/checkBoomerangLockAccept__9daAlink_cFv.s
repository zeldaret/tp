lbl_800DFFE0:
/* 800DFFE0  38 80 00 00 */	li r4, 0
/* 800DFFE4  88 03 20 68 */	lbz r0, 0x2068(r3)
/* 800DFFE8  28 00 00 00 */	cmplwi r0, 0
/* 800DFFEC  41 82 00 1C */	beq lbl_800E0008
/* 800DFFF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800DFFF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800DFFF8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800DFFFC  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800E0000  41 82 00 08 */	beq lbl_800E0008
/* 800E0004  38 80 00 01 */	li r4, 1
lbl_800E0008:
/* 800E0008  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800E000C  4E 80 00 20 */	blr 
