lbl_8059F900:
/* 8059F900  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8059F904  7C 08 02 A6 */	mflr r0
/* 8059F908  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8059F90C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8059F910  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8059F914  3C 80 80 5A */	lis r4, lit_3769@ha /* 0x805A1158@ha */
/* 8059F918  3B E4 11 58 */	addi r31, r4, lit_3769@l /* 0x805A1158@l */
/* 8059F91C  7C 7E 1B 78 */	mr r30, r3
/* 8059F920  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8059F924  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8059F928  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8059F92C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8059F930  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8059F934  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8059F938  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8059F93C  EC 01 00 2A */	fadds f0, f1, f0
/* 8059F940  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8059F944  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8059F948  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8059F94C  80 63 00 00 */	lwz r3, 0(r3)
/* 8059F950  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8059F954  4B A6 CA 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 8059F958  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8059F95C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8059F960  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8059F964  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8059F968  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8059F96C  38 61 00 08 */	addi r3, r1, 8
/* 8059F970  38 81 00 14 */	addi r4, r1, 0x14
/* 8059F974  4B CD 15 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8059F978  38 61 00 14 */	addi r3, r1, 0x14
/* 8059F97C  38 81 00 20 */	addi r4, r1, 0x20
/* 8059F980  7C 65 1B 78 */	mr r5, r3
/* 8059F984  4B DA 77 0D */	bl PSVECAdd
/* 8059F988  38 61 00 2C */	addi r3, r1, 0x2c
/* 8059F98C  4B AD 82 DD */	bl __ct__11dBgS_LinChkFv
/* 8059F990  38 61 00 2C */	addi r3, r1, 0x2c
/* 8059F994  38 81 00 20 */	addi r4, r1, 0x20
/* 8059F998  38 A1 00 14 */	addi r5, r1, 0x14
/* 8059F99C  7F C6 F3 78 */	mr r6, r30
/* 8059F9A0  4B AD 83 C5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8059F9A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059F9A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059F9AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8059F9B0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8059F9B4  4B AD 4A 01 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8059F9B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059F9BC  41 82 00 18 */	beq lbl_8059F9D4
/* 8059F9C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8059F9C4  38 80 FF FF */	li r4, -1
/* 8059F9C8  4B AD 83 15 */	bl __dt__11dBgS_LinChkFv
/* 8059F9CC  38 60 00 01 */	li r3, 1
/* 8059F9D0  48 00 00 14 */	b lbl_8059F9E4
lbl_8059F9D4:
/* 8059F9D4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8059F9D8  38 80 FF FF */	li r4, -1
/* 8059F9DC  4B AD 83 01 */	bl __dt__11dBgS_LinChkFv
/* 8059F9E0  38 60 00 00 */	li r3, 0
lbl_8059F9E4:
/* 8059F9E4  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8059F9E8  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8059F9EC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8059F9F0  7C 08 03 A6 */	mtlr r0
/* 8059F9F4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8059F9F8  4E 80 00 20 */	blr 
