lbl_80D2138C:
/* 80D2138C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21390  7C 08 02 A6 */	mflr r0
/* 80D21394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21398  4B 54 1C F4 */	b ModuleEpilog
/* 80D2139C  3C 60 80 D2 */	lis r3, data_80D21A04@ha
/* 80D213A0  38 63 1A 04 */	addi r3, r3, data_80D21A04@l
/* 80D213A4  4B 54 1D EC */	b ModuleDestructorsX
/* 80D213A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D213AC  7C 08 03 A6 */	mtlr r0
/* 80D213B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D213B4  4E 80 00 20 */	blr 
