lbl_80D5DC90:
/* 80D5DC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DC94  7C 08 02 A6 */	mflr r0
/* 80D5DC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DC9C  4B FF FE F5 */	bl create__13daTagPoFire_cFv
/* 80D5DCA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DCA4  7C 08 03 A6 */	mtlr r0
/* 80D5DCA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DCAC  4E 80 00 20 */	blr 
