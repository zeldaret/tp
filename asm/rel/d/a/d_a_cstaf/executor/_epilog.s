lbl_804DD90C:
/* 804DD90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD910  7C 08 02 A6 */	mflr r0
/* 804DD914  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD918  4B D8 57 74 */	b ModuleEpilog
/* 804DD91C  3C 60 80 4E */	lis r3, data_804DF8B4@ha
/* 804DD920  38 63 F8 B4 */	addi r3, r3, data_804DF8B4@l
/* 804DD924  4B D8 58 6C */	b ModuleDestructorsX
/* 804DD928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD92C  7C 08 03 A6 */	mtlr r0
/* 804DD930  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD934  4E 80 00 20 */	blr 
