lbl_80599CEC:
/* 80599CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599CF0  7C 08 02 A6 */	mflr r0
/* 80599CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599CF8  4B FF FD 81 */	bl Draw__13daObj_Stick_cFv
/* 80599CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599D00  7C 08 03 A6 */	mtlr r0
/* 80599D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80599D08  4E 80 00 20 */	blr 
