lbl_8034D840:
/* 8034D840  7C 08 02 A6 */	mflr r0
/* 8034D844  3C 80 80 45 */	lis r4, regs@ha /* 0x8044CA28@ha */
/* 8034D848  90 01 00 04 */	stw r0, 4(r1)
/* 8034D84C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034D850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034D854  3B E4 CA 28 */	addi r31, r4, regs@l /* 0x8044CA28@l */
/* 8034D858  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034D85C  3B C3 00 00 */	addi r30, r3, 0
/* 8034D860  4B FE FE 95 */	bl OSDisableInterrupts
/* 8034D864  93 DF 01 30 */	stw r30, 0x130(r31)
/* 8034D868  7C 7E 1B 78 */	mr r30, r3
/* 8034D86C  81 5F 01 44 */	lwz r10, 0x144(r31)
/* 8034D870  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 8034D874  90 01 00 08 */	stw r0, 8(r1)
/* 8034D878  A0 7F 00 FA */	lhz r3, 0xfa(r31)
/* 8034D87C  A0 9F 00 F6 */	lhz r4, 0xf6(r31)
/* 8034D880  88 AA 00 00 */	lbz r5, 0(r10)
/* 8034D884  A0 CA 00 02 */	lhz r6, 2(r10)
/* 8034D888  A0 EA 00 04 */	lhz r7, 4(r10)
/* 8034D88C  A1 0A 00 06 */	lhz r8, 6(r10)
/* 8034D890  A1 2A 00 08 */	lhz r9, 8(r10)
/* 8034D894  A1 4A 00 0A */	lhz r10, 0xa(r10)
/* 8034D898  4B FF F4 55 */	bl setVerticalRegs
/* 8034D89C  7F C3 F3 78 */	mr r3, r30
/* 8034D8A0  4B FE FE 7D */	bl OSRestoreInterrupts
/* 8034D8A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034D8A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034D8AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034D8B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8034D8B4  7C 08 03 A6 */	mtlr r0
/* 8034D8B8  4E 80 00 20 */	blr 
