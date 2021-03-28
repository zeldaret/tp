lbl_80D393AC:
/* 80D393AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D393B0  7C 08 02 A6 */	mflr r0
/* 80D393B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D393B8  4B 52 9C D4 */	b ModuleEpilog
/* 80D393BC  3C 60 80 D4 */	lis r3, data_80D39C84@ha
/* 80D393C0  38 63 9C 84 */	addi r3, r3, data_80D39C84@l
/* 80D393C4  4B 52 9D CC */	b ModuleDestructorsX
/* 80D393C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D393CC  7C 08 03 A6 */	mtlr r0
/* 80D393D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D393D4  4E 80 00 20 */	blr 
