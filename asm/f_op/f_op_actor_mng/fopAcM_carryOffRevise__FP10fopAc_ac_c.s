lbl_8001D1FC:
/* 8001D1FC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8001D200  7C 08 02 A6 */	mflr r0
/* 8001D204  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8001D208  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8001D20C  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8001D210  7C 7E 1B 78 */	mr r30, r3
/* 8001D214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001D218  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001D21C  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 8001D220  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001D224  48 05 AA 45 */	bl __ct__11dBgS_LinChkFv
/* 8001D228  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8001D22C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8001D230  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8001D234  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8001D238  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8001D23C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8001D240  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8001D244  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8001D248  80 6D 81 E8 */	lwz r3, calc_mtx(r13)
/* 8001D24C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8001D250  4B FE F1 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 8001D254  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001D258  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8001D25C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8001D260  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8001D264  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001D268  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8001D26C  C0 02 82 54 */	lfs f0, lit_6174(r2)
/* 8001D270  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8001D274  38 61 00 20 */	addi r3, r1, 0x20
/* 8001D278  38 81 00 08 */	addi r4, r1, 8
/* 8001D27C  48 25 3C 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8001D280  38 61 00 08 */	addi r3, r1, 8
/* 8001D284  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8001D288  7C 65 1B 78 */	mr r5, r3
/* 8001D28C  48 32 9E 05 */	bl PSVECAdd
/* 8001D290  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001D294  38 81 00 14 */	addi r4, r1, 0x14
/* 8001D298  38 A1 00 08 */	addi r5, r1, 8
/* 8001D29C  7F C6 F3 78 */	mr r6, r30
/* 8001D2A0  48 05 AA C5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8001D2A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001D2A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001D2AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8001D2B0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8001D2B4  48 05 71 01 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8001D2B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D2BC  41 82 00 48 */	beq lbl_8001D304
/* 8001D2C0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8001D2C4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8001D2C8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8001D2CC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8001D2D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8001D2D4  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8001D2D8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8001D2DC  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8001D2E0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8001D2E4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8001D2E8  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001D2EC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8001D2F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001D2F4  38 80 FF FF */	li r4, -1
/* 8001D2F8  48 05 A9 E5 */	bl __dt__11dBgS_LinChkFv
/* 8001D2FC  38 60 00 01 */	li r3, 1
/* 8001D300  48 00 00 14 */	b lbl_8001D314
lbl_8001D304:
/* 8001D304  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001D308  38 80 FF FF */	li r4, -1
/* 8001D30C  48 05 A9 D1 */	bl __dt__11dBgS_LinChkFv
/* 8001D310  38 60 00 00 */	li r3, 0
lbl_8001D314:
/* 8001D314  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8001D318  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8001D31C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8001D320  7C 08 03 A6 */	mtlr r0
/* 8001D324  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8001D328  4E 80 00 20 */	blr 
