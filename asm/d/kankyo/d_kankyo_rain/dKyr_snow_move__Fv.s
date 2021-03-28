lbl_8005FD48:
/* 8005FD48  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8005FD4C  7C 08 02 A6 */	mflr r0
/* 8005FD50  90 01 02 54 */	stw r0, 0x254(r1)
/* 8005FD54  DB E1 02 40 */	stfd f31, 0x240(r1)
/* 8005FD58  F3 E1 02 48 */	psq_st f31, 584(r1), 0, 0 /* qr0 */
/* 8005FD5C  DB C1 02 30 */	stfd f30, 0x230(r1)
/* 8005FD60  F3 C1 02 38 */	psq_st f30, 568(r1), 0, 0 /* qr0 */
/* 8005FD64  DB A1 02 20 */	stfd f29, 0x220(r1)
/* 8005FD68  F3 A1 02 28 */	psq_st f29, 552(r1), 0, 0 /* qr0 */
/* 8005FD6C  DB 81 02 10 */	stfd f28, 0x210(r1)
/* 8005FD70  F3 81 02 18 */	psq_st f28, 536(r1), 0, 0 /* qr0 */
/* 8005FD74  DB 61 02 00 */	stfd f27, 0x200(r1)
/* 8005FD78  F3 61 02 08 */	psq_st f27, 520(r1), 0, 0 /* qr0 */
/* 8005FD7C  DB 41 01 F0 */	stfd f26, 0x1f0(r1)
/* 8005FD80  F3 41 01 F8 */	psq_st f26, 504(r1), 0, 0 /* qr0 */
/* 8005FD84  DB 21 01 E0 */	stfd f25, 0x1e0(r1)
/* 8005FD88  F3 21 01 E8 */	psq_st f25, 488(r1), 0, 0 /* qr0 */
/* 8005FD8C  DB 01 01 D0 */	stfd f24, 0x1d0(r1)
/* 8005FD90  F3 01 01 D8 */	psq_st f24, 472(r1), 0, 0 /* qr0 */
/* 8005FD94  DA E1 01 C0 */	stfd f23, 0x1c0(r1)
/* 8005FD98  F2 E1 01 C8 */	psq_st f23, 456(r1), 0, 0 /* qr0 */
/* 8005FD9C  DA C1 01 B0 */	stfd f22, 0x1b0(r1)
/* 8005FDA0  F2 C1 01 B8 */	psq_st f22, 440(r1), 0, 0 /* qr0 */
/* 8005FDA4  DA A1 01 A0 */	stfd f21, 0x1a0(r1)
/* 8005FDA8  F2 A1 01 A8 */	psq_st f21, 424(r1), 0, 0 /* qr0 */
/* 8005FDAC  DA 81 01 90 */	stfd f20, 0x190(r1)
/* 8005FDB0  F2 81 01 98 */	psq_st f20, 408(r1), 0, 0 /* qr0 */
/* 8005FDB4  DA 61 01 80 */	stfd f19, 0x180(r1)
/* 8005FDB8  F2 61 01 88 */	psq_st f19, 392(r1), 0, 0 /* qr0 */
/* 8005FDBC  39 61 01 80 */	addi r11, r1, 0x180
/* 8005FDC0  48 30 23 FD */	bl _savegpr_21
/* 8005FDC4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005FDC8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8005FDCC  83 03 0E 94 */	lwz r24, 0xe94(r3)
/* 8005FDD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005FDD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005FDD8  82 E3 5D 74 */	lwz r23, 0x5d74(r3)
/* 8005FDDC  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8005FDE0  38 61 00 40 */	addi r3, r1, 0x40
/* 8005FDE4  4B FF AD 1D */	bl dKyw_get_wind_vecpow__Fv
/* 8005FDE8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8005FDEC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8005FDF0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8005FDF4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8005FDF8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8005FDFC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8005FE00  38 61 00 34 */	addi r3, r1, 0x34
/* 8005FE04  4B FF AC FD */	bl dKyw_get_wind_vecpow__Fv
/* 8005FE08  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8005FE0C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8005FE10  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8005FE14  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8005FE18  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8005FE1C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8005FE20  3A A1 00 E0 */	addi r21, r1, 0xe0
/* 8005FE24  7E A3 AB 78 */	mr r3, r21
/* 8005FE28  48 01 77 55 */	bl __ct__11dBgS_GndChkFv
/* 8005FE2C  3C 60 80 3A */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8005FE30  38 63 38 2C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 8005FE34  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 8005FE38  38 03 00 0C */	addi r0, r3, 0xc
/* 8005FE3C  90 01 01 00 */	stw r0, 0x100(r1)
/* 8005FE40  38 03 00 18 */	addi r0, r3, 0x18
/* 8005FE44  90 01 01 1C */	stw r0, 0x11c(r1)
/* 8005FE48  38 03 00 24 */	addi r0, r3, 0x24
/* 8005FE4C  90 01 01 2C */	stw r0, 0x12c(r1)
/* 8005FE50  38 75 00 3C */	addi r3, r21, 0x3c
/* 8005FE54  48 01 90 15 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8005FE58  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha
/* 8005FE5C  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l
/* 8005FE60  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 8005FE64  38 03 00 0C */	addi r0, r3, 0xc
/* 8005FE68  90 01 01 00 */	stw r0, 0x100(r1)
/* 8005FE6C  38 03 00 18 */	addi r0, r3, 0x18
/* 8005FE70  90 01 01 1C */	stw r0, 0x11c(r1)
/* 8005FE74  38 03 00 24 */	addi r0, r3, 0x24
/* 8005FE78  90 01 01 2C */	stw r0, 0x12c(r1)
/* 8005FE7C  80 01 01 30 */	lwz r0, 0x130(r1)
/* 8005FE80  60 00 00 03 */	ori r0, r0, 3
/* 8005FE84  90 01 01 30 */	stw r0, 0x130(r1)
/* 8005FE88  A8 18 6D 88 */	lha r0, 0x6d88(r24)
/* 8005FE8C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005FE90  3B A3 CA 54 */	addi r29, r3, g_env_light@l
/* 8005FE94  80 7D 0E 8C */	lwz r3, 0xe8c(r29)
/* 8005FE98  7C 00 18 00 */	cmpw r0, r3
/* 8005FE9C  41 81 00 08 */	bgt lbl_8005FEA4
/* 8005FEA0  B0 78 6D 88 */	sth r3, 0x6d88(r24)
lbl_8005FEA4:
/* 8005FEA4  A8 18 6D 88 */	lha r0, 0x6d88(r24)
/* 8005FEA8  2C 00 00 00 */	cmpwi r0, 0
/* 8005FEAC  40 82 00 14 */	bne lbl_8005FEC0
/* 8005FEB0  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8005FEB4  38 80 FF FF */	li r4, -1
/* 8005FEB8  48 01 7A 31 */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 8005FEBC  48 00 13 E8 */	b lbl_800612A4
lbl_8005FEC0:
/* 8005FEC0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8005FEC4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8005FEC8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8005FECC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8005FED0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8005FED4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8005FED8  C0 02 89 A4 */	lfs f0, lit_6355(r2)
/* 8005FEDC  EC 01 00 2A */	fadds f0, f1, f0
/* 8005FEE0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8005FEE4  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8005FEE8  38 81 00 64 */	addi r4, r1, 0x64
/* 8005FEEC  48 20 7E 3D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8005FEF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005FEF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005FEF8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8005FEFC  7F C3 F3 78 */	mr r3, r30
/* 8005FF00  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8005FF04  48 01 45 9D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8005FF08  FE 60 08 90 */	fmr f19, f1
/* 8005FF0C  7E E3 BB 78 */	mr r3, r23
/* 8005FF10  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8005FF14  C0 22 88 E0 */	lfs f1, lit_5119(r2)
/* 8005FF18  FC 40 08 90 */	fmr f2, f1
/* 8005FF1C  4B FF B9 15 */	bl dKy_set_eyevect_calc2__FP12camera_classP3Vecff
/* 8005FF20  7E E3 BB 78 */	mr r3, r23
/* 8005FF24  38 81 00 AC */	addi r4, r1, 0xac
/* 8005FF28  C0 22 89 3C */	lfs f1, lit_5723(r2)
/* 8005FF2C  FC 40 08 90 */	fmr f2, f1
/* 8005FF30  4B FF B9 01 */	bl dKy_set_eyevect_calc2__FP12camera_classP3Vecff
/* 8005FF34  38 78 6D 74 */	addi r3, r24, 0x6d74
/* 8005FF38  38 97 00 D8 */	addi r4, r23, 0xd8
/* 8005FF3C  48 2E 74 61 */	bl PSVECSquareDistance
/* 8005FF40  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005FF44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005FF48  40 81 00 58 */	ble lbl_8005FFA0
/* 8005FF4C  FC 00 08 34 */	frsqrte f0, f1
/* 8005FF50  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005FF54  FC 44 00 32 */	fmul f2, f4, f0
/* 8005FF58  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005FF5C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005FF60  FC 01 00 32 */	fmul f0, f1, f0
/* 8005FF64  FC 03 00 28 */	fsub f0, f3, f0
/* 8005FF68  FC 02 00 32 */	fmul f0, f2, f0
/* 8005FF6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005FF70  FC 00 00 32 */	fmul f0, f0, f0
/* 8005FF74  FC 01 00 32 */	fmul f0, f1, f0
/* 8005FF78  FC 03 00 28 */	fsub f0, f3, f0
/* 8005FF7C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005FF80  FC 44 00 32 */	fmul f2, f4, f0
/* 8005FF84  FC 00 00 32 */	fmul f0, f0, f0
/* 8005FF88  FC 01 00 32 */	fmul f0, f1, f0
/* 8005FF8C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005FF90  FC 02 00 32 */	fmul f0, f2, f0
/* 8005FF94  FC 21 00 32 */	fmul f1, f1, f0
/* 8005FF98  FC 20 08 18 */	frsp f1, f1
/* 8005FF9C  48 00 00 88 */	b lbl_80060024
lbl_8005FFA0:
/* 8005FFA0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005FFA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005FFA8  40 80 00 10 */	bge lbl_8005FFB8
/* 8005FFAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8005FFB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8005FFB4  48 00 00 70 */	b lbl_80060024
lbl_8005FFB8:
/* 8005FFB8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8005FFBC  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8005FFC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005FFC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005FFC8  7C 03 00 00 */	cmpw r3, r0
/* 8005FFCC  41 82 00 14 */	beq lbl_8005FFE0
/* 8005FFD0  40 80 00 40 */	bge lbl_80060010
/* 8005FFD4  2C 03 00 00 */	cmpwi r3, 0
/* 8005FFD8  41 82 00 20 */	beq lbl_8005FFF8
/* 8005FFDC  48 00 00 34 */	b lbl_80060010
lbl_8005FFE0:
/* 8005FFE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005FFE4  41 82 00 0C */	beq lbl_8005FFF0
/* 8005FFE8  38 00 00 01 */	li r0, 1
/* 8005FFEC  48 00 00 28 */	b lbl_80060014
lbl_8005FFF0:
/* 8005FFF0  38 00 00 02 */	li r0, 2
/* 8005FFF4  48 00 00 20 */	b lbl_80060014
lbl_8005FFF8:
/* 8005FFF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005FFFC  41 82 00 0C */	beq lbl_80060008
/* 80060000  38 00 00 05 */	li r0, 5
/* 80060004  48 00 00 10 */	b lbl_80060014
lbl_80060008:
/* 80060008  38 00 00 03 */	li r0, 3
/* 8006000C  48 00 00 08 */	b lbl_80060014
lbl_80060010:
/* 80060010  38 00 00 04 */	li r0, 4
lbl_80060014:
/* 80060014  2C 00 00 01 */	cmpwi r0, 1
/* 80060018  40 82 00 0C */	bne lbl_80060024
/* 8006001C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060020  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80060024:
/* 80060024  C0 02 88 EC */	lfs f0, lit_5122(r2)
/* 80060028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006002C  40 81 00 0C */	ble lbl_80060038
/* 80060030  38 00 00 00 */	li r0, 0
/* 80060034  B0 18 6D 88 */	sth r0, 0x6d88(r24)
lbl_80060038:
/* 80060038  C0 17 00 D8 */	lfs f0, 0xd8(r23)
/* 8006003C  D0 18 6D 74 */	stfs f0, 0x6d74(r24)
/* 80060040  C0 17 00 DC */	lfs f0, 0xdc(r23)
/* 80060044  D0 18 6D 78 */	stfs f0, 0x6d78(r24)
/* 80060048  C0 17 00 E0 */	lfs f0, 0xe0(r23)
/* 8006004C  D0 18 6D 7C */	stfs f0, 0x6d7c(r24)
/* 80060050  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80060054  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80060058  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8006005C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80060060  4B FF AA 81 */	bl dKyw_get_wind_vec__Fv
/* 80060064  7C 75 1B 78 */	mr r21, r3
/* 80060068  4B FF AA 89 */	bl dKyw_get_wind_pow__Fv
/* 8006006C  FE 80 08 90 */	fmr f20, f1
/* 80060070  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80060074  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80060078  88 03 0E 92 */	lbz r0, 0xe92(r3)
/* 8006007C  28 00 00 01 */	cmplwi r0, 1
/* 80060080  40 82 00 0C */	bne lbl_8006008C
/* 80060084  C0 02 89 A8 */	lfs f0, lit_6356(r2)
/* 80060088  EE 94 00 32 */	fmuls f20, f20, f0
lbl_8006008C:
/* 8006008C  3B 9E 3E C8 */	addi r28, r30, 0x3ec8
/* 80060090  7F 83 E3 78 */	mr r3, r28
/* 80060094  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 80060098  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l
/* 8006009C  38 84 00 2E */	addi r4, r4, 0x2e
/* 800600A0  48 30 88 F5 */	bl strcmp
/* 800600A4  2C 03 00 00 */	cmpwi r3, 0
/* 800600A8  40 82 00 1C */	bne lbl_800600C4
/* 800600AC  C0 22 88 44 */	lfs f1, lit_4366(r2)
/* 800600B0  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 800600B4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 800600B8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 800600BC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 800600C0  FE 80 08 90 */	fmr f20, f1
lbl_800600C4:
/* 800600C4  C0 37 00 E4 */	lfs f1, 0xe4(r23)
/* 800600C8  C0 17 00 D8 */	lfs f0, 0xd8(r23)
/* 800600CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800600D0  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 800600D4  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 800600D8  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 800600DC  C0 37 00 EC */	lfs f1, 0xec(r23)
/* 800600E0  C0 17 00 E0 */	lfs f0, 0xe0(r23)
/* 800600E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800600E8  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 800600EC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 800600F0  38 81 00 58 */	addi r4, r1, 0x58
/* 800600F4  4B FF B5 6D */	bl vectle_calc__FP10DOUBLE_POSP4cXyz
/* 800600F8  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 800600FC  FC 40 08 90 */	fmr f2, f1
/* 80060100  C0 15 00 00 */	lfs f0, 0(r21)
/* 80060104  FC 60 00 50 */	fneg f3, f0
/* 80060108  C0 15 00 08 */	lfs f0, 8(r21)
/* 8006010C  FC 80 00 50 */	fneg f4, f0
/* 80060110  C0 A1 00 58 */	lfs f5, 0x58(r1)
/* 80060114  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 80060118  48 20 87 7D */	bl cM3d_VectorProduct2d__Fffffff
/* 8006011C  D0 38 6D 84 */	stfs f1, 0x6d84(r24)
/* 80060120  C0 35 00 00 */	lfs f1, 0(r21)
/* 80060124  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80060128  EC 41 00 32 */	fmuls f2, f1, f0
/* 8006012C  C0 35 00 08 */	lfs f1, 8(r21)
/* 80060130  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80060134  EC 01 00 32 */	fmuls f0, f1, f0
/* 80060138  EC 02 00 2A */	fadds f0, f2, f0
/* 8006013C  FC 00 02 10 */	fabs f0, f0
/* 80060140  FC 60 00 18 */	frsp f3, f0
/* 80060144  C0 22 88 44 */	lfs f1, lit_4366(r2)
/* 80060148  C0 15 00 04 */	lfs f0, 4(r21)
/* 8006014C  EC 01 00 2A */	fadds f0, f1, f0
/* 80060150  FC 00 02 10 */	fabs f0, f0
/* 80060154  FC 80 00 18 */	frsp f4, f0
/* 80060158  C0 42 88 14 */	lfs f2, lit_4354(r2)
/* 8006015C  EC 02 18 28 */	fsubs f0, f2, f3
/* 80060160  EC 20 05 32 */	fmuls f1, f0, f20
/* 80060164  EC 02 20 28 */	fsubs f0, f2, f4
/* 80060168  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006016C  D0 18 6D 80 */	stfs f0, 0x6d80(r24)
/* 80060170  C0 18 6D 84 */	lfs f0, 0x6d84(r24)
/* 80060174  FC 00 02 10 */	fabs f0, f0
/* 80060178  FC 20 00 18 */	frsp f1, f0
/* 8006017C  C0 18 6D 80 */	lfs f0, 0x6d80(r24)
/* 80060180  EC 00 00 72 */	fmuls f0, f0, f1
/* 80060184  D0 18 6D 80 */	stfs f0, 0x6d80(r24)
/* 80060188  A8 78 6D 88 */	lha r3, 0x6d88(r24)
/* 8006018C  3A C3 FF FF */	addi r22, r3, -1
/* 80060190  C0 02 87 F8 */	lfs f0, lit_4111(r2)
/* 80060194  EF E0 98 2A */	fadds f31, f0, f19
/* 80060198  C3 A2 89 78 */	lfs f29, lit_5738(r2)
/* 8006019C  C3 02 89 50 */	lfs f24, lit_5728(r2)
/* 800601A0  CA E2 87 C8 */	lfd f23, lit_3995(r2)
/* 800601A4  3F C0 43 30 */	lis r30, 0x4330
/* 800601A8  C3 C2 87 B8 */	lfs f30, lit_3954(r2)
/* 800601AC  C3 82 89 A4 */	lfs f28, lit_6355(r2)
/* 800601B0  CB 22 89 D0 */	lfd f25, lit_6365(r2)
/* 800601B4  C2 C2 89 30 */	lfs f22, lit_5720(r2)
/* 800601B8  C2 A2 89 6C */	lfs f21, lit_5735(r2)
/* 800601BC  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 800601C0  3B E3 A5 78 */	addi r31, r3, d_kankyo_d_kankyo_rain__stringBase0@l
/* 800601C4  C2 82 89 E0 */	lfs f20, lit_6368(r2)
/* 800601C8  C2 62 88 B4 */	lfs f19, lit_5108(r2)
/* 800601CC  1E B6 00 38 */	mulli r21, r22, 0x38
/* 800601D0  48 00 10 C0 */	b lbl_80061290
lbl_800601D4:
/* 800601D4  C0 22 89 AC */	lfs f1, lit_6357(r2)
/* 800601D8  48 20 77 7D */	bl cM_rndF__Ff
/* 800601DC  EC 1D 08 2A */	fadds f0, f29, f1
/* 800601E0  FF 60 00 50 */	fneg f27, f0
/* 800601E4  56 C0 07 3E */	clrlwi r0, r22, 0x1c
/* 800601E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800601EC  90 01 01 3C */	stw r0, 0x13c(r1)
/* 800601F0  93 C1 01 38 */	stw r30, 0x138(r1)
/* 800601F4  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 800601F8  EC 00 B8 28 */	fsubs f0, f0, f23
/* 800601FC  EC 18 00 2A */	fadds f0, f24, f0
/* 80060200  EF 5D 00 32 */	fmuls f26, f29, f0
/* 80060204  7F 78 AA 14 */	add r27, r24, r21
/* 80060208  88 1B 00 14 */	lbz r0, 0x14(r27)
/* 8006020C  7C 00 07 74 */	extsb r0, r0
/* 80060210  2C 00 00 01 */	cmpwi r0, 1
/* 80060214  41 82 00 BC */	beq lbl_800602D0
/* 80060218  40 80 0A B4 */	bge lbl_80060CCC
/* 8006021C  2C 00 00 00 */	cmpwi r0, 0
/* 80060220  40 80 00 08 */	bge lbl_80060228
/* 80060224  48 00 0A A8 */	b lbl_80060CCC
lbl_80060228:
/* 80060228  D3 5B 00 3C */	stfs f26, 0x3c(r27)
/* 8006022C  D3 7B 00 38 */	stfs f27, 0x38(r27)
/* 80060230  38 00 00 00 */	li r0, 0
/* 80060234  B0 1B 00 48 */	sth r0, 0x48(r27)
/* 80060238  C0 22 88 D8 */	lfs f1, lit_5117(r2)
/* 8006023C  48 20 77 51 */	bl cM_rndFX__Ff
/* 80060240  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80060244  EC 00 08 2A */	fadds f0, f0, f1
/* 80060248  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 8006024C  C0 22 88 D8 */	lfs f1, lit_5117(r2)
/* 80060250  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80060254  EC 01 00 2A */	fadds f0, f1, f0
/* 80060258  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 8006025C  48 20 77 31 */	bl cM_rndFX__Ff
/* 80060260  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80060264  EC 00 08 2A */	fadds f0, f0, f1
/* 80060268  D0 1B 00 2C */	stfs f0, 0x2c(r27)
/* 8006026C  C0 22 88 BC */	lfs f1, lit_5110(r2)
/* 80060270  48 20 77 1D */	bl cM_rndFX__Ff
/* 80060274  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80060278  EC 00 08 2A */	fadds f0, f0, f1
/* 8006027C  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 80060280  C0 22 88 BC */	lfs f1, lit_5110(r2)
/* 80060284  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80060288  EC 01 00 2A */	fadds f0, f1, f0
/* 8006028C  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 80060290  48 20 76 FD */	bl cM_rndFX__Ff
/* 80060294  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80060298  EC 00 08 2A */	fadds f0, f0, f1
/* 8006029C  D0 1B 00 20 */	stfs f0, 0x20(r27)
/* 800602A0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 800602A4  D0 1B 00 40 */	stfs f0, 0x40(r27)
/* 800602A8  C0 22 89 38 */	lfs f1, lit_5722(r2)
/* 800602AC  48 20 76 A9 */	bl cM_rndF__Ff
/* 800602B0  D0 3B 00 30 */	stfs f1, 0x30(r27)
/* 800602B4  C0 22 89 38 */	lfs f1, lit_5722(r2)
/* 800602B8  48 20 76 9D */	bl cM_rndF__Ff
/* 800602BC  D0 3B 00 34 */	stfs f1, 0x34(r27)
/* 800602C0  88 7B 00 14 */	lbz r3, 0x14(r27)
/* 800602C4  38 03 00 01 */	addi r0, r3, 1
/* 800602C8  98 1B 00 14 */	stb r0, 0x14(r27)
/* 800602CC  48 00 0A 00 */	b lbl_80060CCC
lbl_800602D0:
/* 800602D0  C0 22 88 AC */	lfs f1, lit_5106(r2)
/* 800602D4  48 20 76 B9 */	bl cM_rndFX__Ff
/* 800602D8  3B 5B 00 3C */	addi r26, r27, 0x3c
/* 800602DC  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 800602E0  EC 20 08 28 */	fsubs f1, f0, f1
/* 800602E4  7F 43 D3 78 */	mr r3, r26
/* 800602E8  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 800602EC  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 800602F0  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 800602F4  48 20 F6 89 */	bl cLib_addCalc__FPfffff
/* 800602F8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 800602FC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80060300  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80060304  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80060308  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8006030C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80060310  38 77 00 D8 */	addi r3, r23, 0xd8
/* 80060314  3B 3B 00 18 */	addi r25, r27, 0x18
/* 80060318  7F 24 CB 78 */	mr r4, r25
/* 8006031C  48 2E 70 81 */	bl PSVECSquareDistance
/* 80060320  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80060324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060328  40 81 00 58 */	ble lbl_80060380
/* 8006032C  FC 00 08 34 */	frsqrte f0, f1
/* 80060330  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80060334  FC 44 00 32 */	fmul f2, f4, f0
/* 80060338  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006033C  FC 00 00 32 */	fmul f0, f0, f0
/* 80060340  FC 01 00 32 */	fmul f0, f1, f0
/* 80060344  FC 03 00 28 */	fsub f0, f3, f0
/* 80060348  FC 02 00 32 */	fmul f0, f2, f0
/* 8006034C  FC 44 00 32 */	fmul f2, f4, f0
/* 80060350  FC 00 00 32 */	fmul f0, f0, f0
/* 80060354  FC 01 00 32 */	fmul f0, f1, f0
/* 80060358  FC 03 00 28 */	fsub f0, f3, f0
/* 8006035C  FC 02 00 32 */	fmul f0, f2, f0
/* 80060360  FC 44 00 32 */	fmul f2, f4, f0
/* 80060364  FC 00 00 32 */	fmul f0, f0, f0
/* 80060368  FC 01 00 32 */	fmul f0, f1, f0
/* 8006036C  FC 03 00 28 */	fsub f0, f3, f0
/* 80060370  FC 02 00 32 */	fmul f0, f2, f0
/* 80060374  FC 21 00 32 */	fmul f1, f1, f0
/* 80060378  FC 20 08 18 */	frsp f1, f1
/* 8006037C  48 00 00 88 */	b lbl_80060404
lbl_80060380:
/* 80060380  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80060384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060388  40 80 00 10 */	bge lbl_80060398
/* 8006038C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060390  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80060394  48 00 00 70 */	b lbl_80060404
lbl_80060398:
/* 80060398  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8006039C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 800603A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800603A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 800603A8  7C 03 00 00 */	cmpw r3, r0
/* 800603AC  41 82 00 14 */	beq lbl_800603C0
/* 800603B0  40 80 00 40 */	bge lbl_800603F0
/* 800603B4  2C 03 00 00 */	cmpwi r3, 0
/* 800603B8  41 82 00 20 */	beq lbl_800603D8
/* 800603BC  48 00 00 34 */	b lbl_800603F0
lbl_800603C0:
/* 800603C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800603C4  41 82 00 0C */	beq lbl_800603D0
/* 800603C8  38 00 00 01 */	li r0, 1
/* 800603CC  48 00 00 28 */	b lbl_800603F4
lbl_800603D0:
/* 800603D0  38 00 00 02 */	li r0, 2
/* 800603D4  48 00 00 20 */	b lbl_800603F4
lbl_800603D8:
/* 800603D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800603DC  41 82 00 0C */	beq lbl_800603E8
/* 800603E0  38 00 00 05 */	li r0, 5
/* 800603E4  48 00 00 10 */	b lbl_800603F4
lbl_800603E8:
/* 800603E8  38 00 00 03 */	li r0, 3
/* 800603EC  48 00 00 08 */	b lbl_800603F4
lbl_800603F0:
/* 800603F0  38 00 00 04 */	li r0, 4
lbl_800603F4:
/* 800603F4  2C 00 00 01 */	cmpwi r0, 1
/* 800603F8  40 82 00 0C */	bne lbl_80060404
/* 800603FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060400  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80060404:
/* 80060404  C0 02 88 E0 */	lfs f0, lit_5119(r2)
/* 80060408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006040C  40 80 00 38 */	bge lbl_80060444
/* 80060410  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80060414  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80060418  40 80 00 2C */	bge lbl_80060444
/* 8006041C  EC 3F 00 28 */	fsubs f1, f31, f0
/* 80060420  C0 02 87 F8 */	lfs f0, lit_4111(r2)
/* 80060424  EC 21 00 24 */	fdivs f1, f1, f0
/* 80060428  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006042C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060430  40 81 00 08 */	ble lbl_80060438
/* 80060434  FC 20 00 90 */	fmr f1, f0
lbl_80060438:
/* 80060438  C0 02 89 B0 */	lfs f0, lit_6358(r2)
/* 8006043C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80060440  D0 01 00 8C */	stfs f0, 0x8c(r1)
lbl_80060444:
/* 80060444  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80060448  FC 00 00 1E */	fctiwz f0, f0
/* 8006044C  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 80060450  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 80060454  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 80060458  FC 00 00 1E */	fctiwz f0, f0
/* 8006045C  D8 01 01 40 */	stfd f0, 0x140(r1)
/* 80060460  80 C1 01 44 */	lwz r6, 0x144(r1)
/* 80060464  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80060468  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8006046C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80060470  7C 83 02 14 */	add r4, r3, r0
/* 80060474  C0 64 00 04 */	lfs f3, 4(r4)
/* 80060478  54 C0 04 38 */	rlwinm r0, r6, 0, 0x10, 0x1c
/* 8006047C  7C 63 02 14 */	add r3, r3, r0
/* 80060480  C0 03 00 00 */	lfs f0, 0(r3)
/* 80060484  EC 43 00 32 */	fmuls f2, f3, f0
/* 80060488  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8006048C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80060490  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80060494  C0 03 00 04 */	lfs f0, 4(r3)
/* 80060498  EC 03 00 32 */	fmuls f0, f3, f0
/* 8006049C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800604A0  C0 BB 00 18 */	lfs f5, 0x18(r27)
/* 800604A4  C0 81 00 88 */	lfs f4, 0x88(r1)
/* 800604A8  C0 7A 00 00 */	lfs f3, 0(r26)
/* 800604AC  EC 64 00 F2 */	fmuls f3, f4, f3
/* 800604B0  EC 65 18 2A */	fadds f3, f5, f3
/* 800604B4  D0 7B 00 18 */	stfs f3, 0x18(r27)
/* 800604B8  C0 BB 00 20 */	lfs f5, 0x20(r27)
/* 800604BC  C0 81 00 90 */	lfs f4, 0x90(r1)
/* 800604C0  C0 7A 00 00 */	lfs f3, 0(r26)
/* 800604C4  EC 64 00 F2 */	fmuls f3, f4, f3
/* 800604C8  EC 65 18 2A */	fadds f3, f5, f3
/* 800604CC  D0 7B 00 20 */	stfs f3, 0x20(r27)
/* 800604D0  C0 DB 00 1C */	lfs f6, 0x1c(r27)
/* 800604D4  C0 BB 00 38 */	lfs f5, 0x38(r27)
/* 800604D8  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 800604DC  C0 7A 00 00 */	lfs f3, 0(r26)
/* 800604E0  EC 64 00 F2 */	fmuls f3, f4, f3
/* 800604E4  EC 65 18 2A */	fadds f3, f5, f3
/* 800604E8  EC 66 18 2A */	fadds f3, f6, f3
/* 800604EC  D0 7B 00 1C */	stfs f3, 0x1c(r27)
/* 800604F0  C0 9B 00 18 */	lfs f4, 0x18(r27)
/* 800604F4  C0 62 89 B4 */	lfs f3, lit_6359(r2)
/* 800604F8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800604FC  EC 44 10 2A */	fadds f2, f4, f2
/* 80060500  D0 5B 00 18 */	stfs f2, 0x18(r27)
/* 80060504  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 80060508  EC 23 00 72 */	fmuls f1, f3, f1
/* 8006050C  EC 22 08 2A */	fadds f1, f2, f1
/* 80060510  D0 3B 00 1C */	stfs f1, 0x1c(r27)
/* 80060514  C0 3B 00 20 */	lfs f1, 0x20(r27)
/* 80060518  EC 03 00 32 */	fmuls f0, f3, f0
/* 8006051C  EC 01 00 2A */	fadds f0, f1, f0
/* 80060520  D0 1B 00 20 */	stfs f0, 0x20(r27)
/* 80060524  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80060528  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8006052C  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80060530  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80060534  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80060538  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8006053C  38 77 00 D8 */	addi r3, r23, 0xd8
/* 80060540  7F 24 CB 78 */	mr r4, r25
/* 80060544  48 2E 6E 59 */	bl PSVECSquareDistance
/* 80060548  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006054C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060550  40 81 00 58 */	ble lbl_800605A8
/* 80060554  FC 00 08 34 */	frsqrte f0, f1
/* 80060558  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006055C  FC 44 00 32 */	fmul f2, f4, f0
/* 80060560  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80060564  FC 00 00 32 */	fmul f0, f0, f0
/* 80060568  FC 01 00 32 */	fmul f0, f1, f0
/* 8006056C  FC 03 00 28 */	fsub f0, f3, f0
/* 80060570  FC 02 00 32 */	fmul f0, f2, f0
/* 80060574  FC 44 00 32 */	fmul f2, f4, f0
/* 80060578  FC 00 00 32 */	fmul f0, f0, f0
/* 8006057C  FC 01 00 32 */	fmul f0, f1, f0
/* 80060580  FC 03 00 28 */	fsub f0, f3, f0
/* 80060584  FC 02 00 32 */	fmul f0, f2, f0
/* 80060588  FC 44 00 32 */	fmul f2, f4, f0
/* 8006058C  FC 00 00 32 */	fmul f0, f0, f0
/* 80060590  FC 01 00 32 */	fmul f0, f1, f0
/* 80060594  FC 03 00 28 */	fsub f0, f3, f0
/* 80060598  FC 02 00 32 */	fmul f0, f2, f0
/* 8006059C  FC 21 00 32 */	fmul f1, f1, f0
/* 800605A0  FC 20 08 18 */	frsp f1, f1
/* 800605A4  48 00 00 88 */	b lbl_8006062C
lbl_800605A8:
/* 800605A8  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 800605AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800605B0  40 80 00 10 */	bge lbl_800605C0
/* 800605B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800605B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800605BC  48 00 00 70 */	b lbl_8006062C
lbl_800605C0:
/* 800605C0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800605C4  80 81 00 28 */	lwz r4, 0x28(r1)
/* 800605C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800605CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800605D0  7C 03 00 00 */	cmpw r3, r0
/* 800605D4  41 82 00 14 */	beq lbl_800605E8
/* 800605D8  40 80 00 40 */	bge lbl_80060618
/* 800605DC  2C 03 00 00 */	cmpwi r3, 0
/* 800605E0  41 82 00 20 */	beq lbl_80060600
/* 800605E4  48 00 00 34 */	b lbl_80060618
lbl_800605E8:
/* 800605E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800605EC  41 82 00 0C */	beq lbl_800605F8
/* 800605F0  38 00 00 01 */	li r0, 1
/* 800605F4  48 00 00 28 */	b lbl_8006061C
lbl_800605F8:
/* 800605F8  38 00 00 02 */	li r0, 2
/* 800605FC  48 00 00 20 */	b lbl_8006061C
lbl_80060600:
/* 80060600  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060604  41 82 00 0C */	beq lbl_80060610
/* 80060608  38 00 00 05 */	li r0, 5
/* 8006060C  48 00 00 10 */	b lbl_8006061C
lbl_80060610:
/* 80060610  38 00 00 03 */	li r0, 3
/* 80060614  48 00 00 08 */	b lbl_8006061C
lbl_80060618:
/* 80060618  38 00 00 04 */	li r0, 4
lbl_8006061C:
/* 8006061C  2C 00 00 01 */	cmpwi r0, 1
/* 80060620  40 82 00 0C */	bne lbl_8006062C
/* 80060624  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060628  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8006062C:
/* 8006062C  C0 02 88 E0 */	lfs f0, lit_5119(r2)
/* 80060630  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060634  40 80 00 38 */	bge lbl_8006066C
/* 80060638  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 8006063C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80060640  40 80 00 2C */	bge lbl_8006066C
/* 80060644  EC 3F 00 28 */	fsubs f1, f31, f0
/* 80060648  C0 02 87 F8 */	lfs f0, lit_4111(r2)
/* 8006064C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80060650  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80060654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060658  40 81 00 08 */	ble lbl_80060660
/* 8006065C  FC 20 00 90 */	fmr f1, f0
lbl_80060660:
/* 80060660  C0 02 89 B8 */	lfs f0, lit_6360(r2)
/* 80060664  EC 00 00 72 */	fmuls f0, f0, f1
/* 80060668  D0 01 00 8C */	stfs f0, 0x8c(r1)
lbl_8006066C:
/* 8006066C  C0 5B 00 24 */	lfs f2, 0x24(r27)
/* 80060670  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80060674  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80060678  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006067C  EC 02 00 2A */	fadds f0, f2, f0
/* 80060680  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 80060684  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 80060688  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 8006068C  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80060690  EC 01 00 32 */	fmuls f0, f1, f0
/* 80060694  EC 02 00 2A */	fadds f0, f2, f0
/* 80060698  D0 1B 00 2C */	stfs f0, 0x2c(r27)
/* 8006069C  C0 7B 00 28 */	lfs f3, 0x28(r27)
/* 800606A0  C0 5B 00 38 */	lfs f2, 0x38(r27)
/* 800606A4  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 800606A8  C0 1A 00 00 */	lfs f0, 0(r26)
/* 800606AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800606B0  EC 02 00 2A */	fadds f0, f2, f0
/* 800606B4  EC 03 00 2A */	fadds f0, f3, f0
/* 800606B8  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 800606BC  C0 3B 00 24 */	lfs f1, 0x24(r27)
/* 800606C0  C0 42 89 B4 */	lfs f2, lit_6359(r2)
/* 800606C4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800606C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800606CC  EC 01 00 2A */	fadds f0, f1, f0
/* 800606D0  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 800606D4  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 800606D8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800606DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800606E0  EC 01 00 2A */	fadds f0, f1, f0
/* 800606E4  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 800606E8  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 800606EC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800606F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 800606F4  EC 01 00 2A */	fadds f0, f1, f0
/* 800606F8  D0 1B 00 2C */	stfs f0, 0x2c(r27)
/* 800606FC  C0 22 89 BC */	lfs f1, lit_6361(r2)
/* 80060700  48 20 72 55 */	bl cM_rndF__Ff
/* 80060704  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80060708  EC 20 08 2A */	fadds f1, f0, f1
/* 8006070C  38 7B 00 30 */	addi r3, r27, 0x30
/* 80060710  C0 42 89 4C */	lfs f2, lit_5727(r2)
/* 80060714  C0 62 88 EC */	lfs f3, lit_5122(r2)
/* 80060718  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8006071C  48 20 F2 61 */	bl cLib_addCalc__FPfffff
/* 80060720  C0 22 89 BC */	lfs f1, lit_6361(r2)
/* 80060724  48 20 72 31 */	bl cM_rndF__Ff
/* 80060728  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 8006072C  EC 20 08 2A */	fadds f1, f0, f1
/* 80060730  38 7B 00 34 */	addi r3, r27, 0x34
/* 80060734  C0 42 89 4C */	lfs f2, lit_5727(r2)
/* 80060738  C0 62 88 EC */	lfs f3, lit_5122(r2)
/* 8006073C  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 80060740  48 20 F2 3D */	bl cLib_addCalc__FPfffff
/* 80060744  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 80060748  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8006074C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80060750  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80060754  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 80060758  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8006075C  38 61 00 7C */	addi r3, r1, 0x7c
/* 80060760  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80060764  48 2E 6C 39 */	bl PSVECSquareDistance
/* 80060768  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006076C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060770  40 81 00 58 */	ble lbl_800607C8
/* 80060774  FC 00 08 34 */	frsqrte f0, f1
/* 80060778  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006077C  FC 44 00 32 */	fmul f2, f4, f0
/* 80060780  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80060784  FC 00 00 32 */	fmul f0, f0, f0
/* 80060788  FC 01 00 32 */	fmul f0, f1, f0
/* 8006078C  FC 03 00 28 */	fsub f0, f3, f0
/* 80060790  FC 02 00 32 */	fmul f0, f2, f0
/* 80060794  FC 44 00 32 */	fmul f2, f4, f0
/* 80060798  FC 00 00 32 */	fmul f0, f0, f0
/* 8006079C  FC 01 00 32 */	fmul f0, f1, f0
/* 800607A0  FC 03 00 28 */	fsub f0, f3, f0
/* 800607A4  FC 02 00 32 */	fmul f0, f2, f0
/* 800607A8  FC 44 00 32 */	fmul f2, f4, f0
/* 800607AC  FC 00 00 32 */	fmul f0, f0, f0
/* 800607B0  FC 01 00 32 */	fmul f0, f1, f0
/* 800607B4  FC 03 00 28 */	fsub f0, f3, f0
/* 800607B8  FC 02 00 32 */	fmul f0, f2, f0
/* 800607BC  FC 21 00 32 */	fmul f1, f1, f0
/* 800607C0  FC 20 08 18 */	frsp f1, f1
/* 800607C4  48 00 00 88 */	b lbl_8006084C
lbl_800607C8:
/* 800607C8  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 800607CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800607D0  40 80 00 10 */	bge lbl_800607E0
/* 800607D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800607D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800607DC  48 00 00 70 */	b lbl_8006084C
lbl_800607E0:
/* 800607E0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800607E4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 800607E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800607EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800607F0  7C 03 00 00 */	cmpw r3, r0
/* 800607F4  41 82 00 14 */	beq lbl_80060808
/* 800607F8  40 80 00 40 */	bge lbl_80060838
/* 800607FC  2C 03 00 00 */	cmpwi r3, 0
/* 80060800  41 82 00 20 */	beq lbl_80060820
/* 80060804  48 00 00 34 */	b lbl_80060838
lbl_80060808:
/* 80060808  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006080C  41 82 00 0C */	beq lbl_80060818
/* 80060810  38 00 00 01 */	li r0, 1
/* 80060814  48 00 00 28 */	b lbl_8006083C
lbl_80060818:
/* 80060818  38 00 00 02 */	li r0, 2
/* 8006081C  48 00 00 20 */	b lbl_8006083C
lbl_80060820:
/* 80060820  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060824  41 82 00 0C */	beq lbl_80060830
/* 80060828  38 00 00 05 */	li r0, 5
/* 8006082C  48 00 00 10 */	b lbl_8006083C
lbl_80060830:
/* 80060830  38 00 00 03 */	li r0, 3
/* 80060834  48 00 00 08 */	b lbl_8006083C
lbl_80060838:
/* 80060838  38 00 00 04 */	li r0, 4
lbl_8006083C:
/* 8006083C  2C 00 00 01 */	cmpwi r0, 1
/* 80060840  40 82 00 0C */	bne lbl_8006084C
/* 80060844  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060848  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8006084C:
/* 8006084C  A8 7B 00 48 */	lha r3, 0x48(r27)
/* 80060850  2C 03 00 00 */	cmpwi r3, 0
/* 80060854  40 82 01 C0 */	bne lbl_80060A14
/* 80060858  C0 02 88 BC */	lfs f0, lit_5110(r2)
/* 8006085C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060860  40 81 01 BC */	ble lbl_80060A1C
/* 80060864  38 00 00 0A */	li r0, 0xa
/* 80060868  B0 1B 00 48 */	sth r0, 0x48(r27)
/* 8006086C  D3 5A 00 00 */	stfs f26, 0(r26)
/* 80060870  D3 7B 00 38 */	stfs f27, 0x38(r27)
/* 80060874  38 61 00 7C */	addi r3, r1, 0x7c
/* 80060878  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8006087C  48 2E 6B 21 */	bl PSVECSquareDistance
/* 80060880  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80060884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060888  40 81 00 58 */	ble lbl_800608E0
/* 8006088C  FC 00 08 34 */	frsqrte f0, f1
/* 80060890  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80060894  FC 44 00 32 */	fmul f2, f4, f0
/* 80060898  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006089C  FC 00 00 32 */	fmul f0, f0, f0
/* 800608A0  FC 01 00 32 */	fmul f0, f1, f0
/* 800608A4  FC 03 00 28 */	fsub f0, f3, f0
/* 800608A8  FC 02 00 32 */	fmul f0, f2, f0
/* 800608AC  FC 44 00 32 */	fmul f2, f4, f0
/* 800608B0  FC 00 00 32 */	fmul f0, f0, f0
/* 800608B4  FC 01 00 32 */	fmul f0, f1, f0
/* 800608B8  FC 03 00 28 */	fsub f0, f3, f0
/* 800608BC  FC 02 00 32 */	fmul f0, f2, f0
/* 800608C0  FC 44 00 32 */	fmul f2, f4, f0
/* 800608C4  FC 00 00 32 */	fmul f0, f0, f0
/* 800608C8  FC 01 00 32 */	fmul f0, f1, f0
/* 800608CC  FC 03 00 28 */	fsub f0, f3, f0
/* 800608D0  FC 02 00 32 */	fmul f0, f2, f0
/* 800608D4  FC 21 00 32 */	fmul f1, f1, f0
/* 800608D8  FC 20 08 18 */	frsp f1, f1
/* 800608DC  48 00 00 88 */	b lbl_80060964
lbl_800608E0:
/* 800608E0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 800608E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800608E8  40 80 00 10 */	bge lbl_800608F8
/* 800608EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800608F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800608F4  48 00 00 70 */	b lbl_80060964
lbl_800608F8:
/* 800608F8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800608FC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80060900  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80060904  3C 00 7F 80 */	lis r0, 0x7f80
/* 80060908  7C 03 00 00 */	cmpw r3, r0
/* 8006090C  41 82 00 14 */	beq lbl_80060920
/* 80060910  40 80 00 40 */	bge lbl_80060950
/* 80060914  2C 03 00 00 */	cmpwi r3, 0
/* 80060918  41 82 00 20 */	beq lbl_80060938
/* 8006091C  48 00 00 34 */	b lbl_80060950
lbl_80060920:
/* 80060920  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060924  41 82 00 0C */	beq lbl_80060930
/* 80060928  38 00 00 01 */	li r0, 1
/* 8006092C  48 00 00 28 */	b lbl_80060954
lbl_80060930:
/* 80060930  38 00 00 02 */	li r0, 2
/* 80060934  48 00 00 20 */	b lbl_80060954
lbl_80060938:
/* 80060938  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006093C  41 82 00 0C */	beq lbl_80060948
/* 80060940  38 00 00 05 */	li r0, 5
/* 80060944  48 00 00 10 */	b lbl_80060954
lbl_80060948:
/* 80060948  38 00 00 03 */	li r0, 3
/* 8006094C  48 00 00 08 */	b lbl_80060954
lbl_80060950:
/* 80060950  38 00 00 04 */	li r0, 4
lbl_80060954:
/* 80060954  2C 00 00 01 */	cmpwi r0, 1
/* 80060958  40 82 00 0C */	bne lbl_80060964
/* 8006095C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060960  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80060964:
/* 80060964  C0 02 87 FC */	lfs f0, lit_4112(r2)
/* 80060968  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006096C  40 81 00 44 */	ble lbl_800609B0
/* 80060970  C0 22 88 BC */	lfs f1, lit_5110(r2)
/* 80060974  48 20 70 19 */	bl cM_rndFX__Ff
/* 80060978  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8006097C  EC 00 08 2A */	fadds f0, f0, f1
/* 80060980  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 80060984  C0 22 88 BC */	lfs f1, lit_5110(r2)
/* 80060988  48 20 70 05 */	bl cM_rndFX__Ff
/* 8006098C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80060990  EC 00 08 2A */	fadds f0, f0, f1
/* 80060994  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 80060998  C0 22 88 BC */	lfs f1, lit_5110(r2)
/* 8006099C  48 20 6F F1 */	bl cM_rndFX__Ff
/* 800609A0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 800609A4  EC 00 08 2A */	fadds f0, f0, f1
/* 800609A8  D0 1B 00 20 */	stfs f0, 0x20(r27)
/* 800609AC  48 00 00 70 */	b lbl_80060A1C
lbl_800609B0:
/* 800609B0  C0 22 89 C0 */	lfs f1, lit_6362(r2)
/* 800609B4  48 20 6F D9 */	bl cM_rndFX__Ff
/* 800609B8  FF 40 08 90 */	fmr f26, f1
/* 800609BC  38 61 00 7C */	addi r3, r1, 0x7c
/* 800609C0  38 81 00 B8 */	addi r4, r1, 0xb8
/* 800609C4  38 A1 00 70 */	addi r5, r1, 0x70
/* 800609C8  4B FF AD 41 */	bl get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 800609CC  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 800609D0  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 800609D4  C0 02 88 BC */	lfs f0, lit_5110(r2)
/* 800609D8  EC 60 D0 2A */	fadds f3, f0, f26
/* 800609DC  EC 01 00 F2 */	fmuls f0, f1, f3
/* 800609E0  EC 02 00 2A */	fadds f0, f2, f0
/* 800609E4  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 800609E8  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 800609EC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800609F0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 800609F4  EC 01 00 2A */	fadds f0, f1, f0
/* 800609F8  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 800609FC  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 80060A00  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80060A04  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80060A08  EC 01 00 2A */	fadds f0, f1, f0
/* 80060A0C  D0 1B 00 20 */	stfs f0, 0x20(r27)
/* 80060A10  48 00 00 0C */	b lbl_80060A1C
lbl_80060A14:
/* 80060A14  38 03 FF FF */	addi r0, r3, -1
/* 80060A18  B0 1B 00 48 */	sth r0, 0x48(r27)
lbl_80060A1C:
/* 80060A1C  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80060A20  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80060A24  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 80060A28  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80060A2C  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80060A30  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80060A34  38 61 00 7C */	addi r3, r1, 0x7c
/* 80060A38  38 81 00 AC */	addi r4, r1, 0xac
/* 80060A3C  48 2E 69 61 */	bl PSVECSquareDistance
/* 80060A40  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80060A44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060A48  40 81 00 58 */	ble lbl_80060AA0
/* 80060A4C  FC 00 08 34 */	frsqrte f0, f1
/* 80060A50  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80060A54  FC 44 00 32 */	fmul f2, f4, f0
/* 80060A58  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80060A5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80060A60  FC 01 00 32 */	fmul f0, f1, f0
/* 80060A64  FC 03 00 28 */	fsub f0, f3, f0
/* 80060A68  FC 02 00 32 */	fmul f0, f2, f0
/* 80060A6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80060A70  FC 00 00 32 */	fmul f0, f0, f0
/* 80060A74  FC 01 00 32 */	fmul f0, f1, f0
/* 80060A78  FC 03 00 28 */	fsub f0, f3, f0
/* 80060A7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80060A80  FC 44 00 32 */	fmul f2, f4, f0
/* 80060A84  FC 00 00 32 */	fmul f0, f0, f0
/* 80060A88  FC 01 00 32 */	fmul f0, f1, f0
/* 80060A8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80060A90  FC 02 00 32 */	fmul f0, f2, f0
/* 80060A94  FC 21 00 32 */	fmul f1, f1, f0
/* 80060A98  FC 20 08 18 */	frsp f1, f1
/* 80060A9C  48 00 00 88 */	b lbl_80060B24
lbl_80060AA0:
/* 80060AA0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80060AA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060AA8  40 80 00 10 */	bge lbl_80060AB8
/* 80060AAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060AB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80060AB4  48 00 00 70 */	b lbl_80060B24
lbl_80060AB8:
/* 80060AB8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80060ABC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80060AC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80060AC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80060AC8  7C 03 00 00 */	cmpw r3, r0
/* 80060ACC  41 82 00 14 */	beq lbl_80060AE0
/* 80060AD0  40 80 00 40 */	bge lbl_80060B10
/* 80060AD4  2C 03 00 00 */	cmpwi r3, 0
/* 80060AD8  41 82 00 20 */	beq lbl_80060AF8
/* 80060ADC  48 00 00 34 */	b lbl_80060B10
lbl_80060AE0:
/* 80060AE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060AE4  41 82 00 0C */	beq lbl_80060AF0
/* 80060AE8  38 00 00 01 */	li r0, 1
/* 80060AEC  48 00 00 28 */	b lbl_80060B14
lbl_80060AF0:
/* 80060AF0  38 00 00 02 */	li r0, 2
/* 80060AF4  48 00 00 20 */	b lbl_80060B14
lbl_80060AF8:
/* 80060AF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060AFC  41 82 00 0C */	beq lbl_80060B08
/* 80060B00  38 00 00 05 */	li r0, 5
/* 80060B04  48 00 00 10 */	b lbl_80060B14
lbl_80060B08:
/* 80060B08  38 00 00 03 */	li r0, 3
/* 80060B0C  48 00 00 08 */	b lbl_80060B14
lbl_80060B10:
/* 80060B10  38 00 00 04 */	li r0, 4
lbl_80060B14:
/* 80060B14  2C 00 00 01 */	cmpwi r0, 1
/* 80060B18  40 82 00 0C */	bne lbl_80060B24
/* 80060B1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060B20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80060B24:
/* 80060B24  C0 02 88 D8 */	lfs f0, lit_5117(r2)
/* 80060B28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060B2C  40 81 01 A0 */	ble lbl_80060CCC
/* 80060B30  38 61 00 7C */	addi r3, r1, 0x7c
/* 80060B34  38 81 00 AC */	addi r4, r1, 0xac
/* 80060B38  48 2E 68 65 */	bl PSVECSquareDistance
/* 80060B3C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80060B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060B44  40 81 00 58 */	ble lbl_80060B9C
/* 80060B48  FC 00 08 34 */	frsqrte f0, f1
/* 80060B4C  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80060B50  FC 44 00 32 */	fmul f2, f4, f0
/* 80060B54  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80060B58  FC 00 00 32 */	fmul f0, f0, f0
/* 80060B5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80060B60  FC 03 00 28 */	fsub f0, f3, f0
/* 80060B64  FC 02 00 32 */	fmul f0, f2, f0
/* 80060B68  FC 44 00 32 */	fmul f2, f4, f0
/* 80060B6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80060B70  FC 01 00 32 */	fmul f0, f1, f0
/* 80060B74  FC 03 00 28 */	fsub f0, f3, f0
/* 80060B78  FC 02 00 32 */	fmul f0, f2, f0
/* 80060B7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80060B80  FC 00 00 32 */	fmul f0, f0, f0
/* 80060B84  FC 01 00 32 */	fmul f0, f1, f0
/* 80060B88  FC 03 00 28 */	fsub f0, f3, f0
/* 80060B8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80060B90  FC 21 00 32 */	fmul f1, f1, f0
/* 80060B94  FC 20 08 18 */	frsp f1, f1
/* 80060B98  48 00 00 88 */	b lbl_80060C20
lbl_80060B9C:
/* 80060B9C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80060BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060BA4  40 80 00 10 */	bge lbl_80060BB4
/* 80060BA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060BAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80060BB0  48 00 00 70 */	b lbl_80060C20
lbl_80060BB4:
/* 80060BB4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80060BB8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80060BBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80060BC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80060BC4  7C 03 00 00 */	cmpw r3, r0
/* 80060BC8  41 82 00 14 */	beq lbl_80060BDC
/* 80060BCC  40 80 00 40 */	bge lbl_80060C0C
/* 80060BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80060BD4  41 82 00 20 */	beq lbl_80060BF4
/* 80060BD8  48 00 00 34 */	b lbl_80060C0C
lbl_80060BDC:
/* 80060BDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060BE0  41 82 00 0C */	beq lbl_80060BEC
/* 80060BE4  38 00 00 01 */	li r0, 1
/* 80060BE8  48 00 00 28 */	b lbl_80060C10
lbl_80060BEC:
/* 80060BEC  38 00 00 02 */	li r0, 2
/* 80060BF0  48 00 00 20 */	b lbl_80060C10
lbl_80060BF4:
/* 80060BF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060BF8  41 82 00 0C */	beq lbl_80060C04
/* 80060BFC  38 00 00 05 */	li r0, 5
/* 80060C00  48 00 00 10 */	b lbl_80060C10
lbl_80060C04:
/* 80060C04  38 00 00 03 */	li r0, 3
/* 80060C08  48 00 00 08 */	b lbl_80060C10
lbl_80060C0C:
/* 80060C0C  38 00 00 04 */	li r0, 4
lbl_80060C10:
/* 80060C10  2C 00 00 01 */	cmpwi r0, 1
/* 80060C14  40 82 00 0C */	bne lbl_80060C20
/* 80060C18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060C1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80060C20:
/* 80060C20  C0 02 89 C4 */	lfs f0, lit_6363(r2)
/* 80060C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060C28  40 81 00 44 */	ble lbl_80060C6C
/* 80060C2C  C0 22 88 D8 */	lfs f1, lit_5117(r2)
/* 80060C30  48 20 6D 5D */	bl cM_rndFX__Ff
/* 80060C34  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80060C38  EC 00 08 2A */	fadds f0, f0, f1
/* 80060C3C  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 80060C40  C0 22 88 D8 */	lfs f1, lit_5117(r2)
/* 80060C44  48 20 6D 49 */	bl cM_rndFX__Ff
/* 80060C48  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80060C4C  EC 00 08 2A */	fadds f0, f0, f1
/* 80060C50  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 80060C54  C0 22 88 D8 */	lfs f1, lit_5117(r2)
/* 80060C58  48 20 6D 35 */	bl cM_rndFX__Ff
/* 80060C5C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80060C60  EC 00 08 2A */	fadds f0, f0, f1
/* 80060C64  D0 1B 00 2C */	stfs f0, 0x2c(r27)
/* 80060C68  48 00 00 64 */	b lbl_80060CCC
lbl_80060C6C:
/* 80060C6C  C0 22 89 C8 */	lfs f1, lit_6364(r2)
/* 80060C70  48 20 6D 1D */	bl cM_rndFX__Ff
/* 80060C74  FF 40 08 90 */	fmr f26, f1
/* 80060C78  38 61 00 7C */	addi r3, r1, 0x7c
/* 80060C7C  38 81 00 AC */	addi r4, r1, 0xac
/* 80060C80  38 A1 00 70 */	addi r5, r1, 0x70
/* 80060C84  4B FF AA 85 */	bl get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 80060C88  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 80060C8C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80060C90  C0 02 88 D8 */	lfs f0, lit_5117(r2)
/* 80060C94  EC 60 D0 2A */	fadds f3, f0, f26
/* 80060C98  EC 01 00 F2 */	fmuls f0, f1, f3
/* 80060C9C  EC 02 00 2A */	fadds f0, f2, f0
/* 80060CA0  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 80060CA4  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80060CA8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80060CAC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80060CB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80060CB4  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 80060CB8  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80060CBC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80060CC0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80060CC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80060CC8  D0 1B 00 2C */	stfs f0, 0x2c(r27)
lbl_80060CCC:
/* 80060CCC  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 80060CD0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80060CD4  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80060CD8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80060CDC  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 80060CE0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80060CE4  38 61 00 7C */	addi r3, r1, 0x7c
/* 80060CE8  38 97 00 D8 */	addi r4, r23, 0xd8
/* 80060CEC  48 2E 66 B1 */	bl PSVECSquareDistance
/* 80060CF0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80060CF4  40 81 00 58 */	ble lbl_80060D4C
/* 80060CF8  FC 00 08 34 */	frsqrte f0, f1
/* 80060CFC  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80060D00  FC 44 00 32 */	fmul f2, f4, f0
/* 80060D04  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80060D08  FC 00 00 32 */	fmul f0, f0, f0
/* 80060D0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80060D10  FC 03 00 28 */	fsub f0, f3, f0
/* 80060D14  FC 02 00 32 */	fmul f0, f2, f0
/* 80060D18  FC 44 00 32 */	fmul f2, f4, f0
/* 80060D1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80060D20  FC 01 00 32 */	fmul f0, f1, f0
/* 80060D24  FC 03 00 28 */	fsub f0, f3, f0
/* 80060D28  FC 02 00 32 */	fmul f0, f2, f0
/* 80060D2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80060D30  FC 00 00 32 */	fmul f0, f0, f0
/* 80060D34  FC 01 00 32 */	fmul f0, f1, f0
/* 80060D38  FC 03 00 28 */	fsub f0, f3, f0
/* 80060D3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80060D40  FC 21 00 32 */	fmul f1, f1, f0
/* 80060D44  FC 20 08 18 */	frsp f1, f1
/* 80060D48  48 00 00 88 */	b lbl_80060DD0
lbl_80060D4C:
/* 80060D4C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80060D50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060D54  40 80 00 10 */	bge lbl_80060D64
/* 80060D58  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060D5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80060D60  48 00 00 70 */	b lbl_80060DD0
lbl_80060D64:
/* 80060D64  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80060D68  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80060D6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80060D70  3C 00 7F 80 */	lis r0, 0x7f80
/* 80060D74  7C 03 00 00 */	cmpw r3, r0
/* 80060D78  41 82 00 14 */	beq lbl_80060D8C
/* 80060D7C  40 80 00 40 */	bge lbl_80060DBC
/* 80060D80  2C 03 00 00 */	cmpwi r3, 0
/* 80060D84  41 82 00 20 */	beq lbl_80060DA4
/* 80060D88  48 00 00 34 */	b lbl_80060DBC
lbl_80060D8C:
/* 80060D8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060D90  41 82 00 0C */	beq lbl_80060D9C
/* 80060D94  38 00 00 01 */	li r0, 1
/* 80060D98  48 00 00 28 */	b lbl_80060DC0
lbl_80060D9C:
/* 80060D9C  38 00 00 02 */	li r0, 2
/* 80060DA0  48 00 00 20 */	b lbl_80060DC0
lbl_80060DA4:
/* 80060DA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060DA8  41 82 00 0C */	beq lbl_80060DB4
/* 80060DAC  38 00 00 05 */	li r0, 5
/* 80060DB0  48 00 00 10 */	b lbl_80060DC0
lbl_80060DB4:
/* 80060DB4  38 00 00 03 */	li r0, 3
/* 80060DB8  48 00 00 08 */	b lbl_80060DC0
lbl_80060DBC:
/* 80060DBC  38 00 00 04 */	li r0, 4
lbl_80060DC0:
/* 80060DC0  2C 00 00 01 */	cmpwi r0, 1
/* 80060DC4  40 82 00 0C */	bne lbl_80060DD0
/* 80060DC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060DCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80060DD0:
/* 80060DD0  EF 41 E0 24 */	fdivs f26, f1, f28
/* 80060DD4  FC 1A C8 40 */	fcmpo cr0, f26, f25
/* 80060DD8  40 81 00 08 */	ble lbl_80060DE0
/* 80060DDC  C3 42 88 14 */	lfs f26, lit_4354(r2)
lbl_80060DE0:
/* 80060DE0  EF 5A 05 B2 */	fmuls f26, f26, f22
/* 80060DE4  38 61 00 7C */	addi r3, r1, 0x7c
/* 80060DE8  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80060DEC  48 2E 65 B1 */	bl PSVECSquareDistance
/* 80060DF0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80060DF4  40 81 00 58 */	ble lbl_80060E4C
/* 80060DF8  FC 00 08 34 */	frsqrte f0, f1
/* 80060DFC  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80060E00  FC 44 00 32 */	fmul f2, f4, f0
/* 80060E04  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80060E08  FC 00 00 32 */	fmul f0, f0, f0
/* 80060E0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80060E10  FC 03 00 28 */	fsub f0, f3, f0
/* 80060E14  FC 02 00 32 */	fmul f0, f2, f0
/* 80060E18  FC 44 00 32 */	fmul f2, f4, f0
/* 80060E1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80060E20  FC 01 00 32 */	fmul f0, f1, f0
/* 80060E24  FC 03 00 28 */	fsub f0, f3, f0
/* 80060E28  FC 02 00 32 */	fmul f0, f2, f0
/* 80060E2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80060E30  FC 00 00 32 */	fmul f0, f0, f0
/* 80060E34  FC 01 00 32 */	fmul f0, f1, f0
/* 80060E38  FC 03 00 28 */	fsub f0, f3, f0
/* 80060E3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80060E40  FC 21 00 32 */	fmul f1, f1, f0
/* 80060E44  FC 20 08 18 */	frsp f1, f1
/* 80060E48  48 00 00 88 */	b lbl_80060ED0
lbl_80060E4C:
/* 80060E4C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80060E50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060E54  40 80 00 10 */	bge lbl_80060E64
/* 80060E58  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060E5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80060E60  48 00 00 70 */	b lbl_80060ED0
lbl_80060E64:
/* 80060E64  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80060E68  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80060E6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80060E70  3C 00 7F 80 */	lis r0, 0x7f80
/* 80060E74  7C 03 00 00 */	cmpw r3, r0
/* 80060E78  41 82 00 14 */	beq lbl_80060E8C
/* 80060E7C  40 80 00 40 */	bge lbl_80060EBC
/* 80060E80  2C 03 00 00 */	cmpwi r3, 0
/* 80060E84  41 82 00 20 */	beq lbl_80060EA4
/* 80060E88  48 00 00 34 */	b lbl_80060EBC
lbl_80060E8C:
/* 80060E8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060E90  41 82 00 0C */	beq lbl_80060E9C
/* 80060E94  38 00 00 01 */	li r0, 1
/* 80060E98  48 00 00 28 */	b lbl_80060EC0
lbl_80060E9C:
/* 80060E9C  38 00 00 02 */	li r0, 2
/* 80060EA0  48 00 00 20 */	b lbl_80060EC0
lbl_80060EA4:
/* 80060EA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80060EA8  41 82 00 0C */	beq lbl_80060EB4
/* 80060EAC  38 00 00 05 */	li r0, 5
/* 80060EB0  48 00 00 10 */	b lbl_80060EC0
lbl_80060EB4:
/* 80060EB4  38 00 00 03 */	li r0, 3
/* 80060EB8  48 00 00 08 */	b lbl_80060EC0
lbl_80060EBC:
/* 80060EBC  38 00 00 04 */	li r0, 4
lbl_80060EC0:
/* 80060EC0  2C 00 00 01 */	cmpwi r0, 1
/* 80060EC4  40 82 00 0C */	bne lbl_80060ED0
/* 80060EC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80060ECC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80060ED0:
/* 80060ED0  FC 01 A8 40 */	fcmpo cr0, f1, f21
/* 80060ED4  40 81 00 28 */	ble lbl_80060EFC
/* 80060ED8  C0 02 88 BC */	lfs f0, lit_5110(r2)
/* 80060EDC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80060EE0  C0 02 87 F8 */	lfs f0, lit_4111(r2)
/* 80060EE4  EC 21 00 24 */	fdivs f1, f1, f0
/* 80060EE8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80060EEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060EF0  40 80 00 08 */	bge lbl_80060EF8
/* 80060EF4  FC 20 00 90 */	fmr f1, f0
lbl_80060EF8:
/* 80060EF8  EF 5A 00 72 */	fmuls f26, f26, f1
lbl_80060EFC:
/* 80060EFC  80 7D 0E 8C */	lwz r3, 0xe8c(r29)
/* 80060F00  38 03 FF FF */	addi r0, r3, -1
/* 80060F04  7C 16 00 00 */	cmpw r22, r0
/* 80060F08  40 81 00 20 */	ble lbl_80060F28
/* 80060F0C  38 7B 00 40 */	addi r3, r27, 0x40
/* 80060F10  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 80060F14  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 80060F18  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 80060F1C  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 80060F20  48 20 EA 5D */	bl cLib_addCalc__FPfffff
/* 80060F24  48 00 00 08 */	b lbl_80060F2C
lbl_80060F28:
/* 80060F28  D3 5B 00 40 */	stfs f26, 0x40(r27)
lbl_80060F2C:
/* 80060F2C  80 7D 0E 8C */	lwz r3, 0xe8c(r29)
/* 80060F30  38 03 FF FF */	addi r0, r3, -1
/* 80060F34  7C 16 00 00 */	cmpw r22, r0
/* 80060F38  40 81 00 28 */	ble lbl_80060F60
/* 80060F3C  C0 3B 00 40 */	lfs f1, 0x40(r27)
/* 80060F40  C0 02 87 C4 */	lfs f0, lit_3993(r2)
/* 80060F44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060F48  40 80 00 18 */	bge lbl_80060F60
/* 80060F4C  A8 78 6D 88 */	lha r3, 0x6d88(r24)
/* 80060F50  38 03 FF FF */	addi r0, r3, -1
/* 80060F54  7C 16 00 00 */	cmpw r22, r0
/* 80060F58  40 82 00 08 */	bne lbl_80060F60
/* 80060F5C  B0 18 6D 88 */	sth r0, 0x6d88(r24)
lbl_80060F60:
/* 80060F60  7F 83 E3 78 */	mr r3, r28
/* 80060F64  38 9F 00 2E */	addi r4, r31, 0x2e
/* 80060F68  48 30 7A 2D */	bl strcmp
/* 80060F6C  2C 03 00 00 */	cmpwi r3, 0
/* 80060F70  40 82 00 20 */	bne lbl_80060F90
/* 80060F74  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80060F78  C0 02 89 D8 */	lfs f0, lit_6366(r2)
/* 80060F7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060F80  40 81 00 44 */	ble lbl_80060FC4
/* 80060F84  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80060F88  D0 1B 00 40 */	stfs f0, 0x40(r27)
/* 80060F8C  48 00 00 38 */	b lbl_80060FC4
lbl_80060F90:
/* 80060F90  7F 83 E3 78 */	mr r3, r28
/* 80060F94  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 80060F98  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l
/* 80060F9C  38 84 00 4C */	addi r4, r4, 0x4c
/* 80060FA0  48 30 79 F5 */	bl strcmp
/* 80060FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80060FA8  40 82 00 1C */	bne lbl_80060FC4
/* 80060FAC  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80060FB0  C0 02 89 DC */	lfs f0, lit_6367(r2)
/* 80060FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80060FB8  40 81 00 0C */	ble lbl_80060FC4
/* 80060FBC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80060FC0  D0 1B 00 40 */	stfs f0, 0x40(r27)
lbl_80060FC4:
/* 80060FC4  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80060FC8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80060FCC  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 80060FD0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80060FD4  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80060FD8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80060FDC  38 61 00 7C */	addi r3, r1, 0x7c
/* 80060FE0  38 97 00 D8 */	addi r4, r23, 0xd8
/* 80060FE4  48 2E 63 B9 */	bl PSVECSquareDistance
/* 80060FE8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80060FEC  40 81 00 58 */	ble lbl_80061044
/* 80060FF0  FC 00 08 34 */	frsqrte f0, f1
/* 80060FF4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80060FF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80060FFC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80061000  FC 00 00 32 */	fmul f0, f0, f0
/* 80061004  FC 01 00 32 */	fmul f0, f1, f0
/* 80061008  FC 03 00 28 */	fsub f0, f3, f0
/* 8006100C  FC 02 00 32 */	fmul f0, f2, f0
/* 80061010  FC 44 00 32 */	fmul f2, f4, f0
/* 80061014  FC 00 00 32 */	fmul f0, f0, f0
/* 80061018  FC 01 00 32 */	fmul f0, f1, f0
/* 8006101C  FC 03 00 28 */	fsub f0, f3, f0
/* 80061020  FC 02 00 32 */	fmul f0, f2, f0
/* 80061024  FC 44 00 32 */	fmul f2, f4, f0
/* 80061028  FC 00 00 32 */	fmul f0, f0, f0
/* 8006102C  FC 01 00 32 */	fmul f0, f1, f0
/* 80061030  FC 03 00 28 */	fsub f0, f3, f0
/* 80061034  FC 02 00 32 */	fmul f0, f2, f0
/* 80061038  FC 21 00 32 */	fmul f1, f1, f0
/* 8006103C  FC 20 08 18 */	frsp f1, f1
/* 80061040  48 00 00 88 */	b lbl_800610C8
lbl_80061044:
/* 80061044  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80061048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006104C  40 80 00 10 */	bge lbl_8006105C
/* 80061050  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80061054  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80061058  48 00 00 70 */	b lbl_800610C8
lbl_8006105C:
/* 8006105C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80061060  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80061064  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80061068  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006106C  7C 03 00 00 */	cmpw r3, r0
/* 80061070  41 82 00 14 */	beq lbl_80061084
/* 80061074  40 80 00 40 */	bge lbl_800610B4
/* 80061078  2C 03 00 00 */	cmpwi r3, 0
/* 8006107C  41 82 00 20 */	beq lbl_8006109C
/* 80061080  48 00 00 34 */	b lbl_800610B4
lbl_80061084:
/* 80061084  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80061088  41 82 00 0C */	beq lbl_80061094
/* 8006108C  38 00 00 01 */	li r0, 1
/* 80061090  48 00 00 28 */	b lbl_800610B8
lbl_80061094:
/* 80061094  38 00 00 02 */	li r0, 2
/* 80061098  48 00 00 20 */	b lbl_800610B8
lbl_8006109C:
/* 8006109C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800610A0  41 82 00 0C */	beq lbl_800610AC
/* 800610A4  38 00 00 05 */	li r0, 5
/* 800610A8  48 00 00 10 */	b lbl_800610B8
lbl_800610AC:
/* 800610AC  38 00 00 03 */	li r0, 3
/* 800610B0  48 00 00 08 */	b lbl_800610B8
lbl_800610B4:
/* 800610B4  38 00 00 04 */	li r0, 4
lbl_800610B8:
/* 800610B8  2C 00 00 01 */	cmpwi r0, 1
/* 800610BC  40 82 00 0C */	bne lbl_800610C8
/* 800610C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800610C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800610C8:
/* 800610C8  EF 41 E0 24 */	fdivs f26, f1, f28
/* 800610CC  FC 1A C8 40 */	fcmpo cr0, f26, f25
/* 800610D0  40 81 00 08 */	ble lbl_800610D8
/* 800610D4  C3 42 88 14 */	lfs f26, lit_4354(r2)
lbl_800610D8:
/* 800610D8  EF 5A 05 32 */	fmuls f26, f26, f20
/* 800610DC  38 61 00 7C */	addi r3, r1, 0x7c
/* 800610E0  38 81 00 AC */	addi r4, r1, 0xac
/* 800610E4  48 2E 62 B9 */	bl PSVECSquareDistance
/* 800610E8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 800610EC  40 81 00 58 */	ble lbl_80061144
/* 800610F0  FC 00 08 34 */	frsqrte f0, f1
/* 800610F4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 800610F8  FC 44 00 32 */	fmul f2, f4, f0
/* 800610FC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80061100  FC 00 00 32 */	fmul f0, f0, f0
/* 80061104  FC 01 00 32 */	fmul f0, f1, f0
/* 80061108  FC 03 00 28 */	fsub f0, f3, f0
/* 8006110C  FC 02 00 32 */	fmul f0, f2, f0
/* 80061110  FC 44 00 32 */	fmul f2, f4, f0
/* 80061114  FC 00 00 32 */	fmul f0, f0, f0
/* 80061118  FC 01 00 32 */	fmul f0, f1, f0
/* 8006111C  FC 03 00 28 */	fsub f0, f3, f0
/* 80061120  FC 02 00 32 */	fmul f0, f2, f0
/* 80061124  FC 44 00 32 */	fmul f2, f4, f0
/* 80061128  FC 00 00 32 */	fmul f0, f0, f0
/* 8006112C  FC 01 00 32 */	fmul f0, f1, f0
/* 80061130  FC 03 00 28 */	fsub f0, f3, f0
/* 80061134  FC 02 00 32 */	fmul f0, f2, f0
/* 80061138  FC 21 00 32 */	fmul f1, f1, f0
/* 8006113C  FC 20 08 18 */	frsp f1, f1
/* 80061140  48 00 00 88 */	b lbl_800611C8
lbl_80061144:
/* 80061144  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80061148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006114C  40 80 00 10 */	bge lbl_8006115C
/* 80061150  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80061154  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80061158  48 00 00 70 */	b lbl_800611C8
lbl_8006115C:
/* 8006115C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80061160  80 81 00 08 */	lwz r4, 8(r1)
/* 80061164  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80061168  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006116C  7C 03 00 00 */	cmpw r3, r0
/* 80061170  41 82 00 14 */	beq lbl_80061184
/* 80061174  40 80 00 40 */	bge lbl_800611B4
/* 80061178  2C 03 00 00 */	cmpwi r3, 0
/* 8006117C  41 82 00 20 */	beq lbl_8006119C
/* 80061180  48 00 00 34 */	b lbl_800611B4
lbl_80061184:
/* 80061184  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80061188  41 82 00 0C */	beq lbl_80061194
/* 8006118C  38 00 00 01 */	li r0, 1
/* 80061190  48 00 00 28 */	b lbl_800611B8
lbl_80061194:
/* 80061194  38 00 00 02 */	li r0, 2
/* 80061198  48 00 00 20 */	b lbl_800611B8
lbl_8006119C:
/* 8006119C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800611A0  41 82 00 0C */	beq lbl_800611AC
/* 800611A4  38 00 00 05 */	li r0, 5
/* 800611A8  48 00 00 10 */	b lbl_800611B8
lbl_800611AC:
/* 800611AC  38 00 00 03 */	li r0, 3
/* 800611B0  48 00 00 08 */	b lbl_800611B8
lbl_800611B4:
/* 800611B4  38 00 00 04 */	li r0, 4
lbl_800611B8:
/* 800611B8  2C 00 00 01 */	cmpwi r0, 1
/* 800611BC  40 82 00 0C */	bne lbl_800611C8
/* 800611C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800611C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800611C8:
/* 800611C8  FC 01 98 40 */	fcmpo cr0, f1, f19
/* 800611CC  40 81 00 28 */	ble lbl_800611F4
/* 800611D0  C0 02 88 D8 */	lfs f0, lit_5117(r2)
/* 800611D4  EC 20 08 28 */	fsubs f1, f0, f1
/* 800611D8  C0 02 87 F8 */	lfs f0, lit_4111(r2)
/* 800611DC  EC 21 00 24 */	fdivs f1, f1, f0
/* 800611E0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 800611E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800611E8  40 80 00 08 */	bge lbl_800611F0
/* 800611EC  FC 20 00 90 */	fmr f1, f0
lbl_800611F0:
/* 800611F0  EF 5A 00 72 */	fmuls f26, f26, f1
lbl_800611F4:
/* 800611F4  80 7D 0E 8C */	lwz r3, 0xe8c(r29)
/* 800611F8  38 03 FF FF */	addi r0, r3, -1
/* 800611FC  7C 16 00 00 */	cmpw r22, r0
/* 80061200  40 81 00 20 */	ble lbl_80061220
/* 80061204  38 7B 00 44 */	addi r3, r27, 0x44
/* 80061208  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006120C  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 80061210  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 80061214  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 80061218  48 20 E7 65 */	bl cLib_addCalc__FPfffff
/* 8006121C  48 00 00 08 */	b lbl_80061224
lbl_80061220:
/* 80061220  D3 5B 00 44 */	stfs f26, 0x44(r27)
lbl_80061224:
/* 80061224  7F 83 E3 78 */	mr r3, r28
/* 80061228  38 9F 00 2E */	addi r4, r31, 0x2e
/* 8006122C  48 30 77 69 */	bl strcmp
/* 80061230  2C 03 00 00 */	cmpwi r3, 0
/* 80061234  40 82 00 20 */	bne lbl_80061254
/* 80061238  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 8006123C  C0 02 89 D8 */	lfs f0, lit_6366(r2)
/* 80061240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061244  40 81 00 44 */	ble lbl_80061288
/* 80061248  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006124C  D0 1B 00 44 */	stfs f0, 0x44(r27)
/* 80061250  48 00 00 38 */	b lbl_80061288
lbl_80061254:
/* 80061254  7F 83 E3 78 */	mr r3, r28
/* 80061258  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 8006125C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l
/* 80061260  38 84 00 4C */	addi r4, r4, 0x4c
/* 80061264  48 30 77 31 */	bl strcmp
/* 80061268  2C 03 00 00 */	cmpwi r3, 0
/* 8006126C  40 82 00 1C */	bne lbl_80061288
/* 80061270  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80061274  C0 02 89 DC */	lfs f0, lit_6367(r2)
/* 80061278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006127C  40 81 00 0C */	ble lbl_80061288
/* 80061280  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80061284  D0 1B 00 44 */	stfs f0, 0x44(r27)
lbl_80061288:
/* 80061288  3A D6 FF FF */	addi r22, r22, -1
/* 8006128C  3A B5 FF C8 */	addi r21, r21, -56
lbl_80061290:
/* 80061290  2C 16 00 00 */	cmpwi r22, 0
/* 80061294  40 80 EF 40 */	bge lbl_800601D4
/* 80061298  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8006129C  38 80 FF FF */	li r4, -1
/* 800612A0  48 01 66 49 */	bl __dt__18dBgS_ObjGndChk_AllFv
lbl_800612A4:
/* 800612A4  E3 E1 02 48 */	psq_l f31, 584(r1), 0, 0 /* qr0 */
/* 800612A8  CB E1 02 40 */	lfd f31, 0x240(r1)
/* 800612AC  E3 C1 02 38 */	psq_l f30, 568(r1), 0, 0 /* qr0 */
/* 800612B0  CB C1 02 30 */	lfd f30, 0x230(r1)
/* 800612B4  E3 A1 02 28 */	psq_l f29, 552(r1), 0, 0 /* qr0 */
/* 800612B8  CB A1 02 20 */	lfd f29, 0x220(r1)
/* 800612BC  E3 81 02 18 */	psq_l f28, 536(r1), 0, 0 /* qr0 */
/* 800612C0  CB 81 02 10 */	lfd f28, 0x210(r1)
/* 800612C4  E3 61 02 08 */	psq_l f27, 520(r1), 0, 0 /* qr0 */
/* 800612C8  CB 61 02 00 */	lfd f27, 0x200(r1)
/* 800612CC  E3 41 01 F8 */	psq_l f26, 504(r1), 0, 0 /* qr0 */
/* 800612D0  CB 41 01 F0 */	lfd f26, 0x1f0(r1)
/* 800612D4  E3 21 01 E8 */	psq_l f25, 488(r1), 0, 0 /* qr0 */
/* 800612D8  CB 21 01 E0 */	lfd f25, 0x1e0(r1)
/* 800612DC  E3 01 01 D8 */	psq_l f24, 472(r1), 0, 0 /* qr0 */
/* 800612E0  CB 01 01 D0 */	lfd f24, 0x1d0(r1)
/* 800612E4  E2 E1 01 C8 */	psq_l f23, 456(r1), 0, 0 /* qr0 */
/* 800612E8  CA E1 01 C0 */	lfd f23, 0x1c0(r1)
/* 800612EC  E2 C1 01 B8 */	psq_l f22, 440(r1), 0, 0 /* qr0 */
/* 800612F0  CA C1 01 B0 */	lfd f22, 0x1b0(r1)
/* 800612F4  E2 A1 01 A8 */	psq_l f21, 424(r1), 0, 0 /* qr0 */
/* 800612F8  CA A1 01 A0 */	lfd f21, 0x1a0(r1)
/* 800612FC  E2 81 01 98 */	psq_l f20, 408(r1), 0, 0 /* qr0 */
/* 80061300  CA 81 01 90 */	lfd f20, 0x190(r1)
/* 80061304  E2 61 01 88 */	psq_l f19, 392(r1), 0, 0 /* qr0 */
/* 80061308  CA 61 01 80 */	lfd f19, 0x180(r1)
/* 8006130C  39 61 01 80 */	addi r11, r1, 0x180
/* 80061310  48 30 0E F9 */	bl _restgpr_21
/* 80061314  80 01 02 54 */	lwz r0, 0x254(r1)
/* 80061318  7C 08 03 A6 */	mtlr r0
/* 8006131C  38 21 02 50 */	addi r1, r1, 0x250
/* 80061320  4E 80 00 20 */	blr 
