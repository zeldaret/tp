lbl_80C9F36C:
/* 80C9F36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F370  7C 08 02 A6 */	mflr r0
/* 80C9F374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F378  4B 5C 3D 14 */	b ModuleEpilog
/* 80C9F37C  3C 60 80 CA */	lis r3, data_80CA0358@ha
/* 80C9F380  38 63 03 58 */	addi r3, r3, data_80CA0358@l
/* 80C9F384  4B 5C 3E 0C */	b ModuleDestructorsX
/* 80C9F388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F38C  7C 08 03 A6 */	mtlr r0
/* 80C9F390  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F394  4E 80 00 20 */	blr 
