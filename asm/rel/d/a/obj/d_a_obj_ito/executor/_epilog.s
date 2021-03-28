lbl_8047B22C:
/* 8047B22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047B230  7C 08 02 A6 */	mflr r0
/* 8047B234  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047B238  4B DE 7E 54 */	b ModuleEpilog
/* 8047B23C  3C 60 80 48 */	lis r3, __destroy_global_chain_reference@ha
/* 8047B240  38 63 D8 04 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8047B244  4B DE 7F 4C */	b ModuleDestructorsX
/* 8047B248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047B24C  7C 08 03 A6 */	mtlr r0
/* 8047B250  38 21 00 10 */	addi r1, r1, 0x10
/* 8047B254  4E 80 00 20 */	blr 
