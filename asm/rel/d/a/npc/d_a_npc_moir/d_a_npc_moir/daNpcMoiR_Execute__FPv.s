lbl_80A81084:
/* 80A81084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A81088  7C 08 02 A6 */	mflr r0
/* 80A8108C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A81090  4B FF BD ED */	bl Execute__11daNpcMoiR_cFv
/* 80A81094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A81098  7C 08 03 A6 */	mtlr r0
/* 80A8109C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A810A0  4E 80 00 20 */	blr 
