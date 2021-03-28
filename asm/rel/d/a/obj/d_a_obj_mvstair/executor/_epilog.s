lbl_80C9D04C:
/* 80C9D04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D050  7C 08 02 A6 */	mflr r0
/* 80C9D054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D058  4B 5C 60 34 */	b ModuleEpilog
/* 80C9D05C  3C 60 80 CA */	lis r3, data_80C9E8A8@ha
/* 80C9D060  38 63 E8 A8 */	addi r3, r3, data_80C9E8A8@l
/* 80C9D064  4B 5C 61 2C */	b ModuleDestructorsX
/* 80C9D068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D06C  7C 08 03 A6 */	mtlr r0
/* 80C9D070  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D074  4E 80 00 20 */	blr 
