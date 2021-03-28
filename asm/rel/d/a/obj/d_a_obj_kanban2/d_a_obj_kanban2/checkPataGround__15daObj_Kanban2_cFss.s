lbl_80582944:
/* 80582944  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80582948  7C 08 02 A6 */	mflr r0
/* 8058294C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80582950  39 61 00 90 */	addi r11, r1, 0x90
/* 80582954  4B DD F8 88 */	b _savegpr_29
/* 80582958  7C 7D 1B 78 */	mr r29, r3
/* 8058295C  7C 9E 23 78 */	mr r30, r4
/* 80582960  7C BF 2B 78 */	mr r31, r5
/* 80582964  38 61 00 20 */	addi r3, r1, 0x20
/* 80582968  4B AF 4C 14 */	b __ct__11dBgS_GndChkFv
/* 8058296C  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 80582970  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80582974  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80582978  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8058297C  C0 9D 04 D8 */	lfs f4, 0x4d8(r29)
/* 80582980  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80582984  3C 60 80 58 */	lis r3, lit_4013@ha
/* 80582988  C0 63 56 24 */	lfs f3, lit_4013@l(r3)
/* 8058298C  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 80582990  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80582994  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80582998  7C 03 04 2E */	lfsx f0, r3, r0
/* 8058299C  EC A3 00 32 */	fmuls f5, f3, f0
/* 805829A0  57 E4 04 38 */	rlwinm r4, r31, 0, 0x10, 0x1c
/* 805829A4  7C 03 24 2E */	lfsx f0, r3, r4
/* 805829A8  EC 05 00 32 */	fmuls f0, f5, f0
/* 805829AC  EC 42 00 2A */	fadds f2, f2, f0
/* 805829B0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805829B4  38 63 00 04 */	addi r3, r3, 4
/* 805829B8  7C 03 04 2E */	lfsx f0, r3, r0
/* 805829BC  EC 03 00 32 */	fmuls f0, f3, f0
/* 805829C0  EC 21 00 2A */	fadds f1, f1, f0
/* 805829C4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805829C8  7C 03 24 2E */	lfsx f0, r3, r4
/* 805829CC  EC 05 00 32 */	fmuls f0, f5, f0
/* 805829D0  EC 04 00 2A */	fadds f0, f4, f0
/* 805829D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805829D8  D0 41 00 08 */	stfs f2, 8(r1)
/* 805829DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805829E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805829E4  FC 00 08 18 */	frsp f0, f1
/* 805829E8  EC 00 18 2A */	fadds f0, f0, f3
/* 805829EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805829F0  38 61 00 20 */	addi r3, r1, 0x20
/* 805829F4  38 81 00 08 */	addi r4, r1, 8
/* 805829F8  4B CE 53 30 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805829FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80582A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80582A04  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80582A08  38 81 00 20 */	addi r4, r1, 0x20
/* 80582A0C  4B AF 1A 94 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80582A10  3C 60 80 58 */	lis r3, lit_4490@ha
/* 80582A14  C0 03 56 80 */	lfs f0, lit_4490@l(r3)
/* 80582A18  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80582A1C  41 82 00 24 */	beq lbl_80582A40
/* 80582A20  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80582A24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80582A28  40 80 00 18 */	bge lbl_80582A40
/* 80582A2C  38 61 00 20 */	addi r3, r1, 0x20
/* 80582A30  38 80 FF FF */	li r4, -1
/* 80582A34  4B AF 4B BC */	b __dt__11dBgS_GndChkFv
/* 80582A38  38 60 00 01 */	li r3, 1
/* 80582A3C  48 00 00 14 */	b lbl_80582A50
lbl_80582A40:
/* 80582A40  38 61 00 20 */	addi r3, r1, 0x20
/* 80582A44  38 80 FF FF */	li r4, -1
/* 80582A48  4B AF 4B A8 */	b __dt__11dBgS_GndChkFv
/* 80582A4C  38 60 00 00 */	li r3, 0
lbl_80582A50:
/* 80582A50  39 61 00 90 */	addi r11, r1, 0x90
/* 80582A54  4B DD F7 D4 */	b _restgpr_29
/* 80582A58  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80582A5C  7C 08 03 A6 */	mtlr r0
/* 80582A60  38 21 00 90 */	addi r1, r1, 0x90
/* 80582A64  4E 80 00 20 */	blr 
