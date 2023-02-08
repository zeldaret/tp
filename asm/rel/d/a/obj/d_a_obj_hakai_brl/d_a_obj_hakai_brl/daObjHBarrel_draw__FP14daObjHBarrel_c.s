lbl_80C1728C:
/* 80C1728C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17290  7C 08 02 A6 */	mflr r0
/* 80C17294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17298  4B FF F9 AD */	bl draw__14daObjHBarrel_cFv
/* 80C1729C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C172A0  7C 08 03 A6 */	mtlr r0
/* 80C172A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C172A8  4E 80 00 20 */	blr 
