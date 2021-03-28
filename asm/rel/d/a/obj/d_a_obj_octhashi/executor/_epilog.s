lbl_80CA4B6C:
/* 80CA4B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4B70  7C 08 02 A6 */	mflr r0
/* 80CA4B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4B78  4B 5B E5 14 */	b ModuleEpilog
/* 80CA4B7C  3C 60 80 CA */	lis r3, data_80CA647C@ha
/* 80CA4B80  38 63 64 7C */	addi r3, r3, data_80CA647C@l
/* 80CA4B84  4B 5B E6 0C */	b ModuleDestructorsX
/* 80CA4B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4B8C  7C 08 03 A6 */	mtlr r0
/* 80CA4B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4B94  4E 80 00 20 */	blr 
