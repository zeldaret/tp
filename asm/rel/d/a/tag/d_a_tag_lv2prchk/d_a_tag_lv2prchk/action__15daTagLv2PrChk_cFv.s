lbl_805A4D68:
/* 805A4D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4D6C  7C 08 02 A6 */	mflr r0
/* 805A4D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4D74  3C 80 80 5A */	lis r4, cNullVec__6Z2Calc@ha /* 0x805A536C@ha */
/* 805A4D78  38 E4 53 6C */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x805A536C@l */
/* 805A4D7C  3C 80 80 5A */	lis r4, data_805A5410@ha /* 0x805A5410@ha */
/* 805A4D80  38 C4 54 10 */	addi r6, r4, data_805A5410@l /* 0x805A5410@l */
/* 805A4D84  88 06 00 00 */	lbz r0, 0(r6)
/* 805A4D88  7C 00 07 75 */	extsb. r0, r0
/* 805A4D8C  40 82 00 40 */	bne lbl_805A4DCC
/* 805A4D90  80 87 00 20 */	lwz r4, 0x20(r7)
/* 805A4D94  80 07 00 24 */	lwz r0, 0x24(r7)
/* 805A4D98  90 87 00 38 */	stw r4, 0x38(r7)
/* 805A4D9C  90 07 00 3C */	stw r0, 0x3c(r7)
/* 805A4DA0  80 07 00 28 */	lwz r0, 0x28(r7)
/* 805A4DA4  90 07 00 40 */	stw r0, 0x40(r7)
/* 805A4DA8  38 A7 00 38 */	addi r5, r7, 0x38
/* 805A4DAC  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 805A4DB0  80 07 00 30 */	lwz r0, 0x30(r7)
/* 805A4DB4  90 85 00 0C */	stw r4, 0xc(r5)
/* 805A4DB8  90 05 00 10 */	stw r0, 0x10(r5)
/* 805A4DBC  80 07 00 34 */	lwz r0, 0x34(r7)
/* 805A4DC0  90 05 00 14 */	stw r0, 0x14(r5)
/* 805A4DC4  38 00 00 01 */	li r0, 1
/* 805A4DC8  98 06 00 00 */	stb r0, 0(r6)
lbl_805A4DCC:
/* 805A4DCC  88 03 05 69 */	lbz r0, 0x569(r3)
/* 805A4DD0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805A4DD4  39 87 00 38 */	addi r12, r7, 0x38
/* 805A4DD8  7D 8C 02 14 */	add r12, r12, r0
/* 805A4DDC  4B DB D2 A9 */	bl __ptmf_scall
/* 805A4DE0  60 00 00 00 */	nop 
/* 805A4DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4DE8  7C 08 03 A6 */	mtlr r0
/* 805A4DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4DF0  4E 80 00 20 */	blr 
