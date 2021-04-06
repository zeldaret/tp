lbl_80371C80:
/* 80371C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371C84  7C 08 02 A6 */	mflr r0
/* 80371C88  3C 80 80 34 */	lis r4, PPCHalt@ha /* 0x80339D00@ha */
/* 80371C8C  3C 60 80 3A */	lis r3, EndofProgramInstruction@ha /* 0x803A2C08@ha */
/* 80371C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371C94  38 A0 00 04 */	li r5, 4
/* 80371C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80371C9C  3B E4 9D 00 */	addi r31, r4, PPCHalt@l /* 0x80339D00@l */
/* 80371CA0  38 83 2C 08 */	addi r4, r3, EndofProgramInstruction@l /* 0x803A2C08@l */
/* 80371CA4  38 7F 00 04 */	addi r3, r31, 4
/* 80371CA8  4B C9 19 19 */	bl TRK_memcpy
/* 80371CAC  38 7F 00 04 */	addi r3, r31, 4
/* 80371CB0  38 80 00 04 */	li r4, 4
/* 80371CB4  4B FC 99 DD */	bl ICInvalidateRange
/* 80371CB8  38 7F 00 04 */	addi r3, r31, 4
/* 80371CBC  38 80 00 04 */	li r4, 4
/* 80371CC0  4B FC 98 ED */	bl DCFlushRange
/* 80371CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80371CCC  7C 08 03 A6 */	mtlr r0
/* 80371CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80371CD4  4E 80 00 20 */	blr 
