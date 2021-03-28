lbl_8086124C:
/* 8086124C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80861250  7C 08 02 A6 */	mflr r0
/* 80861254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80861258  4B A0 1E 34 */	b ModuleEpilog
/* 8086125C  3C 60 80 86 */	lis r3, data_80862C48@ha
/* 80861260  38 63 2C 48 */	addi r3, r3, data_80862C48@l
/* 80861264  4B A0 1F 2C */	b ModuleDestructorsX
/* 80861268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086126C  7C 08 03 A6 */	mtlr r0
/* 80861270  38 21 00 10 */	addi r1, r1, 0x10
/* 80861274  4E 80 00 20 */	blr 
