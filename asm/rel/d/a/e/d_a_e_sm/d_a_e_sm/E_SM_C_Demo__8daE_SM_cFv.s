lbl_807968A0:
/* 807968A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807968A4  7C 08 02 A6 */	mflr r0
/* 807968A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807968AC  A8 03 0A 0A */	lha r0, 0xa0a(r3)
/* 807968B0  2C 00 00 01 */	cmpwi r0, 1
/* 807968B4  41 82 00 1C */	beq lbl_807968D0
/* 807968B8  40 80 00 1C */	bge lbl_807968D4
/* 807968BC  2C 00 00 00 */	cmpwi r0, 0
/* 807968C0  40 80 00 08 */	bge lbl_807968C8
/* 807968C4  48 00 00 10 */	b lbl_807968D4
lbl_807968C8:
/* 807968C8  4B FF FB C9 */	bl DemoStart__8daE_SM_cFv
/* 807968CC  48 00 00 08 */	b lbl_807968D4
lbl_807968D0:
/* 807968D0  4B FF FD 59 */	bl DemoMid__8daE_SM_cFv
lbl_807968D4:
/* 807968D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807968D8  7C 08 03 A6 */	mtlr r0
/* 807968DC  38 21 00 10 */	addi r1, r1, 0x10
/* 807968E0  4E 80 00 20 */	blr 
