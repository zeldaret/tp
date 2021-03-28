lbl_8071F8E0:
/* 8071F8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F8E4  7C 08 02 A6 */	mflr r0
/* 8071F8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F8EC  3C 60 80 72 */	lis r3, data_80722C28@ha
/* 8071F8F0  38 63 2C 28 */	addi r3, r3, data_80722C28@l
/* 8071F8F4  4B B4 38 58 */	b ModuleConstructorsX
/* 8071F8F8  4B B4 37 90 */	b ModuleProlog
/* 8071F8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F900  7C 08 03 A6 */	mtlr r0
/* 8071F904  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F908  4E 80 00 20 */	blr 
