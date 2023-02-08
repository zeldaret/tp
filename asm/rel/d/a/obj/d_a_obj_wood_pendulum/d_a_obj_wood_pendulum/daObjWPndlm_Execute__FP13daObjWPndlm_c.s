lbl_80D39C20:
/* 80D39C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39C24  7C 08 02 A6 */	mflr r0
/* 80D39C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39C2C  4B FF FD 4D */	bl execute__13daObjWPndlm_cFv
/* 80D39C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39C34  7C 08 03 A6 */	mtlr r0
/* 80D39C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39C3C  4E 80 00 20 */	blr 
