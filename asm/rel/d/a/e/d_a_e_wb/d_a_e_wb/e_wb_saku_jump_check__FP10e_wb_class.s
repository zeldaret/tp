lbl_807D3B94:
/* 807D3B94  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807D3B98  7C 08 02 A6 */	mflr r0
/* 807D3B9C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807D3BA0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807D3BA4  4B B8 E6 38 */	b _savegpr_29
/* 807D3BA8  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D3BAC  3B E4 29 8C */	addi r31, r4, lit_3882@l
/* 807D3BB0  7C 7D 1B 78 */	mr r29, r3
/* 807D3BB4  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3BB8  4B 8A 40 B0 */	b __ct__11dBgS_LinChkFv
/* 807D3BBC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D3BC0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D3BC4  80 63 00 00 */	lwz r3, 0(r3)
/* 807D3BC8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807D3BCC  4B 83 88 10 */	b mDoMtx_YrotS__FPA4_fs
/* 807D3BD0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D3BD4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D3BD8  80 63 00 00 */	lwz r3, 0(r3)
/* 807D3BDC  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 807D3BE0  4B 83 87 BC */	b mDoMtx_XrotM__FPA4_fs
/* 807D3BE4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 807D3BE8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D3BEC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807D3BF0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D3BF4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 807D3BF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D3BFC  38 61 00 44 */	addi r3, r1, 0x44
/* 807D3C00  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D3C04  4B A9 D2 E8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D3C08  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D3C0C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807D3C10  7C 65 1B 78 */	mr r5, r3
/* 807D3C14  4B B7 34 7C */	b PSVECAdd
/* 807D3C18  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807D3C1C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807D3C20  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807D3C24  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807D3C28  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807D3C2C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D3C30  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807D3C34  EC 01 00 2A */	fadds f0, f1, f0
/* 807D3C38  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807D3C3C  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3C40  38 81 00 38 */	addi r4, r1, 0x38
/* 807D3C44  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807D3C48  7F A6 EB 78 */	mr r6, r29
/* 807D3C4C  4B 8A 41 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807D3C50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D3C54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D3C58  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807D3C5C  7F C3 F3 78 */	mr r3, r30
/* 807D3C60  38 81 00 50 */	addi r4, r1, 0x50
/* 807D3C64  4B 8A 07 50 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807D3C68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D3C6C  41 82 01 00 */	beq lbl_807D3D6C
/* 807D3C70  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807D3C74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807D3C78  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 807D3C7C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807D3C80  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 807D3C84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807D3C88  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807D3C8C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807D3C90  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D3C94  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D3C98  38 61 00 44 */	addi r3, r1, 0x44
/* 807D3C9C  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D3CA0  4B A9 D2 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 807D3CA4  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D3CA8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807D3CAC  7C 65 1B 78 */	mr r5, r3
/* 807D3CB0  4B B7 33 E0 */	b PSVECAdd
/* 807D3CB4  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3CB8  38 81 00 38 */	addi r4, r1, 0x38
/* 807D3CBC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807D3CC0  7F A6 EB 78 */	mr r6, r29
/* 807D3CC4  4B 8A 40 A0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807D3CC8  7F C3 F3 78 */	mr r3, r30
/* 807D3CCC  38 81 00 50 */	addi r4, r1, 0x50
/* 807D3CD0  4B 8A 06 E4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807D3CD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D3CD8  41 82 00 20 */	beq lbl_807D3CF8
/* 807D3CDC  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807D3CE0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807D3CE4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 807D3CE8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807D3CEC  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 807D3CF0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807D3CF4  48 00 00 18 */	b lbl_807D3D0C
lbl_807D3CF8:
/* 807D3CF8  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3CFC  38 80 FF FF */	li r4, -1
/* 807D3D00  4B 8A 3F DC */	b __dt__11dBgS_LinChkFv
/* 807D3D04  38 60 00 00 */	li r3, 0
/* 807D3D08  48 00 00 74 */	b lbl_807D3D7C
lbl_807D3D0C:
/* 807D3D0C  38 61 00 08 */	addi r3, r1, 8
/* 807D3D10  38 81 00 14 */	addi r4, r1, 0x14
/* 807D3D14  38 A1 00 20 */	addi r5, r1, 0x20
/* 807D3D18  4B A9 2E 1C */	b __mi__4cXyzCFRC3Vec
/* 807D3D1C  C0 21 00 08 */	lfs f1, 8(r1)
/* 807D3D20  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807D3D24  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807D3D28  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D3D2C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807D3D30  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 807D3D34  4B A9 39 40 */	b cM_atan2s__Fff
/* 807D3D38  38 63 40 00 */	addi r3, r3, 0x4000
/* 807D3D3C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807D3D40  7C 00 18 50 */	subf r0, r0, r3
/* 807D3D44  7C 00 07 34 */	extsh r0, r0
/* 807D3D48  2C 00 D0 00 */	cmpwi r0, -12288
/* 807D3D4C  40 81 00 20 */	ble lbl_807D3D6C
/* 807D3D50  2C 00 30 00 */	cmpwi r0, 0x3000
/* 807D3D54  40 80 00 18 */	bge lbl_807D3D6C
/* 807D3D58  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3D5C  38 80 FF FF */	li r4, -1
/* 807D3D60  4B 8A 3F 7C */	b __dt__11dBgS_LinChkFv
/* 807D3D64  38 60 00 01 */	li r3, 1
/* 807D3D68  48 00 00 14 */	b lbl_807D3D7C
lbl_807D3D6C:
/* 807D3D6C  38 61 00 50 */	addi r3, r1, 0x50
/* 807D3D70  38 80 FF FF */	li r4, -1
/* 807D3D74  4B 8A 3F 68 */	b __dt__11dBgS_LinChkFv
/* 807D3D78  38 60 00 00 */	li r3, 0
lbl_807D3D7C:
/* 807D3D7C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807D3D80  4B B8 E4 A8 */	b _restgpr_29
/* 807D3D84  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807D3D88  7C 08 03 A6 */	mtlr r0
/* 807D3D8C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807D3D90  4E 80 00 20 */	blr 
