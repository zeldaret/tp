lbl_80C280B8:
/* 80C280B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C280BC  7C 08 02 A6 */	mflr r0
/* 80C280C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C280C4  4B FF FB 89 */	bl execute__12daObjIBone_cFv
/* 80C280C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C280CC  7C 08 03 A6 */	mtlr r0
/* 80C280D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C280D4  4E 80 00 20 */	blr 
