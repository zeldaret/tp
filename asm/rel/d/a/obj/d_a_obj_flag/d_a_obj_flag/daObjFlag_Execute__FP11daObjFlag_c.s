lbl_80BEC300:
/* 80BEC300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC304  7C 08 02 A6 */	mflr r0
/* 80BEC308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC30C  80 03 05 68 */	lwz r0, 0x568(r3)
/* 80BEC310  28 00 00 00 */	cmplwi r0, 0
/* 80BEC314  40 82 00 0C */	bne lbl_80BEC320
/* 80BEC318  38 60 00 01 */	li r3, 1
/* 80BEC31C  48 00 00 0C */	b lbl_80BEC328
lbl_80BEC320:
/* 80BEC320  4B FF F6 8D */	bl calcJointAngle__11daObjFlag_cFv
/* 80BEC324  38 60 00 01 */	li r3, 1
lbl_80BEC328:
/* 80BEC328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC32C  7C 08 03 A6 */	mtlr r0
/* 80BEC330  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC334  4E 80 00 20 */	blr 
