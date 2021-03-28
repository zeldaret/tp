lbl_80C89A04:
/* 80C89A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89A08  7C 08 02 A6 */	mflr r0
/* 80C89A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89A10  4B FF FD 61 */	bl init_modeOnAnm__10daL8Lift_cFv
/* 80C89A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89A18  7C 08 03 A6 */	mtlr r0
/* 80C89A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89A20  4E 80 00 20 */	blr 
