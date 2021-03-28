lbl_8076CE10:
/* 8076CE10  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8076CE14  7C 08 02 A6 */	mflr r0
/* 8076CE18  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8076CE1C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8076CE20  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8076CE24  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8076CE28  FF E0 08 90 */	fmr f31, f1
/* 8076CE2C  7C 7F 1B 78 */	mr r31, r3
/* 8076CE30  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076CE34  4B 90 AE 34 */	b __ct__11dBgS_LinChkFv
/* 8076CE38  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8076CE3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8076CE40  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8076CE44  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8076CE48  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8076CE4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8076CE50  3C 60 80 78 */	lis r3, lit_4576@ha
/* 8076CE54  C0 03 9E 78 */	lfs f0, lit_4576@l(r3)
/* 8076CE58  EC 01 00 2A */	fadds f0, f1, f0
/* 8076CE5C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8076CE60  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8076CE64  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8076CE68  80 63 00 00 */	lwz r3, 0(r3)
/* 8076CE6C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8076CE70  4B 89 F5 6C */	b mDoMtx_YrotS__FPA4_fs
/* 8076CE74  3C 60 80 78 */	lis r3, lit_4019@ha
/* 8076CE78  C0 03 9E 00 */	lfs f0, lit_4019@l(r3)
/* 8076CE7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8076CE80  3C 60 80 78 */	lis r3, lit_4576@ha
/* 8076CE84  C0 03 9E 78 */	lfs f0, lit_4576@l(r3)
/* 8076CE88  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8076CE8C  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 8076CE90  38 61 00 20 */	addi r3, r1, 0x20
/* 8076CE94  38 81 00 08 */	addi r4, r1, 8
/* 8076CE98  4B B0 40 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 8076CE9C  38 61 00 08 */	addi r3, r1, 8
/* 8076CEA0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8076CEA4  7C 65 1B 78 */	mr r5, r3
/* 8076CEA8  4B BD A1 E8 */	b PSVECAdd
/* 8076CEAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076CEB0  38 81 00 14 */	addi r4, r1, 0x14
/* 8076CEB4  38 A1 00 08 */	addi r5, r1, 8
/* 8076CEB8  7F E6 FB 78 */	mr r6, r31
/* 8076CEBC  4B 90 AE A8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8076CEC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076CEC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076CEC8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8076CECC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8076CED0  4B 90 74 E4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8076CED4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8076CED8  41 82 00 18 */	beq lbl_8076CEF0
/* 8076CEDC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076CEE0  38 80 FF FF */	li r4, -1
/* 8076CEE4  4B 90 AD F8 */	b __dt__11dBgS_LinChkFv
/* 8076CEE8  38 60 00 01 */	li r3, 1
/* 8076CEEC  48 00 00 14 */	b lbl_8076CF00
lbl_8076CEF0:
/* 8076CEF0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076CEF4  38 80 FF FF */	li r4, -1
/* 8076CEF8  4B 90 AD E4 */	b __dt__11dBgS_LinChkFv
/* 8076CEFC  38 60 00 00 */	li r3, 0
lbl_8076CF00:
/* 8076CF00  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8076CF04  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8076CF08  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8076CF0C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8076CF10  7C 08 03 A6 */	mtlr r0
/* 8076CF14  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8076CF18  4E 80 00 20 */	blr 
