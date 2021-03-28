lbl_80C4528C:
/* 80C4528C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C45290  7C 08 02 A6 */	mflr r0
/* 80C45294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C45298  4B 61 DD F4 */	b ModuleEpilog
/* 80C4529C  3C 60 80 C4 */	lis r3, __destroy_global_chain_reference@ha
/* 80C452A0  38 63 5F 10 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C452A4  4B 61 DE EC */	b ModuleDestructorsX
/* 80C452A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C452AC  7C 08 03 A6 */	mtlr r0
/* 80C452B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C452B4  4E 80 00 20 */	blr 
