lbl_80D39C40:
/* 80D39C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39C44  7C 08 02 A6 */	mflr r0
/* 80D39C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39C4C  4B FF FF 81 */	bl _delete__13daObjWPndlm_cFv
/* 80D39C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39C54  7C 08 03 A6 */	mtlr r0
/* 80D39C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39C5C  4E 80 00 20 */	blr 
