lbl_8085B380:
/* 8085B380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085B384  7C 08 02 A6 */	mflr r0
/* 8085B388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085B38C  3C 60 80 86 */	lis r3, data_8085BA3C@ha
/* 8085B390  38 63 BA 3C */	addi r3, r3, data_8085BA3C@l
/* 8085B394  4B A0 7D B8 */	b ModuleConstructorsX
/* 8085B398  4B A0 7C F0 */	b ModuleProlog
/* 8085B39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085B3A0  7C 08 03 A6 */	mtlr r0
/* 8085B3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8085B3A8  4E 80 00 20 */	blr 
