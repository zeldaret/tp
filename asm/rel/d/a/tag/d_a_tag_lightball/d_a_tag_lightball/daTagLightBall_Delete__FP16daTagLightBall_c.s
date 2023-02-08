lbl_80D5AC30:
/* 80D5AC30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5AC34  7C 08 02 A6 */	mflr r0
/* 80D5AC38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5AC3C  4B FF FF 6D */	bl _delete__16daTagLightBall_cFv
/* 80D5AC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AC44  7C 08 03 A6 */	mtlr r0
/* 80D5AC48  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AC4C  4E 80 00 20 */	blr 
