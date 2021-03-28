lbl_800BFDB0:
/* 800BFDB0  38 A0 00 00 */	li r5, 0
/* 800BFDB4  7C A6 2B 78 */	mr r6, r5
/* 800BFDB8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800BFDBC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BFDC0  40 82 00 1C */	bne lbl_800BFDDC
/* 800BFDC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800BFDC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800BFDCC  88 04 00 13 */	lbz r0, 0x13(r4)
/* 800BFDD0  28 00 00 31 */	cmplwi r0, 0x31
/* 800BFDD4  40 82 00 08 */	bne lbl_800BFDDC
/* 800BFDD8  38 C0 00 01 */	li r6, 1
lbl_800BFDDC:
/* 800BFDDC  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 800BFDE0  41 82 00 14 */	beq lbl_800BFDF4
/* 800BFDE4  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800BFDE8  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800BFDEC  40 82 00 08 */	bne lbl_800BFDF4
/* 800BFDF0  38 A0 00 01 */	li r5, 1
lbl_800BFDF4:
/* 800BFDF4  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 800BFDF8  4E 80 00 20 */	blr 
