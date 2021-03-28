lbl_80D21ACC:
/* 80D21ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21AD0  7C 08 02 A6 */	mflr r0
/* 80D21AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21AD8  4B 54 15 B4 */	b ModuleEpilog
/* 80D21ADC  3C 60 80 D2 */	lis r3, data_80D23DC8@ha
/* 80D21AE0  38 63 3D C8 */	addi r3, r3, data_80D23DC8@l
/* 80D21AE4  4B 54 16 AC */	b ModuleDestructorsX
/* 80D21AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21AEC  7C 08 03 A6 */	mtlr r0
/* 80D21AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21AF4  4E 80 00 20 */	blr 
