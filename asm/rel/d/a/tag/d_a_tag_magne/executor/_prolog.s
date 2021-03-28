lbl_805A5420:
/* 805A5420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5424  7C 08 02 A6 */	mflr r0
/* 805A5428  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A542C  3C 60 80 5A */	lis r3, data_805A55CC@ha
/* 805A5430  38 63 55 CC */	addi r3, r3, data_805A55CC@l
/* 805A5434  4B CB DD 18 */	b ModuleConstructorsX
/* 805A5438  4B CB DC 50 */	b ModuleProlog
/* 805A543C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5440  7C 08 03 A6 */	mtlr r0
/* 805A5444  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5448  4E 80 00 20 */	blr 
