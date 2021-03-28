lbl_80C5D360:
/* 80C5D360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D364  7C 08 02 A6 */	mflr r0
/* 80C5D368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D36C  3C 60 80 C6 */	lis r3, data_80C5DB48@ha
/* 80C5D370  38 63 DB 48 */	addi r3, r3, data_80C5DB48@l
/* 80C5D374  4B 60 5D D8 */	b ModuleConstructorsX
/* 80C5D378  4B 60 5D 10 */	b ModuleProlog
/* 80C5D37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D380  7C 08 03 A6 */	mtlr r0
/* 80C5D384  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D388  4E 80 00 20 */	blr 
