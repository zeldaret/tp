lbl_807B812C:
/* 807B812C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B8130  7C 08 02 A6 */	mflr r0
/* 807B8134  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B8138  4B AA AF 54 */	b ModuleEpilog
/* 807B813C  3C 60 80 7C */	lis r3, __destroy_global_chain_reference@ha
/* 807B8140  38 63 A2 60 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807B8144  4B AA B0 4C */	b ModuleDestructorsX
/* 807B8148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B814C  7C 08 03 A6 */	mtlr r0
/* 807B8150  38 21 00 10 */	addi r1, r1, 0x10
/* 807B8154  4E 80 00 20 */	blr 
