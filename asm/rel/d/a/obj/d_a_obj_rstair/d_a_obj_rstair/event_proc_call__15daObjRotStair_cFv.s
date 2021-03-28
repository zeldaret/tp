lbl_80CC2024:
/* 80CC2024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC2028  7C 08 02 A6 */	mflr r0
/* 80CC202C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC2030  3C 80 80 CC */	lis r4, cNullVec__6Z2Calc@ha
/* 80CC2034  38 E4 27 3C */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80CC2038  3C 80 80 CC */	lis r4, struct_80CC2880+0x1@ha
/* 80CC203C  38 C4 28 81 */	addi r6, r4, struct_80CC2880+0x1@l
/* 80CC2040  88 06 00 00 */	lbz r0, 0(r6)
/* 80CC2044  7C 00 07 75 */	extsb. r0, r0
/* 80CC2048  40 82 00 70 */	bne lbl_80CC20B8
/* 80CC204C  80 87 00 60 */	lwz r4, 0x60(r7)
/* 80CC2050  80 07 00 64 */	lwz r0, 0x64(r7)
/* 80CC2054  90 87 00 90 */	stw r4, 0x90(r7)
/* 80CC2058  90 07 00 94 */	stw r0, 0x94(r7)
/* 80CC205C  80 07 00 68 */	lwz r0, 0x68(r7)
/* 80CC2060  90 07 00 98 */	stw r0, 0x98(r7)
/* 80CC2064  38 A7 00 90 */	addi r5, r7, 0x90
/* 80CC2068  80 87 00 6C */	lwz r4, 0x6c(r7)
/* 80CC206C  80 07 00 70 */	lwz r0, 0x70(r7)
/* 80CC2070  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CC2074  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CC2078  80 07 00 74 */	lwz r0, 0x74(r7)
/* 80CC207C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CC2080  80 87 00 78 */	lwz r4, 0x78(r7)
/* 80CC2084  80 07 00 7C */	lwz r0, 0x7c(r7)
/* 80CC2088  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CC208C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CC2090  80 07 00 80 */	lwz r0, 0x80(r7)
/* 80CC2094  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CC2098  80 87 00 84 */	lwz r4, 0x84(r7)
/* 80CC209C  80 07 00 88 */	lwz r0, 0x88(r7)
/* 80CC20A0  90 85 00 24 */	stw r4, 0x24(r5)
/* 80CC20A4  90 05 00 28 */	stw r0, 0x28(r5)
/* 80CC20A8  80 07 00 8C */	lwz r0, 0x8c(r7)
/* 80CC20AC  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80CC20B0  38 00 00 01 */	li r0, 1
/* 80CC20B4  98 06 00 00 */	stb r0, 0(r6)
lbl_80CC20B8:
/* 80CC20B8  88 03 05 E1 */	lbz r0, 0x5e1(r3)
/* 80CC20BC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CC20C0  39 87 00 90 */	addi r12, r7, 0x90
/* 80CC20C4  7D 8C 02 14 */	add r12, r12, r0
/* 80CC20C8  4B 69 FF BC */	b __ptmf_scall
/* 80CC20CC  60 00 00 00 */	nop 
/* 80CC20D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC20D4  7C 08 03 A6 */	mtlr r0
/* 80CC20D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC20DC  4E 80 00 20 */	blr 
