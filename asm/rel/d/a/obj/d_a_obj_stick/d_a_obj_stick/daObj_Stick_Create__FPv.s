lbl_80599C8C:
/* 80599C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599C90  7C 08 02 A6 */	mflr r0
/* 80599C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599C98  4B FF F7 51 */	bl create__13daObj_Stick_cFv
/* 80599C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599CA0  7C 08 03 A6 */	mtlr r0
/* 80599CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80599CA8  4E 80 00 20 */	blr 
