lbl_80BC5920:
/* 80BC5920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC5924  7C 08 02 A6 */	mflr r0
/* 80BC5928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC592C  3C 60 80 BC */	lis r3, data_80BC6A24@ha
/* 80BC5930  38 63 6A 24 */	addi r3, r3, data_80BC6A24@l
/* 80BC5934  4B 69 D8 18 */	b ModuleConstructorsX
/* 80BC5938  4B 69 D7 50 */	b ModuleProlog
/* 80BC593C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC5940  7C 08 03 A6 */	mtlr r0
/* 80BC5944  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC5948  4E 80 00 20 */	blr 
