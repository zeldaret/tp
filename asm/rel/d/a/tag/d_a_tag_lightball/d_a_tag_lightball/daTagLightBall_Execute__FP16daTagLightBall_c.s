lbl_80D5AC10:
/* 80D5AC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5AC14  7C 08 02 A6 */	mflr r0
/* 80D5AC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5AC1C  4B FF FE 05 */	bl execute__16daTagLightBall_cFv
/* 80D5AC20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AC24  7C 08 03 A6 */	mtlr r0
/* 80D5AC28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AC2C  4E 80 00 20 */	blr 
