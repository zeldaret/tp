lbl_805ADDA8:
/* 805ADDA8  38 A0 00 01 */	li r5, 1
/* 805ADDAC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805ADDB0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805ADDB4  40 82 00 1C */	bne lbl_805ADDD0
/* 805ADDB8  3C 80 80 5B */	lis r4, lit_3852@ha /* 0x805ADF58@ha */
/* 805ADDBC  C0 24 DF 58 */	lfs f1, lit_3852@l(r4)  /* 0x805ADF58@l */
/* 805ADDC0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805ADDC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805ADDC8  41 82 00 08 */	beq lbl_805ADDD0
/* 805ADDCC  38 A0 00 00 */	li r5, 0
lbl_805ADDD0:
/* 805ADDD0  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 805ADDD4  4E 80 00 20 */	blr 
