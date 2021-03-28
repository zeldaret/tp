lbl_80D603AC:
/* 80D603AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D603B0  7C 08 02 A6 */	mflr r0
/* 80D603B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D603B8  4B 50 2C D4 */	b ModuleEpilog
/* 80D603BC  3C 60 80 D6 */	lis r3, data_80D607B0@ha
/* 80D603C0  38 63 07 B0 */	addi r3, r3, data_80D607B0@l
/* 80D603C4  4B 50 2D CC */	b ModuleDestructorsX
/* 80D603C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D603CC  7C 08 03 A6 */	mtlr r0
/* 80D603D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D603D4  4E 80 00 20 */	blr 
