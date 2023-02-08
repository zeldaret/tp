lbl_80C308D0:
/* 80C308D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C308D4  7C 08 02 A6 */	mflr r0
/* 80C308D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C308DC  4B FF FC 71 */	bl execute__10daObjKAG_cFv
/* 80C308E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C308E4  7C 08 03 A6 */	mtlr r0
/* 80C308E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C308EC  4E 80 00 20 */	blr 
