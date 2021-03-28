lbl_80C280F8:
/* 80C280F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C280FC  7C 08 02 A6 */	mflr r0
/* 80C28100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C28104  4B FF F9 1D */	bl create__12daObjIBone_cFv
/* 80C28108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2810C  7C 08 03 A6 */	mtlr r0
/* 80C28110  38 21 00 10 */	addi r1, r1, 0x10
/* 80C28114  4E 80 00 20 */	blr 
