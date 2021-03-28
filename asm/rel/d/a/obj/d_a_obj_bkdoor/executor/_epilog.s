lbl_80578CCC:
/* 80578CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578CD0  7C 08 02 A6 */	mflr r0
/* 80578CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578CD8  4B CE A3 B4 */	b ModuleEpilog
/* 80578CDC  3C 60 80 58 */	lis r3, data_8057948C@ha
/* 80578CE0  38 63 94 8C */	addi r3, r3, data_8057948C@l
/* 80578CE4  4B CE A4 AC */	b ModuleDestructorsX
/* 80578CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578CEC  7C 08 03 A6 */	mtlr r0
/* 80578CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80578CF4  4E 80 00 20 */	blr 
