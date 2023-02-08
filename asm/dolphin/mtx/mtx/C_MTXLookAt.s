lbl_80346A8C:
/* 80346A8C  7C 08 02 A6 */	mflr r0
/* 80346A90  90 01 00 04 */	stw r0, 4(r1)
/* 80346A94  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80346A98  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80346A9C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80346AA0  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80346AA4  7C 7D 1B 78 */	mr r29, r3
/* 80346AA8  7C 9E 23 78 */	mr r30, r4
/* 80346AAC  7C BF 2B 78 */	mr r31, r5
/* 80346AB0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80346AB4  38 61 00 30 */	addi r3, r1, 0x30
/* 80346AB8  C0 06 00 00 */	lfs f0, 0(r6)
/* 80346ABC  7C 64 1B 78 */	mr r4, r3
/* 80346AC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80346AC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80346AC8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80346ACC  C0 06 00 04 */	lfs f0, 4(r6)
/* 80346AD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80346AD4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80346AD8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80346ADC  C0 06 00 08 */	lfs f0, 8(r6)
/* 80346AE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80346AE4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80346AE8  48 00 06 0D */	bl PSVECNormalize
/* 80346AEC  7F E3 FB 78 */	mr r3, r31
/* 80346AF0  38 81 00 30 */	addi r4, r1, 0x30
/* 80346AF4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80346AF8  48 00 06 BD */	bl PSVECCrossProduct
/* 80346AFC  38 61 00 24 */	addi r3, r1, 0x24
/* 80346B00  7C 64 1B 78 */	mr r4, r3
/* 80346B04  48 00 05 F1 */	bl PSVECNormalize
/* 80346B08  38 61 00 30 */	addi r3, r1, 0x30
/* 80346B0C  38 81 00 24 */	addi r4, r1, 0x24
/* 80346B10  38 A1 00 18 */	addi r5, r1, 0x18
/* 80346B14  48 00 06 A1 */	bl PSVECCrossProduct
/* 80346B18  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80346B1C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80346B20  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80346B24  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80346B28  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80346B2C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80346B30  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80346B34  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80346B38  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80346B3C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80346B40  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80346B44  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80346B48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80346B4C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80346B50  EC 23 00 72 */	fmuls f1, f3, f1
/* 80346B54  EC 02 00 2A */	fadds f0, f2, f0
/* 80346B58  EC 01 00 2A */	fadds f0, f1, f0
/* 80346B5C  FC 00 00 50 */	fneg f0, f0
/* 80346B60  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80346B64  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80346B68  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80346B6C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80346B70  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80346B74  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80346B78  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80346B7C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80346B80  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80346B84  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80346B88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80346B8C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80346B90  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80346B94  EC 01 00 32 */	fmuls f0, f1, f0
/* 80346B98  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80346B9C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80346BA0  EC 02 00 2A */	fadds f0, f2, f0
/* 80346BA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80346BA8  FC 00 00 50 */	fneg f0, f0
/* 80346BAC  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80346BB0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80346BB4  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80346BB8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80346BBC  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80346BC0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80346BC4  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80346BC8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80346BCC  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80346BD0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80346BD4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80346BD8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80346BDC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80346BE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80346BE4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80346BE8  EC 23 00 72 */	fmuls f1, f3, f1
/* 80346BEC  EC 02 00 2A */	fadds f0, f2, f0
/* 80346BF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80346BF4  FC 00 00 50 */	fneg f0, f0
/* 80346BF8  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 80346BFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80346C00  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80346C04  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80346C08  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80346C0C  38 21 00 50 */	addi r1, r1, 0x50
/* 80346C10  7C 08 03 A6 */	mtlr r0
/* 80346C14  4E 80 00 20 */	blr 
