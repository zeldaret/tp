lbl_80A88C0C:
/* 80A88C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A88C10  7C 08 02 A6 */	mflr r0
/* 80A88C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A88C18  4B 7D A4 74 */	b ModuleEpilog
/* 80A88C1C  3C 60 80 A9 */	lis r3, __destroy_global_chain_reference@ha
/* 80A88C20  38 63 24 10 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A88C24  4B 7D A5 6C */	b ModuleDestructorsX
/* 80A88C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A88C2C  7C 08 03 A6 */	mtlr r0
/* 80A88C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80A88C34  4E 80 00 20 */	blr 
