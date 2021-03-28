lbl_80A19D74:
/* 80A19D74  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A19D78  7C 08 02 A6 */	mflr r0
/* 80A19D7C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A19D80  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A19D84  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A19D88  39 61 00 60 */	addi r11, r1, 0x60
/* 80A19D8C  4B 94 84 50 */	b _savegpr_29
/* 80A19D90  7C 7F 1B 78 */	mr r31, r3
/* 80A19D94  7C 80 23 78 */	mr r0, r4
/* 80A19D98  FF E0 08 90 */	fmr f31, f1
/* 80A19D9C  7C BD 2B 78 */	mr r29, r5
/* 80A19DA0  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha
/* 80A19DA4  3B C3 A3 30 */	addi r30, r3, m__19daNpc_Jagar_Param_c@l
/* 80A19DA8  38 A0 00 00 */	li r5, 0
/* 80A19DAC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A19DB0  28 04 00 00 */	cmplwi r4, 0
/* 80A19DB4  41 82 01 40 */	beq lbl_80A19EF4
/* 80A19DB8  38 61 00 18 */	addi r3, r1, 0x18
/* 80A19DBC  7C 05 03 78 */	mr r5, r0
/* 80A19DC0  4B 84 CD 74 */	b __mi__4cXyzCFRC3Vec
/* 80A19DC4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A19DC8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A19DCC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A19DD0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A19DD4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A19DD8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A19DDC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A19DE0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A19DE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A19DE8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A19DEC  38 61 00 0C */	addi r3, r1, 0xc
/* 80A19DF0  4B 92 D3 48 */	b PSVECSquareMag
/* 80A19DF4  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A19DF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A19DFC  40 81 00 58 */	ble lbl_80A19E54
/* 80A19E00  FC 00 08 34 */	frsqrte f0, f1
/* 80A19E04  C8 9E 01 00 */	lfd f4, 0x100(r30)
/* 80A19E08  FC 44 00 32 */	fmul f2, f4, f0
/* 80A19E0C  C8 7E 01 08 */	lfd f3, 0x108(r30)
/* 80A19E10  FC 00 00 32 */	fmul f0, f0, f0
/* 80A19E14  FC 01 00 32 */	fmul f0, f1, f0
/* 80A19E18  FC 03 00 28 */	fsub f0, f3, f0
/* 80A19E1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A19E20  FC 44 00 32 */	fmul f2, f4, f0
/* 80A19E24  FC 00 00 32 */	fmul f0, f0, f0
/* 80A19E28  FC 01 00 32 */	fmul f0, f1, f0
/* 80A19E2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A19E30  FC 02 00 32 */	fmul f0, f2, f0
/* 80A19E34  FC 44 00 32 */	fmul f2, f4, f0
/* 80A19E38  FC 00 00 32 */	fmul f0, f0, f0
/* 80A19E3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A19E40  FC 03 00 28 */	fsub f0, f3, f0
/* 80A19E44  FC 02 00 32 */	fmul f0, f2, f0
/* 80A19E48  FC 41 00 32 */	fmul f2, f1, f0
/* 80A19E4C  FC 40 10 18 */	frsp f2, f2
/* 80A19E50  48 00 00 90 */	b lbl_80A19EE0
lbl_80A19E54:
/* 80A19E54  C8 1E 01 10 */	lfd f0, 0x110(r30)
/* 80A19E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A19E5C  40 80 00 10 */	bge lbl_80A19E6C
/* 80A19E60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A19E64  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A19E68  48 00 00 78 */	b lbl_80A19EE0
lbl_80A19E6C:
/* 80A19E6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A19E70  80 81 00 08 */	lwz r4, 8(r1)
/* 80A19E74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A19E78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A19E7C  7C 03 00 00 */	cmpw r3, r0
/* 80A19E80  41 82 00 14 */	beq lbl_80A19E94
/* 80A19E84  40 80 00 40 */	bge lbl_80A19EC4
/* 80A19E88  2C 03 00 00 */	cmpwi r3, 0
/* 80A19E8C  41 82 00 20 */	beq lbl_80A19EAC
/* 80A19E90  48 00 00 34 */	b lbl_80A19EC4
lbl_80A19E94:
/* 80A19E94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A19E98  41 82 00 0C */	beq lbl_80A19EA4
/* 80A19E9C  38 00 00 01 */	li r0, 1
/* 80A19EA0  48 00 00 28 */	b lbl_80A19EC8
lbl_80A19EA4:
/* 80A19EA4  38 00 00 02 */	li r0, 2
/* 80A19EA8  48 00 00 20 */	b lbl_80A19EC8
lbl_80A19EAC:
/* 80A19EAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A19EB0  41 82 00 0C */	beq lbl_80A19EBC
/* 80A19EB4  38 00 00 05 */	li r0, 5
/* 80A19EB8  48 00 00 10 */	b lbl_80A19EC8
lbl_80A19EBC:
/* 80A19EBC  38 00 00 03 */	li r0, 3
/* 80A19EC0  48 00 00 08 */	b lbl_80A19EC8
lbl_80A19EC4:
/* 80A19EC4  38 00 00 04 */	li r0, 4
lbl_80A19EC8:
/* 80A19EC8  2C 00 00 01 */	cmpwi r0, 1
/* 80A19ECC  40 82 00 10 */	bne lbl_80A19EDC
/* 80A19ED0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A19ED4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A19ED8  48 00 00 08 */	b lbl_80A19EE0
lbl_80A19EDC:
/* 80A19EDC  FC 40 08 90 */	fmr f2, f1
lbl_80A19EE0:
/* 80A19EE0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A19EE4  4B 84 D7 90 */	b cM_atan2s__Fff
/* 80A19EE8  7C 03 00 D0 */	neg r0, r3
/* 80A19EEC  7C 05 07 34 */	extsh r5, r0
/* 80A19EF0  7C A5 EA 14 */	add r5, r5, r29
lbl_80A19EF4:
/* 80A19EF4  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A19EF8  7C A5 02 14 */	add r5, r5, r0
/* 80A19EFC  C0 7E 00 D0 */	lfs f3, 0xd0(r30)
/* 80A19F00  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A19F04  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A19F08  C8 5E 00 F8 */	lfd f2, 0xf8(r30)
/* 80A19F0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A19F10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A19F14  3C 60 43 30 */	lis r3, 0x4330
/* 80A19F18  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A19F1C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A19F20  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A19F24  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A19F28  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A19F2C  7C A0 07 34 */	extsh r0, r5
/* 80A19F30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A19F34  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A19F38  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A19F3C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A19F40  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A19F44  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A19F48  EC 01 00 2A */	fadds f0, f1, f0
/* 80A19F4C  FC 00 00 1E */	fctiwz f0, f0
/* 80A19F50  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A19F54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A19F58  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A19F5C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A19F60  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A19F64  39 61 00 60 */	addi r11, r1, 0x60
/* 80A19F68  4B 94 82 C0 */	b _restgpr_29
/* 80A19F6C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A19F70  7C 08 03 A6 */	mtlr r0
/* 80A19F74  38 21 00 70 */	addi r1, r1, 0x70
/* 80A19F78  4E 80 00 20 */	blr 
