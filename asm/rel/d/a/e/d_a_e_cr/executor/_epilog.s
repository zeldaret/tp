lbl_80697F4C:
/* 80697F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80697F50  7C 08 02 A6 */	mflr r0
/* 80697F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80697F58  4B BC B1 34 */	b ModuleEpilog
/* 80697F5C  3C 60 80 6A */	lis r3, __destroy_global_chain_reference@ha
/* 80697F60  38 63 9C A4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80697F64  4B BC B2 2C */	b ModuleDestructorsX
/* 80697F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80697F6C  7C 08 03 A6 */	mtlr r0
/* 80697F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80697F74  4E 80 00 20 */	blr 
