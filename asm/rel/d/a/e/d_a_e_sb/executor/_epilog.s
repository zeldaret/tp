lbl_8078158C:
/* 8078158C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80781590  7C 08 02 A6 */	mflr r0
/* 80781594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80781598  4B AE 1A F4 */	b ModuleEpilog
/* 8078159C  3C 60 80 78 */	lis r3, __destroy_global_chain_reference@ha
/* 807815A0  38 63 4D 5C */	addi r3, r3, __destroy_global_chain_reference@l
/* 807815A4  4B AE 1B EC */	b ModuleDestructorsX
/* 807815A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807815AC  7C 08 03 A6 */	mtlr r0
/* 807815B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807815B4  4E 80 00 20 */	blr 
