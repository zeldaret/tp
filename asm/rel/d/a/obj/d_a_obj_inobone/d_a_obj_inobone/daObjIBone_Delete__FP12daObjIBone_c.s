lbl_80C280D8:
/* 80C280D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C280DC  7C 08 02 A6 */	mflr r0
/* 80C280E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C280E4  4B FF FF 6D */	bl _delete__12daObjIBone_cFv
/* 80C280E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C280EC  7C 08 03 A6 */	mtlr r0
/* 80C280F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C280F4  4E 80 00 20 */	blr 
