lbl_80BB6D60:
/* 80BB6D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6D64  7C 08 02 A6 */	mflr r0
/* 80BB6D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6D6C  48 00 05 91 */	bl middleExe__11daBkyRock_cFv
/* 80BB6D70  38 60 00 01 */	li r3, 1
/* 80BB6D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6D78  7C 08 03 A6 */	mtlr r0
/* 80BB6D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6D80  4E 80 00 20 */	blr 
