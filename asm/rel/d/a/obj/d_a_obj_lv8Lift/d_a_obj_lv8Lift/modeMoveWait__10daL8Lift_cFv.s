lbl_80C8972C:
/* 80C8972C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89730  7C 08 02 A6 */	mflr r0
/* 80C89734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89738  88 03 05 E9 */	lbz r0, 0x5e9(r3)
/* 80C8973C  28 00 00 FF */	cmplwi r0, 0xff
/* 80C89740  41 82 00 20 */	beq lbl_80C89760
/* 80C89744  88 03 05 EA */	lbz r0, 0x5ea(r3)
/* 80C89748  28 00 00 00 */	cmplwi r0, 0
/* 80C8974C  41 82 00 14 */	beq lbl_80C89760
/* 80C89750  88 03 08 0A */	lbz r0, 0x80a(r3)
/* 80C89754  28 00 00 00 */	cmplwi r0, 0
/* 80C89758  41 82 00 08 */	beq lbl_80C89760
/* 80C8975C  4B FF FF 6D */	bl init_modeWaitInit__10daL8Lift_cFv
lbl_80C89760:
/* 80C89760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89764  7C 08 03 A6 */	mtlr r0
/* 80C89768  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8976C  4E 80 00 20 */	blr 
