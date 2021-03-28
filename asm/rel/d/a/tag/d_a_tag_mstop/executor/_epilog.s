lbl_805A60EC:
/* 805A60EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A60F0  7C 08 02 A6 */	mflr r0
/* 805A60F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A60F8  4B CB CF 94 */	b ModuleEpilog
/* 805A60FC  3C 60 80 5A */	lis r3, data_805A6968@ha
/* 805A6100  38 63 69 68 */	addi r3, r3, data_805A6968@l
/* 805A6104  4B CB D0 8C */	b ModuleDestructorsX
/* 805A6108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A610C  7C 08 03 A6 */	mtlr r0
/* 805A6110  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6114  4E 80 00 20 */	blr 
