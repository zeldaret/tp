lbl_80662BC4:
/* 80662BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80662BC8  7C 08 02 A6 */	mflr r0
/* 80662BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80662BD0  4B FF FD 9D */	bl Draw__7daCow_cFv
/* 80662BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80662BD8  7C 08 03 A6 */	mtlr r0
/* 80662BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80662BE0  4E 80 00 20 */	blr 
