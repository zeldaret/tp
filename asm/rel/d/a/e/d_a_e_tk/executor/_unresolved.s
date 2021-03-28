lbl_807B8158:
/* 807B8158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B815C  7C 08 02 A6 */	mflr r0
/* 807B8160  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B8164  4B AA AF 2C */	b ModuleUnresolved
/* 807B8168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B816C  7C 08 03 A6 */	mtlr r0
/* 807B8170  38 21 00 10 */	addi r1, r1, 0x10
/* 807B8174  4E 80 00 20 */	blr 
