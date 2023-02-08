lbl_80CCB318:
/* 80CCB318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB31C  7C 08 02 A6 */	mflr r0
/* 80CCB320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB324  28 03 00 00 */	cmplwi r3, 0
/* 80CCB328  41 82 00 08 */	beq lbl_80CCB330
/* 80CCB32C  48 00 12 75 */	bl changeScene__17daObjSCannonTen_cFv
lbl_80CCB330:
/* 80CCB330  38 60 00 01 */	li r3, 1
/* 80CCB334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB338  7C 08 03 A6 */	mtlr r0
/* 80CCB33C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB340  4E 80 00 20 */	blr 
