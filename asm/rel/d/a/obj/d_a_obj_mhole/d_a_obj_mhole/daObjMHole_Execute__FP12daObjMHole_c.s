lbl_80C93D20:
/* 80C93D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93D24  7C 08 02 A6 */	mflr r0
/* 80C93D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93D2C  4B FF F9 7D */	bl execute__12daObjMHole_cFv
/* 80C93D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93D34  7C 08 03 A6 */	mtlr r0
/* 80C93D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93D3C  4E 80 00 20 */	blr 
