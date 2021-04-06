lbl_80054BD0:
/* 80054BD0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80054BD4  7C 08 02 A6 */	mflr r0
/* 80054BD8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80054BDC  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80054BE0  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80054BE4  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80054BE8  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80054BEC  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80054BF0  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80054BF4  39 61 00 80 */	addi r11, r1, 0x80
/* 80054BF8  48 30 D5 DD */	bl _savegpr_27
/* 80054BFC  7C 7E 1B 78 */	mr r30, r3
/* 80054C00  7C 9C 23 78 */	mr r28, r4
/* 80054C04  7C BF 2B 78 */	mr r31, r5
/* 80054C08  FF C0 08 90 */	fmr f30, f1
/* 80054C0C  FF E0 10 90 */	fmr f31, f2
/* 80054C10  D0 61 00 08 */	stfs f3, 8(r1)
/* 80054C14  7C DB 33 78 */	mr r27, r6
/* 80054C18  38 00 00 00 */	li r0, 0
/* 80054C1C  B0 03 00 AC */	sth r0, 0xac(r3)
/* 80054C20  7F 63 DB 78 */	mr r3, r27
/* 80054C24  38 81 00 08 */	addi r4, r1, 8
/* 80054C28  4B FF FE A5 */	bl setkankyoShadow__FP12dKy_tevstr_cPf
/* 80054C2C  3C 60 80 43 */	lis r3, g_envHIO@ha /* 0x8043079C@ha */
/* 80054C30  38 63 07 9C */	addi r3, r3, g_envHIO@l /* 0x8043079C@l */
/* 80054C34  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80054C38  C0 01 00 08 */	lfs f0, 8(r1)
/* 80054C3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80054C40  FC 00 00 1E */	fctiwz f0, f0
/* 80054C44  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80054C48  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 80054C4C  38 61 00 34 */	addi r3, r1, 0x34
/* 80054C50  7F 84 E3 78 */	mr r4, r28
/* 80054C54  7F E5 FB 78 */	mr r5, r31
/* 80054C58  48 21 1E DD */	bl __mi__4cXyzCFRC3Vec
/* 80054C5C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80054C60  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80054C64  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80054C68  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80054C6C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80054C70  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80054C74  3B 80 00 00 */	li r28, 0
/* 80054C78  28 1B 00 00 */	cmplwi r27, 0
/* 80054C7C  41 82 00 30 */	beq lbl_80054CAC
/* 80054C80  38 7B 03 85 */	addi r3, r27, 0x385
/* 80054C84  C0 02 86 70 */	lfs f0, lit_5267(r2)
/* 80054C88  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80054C8C  40 81 00 0C */	ble lbl_80054C98
/* 80054C90  38 00 00 00 */	li r0, 0
/* 80054C94  48 00 00 08 */	b lbl_80054C9C
lbl_80054C98:
/* 80054C98  38 00 00 FF */	li r0, 0xff
lbl_80054C9C:
/* 80054C9C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80054CA0  38 A0 00 3C */	li r5, 0x3c
/* 80054CA4  48 21 B9 B9 */	bl cLib_chaseUC__FPUcUcUc
/* 80054CA8  8B 9B 03 85 */	lbz r28, 0x385(r27)
lbl_80054CAC:
/* 80054CAC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80054CB0  48 2F 24 89 */	bl PSVECSquareMag
/* 80054CB4  FF A0 08 90 */	fmr f29, f1
/* 80054CB8  FC 00 EA 10 */	fabs f0, f29
/* 80054CBC  FC 40 00 18 */	frsp f2, f0
/* 80054CC0  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80054CC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80054CC8  41 80 02 10 */	blt lbl_80054ED8
/* 80054CCC  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80054CD0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80054CD4  40 81 00 10 */	ble lbl_80054CE4
/* 80054CD8  FC 00 E8 34 */	frsqrte f0, f29
/* 80054CDC  EC 40 07 72 */	fmuls f2, f0, f29
/* 80054CE0  48 00 00 08 */	b lbl_80054CE8
lbl_80054CE4:
/* 80054CE4  FC 40 E8 90 */	fmr f2, f29
lbl_80054CE8:
/* 80054CE8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80054CEC  EC 20 10 24 */	fdivs f1, f0, f2
/* 80054CF0  C0 02 86 74 */	lfs f0, lit_5268(r2)
/* 80054CF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80054CF8  40 80 00 7C */	bge lbl_80054D74
/* 80054CFC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80054D00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80054D04  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80054D08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80054D0C  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80054D10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80054D14  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80054D18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80054D1C  38 61 00 10 */	addi r3, r1, 0x10
/* 80054D20  48 2F 24 19 */	bl PSVECSquareMag
/* 80054D24  FC 00 0A 10 */	fabs f0, f1
/* 80054D28  FC 40 00 18 */	frsp f2, f0
/* 80054D2C  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80054D30  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80054D34  41 80 00 40 */	blt lbl_80054D74
/* 80054D38  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80054D3C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80054D40  EC 1D 00 28 */	fsubs f0, f29, f0
/* 80054D44  EC 20 08 24 */	fdivs f1, f0, f1
/* 80054D48  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80054D4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80054D50  40 81 00 0C */	ble lbl_80054D5C
/* 80054D54  FC 00 08 34 */	frsqrte f0, f1
/* 80054D58  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80054D5C:
/* 80054D5C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80054D60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80054D64  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80054D68  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80054D6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80054D70  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80054D74:
/* 80054D74  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80054D78  40 82 00 14 */	bne lbl_80054D8C
/* 80054D7C  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80054D80  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80054D84  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80054D88  48 00 00 44 */	b lbl_80054DCC
lbl_80054D8C:
/* 80054D8C  28 00 00 FF */	cmplwi r0, 0xff
/* 80054D90  40 80 00 3C */	bge lbl_80054DCC
/* 80054D94  C8 22 86 18 */	lfd f1, lit_4076(r2)
/* 80054D98  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80054D9C  3C 00 43 30 */	lis r0, 0x4330
/* 80054DA0  90 01 00 58 */	stw r0, 0x58(r1)
/* 80054DA4  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80054DA8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80054DAC  C0 02 86 78 */	lfs f0, lit_5269(r2)
/* 80054DB0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80054DB4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80054DB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80054DBC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80054DC0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80054DC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80054DC8  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80054DCC:
/* 80054DCC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80054DD0  48 2F 23 69 */	bl PSVECSquareMag
/* 80054DD4  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80054DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80054DDC  40 81 00 58 */	ble lbl_80054E34
/* 80054DE0  FC 00 08 34 */	frsqrte f0, f1
/* 80054DE4  C8 82 86 80 */	lfd f4, lit_5270(r2)
/* 80054DE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80054DEC  C8 62 86 88 */	lfd f3, lit_5271(r2)
/* 80054DF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80054DF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80054DF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80054DFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80054E00  FC 44 00 32 */	fmul f2, f4, f0
/* 80054E04  FC 00 00 32 */	fmul f0, f0, f0
/* 80054E08  FC 01 00 32 */	fmul f0, f1, f0
/* 80054E0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80054E10  FC 02 00 32 */	fmul f0, f2, f0
/* 80054E14  FC 44 00 32 */	fmul f2, f4, f0
/* 80054E18  FC 00 00 32 */	fmul f0, f0, f0
/* 80054E1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80054E20  FC 03 00 28 */	fsub f0, f3, f0
/* 80054E24  FC 02 00 32 */	fmul f0, f2, f0
/* 80054E28  FC 21 00 32 */	fmul f1, f1, f0
/* 80054E2C  FC 20 08 18 */	frsp f1, f1
/* 80054E30  48 00 00 88 */	b lbl_80054EB8
lbl_80054E34:
/* 80054E34  C8 02 86 90 */	lfd f0, lit_5272(r2)
/* 80054E38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80054E3C  40 80 00 10 */	bge lbl_80054E4C
/* 80054E40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80054E44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80054E48  48 00 00 70 */	b lbl_80054EB8
lbl_80054E4C:
/* 80054E4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80054E50  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80054E54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80054E58  3C 00 7F 80 */	lis r0, 0x7f80
/* 80054E5C  7C 03 00 00 */	cmpw r3, r0
/* 80054E60  41 82 00 14 */	beq lbl_80054E74
/* 80054E64  40 80 00 40 */	bge lbl_80054EA4
/* 80054E68  2C 03 00 00 */	cmpwi r3, 0
/* 80054E6C  41 82 00 20 */	beq lbl_80054E8C
/* 80054E70  48 00 00 34 */	b lbl_80054EA4
lbl_80054E74:
/* 80054E74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80054E78  41 82 00 0C */	beq lbl_80054E84
/* 80054E7C  38 00 00 01 */	li r0, 1
/* 80054E80  48 00 00 28 */	b lbl_80054EA8
lbl_80054E84:
/* 80054E84  38 00 00 02 */	li r0, 2
/* 80054E88  48 00 00 20 */	b lbl_80054EA8
lbl_80054E8C:
/* 80054E8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80054E90  41 82 00 0C */	beq lbl_80054E9C
/* 80054E94  38 00 00 05 */	li r0, 5
/* 80054E98  48 00 00 10 */	b lbl_80054EA8
lbl_80054E9C:
/* 80054E9C  38 00 00 03 */	li r0, 3
/* 80054EA0  48 00 00 08 */	b lbl_80054EA8
lbl_80054EA4:
/* 80054EA4  38 00 00 04 */	li r0, 4
lbl_80054EA8:
/* 80054EA8  2C 00 00 01 */	cmpwi r0, 1
/* 80054EAC  40 82 00 0C */	bne lbl_80054EB8
/* 80054EB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80054EB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80054EB8:
/* 80054EB8  FC 00 0A 10 */	fabs f0, f1
/* 80054EBC  FC 40 00 18 */	frsp f2, f0
/* 80054EC0  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80054EC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80054EC8  41 80 00 10 */	blt lbl_80054ED8
/* 80054ECC  C0 02 86 08 */	lfs f0, lit_4072(r2)
/* 80054ED0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80054ED4  EC 20 08 24 */	fdivs f1, f0, f1
lbl_80054ED8:
/* 80054ED8  38 61 00 4C */	addi r3, r1, 0x4c
/* 80054EDC  7C 64 1B 78 */	mr r4, r3
/* 80054EE0  48 2F 21 F9 */	bl PSVECScale
/* 80054EE4  38 61 00 4C */	addi r3, r1, 0x4c
/* 80054EE8  7F E4 FB 78 */	mr r4, r31
/* 80054EEC  7C 65 1B 78 */	mr r5, r3
/* 80054EF0  48 2F 21 A1 */	bl PSVECAdd
/* 80054EF4  C0 02 86 98 */	lfs f0, lit_5273(r2)
/* 80054EF8  EF C0 07 B2 */	fmuls f30, f0, f30
/* 80054EFC  38 61 00 28 */	addi r3, r1, 0x28
/* 80054F00  7F E4 FB 78 */	mr r4, r31
/* 80054F04  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80054F08  48 21 1C 2D */	bl __mi__4cXyzCFRC3Vec
/* 80054F0C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80054F10  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80054F14  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80054F18  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80054F1C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80054F20  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80054F24  38 61 00 40 */	addi r3, r1, 0x40
/* 80054F28  48 21 21 85 */	bl isZero__4cXyzCFv
/* 80054F2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80054F30  41 82 00 20 */	beq lbl_80054F50
/* 80054F34  C0 02 86 9C */	lfs f0, lit_5274(r2)
/* 80054F38  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80054F3C  C0 22 86 28 */	lfs f1, lit_4270(r2)
/* 80054F40  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80054F44  EC 01 00 2A */	fadds f0, f1, f0
/* 80054F48  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80054F4C  48 00 00 10 */	b lbl_80054F5C
lbl_80054F50:
/* 80054F50  38 61 00 1C */	addi r3, r1, 0x1c
/* 80054F54  38 81 00 40 */	addi r4, r1, 0x40
/* 80054F58  48 21 1F 9D */	bl normalize__4cXyzFv
lbl_80054F5C:
/* 80054F5C  7F E3 FB 78 */	mr r3, r31
/* 80054F60  FC 20 F0 90 */	fmr f1, f30
/* 80054F64  FC 40 F8 90 */	fmr f2, f31
/* 80054F68  38 81 00 40 */	addi r4, r1, 0x40
/* 80054F6C  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 80054F70  4B FF F8 E5 */	bl realPolygonCheck__FP4cXyzffP4cXyzP18dDlst_shadowPoly_c
/* 80054F74  2C 03 00 00 */	cmpwi r3, 0
/* 80054F78  40 82 00 0C */	bne lbl_80054F84
/* 80054F7C  38 60 00 00 */	li r3, 0
/* 80054F80  48 00 00 78 */	b lbl_80054FF8
lbl_80054F84:
/* 80054F84  38 7E 00 08 */	addi r3, r30, 8
/* 80054F88  38 81 00 4C */	addi r4, r1, 0x4c
/* 80054F8C  7F E5 FB 78 */	mr r5, r31
/* 80054F90  38 C0 00 00 */	li r6, 0
/* 80054F94  4B FB 75 79 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3Vecs
/* 80054F98  FF A0 F0 50 */	fneg f29, f30
/* 80054F9C  38 7E 00 38 */	addi r3, r30, 0x38
/* 80054FA0  FC 20 F0 90 */	fmr f1, f30
/* 80054FA4  FC 40 E8 90 */	fmr f2, f29
/* 80054FA8  FC 60 E8 90 */	fmr f3, f29
/* 80054FAC  FC 80 F0 90 */	fmr f4, f30
/* 80054FB0  C0 A2 86 28 */	lfs f5, lit_4270(r2)
/* 80054FB4  C0 C2 86 64 */	lfs f6, lit_5130(r2)
/* 80054FB8  48 2F 20 41 */	bl C_MTXOrtho
/* 80054FBC  38 7E 00 78 */	addi r3, r30, 0x78
/* 80054FC0  FC 20 F0 90 */	fmr f1, f30
/* 80054FC4  FC 40 E8 90 */	fmr f2, f29
/* 80054FC8  FC 60 E8 90 */	fmr f3, f29
/* 80054FCC  FC 80 F0 90 */	fmr f4, f30
/* 80054FD0  C0 A2 86 08 */	lfs f5, lit_4072(r2)
/* 80054FD4  C0 C2 86 A0 */	lfs f6, lit_5275(r2)
/* 80054FD8  FC E0 28 90 */	fmr f7, f5
/* 80054FDC  FD 00 28 90 */	fmr f8, f5
/* 80054FE0  48 2F 1D 05 */	bl C_MTXLightOrtho
/* 80054FE4  38 7E 00 78 */	addi r3, r30, 0x78
/* 80054FE8  38 9E 00 08 */	addi r4, r30, 8
/* 80054FEC  7C 65 1B 78 */	mr r5, r3
/* 80054FF0  48 2F 14 F5 */	bl PSMTXConcat
/* 80054FF4  57 A3 06 3E */	clrlwi r3, r29, 0x18
lbl_80054FF8:
/* 80054FF8  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80054FFC  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80055000  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80055004  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80055008  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 8005500C  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80055010  39 61 00 80 */	addi r11, r1, 0x80
/* 80055014  48 30 D2 0D */	bl _restgpr_27
/* 80055018  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8005501C  7C 08 03 A6 */	mtlr r0
/* 80055020  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80055024  4E 80 00 20 */	blr 
