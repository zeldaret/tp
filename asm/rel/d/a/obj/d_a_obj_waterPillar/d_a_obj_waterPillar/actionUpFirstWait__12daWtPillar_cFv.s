lbl_80D2D780:
/* 80D2D780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2D784  7C 08 02 A6 */	mflr r0
/* 80D2D788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2D78C  A0 83 0B 02 */	lhz r4, 0xb02(r3)
/* 80D2D790  28 04 00 00 */	cmplwi r4, 0
/* 80D2D794  41 82 00 10 */	beq lbl_80D2D7A4
/* 80D2D798  38 04 FF FF */	addi r0, r4, -1
/* 80D2D79C  B0 03 0B 02 */	sth r0, 0xb02(r3)
/* 80D2D7A0  48 00 00 08 */	b lbl_80D2D7A8
lbl_80D2D7A4:
/* 80D2D7A4  48 00 00 15 */	bl actionUpInit__12daWtPillar_cFv
lbl_80D2D7A8:
/* 80D2D7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2D7AC  7C 08 03 A6 */	mtlr r0
/* 80D2D7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2D7B4  4E 80 00 20 */	blr 
