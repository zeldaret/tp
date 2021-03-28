lbl_80D39C60:
/* 80D39C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39C64  7C 08 02 A6 */	mflr r0
/* 80D39C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39C6C  4B FF F9 CD */	bl create__13daObjWPndlm_cFv
/* 80D39C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39C74  7C 08 03 A6 */	mtlr r0
/* 80D39C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39C7C  4E 80 00 20 */	blr 
