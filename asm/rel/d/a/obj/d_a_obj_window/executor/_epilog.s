lbl_80D3870C:
/* 80D3870C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38710  7C 08 02 A6 */	mflr r0
/* 80D38714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38718  4B 52 A9 74 */	b ModuleEpilog
/* 80D3871C  3C 60 80 D4 */	lis r3, data_80D39228@ha
/* 80D38720  38 63 92 28 */	addi r3, r3, data_80D39228@l
/* 80D38724  4B 52 AA 6C */	b ModuleDestructorsX
/* 80D38728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3872C  7C 08 03 A6 */	mtlr r0
/* 80D38730  38 21 00 10 */	addi r1, r1, 0x10
/* 80D38734  4E 80 00 20 */	blr 
