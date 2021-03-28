lbl_800BFDFC:
/* 800BFDFC  38 A0 00 00 */	li r5, 0
/* 800BFE00  7C A6 2B 78 */	mr r6, r5
/* 800BFE04  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800BFE08  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BFE0C  40 82 00 1C */	bne lbl_800BFE28
/* 800BFE10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800BFE14  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800BFE18  88 04 00 13 */	lbz r0, 0x13(r4)
/* 800BFE1C  28 00 00 30 */	cmplwi r0, 0x30
/* 800BFE20  40 82 00 08 */	bne lbl_800BFE28
/* 800BFE24  38 C0 00 01 */	li r6, 1
lbl_800BFE28:
/* 800BFE28  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 800BFE2C  41 82 00 14 */	beq lbl_800BFE40
/* 800BFE30  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800BFE34  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800BFE38  40 82 00 08 */	bne lbl_800BFE40
/* 800BFE3C  38 A0 00 01 */	li r5, 1
lbl_800BFE40:
/* 800BFE40  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 800BFE44  4E 80 00 20 */	blr 
