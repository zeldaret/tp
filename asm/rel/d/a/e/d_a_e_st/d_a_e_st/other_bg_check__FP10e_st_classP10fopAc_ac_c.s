lbl_8079E43C:
/* 8079E43C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8079E440  7C 08 02 A6 */	mflr r0
/* 8079E444  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8079E448  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8079E44C  4B BC 3D 91 */	bl _savegpr_29
/* 8079E450  7C 7E 1B 78 */	mr r30, r3
/* 8079E454  7C 9D 23 78 */	mr r29, r4
/* 8079E458  3C 60 80 7A */	lis r3, lit_3903@ha /* 0x807A6824@ha */
/* 8079E45C  3B E3 68 24 */	addi r31, r3, lit_3903@l /* 0x807A6824@l */
/* 8079E460  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079E464  4B 8D 98 05 */	bl __ct__11dBgS_LinChkFv
/* 8079E468  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8079E46C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8079E470  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8079E474  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8079E478  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8079E47C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8079E480  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8079E484  EC 01 00 2A */	fadds f0, f1, f0
/* 8079E488  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8079E48C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079E490  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079E494  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E498  A8 9E 06 9E */	lha r4, 0x69e(r30)
/* 8079E49C  4B 86 DF 41 */	bl mDoMtx_YrotS__FPA4_fs
/* 8079E4A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079E4A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079E4A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8079E4AC  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 8079E4B0  4B 86 DE ED */	bl mDoMtx_XrotM__FPA4_fs
/* 8079E4B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8079E4B8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8079E4BC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8079E4C0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079E4C4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8079E4C8  38 61 00 20 */	addi r3, r1, 0x20
/* 8079E4CC  38 81 00 14 */	addi r4, r1, 0x14
/* 8079E4D0  4B AD 2A 1D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079E4D4  38 61 00 14 */	addi r3, r1, 0x14
/* 8079E4D8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8079E4DC  7C 65 1B 78 */	mr r5, r3
/* 8079E4E0  4B BA 8B B1 */	bl PSVECAdd
/* 8079E4E4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079E4E8  38 81 00 14 */	addi r4, r1, 0x14
/* 8079E4EC  38 A1 00 08 */	addi r5, r1, 8
/* 8079E4F0  7F C6 F3 78 */	mr r6, r30
/* 8079E4F4  4B 8D 98 71 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079E4F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079E4FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079E500  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8079E504  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079E508  4B 8D 5E AD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8079E50C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079E510  41 82 00 18 */	beq lbl_8079E528
/* 8079E514  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079E518  38 80 FF FF */	li r4, -1
/* 8079E51C  4B 8D 97 C1 */	bl __dt__11dBgS_LinChkFv
/* 8079E520  38 60 00 01 */	li r3, 1
/* 8079E524  48 00 00 14 */	b lbl_8079E538
lbl_8079E528:
/* 8079E528  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079E52C  38 80 FF FF */	li r4, -1
/* 8079E530  4B 8D 97 AD */	bl __dt__11dBgS_LinChkFv
/* 8079E534  38 60 00 00 */	li r3, 0
lbl_8079E538:
/* 8079E538  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8079E53C  4B BC 3C ED */	bl _restgpr_29
/* 8079E540  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8079E544  7C 08 03 A6 */	mtlr r0
/* 8079E548  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8079E54C  4E 80 00 20 */	blr 
