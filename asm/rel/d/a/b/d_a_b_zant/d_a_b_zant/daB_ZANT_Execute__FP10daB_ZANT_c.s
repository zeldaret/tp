lbl_8064DB48:
/* 8064DB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064DB4C  7C 08 02 A6 */	mflr r0
/* 8064DB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064DB54  4B FF FE F5 */	bl execute__10daB_ZANT_cFv
/* 8064DB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064DB5C  7C 08 03 A6 */	mtlr r0
/* 8064DB60  38 21 00 10 */	addi r1, r1, 0x10
/* 8064DB64  4E 80 00 20 */	blr 
