lbl_80B0D1B4:
/* 80B0D1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D1B8  7C 08 02 A6 */	mflr r0
/* 80B0D1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D1C0  88 03 0D 7A */	lbz r0, 0xd7a(r3)
/* 80B0D1C4  28 00 00 00 */	cmplwi r0, 0
/* 80B0D1C8  40 82 00 0C */	bne lbl_80B0D1D4
/* 80B0D1CC  38 60 00 01 */	li r3, 1
/* 80B0D1D0  48 00 00 0C */	b lbl_80B0D1DC
lbl_80B0D1D4:
/* 80B0D1D4  4B 64 4E 41 */	bl execute__8daNpcF_cFv
/* 80B0D1D8  38 60 00 01 */	li r3, 1
lbl_80B0D1DC:
/* 80B0D1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D1E0  7C 08 03 A6 */	mtlr r0
/* 80B0D1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D1E8  4E 80 00 20 */	blr 
