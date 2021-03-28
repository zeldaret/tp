lbl_8003C194:
/* 8003C194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003C198  7C 08 02 A6 */	mflr r0
/* 8003C19C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003C1A0  48 00 00 45 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 8003C1A4  28 03 00 00 */	cmplwi r3, 0
/* 8003C1A8  40 82 00 0C */	bne lbl_8003C1B4
/* 8003C1AC  38 60 00 00 */	li r3, 0
/* 8003C1B0  48 00 00 24 */	b lbl_8003C1D4
lbl_8003C1B4:
/* 8003C1B4  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 8003C1B8  38 04 FF FF */	addi r0, r4, -1
/* 8003C1BC  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8003C1C0  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 8003C1C4  40 82 00 0C */	bne lbl_8003C1D0
/* 8003C1C8  38 80 FF FF */	li r4, -1
/* 8003C1CC  4B FF E0 B5 */	bl __dt__11dRes_info_cFv
lbl_8003C1D0:
/* 8003C1D0  38 60 00 01 */	li r3, 1
lbl_8003C1D4:
/* 8003C1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003C1D8  7C 08 03 A6 */	mtlr r0
/* 8003C1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003C1E0  4E 80 00 20 */	blr 
