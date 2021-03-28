lbl_804DFB0C:
/* 804DFB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFB10  7C 08 02 A6 */	mflr r0
/* 804DFB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFB18  4B D8 35 74 */	b ModuleEpilog
/* 804DFB1C  3C 60 80 4E */	lis r3, __destroy_global_chain_reference@ha
/* 804DFB20  38 63 19 C8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 804DFB24  4B D8 36 6C */	b ModuleDestructorsX
/* 804DFB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFB2C  7C 08 03 A6 */	mtlr r0
/* 804DFB30  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFB34  4E 80 00 20 */	blr 
