lbl_80165CE0:
/* 80165CE0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80165CE4  7C 08 02 A6 */	mflr r0
/* 80165CE8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80165CEC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80165CF0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80165CF4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80165CF8  48 1F C4 D1 */	bl _savegpr_24
/* 80165CFC  7C 7F 1B 78 */	mr r31, r3
/* 80165D00  7C BD 2B 78 */	mr r29, r5
/* 80165D04  7C D8 33 78 */	mr r24, r6
/* 80165D08  FF E0 08 90 */	fmr f31, f1
/* 80165D0C  3B C1 00 34 */	addi r30, r1, 0x34
/* 80165D10  7F C3 F3 78 */	mr r3, r30
/* 80165D14  4B F1 2D 01 */	bl __ct__11dBgS_SphChkFv
/* 80165D18  3C 60 80 3C */	lis r3, __vt__14dBgS_CamSphChk@ha
/* 80165D1C  38 63 A7 98 */	addi r3, r3, __vt__14dBgS_CamSphChk@l
/* 80165D20  90 61 00 44 */	stw r3, 0x44(r1)
/* 80165D24  3B 83 00 0C */	addi r28, r3, 0xc
/* 80165D28  93 81 00 54 */	stw r28, 0x54(r1)
/* 80165D2C  3B 63 00 18 */	addi r27, r3, 0x18
/* 80165D30  93 61 00 68 */	stw r27, 0x68(r1)
/* 80165D34  3B 43 00 24 */	addi r26, r3, 0x24
/* 80165D38  93 41 00 6C */	stw r26, 0x6c(r1)
/* 80165D3C  3B 23 00 30 */	addi r25, r3, 0x30
/* 80165D40  93 21 00 7C */	stw r25, 0x7c(r1)
/* 80165D44  38 7E 00 38 */	addi r3, r30, 0x38
/* 80165D48  4B F1 31 39 */	bl SetCam__16dBgS_PolyPassChkFv
/* 80165D4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80165D50  93 01 00 1C */	stw r24, 0x1c(r1)
/* 80165D54  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80165D58  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80165D5C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80165D60  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80165D64  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80165D68  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80165D6C  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 80165D70  38 00 00 00 */	li r0, 0
/* 80165D74  98 01 00 30 */	stb r0, 0x30(r1)
/* 80165D78  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 80165D7C  3C 60 80 16 */	lis r3, sph_chk_callback__FP11dBgS_SphChkP10cBgD_Vtx_tiiiP8cM3dGPlaPv@ha
/* 80165D80  38 03 5C 08 */	addi r0, r3, sph_chk_callback__FP11dBgS_SphChkP10cBgD_Vtx_tiiiP8cM3dGPlaPv@l
/* 80165D84  90 01 00 84 */	stw r0, 0x84(r1)
/* 80165D88  7F C3 F3 78 */	mr r3, r30
/* 80165D8C  7F A4 EB 78 */	mr r4, r29
/* 80165D90  FC 20 F8 90 */	fmr f1, f31
/* 80165D94  48 10 98 D1 */	bl Set__8cM3dGSphFRC4cXyzf
/* 80165D98  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 80165D9C  3B 00 00 00 */	li r24, 0
/* 80165DA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80165DA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80165DA8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80165DAC  3B C1 00 08 */	addi r30, r1, 8
lbl_80165DB0:
/* 80165DB0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80165DB4  D0 41 00 08 */	stfs f2, 8(r1)
/* 80165DB8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80165DBC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80165DC0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80165DC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80165DC8  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80165DCC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80165DD0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80165DD4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80165DD8  38 61 00 34 */	addi r3, r1, 0x34
/* 80165DDC  7F C4 F3 78 */	mr r4, r30
/* 80165DE0  FC 20 F8 90 */	fmr f1, f31
/* 80165DE4  48 10 98 81 */	bl Set__8cM3dGSphFRC4cXyzf
/* 80165DE8  38 00 00 00 */	li r0, 0
/* 80165DEC  98 01 00 30 */	stb r0, 0x30(r1)
/* 80165DF0  7F A3 EB 78 */	mr r3, r29
/* 80165DF4  38 81 00 34 */	addi r4, r1, 0x34
/* 80165DF8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80165DFC  4B F0 F8 8D */	bl SphChk__4dBgSFP11dBgS_SphChkPv
/* 80165E00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80165E04  41 82 00 10 */	beq lbl_80165E14
/* 80165E08  3B 18 00 01 */	addi r24, r24, 1
/* 80165E0C  2C 18 00 05 */	cmpwi r24, 5
/* 80165E10  41 80 FF A0 */	blt lbl_80165DB0
lbl_80165E14:
/* 80165E14  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80165E18  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80165E1C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80165E20  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80165E24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80165E28  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80165E2C  3C 60 80 3C */	lis r3, __vt__14dBgS_CamSphChk@ha
/* 80165E30  38 03 A7 98 */	addi r0, r3, __vt__14dBgS_CamSphChk@l
/* 80165E34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80165E38  93 81 00 54 */	stw r28, 0x54(r1)
/* 80165E3C  93 61 00 68 */	stw r27, 0x68(r1)
/* 80165E40  93 41 00 6C */	stw r26, 0x6c(r1)
/* 80165E44  93 21 00 7C */	stw r25, 0x7c(r1)
/* 80165E48  38 61 00 34 */	addi r3, r1, 0x34
/* 80165E4C  38 80 00 00 */	li r4, 0
/* 80165E50  4B F1 2C 71 */	bl __dt__11dBgS_SphChkFv
/* 80165E54  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80165E58  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80165E5C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80165E60  48 1F C3 B5 */	bl _restgpr_24
/* 80165E64  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80165E68  7C 08 03 A6 */	mtlr r0
/* 80165E6C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80165E70  4E 80 00 20 */	blr 
