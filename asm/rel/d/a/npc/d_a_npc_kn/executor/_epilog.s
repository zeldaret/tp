lbl_80A2A94C:
/* 80A2A94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2A950  7C 08 02 A6 */	mflr r0
/* 80A2A954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2A958  4B 83 87 34 */	b ModuleEpilog
/* 80A2A95C  3C 60 80 A4 */	lis r3, __destroy_global_chain_reference@ha
/* 80A2A960  38 63 08 BC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A2A964  4B 83 88 2C */	b ModuleDestructorsX
/* 80A2A968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2A96C  7C 08 03 A6 */	mtlr r0
/* 80A2A970  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2A974  4E 80 00 20 */	blr 
