lbl_80D08BEC:
/* 80D08BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08BF0  7C 08 02 A6 */	mflr r0
/* 80D08BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D08BF8  48 00 1F D5 */	bl Delete__10daObjTEN_cFv
/* 80D08BFC  38 60 00 01 */	li r3, 1
/* 80D08C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D08C04  7C 08 03 A6 */	mtlr r0
/* 80D08C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80D08C0C  4E 80 00 20 */	blr 
