lbl_8032EBCC:
/* 8032EBCC  C0 22 CA 7C */	lfs f1, lit_866(r2)
/* 8032EBD0  38 60 00 00 */	li r3, 0
/* 8032EBD4  48 00 00 14 */	b lbl_8032EBE8
lbl_8032EBD8:
/* 8032EBD8  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8032EBDC  7C 05 04 2E */	lfsx f0, r5, r0
/* 8032EBE0  EC 21 00 2A */	fadds f1, f1, f0
/* 8032EBE4  38 63 00 01 */	addi r3, r3, 1
lbl_8032EBE8:
/* 8032EBE8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8032EBEC  7C 00 20 00 */	cmpw r0, r4
/* 8032EBF0  41 80 FF E8 */	blt lbl_8032EBD8
/* 8032EBF4  C0 02 CA 70 */	lfs f0, lit_830(r2)
/* 8032EBF8  EC 20 08 24 */	fdivs f1, f0, f1
/* 8032EBFC  38 60 00 00 */	li r3, 0
/* 8032EC00  48 00 00 18 */	b lbl_8032EC18
lbl_8032EC04:
/* 8032EC04  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8032EC08  7C 05 04 2E */	lfsx f0, r5, r0
/* 8032EC0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8032EC10  7C 05 05 2E */	stfsx f0, r5, r0
/* 8032EC14  38 63 00 01 */	addi r3, r3, 1
lbl_8032EC18:
/* 8032EC18  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8032EC1C  7C 00 20 00 */	cmpw r0, r4
/* 8032EC20  41 80 FF E4 */	blt lbl_8032EC04
/* 8032EC24  4E 80 00 20 */	blr 
