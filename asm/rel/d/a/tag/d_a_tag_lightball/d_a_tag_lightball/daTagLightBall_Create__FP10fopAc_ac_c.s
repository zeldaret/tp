lbl_80D5AC50:
/* 80D5AC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5AC54  7C 08 02 A6 */	mflr r0
/* 80D5AC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5AC5C  4B FF FD 5D */	bl create__16daTagLightBall_cFv
/* 80D5AC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AC64  7C 08 03 A6 */	mtlr r0
/* 80D5AC68  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AC6C  4E 80 00 20 */	blr 
