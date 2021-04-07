lbl_8034D7C4:
/* 8034D7C4  7C 08 02 A6 */	mflr r0
/* 8034D7C8  3C 80 80 45 */	lis r4, regs@ha /* 0x8044CA28@ha */
/* 8034D7CC  90 01 00 04 */	stw r0, 4(r1)
/* 8034D7D0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034D7D4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034D7D8  3B E4 CA 28 */	addi r31, r4, regs@l /* 0x8044CA28@l */
/* 8034D7DC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034D7E0  3B C3 00 00 */	addi r30, r3, 0
/* 8034D7E4  4B FE FF 11 */	bl OSDisableInterrupts
/* 8034D7E8  93 DF 01 20 */	stw r30, 0x120(r31)
/* 8034D7EC  38 00 00 01 */	li r0, 1
/* 8034D7F0  3B C3 00 00 */	addi r30, r3, 0
/* 8034D7F4  90 0D 92 B8 */	stw r0, FBSet(r13)
/* 8034D7F8  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 8034D7FC  38 9F 01 24 */	addi r4, r31, 0x124
/* 8034D800  38 BF 01 28 */	addi r5, r31, 0x128
/* 8034D804  38 DF 01 3C */	addi r6, r31, 0x13c
/* 8034D808  38 FF 01 40 */	addi r7, r31, 0x140
/* 8034D80C  4B FF F2 0D */	bl setFbbRegs
/* 8034D810  7F C3 F3 78 */	mr r3, r30
/* 8034D814  4B FE FF 09 */	bl OSRestoreInterrupts
/* 8034D818  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034D81C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034D820  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034D824  38 21 00 18 */	addi r1, r1, 0x18
/* 8034D828  7C 08 03 A6 */	mtlr r0
/* 8034D82C  4E 80 00 20 */	blr 
