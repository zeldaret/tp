lbl_80D5DC30:
/* 80D5DC30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DC34  7C 08 02 A6 */	mflr r0
/* 80D5DC38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DC3C  4B FF FF E5 */	bl Draw__13daTagPoFire_cFv
/* 80D5DC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DC44  7C 08 03 A6 */	mtlr r0
/* 80D5DC48  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DC4C  4E 80 00 20 */	blr 
