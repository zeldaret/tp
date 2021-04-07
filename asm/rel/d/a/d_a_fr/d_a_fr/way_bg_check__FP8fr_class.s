lbl_80519D28:
/* 80519D28  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80519D2C  7C 08 02 A6 */	mflr r0
/* 80519D30  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80519D34  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80519D38  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 80519D3C  3C 80 80 52 */	lis r4, lit_3649@ha /* 0x8051B9C8@ha */
/* 80519D40  3B E4 B9 C8 */	addi r31, r4, lit_3649@l /* 0x8051B9C8@l */
/* 80519D44  7C 7E 1B 78 */	mr r30, r3
/* 80519D48  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80519D4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80519D50  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80519D54  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80519D58  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80519D5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80519D60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80519D64  EC 01 00 2A */	fadds f0, f1, f0
/* 80519D68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80519D6C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80519D70  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80519D74  80 63 00 00 */	lwz r3, 0(r3)
/* 80519D78  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80519D7C  4B AF 26 61 */	bl mDoMtx_YrotS__FPA4_fs
/* 80519D80  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80519D84  D0 01 00 08 */	stfs f0, 8(r1)
/* 80519D88  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80519D8C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80519D90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80519D94  38 61 00 08 */	addi r3, r1, 8
/* 80519D98  38 81 00 14 */	addi r4, r1, 0x14
/* 80519D9C  4B D5 71 51 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80519DA0  38 61 00 14 */	addi r3, r1, 0x14
/* 80519DA4  38 81 00 20 */	addi r4, r1, 0x20
/* 80519DA8  7C 65 1B 78 */	mr r5, r3
/* 80519DAC  4B E2 D2 E5 */	bl PSVECAdd
/* 80519DB0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80519DB4  4B B5 DE B5 */	bl __ct__11dBgS_LinChkFv
/* 80519DB8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80519DBC  38 81 00 20 */	addi r4, r1, 0x20
/* 80519DC0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80519DC4  7F C6 F3 78 */	mr r6, r30
/* 80519DC8  4B B5 DF 9D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80519DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80519DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80519DD4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80519DD8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80519DDC  4B B5 A5 D9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80519DE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80519DE4  41 82 00 18 */	beq lbl_80519DFC
/* 80519DE8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80519DEC  38 80 FF FF */	li r4, -1
/* 80519DF0  4B B5 DE ED */	bl __dt__11dBgS_LinChkFv
/* 80519DF4  38 60 00 01 */	li r3, 1
/* 80519DF8  48 00 00 14 */	b lbl_80519E0C
lbl_80519DFC:
/* 80519DFC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80519E00  38 80 FF FF */	li r4, -1
/* 80519E04  4B B5 DE D9 */	bl __dt__11dBgS_LinChkFv
/* 80519E08  38 60 00 00 */	li r3, 0
lbl_80519E0C:
/* 80519E0C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80519E10  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80519E14  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80519E18  7C 08 03 A6 */	mtlr r0
/* 80519E1C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80519E20  4E 80 00 20 */	blr 
