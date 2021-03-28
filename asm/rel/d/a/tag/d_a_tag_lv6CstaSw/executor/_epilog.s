lbl_80D5B22C:
/* 80D5B22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B230  7C 08 02 A6 */	mflr r0
/* 80D5B234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B238  4B 50 7E 54 */	b ModuleEpilog
/* 80D5B23C  3C 60 80 D6 */	lis r3, __destroy_global_chain_reference@ha
/* 80D5B240  38 63 B7 E0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D5B244  4B 50 7F 4C */	b ModuleDestructorsX
/* 80D5B248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B24C  7C 08 03 A6 */	mtlr r0
/* 80D5B250  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B254  4E 80 00 20 */	blr 
