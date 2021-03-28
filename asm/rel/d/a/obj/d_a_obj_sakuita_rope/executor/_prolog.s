lbl_80CC51C0:
/* 80CC51C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC51C4  7C 08 02 A6 */	mflr r0
/* 80CC51C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC51CC  3C 60 80 CC */	lis r3, data_80CC68E8@ha
/* 80CC51D0  38 63 68 E8 */	addi r3, r3, data_80CC68E8@l
/* 80CC51D4  4B 59 DF 78 */	b ModuleConstructorsX
/* 80CC51D8  4B 59 DE B0 */	b ModuleProlog
/* 80CC51DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC51E0  7C 08 03 A6 */	mtlr r0
/* 80CC51E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC51E8  4E 80 00 20 */	blr 
