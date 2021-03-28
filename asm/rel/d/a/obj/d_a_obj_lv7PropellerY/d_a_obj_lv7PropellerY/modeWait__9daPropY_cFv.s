lbl_80C85B24:
/* 80C85B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85B28  7C 08 02 A6 */	mflr r0
/* 80C85B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85B30  88 83 05 B8 */	lbz r4, 0x5b8(r3)
/* 80C85B34  28 04 00 00 */	cmplwi r4, 0
/* 80C85B38  40 82 00 0C */	bne lbl_80C85B44
/* 80C85B3C  48 00 00 21 */	bl init_modeMove2__9daPropY_cFv
/* 80C85B40  48 00 00 0C */	b lbl_80C85B4C
lbl_80C85B44:
/* 80C85B44  38 04 FF FF */	addi r0, r4, -1
/* 80C85B48  98 03 05 B8 */	stb r0, 0x5b8(r3)
lbl_80C85B4C:
/* 80C85B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85B50  7C 08 03 A6 */	mtlr r0
/* 80C85B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85B58  4E 80 00 20 */	blr 
