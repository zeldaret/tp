lbl_80D4E494:
/* 80D4E494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4E498  7C 08 02 A6 */	mflr r0
/* 80D4E49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4E4A0  3C 80 80 D5 */	lis r4, cNullVec__6Z2Calc@ha
/* 80D4E4A4  38 E4 E9 AC */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80D4E4A8  3C 80 80 D5 */	lis r4, data_80D4EA74@ha
/* 80D4E4AC  38 C4 EA 74 */	addi r6, r4, data_80D4EA74@l
/* 80D4E4B0  88 06 00 00 */	lbz r0, 0(r6)
/* 80D4E4B4  7C 00 07 75 */	extsb. r0, r0
/* 80D4E4B8  40 82 00 40 */	bne lbl_80D4E4F8
/* 80D4E4BC  80 87 00 20 */	lwz r4, 0x20(r7)
/* 80D4E4C0  80 07 00 24 */	lwz r0, 0x24(r7)
/* 80D4E4C4  90 87 00 38 */	stw r4, 0x38(r7)
/* 80D4E4C8  90 07 00 3C */	stw r0, 0x3c(r7)
/* 80D4E4CC  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80D4E4D0  90 07 00 40 */	stw r0, 0x40(r7)
/* 80D4E4D4  38 A7 00 38 */	addi r5, r7, 0x38
/* 80D4E4D8  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80D4E4DC  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80D4E4E0  90 85 00 0C */	stw r4, 0xc(r5)
/* 80D4E4E4  90 05 00 10 */	stw r0, 0x10(r5)
/* 80D4E4E8  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80D4E4EC  90 05 00 14 */	stw r0, 0x14(r5)
/* 80D4E4F0  38 00 00 01 */	li r0, 1
/* 80D4E4F4  98 06 00 00 */	stb r0, 0(r6)
lbl_80D4E4F8:
/* 80D4E4F8  88 03 05 89 */	lbz r0, 0x589(r3)
/* 80D4E4FC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D4E500  39 87 00 38 */	addi r12, r7, 0x38
/* 80D4E504  7D 8C 02 14 */	add r12, r12, r0
/* 80D4E508  4B 61 3B 7C */	b __ptmf_scall
/* 80D4E50C  60 00 00 00 */	nop 
/* 80D4E510  38 60 00 01 */	li r3, 1
/* 80D4E514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4E518  7C 08 03 A6 */	mtlr r0
/* 80D4E51C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4E520  4E 80 00 20 */	blr 
