lbl_80A0E18C:
/* 80A0E18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0E190  7C 08 02 A6 */	mflr r0
/* 80A0E194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0E198  4B 85 4E F4 */	b ModuleEpilog
/* 80A0E19C  3C 60 80 A1 */	lis r3, __destroy_global_chain_reference@ha
/* 80A0E1A0  38 63 3D A0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A0E1A4  4B 85 4F EC */	b ModuleDestructorsX
/* 80A0E1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0E1AC  7C 08 03 A6 */	mtlr r0
/* 80A0E1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0E1B4  4E 80 00 20 */	blr 
