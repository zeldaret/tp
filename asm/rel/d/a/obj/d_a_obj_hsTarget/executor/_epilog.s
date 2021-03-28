lbl_80C1F36C:
/* 80C1F36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F370  7C 08 02 A6 */	mflr r0
/* 80C1F374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F378  4B 64 3D 14 */	b ModuleEpilog
/* 80C1F37C  3C 60 80 C2 */	lis r3, __destroy_global_chain_reference@ha
/* 80C1F380  38 63 F8 94 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C1F384  4B 64 3E 0C */	b ModuleDestructorsX
/* 80C1F388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F38C  7C 08 03 A6 */	mtlr r0
/* 80C1F390  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F394  4E 80 00 20 */	blr 
