lbl_80C1988C:
/* 80C1988C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80C19890  7C 08 02 A6 */	mflr r0
/* 80C19894  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C19898  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80C1989C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80C198A0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C198A4  4B 74 89 31 */	bl _savegpr_27
/* 80C198A8  3C 80 80 C2 */	lis r4, lit_3665@ha /* 0x80C1B600@ha */
/* 80C198AC  3B C4 B6 00 */	addi r30, r4, lit_3665@l /* 0x80C1B600@l */
/* 80C198B0  7C 7C 1B 78 */	mr r28, r3
/* 80C198B4  38 61 00 44 */	addi r3, r1, 0x44
/* 80C198B8  4B 45 E3 B1 */	bl __ct__11dBgS_LinChkFv
/* 80C198BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C198C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C198C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C198C8  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80C198CC  4B 3F 2B 11 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C198D0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C198D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C198D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C198DC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C198E0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C198E4  38 61 00 20 */	addi r3, r1, 0x20
/* 80C198E8  38 81 00 14 */	addi r4, r1, 0x14
/* 80C198EC  4B 65 76 01 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C198F0  38 61 00 14 */	addi r3, r1, 0x14
/* 80C198F4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C198F8  7C 65 1B 78 */	mr r5, r3
/* 80C198FC  4B 72 D7 95 */	bl PSVECAdd
/* 80C19900  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80C19904  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C19908  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C1990C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C19910  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C19914  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C19918  3B 60 00 00 */	li r27, 0
/* 80C1991C  3B E0 00 00 */	li r31, 0
/* 80C19920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C19924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C19928  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C1992C  C3 FE 00 2C */	lfs f31, 0x2c(r30)
lbl_80C19930:
/* 80C19930  38 61 00 20 */	addi r3, r1, 0x20
/* 80C19934  3B C1 00 2C */	addi r30, r1, 0x2c
/* 80C19938  7F DE FA 14 */	add r30, r30, r31
/* 80C1993C  7F C4 F3 78 */	mr r4, r30
/* 80C19940  4B 65 75 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C19944  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C19948  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C1994C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C19950  7F C3 F3 78 */	mr r3, r30
/* 80C19954  38 81 00 14 */	addi r4, r1, 0x14
/* 80C19958  7F C5 F3 78 */	mr r5, r30
/* 80C1995C  4B 72 D7 35 */	bl PSVECAdd
/* 80C19960  38 61 00 44 */	addi r3, r1, 0x44
/* 80C19964  38 81 00 14 */	addi r4, r1, 0x14
/* 80C19968  7F C5 F3 78 */	mr r5, r30
/* 80C1996C  7F 86 E3 78 */	mr r6, r28
/* 80C19970  4B 45 E3 F5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C19974  7F A3 EB 78 */	mr r3, r29
/* 80C19978  38 81 00 44 */	addi r4, r1, 0x44
/* 80C1997C  4B 45 AA 39 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C19980  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C19984  41 82 00 20 */	beq lbl_80C199A4
/* 80C19988  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80C1998C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80C19990  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C19994  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80C19998  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C1999C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80C199A0  48 00 00 18 */	b lbl_80C199B8
lbl_80C199A4:
/* 80C199A4  38 61 00 44 */	addi r3, r1, 0x44
/* 80C199A8  38 80 FF FF */	li r4, -1
/* 80C199AC  4B 45 E3 31 */	bl __dt__11dBgS_LinChkFv
/* 80C199B0  38 60 00 23 */	li r3, 0x23
/* 80C199B4  48 00 00 58 */	b lbl_80C19A0C
lbl_80C199B8:
/* 80C199B8  3B 7B 00 01 */	addi r27, r27, 1
/* 80C199BC  2C 1B 00 02 */	cmpwi r27, 2
/* 80C199C0  3B FF 00 0C */	addi r31, r31, 0xc
/* 80C199C4  41 80 FF 6C */	blt lbl_80C19930
/* 80C199C8  38 61 00 08 */	addi r3, r1, 8
/* 80C199CC  38 81 00 38 */	addi r4, r1, 0x38
/* 80C199D0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C199D4  4B 64 D1 61 */	bl __mi__4cXyzCFRC3Vec
/* 80C199D8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C199DC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C199E0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C199E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C199E8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80C199EC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80C199F0  4B 64 DC 85 */	bl cM_atan2s__Fff
/* 80C199F4  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C199F8  7C 1E 07 34 */	extsh r30, r0
/* 80C199FC  38 61 00 44 */	addi r3, r1, 0x44
/* 80C19A00  38 80 FF FF */	li r4, -1
/* 80C19A04  4B 45 E2 D9 */	bl __dt__11dBgS_LinChkFv
/* 80C19A08  7F C3 F3 78 */	mr r3, r30
lbl_80C19A0C:
/* 80C19A0C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80C19A10  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80C19A14  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C19A18  4B 74 88 09 */	bl _restgpr_27
/* 80C19A1C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80C19A20  7C 08 03 A6 */	mtlr r0
/* 80C19A24  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80C19A28  4E 80 00 20 */	blr 
