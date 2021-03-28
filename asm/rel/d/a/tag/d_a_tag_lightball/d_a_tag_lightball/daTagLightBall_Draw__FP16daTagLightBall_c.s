lbl_80D5ABF0:
/* 80D5ABF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5ABF4  7C 08 02 A6 */	mflr r0
/* 80D5ABF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5ABFC  4B FF FF A5 */	bl draw__16daTagLightBall_cFv
/* 80D5AC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AC04  7C 08 03 A6 */	mtlr r0
/* 80D5AC08  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AC0C  4E 80 00 20 */	blr 
