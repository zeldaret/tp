lbl_8046738C:
/* 8046738C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467390  7C 08 02 A6 */	mflr r0
/* 80467394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80467398  4B DF BC F4 */	b ModuleEpilog
/* 8046739C  3C 60 80 46 */	lis r3, data_804673DC@ha
/* 804673A0  38 63 73 DC */	addi r3, r3, data_804673DC@l
/* 804673A4  4B DF BD EC */	b ModuleDestructorsX
/* 804673A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804673AC  7C 08 03 A6 */	mtlr r0
/* 804673B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804673B4  4E 80 00 20 */	blr 
