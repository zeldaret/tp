lbl_80C93D40:
/* 80C93D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93D44  7C 08 02 A6 */	mflr r0
/* 80C93D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93D4C  4B FF FF 61 */	bl _delete__12daObjMHole_cFv
/* 80C93D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93D54  7C 08 03 A6 */	mtlr r0
/* 80C93D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93D5C  4E 80 00 20 */	blr 
