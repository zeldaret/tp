lbl_80C18B6C:
/* 80C18B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18B70  7C 08 02 A6 */	mflr r0
/* 80C18B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18B78  4B 64 A5 14 */	b ModuleEpilog
/* 80C18B7C  3C 60 80 C2 */	lis r3, data_80C19474@ha
/* 80C18B80  38 63 94 74 */	addi r3, r3, data_80C19474@l
/* 80C18B84  4B 64 A6 0C */	b ModuleDestructorsX
/* 80C18B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18B8C  7C 08 03 A6 */	mtlr r0
/* 80C18B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18B94  4E 80 00 20 */	blr 
