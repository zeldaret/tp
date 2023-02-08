lbl_80BF0AD0:
/* 80BF0AD0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80BF0AD4  7C 08 02 A6 */	mflr r0
/* 80BF0AD8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80BF0ADC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80BF0AE0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80BF0AE4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80BF0AE8  4B 77 16 ED */	bl _savegpr_27
/* 80BF0AEC  3C 80 80 BF */	lis r4, lit_3647@ha /* 0x80BF1D90@ha */
/* 80BF0AF0  3B C4 1D 90 */	addi r30, r4, lit_3647@l /* 0x80BF1D90@l */
/* 80BF0AF4  7C 7C 1B 78 */	mr r28, r3
/* 80BF0AF8  38 61 00 44 */	addi r3, r1, 0x44
/* 80BF0AFC  4B 48 71 6D */	bl __ct__11dBgS_LinChkFv
/* 80BF0B00  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BF0B04  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BF0B08  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF0B0C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80BF0B10  4B 41 B8 CD */	bl mDoMtx_YrotS__FPA4_fs
/* 80BF0B14  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80BF0B18  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BF0B1C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80BF0B20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BF0B24  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80BF0B28  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BF0B2C  38 61 00 20 */	addi r3, r1, 0x20
/* 80BF0B30  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF0B34  4B 68 03 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BF0B38  38 61 00 14 */	addi r3, r1, 0x14
/* 80BF0B3C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80BF0B40  7C 65 1B 78 */	mr r5, r3
/* 80BF0B44  4B 75 65 4D */	bl PSVECAdd
/* 80BF0B48  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80BF0B4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BF0B50  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80BF0B54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BF0B58  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80BF0B5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BF0B60  3B 60 00 00 */	li r27, 0
/* 80BF0B64  3B E0 00 00 */	li r31, 0
/* 80BF0B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF0B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF0B70  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80BF0B74  C3 FE 00 20 */	lfs f31, 0x20(r30)
lbl_80BF0B78:
/* 80BF0B78  38 61 00 20 */	addi r3, r1, 0x20
/* 80BF0B7C  3B C1 00 2C */	addi r30, r1, 0x2c
/* 80BF0B80  7F DE FA 14 */	add r30, r30, r31
/* 80BF0B84  7F C4 F3 78 */	mr r4, r30
/* 80BF0B88  4B 68 03 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BF0B8C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BF0B90  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80BF0B94  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BF0B98  7F C3 F3 78 */	mr r3, r30
/* 80BF0B9C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF0BA0  7F C5 F3 78 */	mr r5, r30
/* 80BF0BA4  4B 75 64 ED */	bl PSVECAdd
/* 80BF0BA8  38 61 00 44 */	addi r3, r1, 0x44
/* 80BF0BAC  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF0BB0  7F C5 F3 78 */	mr r5, r30
/* 80BF0BB4  7F 86 E3 78 */	mr r6, r28
/* 80BF0BB8  4B 48 71 AD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BF0BBC  7F A3 EB 78 */	mr r3, r29
/* 80BF0BC0  38 81 00 44 */	addi r4, r1, 0x44
/* 80BF0BC4  4B 48 37 F1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BF0BC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF0BCC  41 82 00 20 */	beq lbl_80BF0BEC
/* 80BF0BD0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80BF0BD4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80BF0BD8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80BF0BDC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80BF0BE0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80BF0BE4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80BF0BE8  48 00 00 18 */	b lbl_80BF0C00
lbl_80BF0BEC:
/* 80BF0BEC  38 61 00 44 */	addi r3, r1, 0x44
/* 80BF0BF0  38 80 FF FF */	li r4, -1
/* 80BF0BF4  4B 48 70 E9 */	bl __dt__11dBgS_LinChkFv
/* 80BF0BF8  38 60 00 23 */	li r3, 0x23
/* 80BF0BFC  48 00 00 58 */	b lbl_80BF0C54
lbl_80BF0C00:
/* 80BF0C00  3B 7B 00 01 */	addi r27, r27, 1
/* 80BF0C04  2C 1B 00 02 */	cmpwi r27, 2
/* 80BF0C08  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BF0C0C  41 80 FF 6C */	blt lbl_80BF0B78
/* 80BF0C10  38 61 00 08 */	addi r3, r1, 8
/* 80BF0C14  38 81 00 38 */	addi r4, r1, 0x38
/* 80BF0C18  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80BF0C1C  4B 67 5F 19 */	bl __mi__4cXyzCFRC3Vec
/* 80BF0C20  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BF0C24  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BF0C28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF0C2C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BF0C30  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80BF0C34  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80BF0C38  4B 67 6A 3D */	bl cM_atan2s__Fff
/* 80BF0C3C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80BF0C40  7C 1E 07 34 */	extsh r30, r0
/* 80BF0C44  38 61 00 44 */	addi r3, r1, 0x44
/* 80BF0C48  38 80 FF FF */	li r4, -1
/* 80BF0C4C  4B 48 70 91 */	bl __dt__11dBgS_LinChkFv
/* 80BF0C50  7F C3 F3 78 */	mr r3, r30
lbl_80BF0C54:
/* 80BF0C54  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80BF0C58  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80BF0C5C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80BF0C60  4B 77 15 C1 */	bl _restgpr_27
/* 80BF0C64  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80BF0C68  7C 08 03 A6 */	mtlr r0
/* 80BF0C6C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80BF0C70  4E 80 00 20 */	blr 
