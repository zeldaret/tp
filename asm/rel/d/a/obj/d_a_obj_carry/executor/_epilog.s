lbl_8046EFAC:
/* 8046EFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046EFB0  7C 08 02 A6 */	mflr r0
/* 8046EFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046EFB8  4B DF 40 D4 */	b ModuleEpilog
/* 8046EFBC  3C 60 80 48 */	lis r3, data_80479908@ha
/* 8046EFC0  38 63 99 08 */	addi r3, r3, data_80479908@l
/* 8046EFC4  4B DF 41 CC */	b ModuleDestructorsX
/* 8046EFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046EFCC  7C 08 03 A6 */	mtlr r0
/* 8046EFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046EFD4  4E 80 00 20 */	blr 
