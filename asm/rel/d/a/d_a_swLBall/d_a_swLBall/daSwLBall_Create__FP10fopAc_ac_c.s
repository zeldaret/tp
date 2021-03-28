lbl_80D4F48C:
/* 80D4F48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F490  7C 08 02 A6 */	mflr r0
/* 80D4F494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F498  4B FF FA 61 */	bl create__11daSwLBall_cFv
/* 80D4F49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F4A0  7C 08 03 A6 */	mtlr r0
/* 80D4F4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F4A8  4E 80 00 20 */	blr 
