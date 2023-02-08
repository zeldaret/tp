lbl_80694CC8:
/* 80694CC8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80694CCC  7C 08 02 A6 */	mflr r0
/* 80694CD0  90 01 01 14 */	stw r0, 0x114(r1)
/* 80694CD4  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80694CD8  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80694CDC  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80694CE0  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80694CE4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80694CE8  4B CC D4 E1 */	bl _savegpr_24
/* 80694CEC  7C 7D 1B 78 */	mr r29, r3
/* 80694CF0  7C 9E 23 78 */	mr r30, r4
/* 80694CF4  3C 60 80 69 */	lis r3, lit_3829@ha /* 0x80697CA0@ha */
/* 80694CF8  3B 43 7C A0 */	addi r26, r3, lit_3829@l /* 0x80697CA0@l */
/* 80694CFC  38 61 00 54 */	addi r3, r1, 0x54
/* 80694D00  4B 9E 2F 69 */	bl __ct__11dBgS_LinChkFv
/* 80694D04  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80694D08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80694D0C  3B E0 00 00 */	li r31, 0
/* 80694D10  38 61 00 18 */	addi r3, r1, 0x18
/* 80694D14  38 9D 00 0C */	addi r4, r29, 0xc
/* 80694D18  38 BD 00 18 */	addi r5, r29, 0x18
/* 80694D1C  4B BD 1E 19 */	bl __mi__4cXyzCFRC3Vec
/* 80694D20  38 61 00 18 */	addi r3, r1, 0x18
/* 80694D24  4B CB 24 15 */	bl PSVECSquareMag
/* 80694D28  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80694D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80694D30  40 81 00 58 */	ble lbl_80694D88
/* 80694D34  FC 00 08 34 */	frsqrte f0, f1
/* 80694D38  C8 9A 00 10 */	lfd f4, 0x10(r26)
/* 80694D3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80694D40  C8 7A 00 18 */	lfd f3, 0x18(r26)
/* 80694D44  FC 00 00 32 */	fmul f0, f0, f0
/* 80694D48  FC 01 00 32 */	fmul f0, f1, f0
/* 80694D4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80694D50  FC 02 00 32 */	fmul f0, f2, f0
/* 80694D54  FC 44 00 32 */	fmul f2, f4, f0
/* 80694D58  FC 00 00 32 */	fmul f0, f0, f0
/* 80694D5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80694D60  FC 03 00 28 */	fsub f0, f3, f0
/* 80694D64  FC 02 00 32 */	fmul f0, f2, f0
/* 80694D68  FC 44 00 32 */	fmul f2, f4, f0
/* 80694D6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80694D70  FC 01 00 32 */	fmul f0, f1, f0
/* 80694D74  FC 03 00 28 */	fsub f0, f3, f0
/* 80694D78  FC 02 00 32 */	fmul f0, f2, f0
/* 80694D7C  FC 21 00 32 */	fmul f1, f1, f0
/* 80694D80  FC 20 08 18 */	frsp f1, f1
/* 80694D84  48 00 00 88 */	b lbl_80694E0C
lbl_80694D88:
/* 80694D88  C8 1A 00 20 */	lfd f0, 0x20(r26)
/* 80694D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80694D90  40 80 00 10 */	bge lbl_80694DA0
/* 80694D94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80694D98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80694D9C  48 00 00 70 */	b lbl_80694E0C
lbl_80694DA0:
/* 80694DA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80694DA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80694DA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80694DAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80694DB0  7C 03 00 00 */	cmpw r3, r0
/* 80694DB4  41 82 00 14 */	beq lbl_80694DC8
/* 80694DB8  40 80 00 40 */	bge lbl_80694DF8
/* 80694DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80694DC0  41 82 00 20 */	beq lbl_80694DE0
/* 80694DC4  48 00 00 34 */	b lbl_80694DF8
lbl_80694DC8:
/* 80694DC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80694DCC  41 82 00 0C */	beq lbl_80694DD8
/* 80694DD0  38 00 00 01 */	li r0, 1
/* 80694DD4  48 00 00 28 */	b lbl_80694DFC
lbl_80694DD8:
/* 80694DD8  38 00 00 02 */	li r0, 2
/* 80694DDC  48 00 00 20 */	b lbl_80694DFC
lbl_80694DE0:
/* 80694DE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80694DE4  41 82 00 0C */	beq lbl_80694DF0
/* 80694DE8  38 00 00 05 */	li r0, 5
/* 80694DEC  48 00 00 10 */	b lbl_80694DFC
lbl_80694DF0:
/* 80694DF0  38 00 00 03 */	li r0, 3
/* 80694DF4  48 00 00 08 */	b lbl_80694DFC
lbl_80694DF8:
/* 80694DF8  38 00 00 04 */	li r0, 4
lbl_80694DFC:
/* 80694DFC  2C 00 00 01 */	cmpwi r0, 1
/* 80694E00  40 82 00 0C */	bne lbl_80694E0C
/* 80694E04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80694E08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80694E0C:
/* 80694E0C  C0 1A 00 28 */	lfs f0, 0x28(r26)
/* 80694E10  EF E0 08 2A */	fadds f31, f0, f1
/* 80694E14  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80694E18  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80694E1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80694E20  A8 9D 00 3E */	lha r4, 0x3e(r29)
/* 80694E24  4B 97 75 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80694E28  3B 00 00 00 */	li r24, 0
/* 80694E2C  3B 80 00 00 */	li r28, 0
/* 80694E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80694E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80694E38  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80694E3C  C3 DA 00 2C */	lfs f30, 0x2c(r26)
/* 80694E40  3C 60 80 69 */	lis r3, c_x@ha /* 0x80697DA8@ha */
/* 80694E44  3B 43 7D A8 */	addi r26, r3, c_x@l /* 0x80697DA8@l */
/* 80694E48  3C 60 80 69 */	lis r3, c_z@ha /* 0x80697DB8@ha */
/* 80694E4C  3B 63 7D B8 */	addi r27, r3, c_z@l /* 0x80697DB8@l */
/* 80694E50  3B DE 00 03 */	addi r30, r30, 3
/* 80694E54  48 00 00 C4 */	b lbl_80694F18
lbl_80694E58:
/* 80694E58  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80694E5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80694E60  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80694E64  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80694E68  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80694E6C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80694E70  EC 01 F0 2A */	fadds f0, f1, f30
/* 80694E74  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80694E78  7C 1A E4 2E */	lfsx f0, r26, r28
/* 80694E7C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80694E80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80694E84  7C 1B E4 2E */	lfsx f0, r27, r28
/* 80694E88  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80694E8C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80694E90  38 61 00 24 */	addi r3, r1, 0x24
/* 80694E94  38 81 00 30 */	addi r4, r1, 0x30
/* 80694E98  4B BD C0 55 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80694E9C  38 61 00 0C */	addi r3, r1, 0xc
/* 80694EA0  38 81 00 48 */	addi r4, r1, 0x48
/* 80694EA4  38 A1 00 30 */	addi r5, r1, 0x30
/* 80694EA8  4B BD 1C 3D */	bl __pl__4cXyzCFRC3Vec
/* 80694EAC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80694EB0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80694EB4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80694EB8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80694EBC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80694EC0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80694EC4  38 61 00 54 */	addi r3, r1, 0x54
/* 80694EC8  38 81 00 48 */	addi r4, r1, 0x48
/* 80694ECC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80694ED0  38 C0 00 00 */	li r6, 0
/* 80694ED4  4B 9E 2E 91 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80694ED8  7F 23 CB 78 */	mr r3, r25
/* 80694EDC  38 81 00 54 */	addi r4, r1, 0x54
/* 80694EE0  4B 9D F4 D5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80694EE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80694EE8  41 82 00 28 */	beq lbl_80694F10
/* 80694EEC  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80694EF0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80694EF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80694EF8  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80694EFC  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 80694F00  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80694F04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80694F08  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80694F0C  3B F8 00 01 */	addi r31, r24, 1
lbl_80694F10:
/* 80694F10  3B 18 00 01 */	addi r24, r24, 1
/* 80694F14  3B 9C 00 04 */	addi r28, r28, 4
lbl_80694F18:
/* 80694F18  7C 18 F0 00 */	cmpw r24, r30
/* 80694F1C  41 80 FF 3C */	blt lbl_80694E58
/* 80694F20  38 61 00 54 */	addi r3, r1, 0x54
/* 80694F24  38 80 FF FF */	li r4, -1
/* 80694F28  4B 9E 2D B5 */	bl __dt__11dBgS_LinChkFv
/* 80694F2C  7F E3 FB 78 */	mr r3, r31
/* 80694F30  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80694F34  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80694F38  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80694F3C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80694F40  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80694F44  4B CC D2 D1 */	bl _restgpr_24
/* 80694F48  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80694F4C  7C 08 03 A6 */	mtlr r0
/* 80694F50  38 21 01 10 */	addi r1, r1, 0x110
/* 80694F54  4E 80 00 20 */	blr 
