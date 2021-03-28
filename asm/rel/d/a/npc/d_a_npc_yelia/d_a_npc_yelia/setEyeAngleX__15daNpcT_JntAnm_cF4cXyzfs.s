lbl_80B51D2C:
/* 80B51D2C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B51D30  7C 08 02 A6 */	mflr r0
/* 80B51D34  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B51D38  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B51D3C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B51D40  39 61 00 60 */	addi r11, r1, 0x60
/* 80B51D44  4B 81 04 98 */	b _savegpr_29
/* 80B51D48  7C 7F 1B 78 */	mr r31, r3
/* 80B51D4C  7C 80 23 78 */	mr r0, r4
/* 80B51D50  FF E0 08 90 */	fmr f31, f1
/* 80B51D54  7C BD 2B 78 */	mr r29, r5
/* 80B51D58  3C 60 80 B5 */	lis r3, m__19daNpc_Yelia_Param_c@ha
/* 80B51D5C  3B C3 22 B4 */	addi r30, r3, m__19daNpc_Yelia_Param_c@l
/* 80B51D60  38 A0 00 00 */	li r5, 0
/* 80B51D64  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B51D68  28 04 00 00 */	cmplwi r4, 0
/* 80B51D6C  41 82 01 40 */	beq lbl_80B51EAC
/* 80B51D70  38 61 00 18 */	addi r3, r1, 0x18
/* 80B51D74  7C 05 03 78 */	mr r5, r0
/* 80B51D78  4B 71 4D BC */	b __mi__4cXyzCFRC3Vec
/* 80B51D7C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B51D80  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B51D84  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B51D88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B51D8C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B51D90  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B51D94  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B51D98  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B51D9C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B51DA0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B51DA4  38 61 00 0C */	addi r3, r1, 0xc
/* 80B51DA8  4B 7F 53 90 */	b PSVECSquareMag
/* 80B51DAC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B51DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B51DB4  40 81 00 58 */	ble lbl_80B51E0C
/* 80B51DB8  FC 00 08 34 */	frsqrte f0, f1
/* 80B51DBC  C8 9E 01 08 */	lfd f4, 0x108(r30)
/* 80B51DC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B51DC4  C8 7E 01 10 */	lfd f3, 0x110(r30)
/* 80B51DC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B51DCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B51DD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B51DD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B51DD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B51DDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B51DE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B51DE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B51DE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B51DEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B51DF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B51DF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B51DF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B51DFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B51E00  FC 41 00 32 */	fmul f2, f1, f0
/* 80B51E04  FC 40 10 18 */	frsp f2, f2
/* 80B51E08  48 00 00 90 */	b lbl_80B51E98
lbl_80B51E0C:
/* 80B51E0C  C8 1E 01 18 */	lfd f0, 0x118(r30)
/* 80B51E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B51E14  40 80 00 10 */	bge lbl_80B51E24
/* 80B51E18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B51E1C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B51E20  48 00 00 78 */	b lbl_80B51E98
lbl_80B51E24:
/* 80B51E24  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B51E28  80 81 00 08 */	lwz r4, 8(r1)
/* 80B51E2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B51E30  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B51E34  7C 03 00 00 */	cmpw r3, r0
/* 80B51E38  41 82 00 14 */	beq lbl_80B51E4C
/* 80B51E3C  40 80 00 40 */	bge lbl_80B51E7C
/* 80B51E40  2C 03 00 00 */	cmpwi r3, 0
/* 80B51E44  41 82 00 20 */	beq lbl_80B51E64
/* 80B51E48  48 00 00 34 */	b lbl_80B51E7C
lbl_80B51E4C:
/* 80B51E4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B51E50  41 82 00 0C */	beq lbl_80B51E5C
/* 80B51E54  38 00 00 01 */	li r0, 1
/* 80B51E58  48 00 00 28 */	b lbl_80B51E80
lbl_80B51E5C:
/* 80B51E5C  38 00 00 02 */	li r0, 2
/* 80B51E60  48 00 00 20 */	b lbl_80B51E80
lbl_80B51E64:
/* 80B51E64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B51E68  41 82 00 0C */	beq lbl_80B51E74
/* 80B51E6C  38 00 00 05 */	li r0, 5
/* 80B51E70  48 00 00 10 */	b lbl_80B51E80
lbl_80B51E74:
/* 80B51E74  38 00 00 03 */	li r0, 3
/* 80B51E78  48 00 00 08 */	b lbl_80B51E80
lbl_80B51E7C:
/* 80B51E7C  38 00 00 04 */	li r0, 4
lbl_80B51E80:
/* 80B51E80  2C 00 00 01 */	cmpwi r0, 1
/* 80B51E84  40 82 00 10 */	bne lbl_80B51E94
/* 80B51E88  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B51E8C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B51E90  48 00 00 08 */	b lbl_80B51E98
lbl_80B51E94:
/* 80B51E94  FC 40 08 90 */	fmr f2, f1
lbl_80B51E98:
/* 80B51E98  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B51E9C  4B 71 57 D8 */	b cM_atan2s__Fff
/* 80B51EA0  7C 03 00 D0 */	neg r0, r3
/* 80B51EA4  7C 05 07 34 */	extsh r5, r0
/* 80B51EA8  7C A5 EA 14 */	add r5, r5, r29
lbl_80B51EAC:
/* 80B51EAC  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B51EB0  7C A5 02 14 */	add r5, r5, r0
/* 80B51EB4  C0 7E 00 D4 */	lfs f3, 0xd4(r30)
/* 80B51EB8  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B51EBC  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B51EC0  C8 5E 01 00 */	lfd f2, 0x100(r30)
/* 80B51EC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B51EC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B51ECC  3C 60 43 30 */	lis r3, 0x4330
/* 80B51ED0  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B51ED4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B51ED8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B51EDC  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B51EE0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B51EE4  7C A0 07 34 */	extsh r0, r5
/* 80B51EE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B51EEC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B51EF0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B51EF4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B51EF8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B51EFC  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B51F00  EC 01 00 2A */	fadds f0, f1, f0
/* 80B51F04  FC 00 00 1E */	fctiwz f0, f0
/* 80B51F08  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B51F0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B51F10  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B51F14  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B51F18  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B51F1C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B51F20  4B 81 03 08 */	b _restgpr_29
/* 80B51F24  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B51F28  7C 08 03 A6 */	mtlr r0
/* 80B51F2C  38 21 00 70 */	addi r1, r1, 0x70
/* 80B51F30  4E 80 00 20 */	blr 
