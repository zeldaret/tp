lbl_80D39C00:
/* 80D39C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39C04  7C 08 02 A6 */	mflr r0
/* 80D39C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39C0C  4B FF FF 5D */	bl draw__13daObjWPndlm_cFv
/* 80D39C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39C14  7C 08 03 A6 */	mtlr r0
/* 80D39C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39C1C  4E 80 00 20 */	blr 
