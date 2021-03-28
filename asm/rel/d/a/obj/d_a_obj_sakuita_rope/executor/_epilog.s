lbl_80CC51EC:
/* 80CC51EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC51F0  7C 08 02 A6 */	mflr r0
/* 80CC51F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC51F8  4B 59 DE 94 */	b ModuleEpilog
/* 80CC51FC  3C 60 80 CC */	lis r3, data_80CC68EC@ha
/* 80CC5200  38 63 68 EC */	addi r3, r3, data_80CC68EC@l
/* 80CC5204  4B 59 DF 8C */	b ModuleDestructorsX
/* 80CC5208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC520C  7C 08 03 A6 */	mtlr r0
/* 80CC5210  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5214  4E 80 00 20 */	blr 
