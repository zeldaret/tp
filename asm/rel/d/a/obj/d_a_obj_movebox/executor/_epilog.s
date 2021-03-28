lbl_8047DA2C:
/* 8047DA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047DA30  7C 08 02 A6 */	mflr r0
/* 8047DA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047DA38  4B DE 56 54 */	b ModuleEpilog
/* 8047DA3C  3C 60 80 48 */	lis r3, __destroy_global_chain_reference@ha
/* 8047DA40  38 63 0F 1C */	addi r3, r3, __destroy_global_chain_reference@l
/* 8047DA44  4B DE 57 4C */	b ModuleDestructorsX
/* 8047DA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047DA4C  7C 08 03 A6 */	mtlr r0
/* 8047DA50  38 21 00 10 */	addi r1, r1, 0x10
/* 8047DA54  4E 80 00 20 */	blr 
