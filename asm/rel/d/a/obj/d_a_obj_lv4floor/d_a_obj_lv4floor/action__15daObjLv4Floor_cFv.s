lbl_80C67A30:
/* 80C67A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67A34  7C 08 02 A6 */	mflr r0
/* 80C67A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67A3C  3C 80 80 C6 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C67D9C@ha */
/* 80C67A40  38 E4 7D 9C */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80C67D9C@l */
/* 80C67A44  3C 80 80 C6 */	lis r4, data_80C67E80@ha /* 0x80C67E80@ha */
/* 80C67A48  38 C4 7E 80 */	addi r6, r4, data_80C67E80@l /* 0x80C67E80@l */
/* 80C67A4C  88 06 00 00 */	lbz r0, 0(r6)
/* 80C67A50  7C 00 07 75 */	extsb. r0, r0
/* 80C67A54  40 82 00 58 */	bne lbl_80C67AAC
/* 80C67A58  80 87 00 24 */	lwz r4, 0x24(r7)
/* 80C67A5C  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80C67A60  90 87 00 48 */	stw r4, 0x48(r7)
/* 80C67A64  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80C67A68  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 80C67A6C  90 07 00 50 */	stw r0, 0x50(r7)
/* 80C67A70  38 A7 00 48 */	addi r5, r7, 0x48
/* 80C67A74  80 87 00 30 */	lwz r4, 0x30(r7)
/* 80C67A78  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80C67A7C  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C67A80  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C67A84  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80C67A88  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C67A8C  80 87 00 3C */	lwz r4, 0x3c(r7)
/* 80C67A90  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80C67A94  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C67A98  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C67A9C  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80C67AA0  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C67AA4  38 00 00 01 */	li r0, 1
/* 80C67AA8  98 06 00 00 */	stb r0, 0(r6)
lbl_80C67AAC:
/* 80C67AAC  88 03 05 B0 */	lbz r0, 0x5b0(r3)
/* 80C67AB0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C67AB4  39 87 00 48 */	addi r12, r7, 0x48
/* 80C67AB8  7D 8C 02 14 */	add r12, r12, r0
/* 80C67ABC  4B 6F A5 C9 */	bl __ptmf_scall
/* 80C67AC0  60 00 00 00 */	nop 
/* 80C67AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67AC8  7C 08 03 A6 */	mtlr r0
/* 80C67ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67AD0  4E 80 00 20 */	blr 
