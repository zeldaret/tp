lbl_80D2D588:
/* 80D2D588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2D58C  7C 08 02 A6 */	mflr r0
/* 80D2D590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2D594  A0 83 0B 02 */	lhz r4, 0xb02(r3)
/* 80D2D598  28 04 00 00 */	cmplwi r4, 0
/* 80D2D59C  41 82 00 10 */	beq lbl_80D2D5AC
/* 80D2D5A0  38 04 FF FF */	addi r0, r4, -1
/* 80D2D5A4  B0 03 0B 02 */	sth r0, 0xb02(r3)
/* 80D2D5A8  48 00 00 08 */	b lbl_80D2D5B0
lbl_80D2D5AC:
/* 80D2D5AC  48 00 00 15 */	bl actionUpFirstInit__12daWtPillar_cFv
lbl_80D2D5B0:
/* 80D2D5B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2D5B4  7C 08 03 A6 */	mtlr r0
/* 80D2D5B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2D5BC  4E 80 00 20 */	blr 
