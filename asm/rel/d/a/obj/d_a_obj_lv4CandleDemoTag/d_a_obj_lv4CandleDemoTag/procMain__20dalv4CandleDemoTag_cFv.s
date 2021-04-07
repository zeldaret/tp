lbl_80C5CBE8:
/* 80C5CBE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CBEC  7C 08 02 A6 */	mflr r0
/* 80C5CBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CBF4  3C 80 80 C6 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C5D218@ha */
/* 80C5CBF8  38 E4 D2 18 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80C5D218@l */
/* 80C5CBFC  3C 80 80 C6 */	lis r4, data_80C5D35C@ha /* 0x80C5D35C@ha */
/* 80C5CC00  38 C4 D3 5C */	addi r6, r4, data_80C5D35C@l /* 0x80C5D35C@l */
/* 80C5CC04  88 06 00 00 */	lbz r0, 0(r6)
/* 80C5CC08  7C 00 07 75 */	extsb. r0, r0
/* 80C5CC0C  40 82 00 70 */	bne lbl_80C5CC7C
/* 80C5CC10  80 87 00 20 */	lwz r4, 0x20(r7)
/* 80C5CC14  80 07 00 24 */	lwz r0, 0x24(r7)
/* 80C5CC18  90 87 00 50 */	stw r4, 0x50(r7)
/* 80C5CC1C  90 07 00 54 */	stw r0, 0x54(r7)
/* 80C5CC20  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80C5CC24  90 07 00 58 */	stw r0, 0x58(r7)
/* 80C5CC28  38 A7 00 50 */	addi r5, r7, 0x50
/* 80C5CC2C  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80C5CC30  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80C5CC34  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C5CC38  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C5CC3C  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80C5CC40  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C5CC44  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80C5CC48  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80C5CC4C  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C5CC50  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C5CC54  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80C5CC58  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C5CC5C  80 87 00 44 */	lwz r4, 0x44(r7)
/* 80C5CC60  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80C5CC64  90 85 00 24 */	stw r4, 0x24(r5)
/* 80C5CC68  90 05 00 28 */	stw r0, 0x28(r5)
/* 80C5CC6C  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80C5CC70  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80C5CC74  38 00 00 01 */	li r0, 1
/* 80C5CC78  98 06 00 00 */	stb r0, 0(r6)
lbl_80C5CC7C:
/* 80C5CC7C  88 03 05 84 */	lbz r0, 0x584(r3)
/* 80C5CC80  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C5CC84  39 87 00 50 */	addi r12, r7, 0x50
/* 80C5CC88  7D 8C 02 14 */	add r12, r12, r0
/* 80C5CC8C  4B 70 53 F9 */	bl __ptmf_scall
/* 80C5CC90  60 00 00 00 */	nop 
/* 80C5CC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CC98  7C 08 03 A6 */	mtlr r0
/* 80C5CC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CCA0  4E 80 00 20 */	blr 
