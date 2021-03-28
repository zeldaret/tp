lbl_8071CC00:
/* 8071CC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071CC04  7C 08 02 A6 */	mflr r0
/* 8071CC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071CC0C  3C 60 80 72 */	lis r3, data_8071F630@ha
/* 8071CC10  38 63 F6 30 */	addi r3, r3, data_8071F630@l
/* 8071CC14  4B B4 65 38 */	b ModuleConstructorsX
/* 8071CC18  4B B4 64 70 */	b ModuleProlog
/* 8071CC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071CC20  7C 08 03 A6 */	mtlr r0
/* 8071CC24  38 21 00 10 */	addi r1, r1, 0x10
/* 8071CC28  4E 80 00 20 */	blr 
