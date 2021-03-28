lbl_8071F90C:
/* 8071F90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F910  7C 08 02 A6 */	mflr r0
/* 8071F914  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F918  4B B4 37 74 */	b ModuleEpilog
/* 8071F91C  3C 60 80 72 */	lis r3, __destroy_global_chain_reference@ha
/* 8071F920  38 63 2C 30 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8071F924  4B B4 38 6C */	b ModuleDestructorsX
/* 8071F928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F92C  7C 08 03 A6 */	mtlr r0
/* 8071F930  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F934  4E 80 00 20 */	blr 
