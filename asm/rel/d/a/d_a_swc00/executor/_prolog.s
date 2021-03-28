lbl_805A1380:
/* 805A1380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1384  7C 08 02 A6 */	mflr r0
/* 805A1388  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A138C  3C 60 80 5A */	lis r3, data_805A1D8C@ha
/* 805A1390  38 63 1D 8C */	addi r3, r3, data_805A1D8C@l
/* 805A1394  4B CC 1D B8 */	b ModuleConstructorsX
/* 805A1398  4B CC 1C F0 */	b ModuleProlog
/* 805A139C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A13A0  7C 08 03 A6 */	mtlr r0
/* 805A13A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A13A8  4E 80 00 20 */	blr 
