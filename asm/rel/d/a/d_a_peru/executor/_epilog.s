lbl_80D46E2C:
/* 80D46E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D46E30  7C 08 02 A6 */	mflr r0
/* 80D46E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D46E38  4B 51 C2 54 */	b ModuleEpilog
/* 80D46E3C  3C 60 80 D5 */	lis r3, __destroy_global_chain_reference@ha
/* 80D46E40  38 63 C0 54 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D46E44  4B 51 C3 4C */	b ModuleDestructorsX
/* 80D46E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D46E4C  7C 08 03 A6 */	mtlr r0
/* 80D46E50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D46E54  4E 80 00 20 */	blr 
