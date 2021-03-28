lbl_8057D00C:
/* 8057D00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D010  7C 08 02 A6 */	mflr r0
/* 8057D014  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D018  4B CE 60 74 */	b ModuleEpilog
/* 8057D01C  3C 60 80 58 */	lis r3, __destroy_global_chain_reference@ha
/* 8057D020  38 63 F5 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8057D024  4B CE 61 6C */	b ModuleDestructorsX
/* 8057D028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D02C  7C 08 03 A6 */	mtlr r0
/* 8057D030  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D034  4E 80 00 20 */	blr 
