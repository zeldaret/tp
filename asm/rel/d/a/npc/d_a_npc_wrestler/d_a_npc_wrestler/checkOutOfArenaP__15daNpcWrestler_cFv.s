lbl_80B339EC:
/* 80B339EC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B339F0  7C 08 02 A6 */	mflr r0
/* 80B339F4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B339F8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80B339FC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80B33A00  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80B33A04  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80B33A08  7C 7E 1B 78 */	mr r30, r3
/* 80B33A0C  88 03 0E 02 */	lbz r0, 0xe02(r3)
/* 80B33A10  28 00 00 00 */	cmplwi r0, 0
/* 80B33A14  40 82 00 0C */	bne lbl_80B33A20
/* 80B33A18  38 60 00 00 */	li r3, 0
/* 80B33A1C  48 00 01 00 */	b lbl_80B33B1C
lbl_80B33A20:
/* 80B33A20  C0 3E 0D FC */	lfs f1, 0xdfc(r30)
/* 80B33A24  3C 60 80 B4 */	lis r3, lit_6299@ha
/* 80B33A28  C8 43 1C 9C */	lfd f2, lit_6299@l(r3)
/* 80B33A2C  4B 83 8D 54 */	b pow
/* 80B33A30  FF E0 08 18 */	frsp f31, f1
/* 80B33A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B33A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B33A3C  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80B33A40  38 61 00 44 */	addi r3, r1, 0x44
/* 80B33A44  7F E4 FB 78 */	mr r4, r31
/* 80B33A48  48 00 DC 09 */	bl getLeftFootPos__9daPy_py_cCFv
/* 80B33A4C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B33A50  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B33A54  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B33A58  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B33A5C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B33A60  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B33A64  38 61 00 38 */	addi r3, r1, 0x38
/* 80B33A68  7F E4 FB 78 */	mr r4, r31
/* 80B33A6C  48 00 DB C9 */	bl getRightFootPos__9daPy_py_cCFv
/* 80B33A70  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B33A74  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B33A78  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B33A7C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B33A80  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B33A84  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B33A88  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B33A8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B33A90  3C 60 80 B4 */	lis r3, lit_4418@ha
/* 80B33A94  C0 23 18 94 */	lfs f1, lit_4418@l(r3)
/* 80B33A98  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B33A9C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B33AA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B33AA4  C0 5E 0D F8 */	lfs f2, 0xdf8(r30)
/* 80B33AA8  C0 1E 0D F0 */	lfs f0, 0xdf0(r30)
/* 80B33AAC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B33AB0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80B33AB4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80B33AB8  38 61 00 20 */	addi r3, r1, 0x20
/* 80B33ABC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B33AC0  4B 81 38 DC */	b PSVECSquareDistance
/* 80B33AC4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B33AC8  7C 00 00 26 */	mfcr r0
/* 80B33ACC  54 03 17 FF */	rlwinm. r3, r0, 2, 0x1f, 0x1f
/* 80B33AD0  40 82 00 4C */	bne lbl_80B33B1C
/* 80B33AD4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B33AD8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B33ADC  3C 60 80 B4 */	lis r3, lit_4418@ha
/* 80B33AE0  C0 23 18 94 */	lfs f1, lit_4418@l(r3)
/* 80B33AE4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B33AE8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B33AEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B33AF0  C0 5E 0D F8 */	lfs f2, 0xdf8(r30)
/* 80B33AF4  C0 1E 0D F0 */	lfs f0, 0xdf0(r30)
/* 80B33AF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B33AFC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B33B00  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B33B04  38 61 00 08 */	addi r3, r1, 8
/* 80B33B08  38 81 00 14 */	addi r4, r1, 0x14
/* 80B33B0C  4B 81 38 90 */	b PSVECSquareDistance
/* 80B33B10  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B33B14  7C 00 00 26 */	mfcr r0
/* 80B33B18  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
lbl_80B33B1C:
/* 80B33B1C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80B33B20  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80B33B24  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80B33B28  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80B33B2C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B33B30  7C 08 03 A6 */	mtlr r0
/* 80B33B34  38 21 00 80 */	addi r1, r1, 0x80
/* 80B33B38  4E 80 00 20 */	blr 
