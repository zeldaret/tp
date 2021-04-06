lbl_80BB8930:
/* 80BB8930  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BB8934  7C 08 02 A6 */	mflr r0
/* 80BB8938  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BB893C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BB8940  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BB8944  7C 7E 1B 78 */	mr r30, r3
/* 80BB8948  3C 60 80 BC */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BB980C@ha */
/* 80BB894C  38 C3 98 0C */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80BB980C@l */
/* 80BB8950  3C 60 80 BC */	lis r3, data_80BB99D8@ha /* 0x80BB99D8@ha */
/* 80BB8954  38 A3 99 D8 */	addi r5, r3, data_80BB99D8@l /* 0x80BB99D8@l */
/* 80BB8958  88 05 00 00 */	lbz r0, 0(r5)
/* 80BB895C  7C 00 07 75 */	extsb. r0, r0
/* 80BB8960  40 82 00 58 */	bne lbl_80BB89B8
/* 80BB8964  80 66 00 64 */	lwz r3, 0x64(r6)
/* 80BB8968  80 06 00 68 */	lwz r0, 0x68(r6)
/* 80BB896C  90 66 00 88 */	stw r3, 0x88(r6)
/* 80BB8970  90 06 00 8C */	stw r0, 0x8c(r6)
/* 80BB8974  80 06 00 6C */	lwz r0, 0x6c(r6)
/* 80BB8978  90 06 00 90 */	stw r0, 0x90(r6)
/* 80BB897C  38 86 00 88 */	addi r4, r6, 0x88
/* 80BB8980  80 66 00 70 */	lwz r3, 0x70(r6)
/* 80BB8984  80 06 00 74 */	lwz r0, 0x74(r6)
/* 80BB8988  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BB898C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BB8990  80 06 00 78 */	lwz r0, 0x78(r6)
/* 80BB8994  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BB8998  80 66 00 7C */	lwz r3, 0x7c(r6)
/* 80BB899C  80 06 00 80 */	lwz r0, 0x80(r6)
/* 80BB89A0  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BB89A4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BB89A8  80 06 00 84 */	lwz r0, 0x84(r6)
/* 80BB89AC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BB89B0  38 00 00 01 */	li r0, 1
/* 80BB89B4  98 05 00 00 */	stb r0, 0(r5)
lbl_80BB89B8:
/* 80BB89B8  7F C3 F3 78 */	mr r3, r30
/* 80BB89BC  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80BB89C0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BB89C4  39 86 00 88 */	addi r12, r6, 0x88
/* 80BB89C8  7D 8C 02 14 */	add r12, r12, r0
/* 80BB89CC  4B 7A 96 B9 */	bl __ptmf_scall
/* 80BB89D0  60 00 00 00 */	nop 
/* 80BB89D4  3C 60 80 BC */	lis r3, lit_3897@ha /* 0x80BB97C4@ha */
/* 80BB89D8  C0 23 97 C4 */	lfs f1, lit_3897@l(r3)  /* 0x80BB97C4@l */
/* 80BB89DC  C0 1E 0E A8 */	lfs f0, 0xea8(r30)
/* 80BB89E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BB89E4  FC 00 00 1E */	fctiwz f0, f0
/* 80BB89E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BB89EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BB89F0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BB89F4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BB89F8  3B E4 00 04 */	addi r31, r4, 4
/* 80BB89FC  80 7E 0E 94 */	lwz r3, 0xe94(r30)
/* 80BB8A00  7C 00 07 34 */	extsh r0, r0
/* 80BB8A04  7C 03 01 D6 */	mullw r0, r3, r0
/* 80BB8A08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB8A0C  7C 5F 04 2E */	lfsx f2, r31, r0
/* 80BB8A10  C0 1E 0E A0 */	lfs f0, 0xea0(r30)
/* 80BB8A14  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BB8A18  FC 00 00 1E */	fctiwz f0, f0
/* 80BB8A1C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BB8A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB8A24  B0 1E 0E 9C */	sth r0, 0xe9c(r30)
/* 80BB8A28  C0 1E 0E A4 */	lfs f0, 0xea4(r30)
/* 80BB8A2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BB8A30  FC 00 00 1E */	fctiwz f0, f0
/* 80BB8A34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BB8A38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BB8A3C  80 7E 0E 94 */	lwz r3, 0xe94(r30)
/* 80BB8A40  7C 00 07 34 */	extsh r0, r0
/* 80BB8A44  7C 03 01 D6 */	mullw r0, r3, r0
/* 80BB8A48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB8A4C  7C 24 04 2E */	lfsx f1, r4, r0
/* 80BB8A50  C0 1E 0E A0 */	lfs f0, 0xea0(r30)
/* 80BB8A54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BB8A58  FC 00 00 1E */	fctiwz f0, f0
/* 80BB8A5C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BB8A60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB8A64  B0 1E 0E 9A */	sth r0, 0xe9a(r30)
/* 80BB8A68  38 7E 0E A0 */	addi r3, r30, 0xea0
/* 80BB8A6C  3C 80 80 BC */	lis r4, lit_3769@ha /* 0x80BB97C0@ha */
/* 80BB8A70  C0 24 97 C0 */	lfs f1, lit_3769@l(r4)  /* 0x80BB97C0@l */
/* 80BB8A74  C0 5E 0E AC */	lfs f2, 0xeac(r30)
/* 80BB8A78  C0 7E 0E B0 */	lfs f3, 0xeb0(r30)
/* 80BB8A7C  C0 9E 0E B4 */	lfs f4, 0xeb4(r30)
/* 80BB8A80  4B 6B 6E FD */	bl cLib_addCalc__FPfffff
/* 80BB8A84  3C 60 80 BC */	lis r3, lit_3897@ha /* 0x80BB97C4@ha */
/* 80BB8A88  C0 23 97 C4 */	lfs f1, lit_3897@l(r3)  /* 0x80BB97C4@l */
/* 80BB8A8C  C0 1E 0E C4 */	lfs f0, 0xec4(r30)
/* 80BB8A90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BB8A94  FC 00 00 1E */	fctiwz f0, f0
/* 80BB8A98  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BB8A9C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BB8AA0  80 7E 0E 94 */	lwz r3, 0xe94(r30)
/* 80BB8AA4  7C 00 07 34 */	extsh r0, r0
/* 80BB8AA8  7C 03 01 D6 */	mullw r0, r3, r0
/* 80BB8AAC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB8AB0  7C 5F 04 2E */	lfsx f2, r31, r0
/* 80BB8AB4  C0 1E 0E CC */	lfs f0, 0xecc(r30)
/* 80BB8AB8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BB8ABC  D0 1E 0E B8 */	stfs f0, 0xeb8(r30)
/* 80BB8AC0  C0 1E 0E C8 */	lfs f0, 0xec8(r30)
/* 80BB8AC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BB8AC8  FC 00 00 1E */	fctiwz f0, f0
/* 80BB8ACC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BB8AD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB8AD4  80 7E 0E 94 */	lwz r3, 0xe94(r30)
/* 80BB8AD8  7C 00 07 34 */	extsh r0, r0
/* 80BB8ADC  7C 03 01 D6 */	mullw r0, r3, r0
/* 80BB8AE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB8AE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BB8AE8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BB8AEC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BB8AF0  C0 1E 0E CC */	lfs f0, 0xecc(r30)
/* 80BB8AF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BB8AF8  D0 1E 0E BC */	stfs f0, 0xebc(r30)
/* 80BB8AFC  38 7E 0E CC */	addi r3, r30, 0xecc
/* 80BB8B00  3C 80 80 BC */	lis r4, lit_3769@ha /* 0x80BB97C0@ha */
/* 80BB8B04  C0 24 97 C0 */	lfs f1, lit_3769@l(r4)  /* 0x80BB97C0@l */
/* 80BB8B08  C0 5E 0E D0 */	lfs f2, 0xed0(r30)
/* 80BB8B0C  C0 7E 0E D4 */	lfs f3, 0xed4(r30)
/* 80BB8B10  C0 9E 0E D8 */	lfs f4, 0xed8(r30)
/* 80BB8B14  4B 6B 6E 69 */	bl cLib_addCalc__FPfffff
/* 80BB8B18  80 7E 0E 94 */	lwz r3, 0xe94(r30)
/* 80BB8B1C  38 03 00 01 */	addi r0, r3, 1
/* 80BB8B20  90 1E 0E 94 */	stw r0, 0xe94(r30)
/* 80BB8B24  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BB8B28  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BB8B2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BB8B30  7C 08 03 A6 */	mtlr r0
/* 80BB8B34  38 21 00 40 */	addi r1, r1, 0x40
/* 80BB8B38  4E 80 00 20 */	blr 
