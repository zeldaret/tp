lbl_8001CED0:
/* 8001CED0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8001CED4  7C 08 02 A6 */	mflr r0
/* 8001CED8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8001CEDC  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8001CEE0  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8001CEE4  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8001CEE8  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8001CEEC  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8001CEF0  7C 7F 1B 78 */	mr r31, r3
/* 8001CEF4  FF C0 08 90 */	fmr f30, f1
/* 8001CEF8  FF E0 10 90 */	fmr f31, f2
/* 8001CEFC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001CF00  48 05 AD 69 */	bl __ct__11dBgS_LinChkFv
/* 8001CF04  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8001CF08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8001CF0C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8001CF10  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8001CF14  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8001CF18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8001CF1C  EC 01 F8 2A */	fadds f0, f1, f31
/* 8001CF20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8001CF24  80 6D 81 E8 */	lwz r3, calc_mtx(r13)
/* 8001CF28  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8001CF2C  4B FE F4 B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 8001CF30  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001CF34  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8001CF38  C0 02 82 4C */	lfs f0, lit_6068(r2)
/* 8001CF3C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8001CF40  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 8001CF44  38 61 00 20 */	addi r3, r1, 0x20
/* 8001CF48  38 81 00 08 */	addi r4, r1, 8
/* 8001CF4C  48 25 3F A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8001CF50  38 61 00 08 */	addi r3, r1, 8
/* 8001CF54  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8001CF58  7C 65 1B 78 */	mr r5, r3
/* 8001CF5C  48 32 A1 35 */	bl PSVECAdd
/* 8001CF60  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001CF64  38 81 00 14 */	addi r4, r1, 0x14
/* 8001CF68  38 A1 00 08 */	addi r5, r1, 8
/* 8001CF6C  7F E6 FB 78 */	mr r6, r31
/* 8001CF70  48 05 AD F5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8001CF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001CF78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001CF7C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8001CF80  38 81 00 2C */	addi r4, r1, 0x2c
/* 8001CF84  48 05 74 31 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8001CF88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001CF8C  41 82 00 18 */	beq lbl_8001CFA4
/* 8001CF90  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001CF94  38 80 FF FF */	li r4, -1
/* 8001CF98  48 05 AD 45 */	bl __dt__11dBgS_LinChkFv
/* 8001CF9C  38 60 00 01 */	li r3, 1
/* 8001CFA0  48 00 00 14 */	b lbl_8001CFB4
lbl_8001CFA4:
/* 8001CFA4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001CFA8  38 80 FF FF */	li r4, -1
/* 8001CFAC  48 05 AD 31 */	bl __dt__11dBgS_LinChkFv
/* 8001CFB0  38 60 00 00 */	li r3, 0
lbl_8001CFB4:
/* 8001CFB4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8001CFB8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8001CFBC  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 8001CFC0  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8001CFC4  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8001CFC8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8001CFCC  7C 08 03 A6 */	mtlr r0
/* 8001CFD0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8001CFD4  4E 80 00 20 */	blr 
