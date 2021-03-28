lbl_80D61BCC:
/* 80D61BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61BD0  7C 08 02 A6 */	mflr r0
/* 80D61BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61BD8  4B 50 14 B4 */	b ModuleEpilog
/* 80D61BDC  3C 60 80 D6 */	lis r3, data_80D62C14@ha
/* 80D61BE0  38 63 2C 14 */	addi r3, r3, data_80D62C14@l
/* 80D61BE4  4B 50 15 AC */	b ModuleDestructorsX
/* 80D61BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61BEC  7C 08 03 A6 */	mtlr r0
/* 80D61BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61BF4  4E 80 00 20 */	blr 
