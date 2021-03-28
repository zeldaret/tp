lbl_8085B3AC:
/* 8085B3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085B3B0  7C 08 02 A6 */	mflr r0
/* 8085B3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085B3B8  4B A0 7C D4 */	b ModuleEpilog
/* 8085B3BC  3C 60 80 86 */	lis r3, data_8085BA40@ha
/* 8085B3C0  38 63 BA 40 */	addi r3, r3, data_8085BA40@l
/* 8085B3C4  4B A0 7D CC */	b ModuleDestructorsX
/* 8085B3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085B3CC  7C 08 03 A6 */	mtlr r0
/* 8085B3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8085B3D4  4E 80 00 20 */	blr 
