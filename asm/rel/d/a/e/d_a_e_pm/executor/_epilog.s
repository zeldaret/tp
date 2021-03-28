lbl_80741E2C:
/* 80741E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80741E30  7C 08 02 A6 */	mflr r0
/* 80741E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80741E38  4B B2 12 54 */	b ModuleEpilog
/* 80741E3C  3C 60 80 75 */	lis r3, __destroy_global_chain_reference@ha
/* 80741E40  38 63 BF 30 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80741E44  4B B2 13 4C */	b ModuleDestructorsX
/* 80741E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80741E4C  7C 08 03 A6 */	mtlr r0
/* 80741E50  38 21 00 10 */	addi r1, r1, 0x10
/* 80741E54  4E 80 00 20 */	blr 
