lbl_80D0BBCC:
/* 80D0BBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BBD0  7C 08 02 A6 */	mflr r0
/* 80D0BBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BBD8  4B 55 74 B4 */	b ModuleEpilog
/* 80D0BBDC  3C 60 80 D1 */	lis r3, data_80D0C138@ha
/* 80D0BBE0  38 63 C1 38 */	addi r3, r3, data_80D0C138@l
/* 80D0BBE4  4B 55 75 AC */	b ModuleDestructorsX
/* 80D0BBE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BBEC  7C 08 03 A6 */	mtlr r0
/* 80D0BBF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BBF4  4E 80 00 20 */	blr 
