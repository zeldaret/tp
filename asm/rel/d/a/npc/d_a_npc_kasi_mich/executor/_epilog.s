lbl_80A2610C:
/* 80A2610C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A26110  7C 08 02 A6 */	mflr r0
/* 80A26114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26118  4B 83 CF 74 */	b ModuleEpilog
/* 80A2611C  3C 60 80 A3 */	lis r3, __destroy_global_chain_reference@ha
/* 80A26120  38 63 A0 40 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A26124  4B 83 D0 6C */	b ModuleDestructorsX
/* 80A26128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2612C  7C 08 03 A6 */	mtlr r0
/* 80A26130  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26134  4E 80 00 20 */	blr 
