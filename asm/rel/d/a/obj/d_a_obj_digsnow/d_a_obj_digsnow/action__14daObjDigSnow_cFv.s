lbl_80BDCF00:
/* 80BDCF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCF04  7C 08 02 A6 */	mflr r0
/* 80BDCF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCF0C  3C 80 80 BE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80BDD6E8@ha */
/* 80BDCF10  38 E4 D6 E8 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80BDD6E8@l */
/* 80BDCF14  3C 80 80 BE */	lis r4, data_80BDD860@ha /* 0x80BDD860@ha */
/* 80BDCF18  38 C4 D8 60 */	addi r6, r4, data_80BDD860@l /* 0x80BDD860@l */
/* 80BDCF1C  88 06 00 00 */	lbz r0, 0(r6)
/* 80BDCF20  7C 00 07 75 */	extsb. r0, r0
/* 80BDCF24  40 82 00 58 */	bne lbl_80BDCF7C
/* 80BDCF28  80 87 00 24 */	lwz r4, 0x24(r7)
/* 80BDCF2C  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80BDCF30  90 87 00 48 */	stw r4, 0x48(r7)
/* 80BDCF34  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80BDCF38  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 80BDCF3C  90 07 00 50 */	stw r0, 0x50(r7)
/* 80BDCF40  38 A7 00 48 */	addi r5, r7, 0x48
/* 80BDCF44  80 87 00 30 */	lwz r4, 0x30(r7)
/* 80BDCF48  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80BDCF4C  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BDCF50  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BDCF54  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80BDCF58  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BDCF5C  80 87 00 3C */	lwz r4, 0x3c(r7)
/* 80BDCF60  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80BDCF64  90 85 00 18 */	stw r4, 0x18(r5)
/* 80BDCF68  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80BDCF6C  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80BDCF70  90 05 00 20 */	stw r0, 0x20(r5)
/* 80BDCF74  38 00 00 01 */	li r0, 1
/* 80BDCF78  98 06 00 00 */	stb r0, 0(r6)
lbl_80BDCF7C:
/* 80BDCF7C  88 03 09 3D */	lbz r0, 0x93d(r3)
/* 80BDCF80  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BDCF84  39 87 00 48 */	addi r12, r7, 0x48
/* 80BDCF88  7D 8C 02 14 */	add r12, r12, r0
/* 80BDCF8C  4B 78 50 F9 */	bl __ptmf_scall
/* 80BDCF90  60 00 00 00 */	nop 
/* 80BDCF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCF98  7C 08 03 A6 */	mtlr r0
/* 80BDCF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCFA0  4E 80 00 20 */	blr 
