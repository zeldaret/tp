lbl_8098078C:
/* 8098078C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80980790  7C 08 02 A6 */	mflr r0
/* 80980794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80980798  4B 8E 28 F4 */	b ModuleEpilog
/* 8098079C  3C 60 80 98 */	lis r3, __destroy_global_chain_reference@ha
/* 809807A0  38 63 69 90 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809807A4  4B 8E 29 EC */	b ModuleDestructorsX
/* 809807A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809807AC  7C 08 03 A6 */	mtlr r0
/* 809807B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809807B4  4E 80 00 20 */	blr 
