lbl_8001E698:
/* 8001E698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E69C  7C 08 02 A6 */	mflr r0
/* 8001E6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E6A4  80 6D 80 30 */	lwz r3, l_fopOvlpM_overlap(r13)
/* 8001E6A8  28 03 00 00 */	cmplwi r3, 0
/* 8001E6AC  40 82 00 0C */	bne lbl_8001E6B8
/* 8001E6B0  38 60 00 01 */	li r3, 1
/* 8001E6B4  48 00 00 24 */	b lbl_8001E6D8
lbl_8001E6B8:
/* 8001E6B8  48 00 03 D1 */	bl fopOvlpReq_Cancel__FP21overlap_request_class
/* 8001E6BC  2C 03 00 01 */	cmpwi r3, 1
/* 8001E6C0  40 82 00 14 */	bne lbl_8001E6D4
/* 8001E6C4  38 00 00 00 */	li r0, 0
/* 8001E6C8  90 0D 80 30 */	stw r0, l_fopOvlpM_overlap(r13)
/* 8001E6CC  38 60 00 01 */	li r3, 1
/* 8001E6D0  48 00 00 08 */	b lbl_8001E6D8
lbl_8001E6D4:
/* 8001E6D4  38 60 00 00 */	li r3, 0
lbl_8001E6D8:
/* 8001E6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E6DC  7C 08 03 A6 */	mtlr r0
/* 8001E6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E6E4  4E 80 00 20 */	blr 
