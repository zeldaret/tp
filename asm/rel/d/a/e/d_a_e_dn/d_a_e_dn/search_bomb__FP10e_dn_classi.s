lbl_804E5D4C:
/* 804E5D4C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804E5D50  7C 08 02 A6 */	mflr r0
/* 804E5D54  90 01 00 94 */	stw r0, 0x94(r1)
/* 804E5D58  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804E5D5C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804E5D60  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804E5D64  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804E5D68  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 804E5D6C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 804E5D70  39 61 00 60 */	addi r11, r1, 0x60
/* 804E5D74  4B E7 C4 59 */	bl _savegpr_25
/* 804E5D78  7C 79 1B 78 */	mr r25, r3
/* 804E5D7C  7C 9A 23 78 */	mr r26, r4
/* 804E5D80  3C 60 80 4F */	lis r3, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E5D84  3B A3 E8 AC */	addi r29, r3, lit_3789@l /* 0x804EE8AC@l */
/* 804E5D88  80 19 07 44 */	lwz r0, 0x744(r25)
/* 804E5D8C  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804E5D90  40 82 00 0C */	bne lbl_804E5D9C
/* 804E5D94  38 60 00 00 */	li r3, 0
/* 804E5D98  48 00 04 10 */	b lbl_804E61A8
lbl_804E5D9C:
/* 804E5D9C  38 A0 00 00 */	li r5, 0
/* 804E5DA0  3C 60 80 4F */	lis r3, target_info_count@ha /* 0x804EEF8C@ha */
/* 804E5DA4  90 A3 EF 8C */	stw r5, target_info_count@l(r3)  /* 0x804EEF8C@l */
/* 804E5DA8  7C A3 2B 78 */	mr r3, r5
/* 804E5DAC  3C 80 80 4F */	lis r4, target_info@ha /* 0x804EEF64@ha */
/* 804E5DB0  38 84 EF 64 */	addi r4, r4, target_info@l /* 0x804EEF64@l */
/* 804E5DB4  38 00 00 0A */	li r0, 0xa
/* 804E5DB8  7C 09 03 A6 */	mtctr r0
lbl_804E5DBC:
/* 804E5DBC  7C A4 19 2E */	stwx r5, r4, r3
/* 804E5DC0  38 63 00 04 */	addi r3, r3, 4
/* 804E5DC4  42 00 FF F8 */	bdnz lbl_804E5DBC
/* 804E5DC8  3C 60 80 4E */	lis r3, s_b_sub__FPvPv@ha /* 0x804E5CD0@ha */
/* 804E5DCC  38 63 5C D0 */	addi r3, r3, s_b_sub__FPvPv@l /* 0x804E5CD0@l */
/* 804E5DD0  7F 24 CB 78 */	mr r4, r25
/* 804E5DD4  4B B3 B5 65 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804E5DD8  C3 BD 00 44 */	lfs f29, 0x44(r29)
/* 804E5DDC  3C 60 80 4F */	lis r3, target_info_count@ha /* 0x804EEF8C@ha */
/* 804E5DE0  3B C3 EF 8C */	addi r30, r3, target_info_count@l /* 0x804EEF8C@l */
/* 804E5DE4  80 1E 00 00 */	lwz r0, 0(r30)
/* 804E5DE8  2C 00 00 00 */	cmpwi r0, 0
/* 804E5DEC  41 82 03 B0 */	beq lbl_804E619C
/* 804E5DF0  3B 60 00 00 */	li r27, 0
/* 804E5DF4  48 00 03 88 */	b lbl_804E617C
lbl_804E5DF8:
/* 804E5DF8  57 60 10 3A */	slwi r0, r27, 2
/* 804E5DFC  7F 9F 00 2E */	lwzx r28, r31, r0
/* 804E5E00  C0 7C 04 D0 */	lfs f3, 0x4d0(r28)
/* 804E5E04  C0 19 05 38 */	lfs f0, 0x538(r25)
/* 804E5E08  EC 03 00 28 */	fsubs f0, f3, f0
/* 804E5E0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E5E10  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 804E5E14  EC 3E 10 2A */	fadds f1, f30, f2
/* 804E5E18  C0 19 05 3C */	lfs f0, 0x53c(r25)
/* 804E5E1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E5E20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804E5E24  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 804E5E28  C0 19 05 40 */	lfs f0, 0x540(r25)
/* 804E5E2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E5E30  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804E5E34  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 804E5E38  EC 03 00 28 */	fsubs f0, f3, f0
/* 804E5E3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E5E40  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 804E5E44  EC 02 00 28 */	fsubs f0, f2, f0
/* 804E5E48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E5E4C  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 804E5E50  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E5E54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E5E58  38 61 00 28 */	addi r3, r1, 0x28
/* 804E5E5C  4B E6 12 DD */	bl PSVECSquareMag
/* 804E5E60  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804E5E64  40 81 00 58 */	ble lbl_804E5EBC
/* 804E5E68  FC 00 08 34 */	frsqrte f0, f1
/* 804E5E6C  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 804E5E70  FC 44 00 32 */	fmul f2, f4, f0
/* 804E5E74  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 804E5E78  FC 00 00 32 */	fmul f0, f0, f0
/* 804E5E7C  FC 01 00 32 */	fmul f0, f1, f0
/* 804E5E80  FC 03 00 28 */	fsub f0, f3, f0
/* 804E5E84  FC 02 00 32 */	fmul f0, f2, f0
/* 804E5E88  FC 44 00 32 */	fmul f2, f4, f0
/* 804E5E8C  FC 00 00 32 */	fmul f0, f0, f0
/* 804E5E90  FC 01 00 32 */	fmul f0, f1, f0
/* 804E5E94  FC 03 00 28 */	fsub f0, f3, f0
/* 804E5E98  FC 02 00 32 */	fmul f0, f2, f0
/* 804E5E9C  FC 44 00 32 */	fmul f2, f4, f0
/* 804E5EA0  FC 00 00 32 */	fmul f0, f0, f0
/* 804E5EA4  FC 01 00 32 */	fmul f0, f1, f0
/* 804E5EA8  FC 03 00 28 */	fsub f0, f3, f0
/* 804E5EAC  FC 02 00 32 */	fmul f0, f2, f0
/* 804E5EB0  FC 21 00 32 */	fmul f1, f1, f0
/* 804E5EB4  FC 20 08 18 */	frsp f1, f1
/* 804E5EB8  48 00 00 88 */	b lbl_804E5F40
lbl_804E5EBC:
/* 804E5EBC  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 804E5EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E5EC4  40 80 00 10 */	bge lbl_804E5ED4
/* 804E5EC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804E5ECC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804E5ED0  48 00 00 70 */	b lbl_804E5F40
lbl_804E5ED4:
/* 804E5ED4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E5ED8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804E5EDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804E5EE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804E5EE4  7C 03 00 00 */	cmpw r3, r0
/* 804E5EE8  41 82 00 14 */	beq lbl_804E5EFC
/* 804E5EEC  40 80 00 40 */	bge lbl_804E5F2C
/* 804E5EF0  2C 03 00 00 */	cmpwi r3, 0
/* 804E5EF4  41 82 00 20 */	beq lbl_804E5F14
/* 804E5EF8  48 00 00 34 */	b lbl_804E5F2C
lbl_804E5EFC:
/* 804E5EFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E5F00  41 82 00 0C */	beq lbl_804E5F0C
/* 804E5F04  38 00 00 01 */	li r0, 1
/* 804E5F08  48 00 00 28 */	b lbl_804E5F30
lbl_804E5F0C:
/* 804E5F0C  38 00 00 02 */	li r0, 2
/* 804E5F10  48 00 00 20 */	b lbl_804E5F30
lbl_804E5F14:
/* 804E5F14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E5F18  41 82 00 0C */	beq lbl_804E5F24
/* 804E5F1C  38 00 00 05 */	li r0, 5
/* 804E5F20  48 00 00 10 */	b lbl_804E5F30
lbl_804E5F24:
/* 804E5F24  38 00 00 03 */	li r0, 3
/* 804E5F28  48 00 00 08 */	b lbl_804E5F30
lbl_804E5F2C:
/* 804E5F2C  38 00 00 04 */	li r0, 4
lbl_804E5F30:
/* 804E5F30  2C 00 00 01 */	cmpwi r0, 1
/* 804E5F34  40 82 00 0C */	bne lbl_804E5F40
/* 804E5F38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804E5F3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804E5F40:
/* 804E5F40  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 804E5F44  40 80 02 08 */	bge lbl_804E614C
/* 804E5F48  38 61 00 1C */	addi r3, r1, 0x1c
/* 804E5F4C  4B E6 11 ED */	bl PSVECSquareMag
/* 804E5F50  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804E5F54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E5F58  40 81 00 58 */	ble lbl_804E5FB0
/* 804E5F5C  FC 00 08 34 */	frsqrte f0, f1
/* 804E5F60  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 804E5F64  FC 44 00 32 */	fmul f2, f4, f0
/* 804E5F68  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 804E5F6C  FC 00 00 32 */	fmul f0, f0, f0
/* 804E5F70  FC 01 00 32 */	fmul f0, f1, f0
/* 804E5F74  FC 03 00 28 */	fsub f0, f3, f0
/* 804E5F78  FC 02 00 32 */	fmul f0, f2, f0
/* 804E5F7C  FC 44 00 32 */	fmul f2, f4, f0
/* 804E5F80  FC 00 00 32 */	fmul f0, f0, f0
/* 804E5F84  FC 01 00 32 */	fmul f0, f1, f0
/* 804E5F88  FC 03 00 28 */	fsub f0, f3, f0
/* 804E5F8C  FC 02 00 32 */	fmul f0, f2, f0
/* 804E5F90  FC 44 00 32 */	fmul f2, f4, f0
/* 804E5F94  FC 00 00 32 */	fmul f0, f0, f0
/* 804E5F98  FC 01 00 32 */	fmul f0, f1, f0
/* 804E5F9C  FC 03 00 28 */	fsub f0, f3, f0
/* 804E5FA0  FC 02 00 32 */	fmul f0, f2, f0
/* 804E5FA4  FC 21 00 32 */	fmul f1, f1, f0
/* 804E5FA8  FC 20 08 18 */	frsp f1, f1
/* 804E5FAC  48 00 00 88 */	b lbl_804E6034
lbl_804E5FB0:
/* 804E5FB0  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 804E5FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E5FB8  40 80 00 10 */	bge lbl_804E5FC8
/* 804E5FBC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804E5FC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804E5FC4  48 00 00 70 */	b lbl_804E6034
lbl_804E5FC8:
/* 804E5FC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E5FCC  80 81 00 08 */	lwz r4, 8(r1)
/* 804E5FD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804E5FD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804E5FD8  7C 03 00 00 */	cmpw r3, r0
/* 804E5FDC  41 82 00 14 */	beq lbl_804E5FF0
/* 804E5FE0  40 80 00 40 */	bge lbl_804E6020
/* 804E5FE4  2C 03 00 00 */	cmpwi r3, 0
/* 804E5FE8  41 82 00 20 */	beq lbl_804E6008
/* 804E5FEC  48 00 00 34 */	b lbl_804E6020
lbl_804E5FF0:
/* 804E5FF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E5FF4  41 82 00 0C */	beq lbl_804E6000
/* 804E5FF8  38 00 00 01 */	li r0, 1
/* 804E5FFC  48 00 00 28 */	b lbl_804E6024
lbl_804E6000:
/* 804E6000  38 00 00 02 */	li r0, 2
/* 804E6004  48 00 00 20 */	b lbl_804E6024
lbl_804E6008:
/* 804E6008  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E600C  41 82 00 0C */	beq lbl_804E6018
/* 804E6010  38 00 00 05 */	li r0, 5
/* 804E6014  48 00 00 10 */	b lbl_804E6024
lbl_804E6018:
/* 804E6018  38 00 00 03 */	li r0, 3
/* 804E601C  48 00 00 08 */	b lbl_804E6024
lbl_804E6020:
/* 804E6020  38 00 00 04 */	li r0, 4
lbl_804E6024:
/* 804E6024  2C 00 00 01 */	cmpwi r0, 1
/* 804E6028  40 82 00 0C */	bne lbl_804E6034
/* 804E602C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804E6030  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804E6034:
/* 804E6034  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 804E6038  C0 19 06 D0 */	lfs f0, 0x6d0(r25)
/* 804E603C  EC 02 00 2A */	fadds f0, f2, f0
/* 804E6040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6044  41 81 01 08 */	bgt lbl_804E614C
/* 804E6048  7F 23 CB 78 */	mr r3, r25
/* 804E604C  7F 84 E3 78 */	mr r4, r28
/* 804E6050  4B FF FA D1 */	bl other_bg_check__FP10e_dn_classP10fopAc_ac_c
/* 804E6054  2C 03 00 00 */	cmpwi r3, 0
/* 804E6058  41 82 00 0C */	beq lbl_804E6064
/* 804E605C  2C 1A 00 00 */	cmpwi r26, 0
/* 804E6060  40 82 00 EC */	bne lbl_804E614C
lbl_804E6064:
/* 804E6064  2C 1A 00 00 */	cmpwi r26, 0
/* 804E6068  41 82 00 DC */	beq lbl_804E6144
/* 804E606C  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 804E6070  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804E6074  EC 21 00 2A */	fadds f1, f1, f0
/* 804E6078  C0 19 05 3C */	lfs f0, 0x53c(r25)
/* 804E607C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E6080  FC 00 02 10 */	fabs f0, f0
/* 804E6084  FC 20 00 18 */	frsp f1, f0
/* 804E6088  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 804E608C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6090  4C 40 13 82 */	cror 2, 0, 2
/* 804E6094  40 82 00 B8 */	bne lbl_804E614C
/* 804E6098  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804E609C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 804E60A0  4B D8 15 D5 */	bl cM_atan2s__Fff
/* 804E60A4  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 804E60A8  7C 03 20 50 */	subf r0, r3, r4
/* 804E60AC  7C 00 07 35 */	extsh. r0, r0
/* 804E60B0  40 80 00 0C */	bge lbl_804E60BC
/* 804E60B4  7C 00 00 D0 */	neg r0, r0
/* 804E60B8  7C 00 07 34 */	extsh r0, r0
lbl_804E60BC:
/* 804E60BC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804E60C0  28 00 4E 20 */	cmplwi r0, 0x4e20
/* 804E60C4  40 80 00 0C */	bge lbl_804E60D0
/* 804E60C8  7F 83 E3 78 */	mr r3, r28
/* 804E60CC  48 00 00 DC */	b lbl_804E61A8
lbl_804E60D0:
/* 804E60D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804E60D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804E60D8  80 63 00 00 */	lwz r3, 0(r3)
/* 804E60DC  7C 04 00 D0 */	neg r0, r4
/* 804E60E0  7C 04 07 34 */	extsh r4, r0
/* 804E60E4  4B B2 62 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804E60E8  38 61 00 28 */	addi r3, r1, 0x28
/* 804E60EC  38 81 00 10 */	addi r4, r1, 0x10
/* 804E60F0  4B D8 AD FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804E60F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E60F8  FC 00 02 10 */	fabs f0, f0
/* 804E60FC  FC 00 00 18 */	frsp f0, f0
/* 804E6100  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 804E6104  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804E6108  40 80 00 44 */	bge lbl_804E614C
/* 804E610C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E6110  FC 00 02 10 */	fabs f0, f0
/* 804E6114  FC 40 00 18 */	frsp f2, f0
/* 804E6118  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 804E611C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E6120  40 80 00 2C */	bge lbl_804E614C
/* 804E6124  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804E6128  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 804E612C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E6130  40 81 00 1C */	ble lbl_804E614C
/* 804E6134  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804E6138  40 80 00 14 */	bge lbl_804E614C
/* 804E613C  7F 83 E3 78 */	mr r3, r28
/* 804E6140  48 00 00 68 */	b lbl_804E61A8
lbl_804E6144:
/* 804E6144  7F 83 E3 78 */	mr r3, r28
/* 804E6148  48 00 00 60 */	b lbl_804E61A8
lbl_804E614C:
/* 804E614C  80 1E 00 00 */	lwz r0, 0(r30)
/* 804E6150  3B 7B 00 01 */	addi r27, r27, 1
/* 804E6154  7C 1B 00 00 */	cmpw r27, r0
/* 804E6158  40 82 00 34 */	bne lbl_804E618C
/* 804E615C  3B 60 00 00 */	li r27, 0
/* 804E6160  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 804E6164  EF BD 00 2A */	fadds f29, f29, f0
/* 804E6168  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804E616C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804E6170  40 81 00 1C */	ble lbl_804E618C
/* 804E6174  38 60 00 00 */	li r3, 0
/* 804E6178  48 00 00 30 */	b lbl_804E61A8
lbl_804E617C:
/* 804E617C  3C 60 80 4F */	lis r3, target_info@ha /* 0x804EEF64@ha */
/* 804E6180  3B E3 EF 64 */	addi r31, r3, target_info@l /* 0x804EEF64@l */
/* 804E6184  FF C0 E8 90 */	fmr f30, f29
/* 804E6188  C3 FD 00 04 */	lfs f31, 4(r29)
lbl_804E618C:
/* 804E618C  80 1E 00 00 */	lwz r0, 0(r30)
/* 804E6190  7C 1B 00 00 */	cmpw r27, r0
/* 804E6194  41 80 FC 64 */	blt lbl_804E5DF8
/* 804E6198  48 00 00 0C */	b lbl_804E61A4
lbl_804E619C:
/* 804E619C  38 60 00 00 */	li r3, 0
/* 804E61A0  48 00 00 08 */	b lbl_804E61A8
lbl_804E61A4:
/* 804E61A4  38 60 00 00 */	li r3, 0
lbl_804E61A8:
/* 804E61A8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804E61AC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804E61B0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804E61B4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804E61B8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 804E61BC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 804E61C0  39 61 00 60 */	addi r11, r1, 0x60
/* 804E61C4  4B E7 C0 55 */	bl _restgpr_25
/* 804E61C8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804E61CC  7C 08 03 A6 */	mtlr r0
/* 804E61D0  38 21 00 90 */	addi r1, r1, 0x90
/* 804E61D4  4E 80 00 20 */	blr 
