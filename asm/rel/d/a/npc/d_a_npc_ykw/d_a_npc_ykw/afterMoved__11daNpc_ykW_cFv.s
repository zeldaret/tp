lbl_80B60BC0:
/* 80B60BC0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B60BC4  7C 08 02 A6 */	mflr r0
/* 80B60BC8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B60BCC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80B60BD0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80B60BD4  39 61 00 70 */	addi r11, r1, 0x70
/* 80B60BD8  4B 80 16 05 */	bl _savegpr_29
/* 80B60BDC  7C 7E 1B 78 */	mr r30, r3
/* 80B60BE0  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B60BE4  3B E3 7C 38 */	addi r31, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B60BE8  88 1E 10 6A */	lbz r0, 0x106a(r30)
/* 80B60BEC  28 00 00 00 */	cmplwi r0, 0
/* 80B60BF0  41 82 02 F8 */	beq lbl_80B60EE8
/* 80B60BF4  88 1E 10 6E */	lbz r0, 0x106e(r30)
/* 80B60BF8  28 00 00 00 */	cmplwi r0, 0
/* 80B60BFC  40 82 02 EC */	bne lbl_80B60EE8
/* 80B60C00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B60C04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B60C08  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B60C0C  38 9E 07 7C */	addi r4, r30, 0x77c
/* 80B60C10  4B 51 42 41 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80B60C14  2C 03 00 0D */	cmpwi r3, 0xd
/* 80B60C18  40 82 01 3C */	bne lbl_80B60D54
/* 80B60C1C  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80B60C20  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80B60C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B60C28  40 80 01 2C */	bge lbl_80B60D54
/* 80B60C2C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B60C30  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B60C34  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B60C38  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B60C3C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B60C40  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B60C44  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80B60C48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B60C4C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B60C50  38 60 00 00 */	li r3, 0
/* 80B60C54  90 61 00 08 */	stw r3, 8(r1)
/* 80B60C58  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B60C5C  38 00 FF FF */	li r0, -1
/* 80B60C60  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B60C64  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B60C68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B60C6C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B60C70  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B60C74  80 9E 10 5C */	lwz r4, 0x105c(r30)
/* 80B60C78  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B8F@ha */
/* 80B60C7C  38 A5 8B 8F */	addi r5, r5, 0x8B8F /* 0x00008B8F@l */
/* 80B60C80  38 DE 07 7C */	addi r6, r30, 0x77c
/* 80B60C84  38 E1 00 4C */	addi r7, r1, 0x4c
/* 80B60C88  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80B60C8C  39 3E 0D 78 */	addi r9, r30, 0xd78
/* 80B60C90  39 40 00 00 */	li r10, 0
/* 80B60C94  4B 4E CA 11 */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80B60C98  90 7E 10 5C */	stw r3, 0x105c(r30)
/* 80B60C9C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B60CA0  38 63 02 10 */	addi r3, r3, 0x210
/* 80B60CA4  80 9E 10 5C */	lwz r4, 0x105c(r30)
/* 80B60CA8  4B 4E AC 71 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80B60CAC  28 03 00 00 */	cmplwi r3, 0
/* 80B60CB0  41 82 00 A4 */	beq lbl_80B60D54
/* 80B60CB4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80B60CB8  38 9F 00 00 */	addi r4, r31, 0
/* 80B60CBC  C0 04 00 A0 */	lfs f0, 0xa0(r4)
/* 80B60CC0  EC 41 00 24 */	fdivs f2, f1, f0
/* 80B60CC4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B60CC8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B60CCC  40 81 00 08 */	ble lbl_80B60CD4
/* 80B60CD0  FC 40 00 90 */	fmr f2, f0
lbl_80B60CD4:
/* 80B60CD4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80B60CD8  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80B60CDC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B60CE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B60CE4  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80B60CE8  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80B60CEC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B60CF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B60CF4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80B60CF8  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 80B60CFC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80B60D00  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B60D04  EC 01 00 2A */	fadds f0, f1, f0
/* 80B60D08  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B60D0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B60D10  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B60D14  E0 21 00 40 */	psq_l f1, 64(r1), 0, 0 /* qr0 */
/* 80B60D18  FC 00 00 18 */	frsp f0, f0
/* 80B60D1C  F0 21 00 34 */	psq_st f1, 52(r1), 0, 0 /* qr0 */
/* 80B60D20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B60D24  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80B60D28  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B60D2C  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80B60D30  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80B60D34  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B60D38  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80B60D3C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B60D40  EC 01 00 2A */	fadds f0, f1, f0
/* 80B60D44  FC 00 00 1E */	fctiwz f0, f0
/* 80B60D48  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80B60D4C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B60D50  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_80B60D54:
/* 80B60D54  C0 3E 0D F4 */	lfs f1, 0xdf4(r30)
/* 80B60D58  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B60D5C  EF E1 00 28 */	fsubs f31, f1, f0
/* 80B60D60  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80B60D64  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B60D68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B60D6C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80B60D70  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B60D74  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B60D78  C0 5E 04 C4 */	lfs f2, 0x4c4(r30)
/* 80B60D7C  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80B60D80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B60D84  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B60D88  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80B60D8C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B60D90  38 81 00 28 */	addi r4, r1, 0x28
/* 80B60D94  4B 7E 66 09 */	bl PSVECSquareDistance
/* 80B60D98  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B60D9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B60DA0  40 81 00 58 */	ble lbl_80B60DF8
/* 80B60DA4  FC 00 08 34 */	frsqrte f0, f1
/* 80B60DA8  C8 9F 01 28 */	lfd f4, 0x128(r31)
/* 80B60DAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B60DB0  C8 7F 01 30 */	lfd f3, 0x130(r31)
/* 80B60DB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B60DB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B60DBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B60DC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B60DC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B60DC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B60DCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B60DD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B60DD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B60DD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B60DDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B60DE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B60DE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B60DE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B60DEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B60DF0  FC 20 08 18 */	frsp f1, f1
/* 80B60DF4  48 00 00 88 */	b lbl_80B60E7C
lbl_80B60DF8:
/* 80B60DF8  C8 1F 01 38 */	lfd f0, 0x138(r31)
/* 80B60DFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B60E00  40 80 00 10 */	bge lbl_80B60E10
/* 80B60E04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B60E08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B60E0C  48 00 00 70 */	b lbl_80B60E7C
lbl_80B60E10:
/* 80B60E10  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B60E14  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80B60E18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B60E1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B60E20  7C 03 00 00 */	cmpw r3, r0
/* 80B60E24  41 82 00 14 */	beq lbl_80B60E38
/* 80B60E28  40 80 00 40 */	bge lbl_80B60E68
/* 80B60E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B60E30  41 82 00 20 */	beq lbl_80B60E50
/* 80B60E34  48 00 00 34 */	b lbl_80B60E68
lbl_80B60E38:
/* 80B60E38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B60E3C  41 82 00 0C */	beq lbl_80B60E48
/* 80B60E40  38 00 00 01 */	li r0, 1
/* 80B60E44  48 00 00 28 */	b lbl_80B60E6C
lbl_80B60E48:
/* 80B60E48  38 00 00 02 */	li r0, 2
/* 80B60E4C  48 00 00 20 */	b lbl_80B60E6C
lbl_80B60E50:
/* 80B60E50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B60E54  41 82 00 0C */	beq lbl_80B60E60
/* 80B60E58  38 00 00 05 */	li r0, 5
/* 80B60E5C  48 00 00 10 */	b lbl_80B60E6C
lbl_80B60E60:
/* 80B60E60  38 00 00 03 */	li r0, 3
/* 80B60E64  48 00 00 08 */	b lbl_80B60E6C
lbl_80B60E68:
/* 80B60E68  38 00 00 04 */	li r0, 4
lbl_80B60E6C:
/* 80B60E6C  2C 00 00 01 */	cmpwi r0, 1
/* 80B60E70  40 82 00 0C */	bne lbl_80B60E7C
/* 80B60E74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B60E78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B60E7C:
/* 80B60E7C  A8 1E 0D CA */	lha r0, 0xdca(r30)
/* 80B60E80  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B60E84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B60E88  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B60E8C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80B60E90  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B60E94  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B60E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B60E9C  40 80 00 08 */	bge lbl_80B60EA4
/* 80B60EA0  FC 20 00 90 */	fmr f1, f0
lbl_80B60EA4:
/* 80B60EA4  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80B60EA8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B60EAC  4C 40 13 82 */	cror 2, 0, 2
/* 80B60EB0  40 82 00 38 */	bne lbl_80B60EE8
/* 80B60EB4  C0 1E 08 D0 */	lfs f0, 0x8d0(r30)
/* 80B60EB8  FC 00 00 50 */	fneg f0, f0
/* 80B60EBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B60EC0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B60EC4  4C 41 13 82 */	cror 2, 1, 2
/* 80B60EC8  40 82 00 20 */	bne lbl_80B60EE8
/* 80B60ECC  C0 1E 0D F4 */	lfs f0, 0xdf4(r30)
/* 80B60ED0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B60ED4  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 80B60ED8  60 00 00 20 */	ori r0, r0, 0x20
/* 80B60EDC  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 80B60EE0  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B60EE4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80B60EE8:
/* 80B60EE8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80B60EEC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80B60EF0  39 61 00 70 */	addi r11, r1, 0x70
/* 80B60EF4  4B 80 13 35 */	bl _restgpr_29
/* 80B60EF8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B60EFC  7C 08 03 A6 */	mtlr r0
/* 80B60F00  38 21 00 80 */	addi r1, r1, 0x80
/* 80B60F04  4E 80 00 20 */	blr 
