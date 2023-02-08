lbl_8094DA0C:
/* 8094DA0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8094DA10  7C 08 02 A6 */	mflr r0
/* 8094DA14  90 01 00 44 */	stw r0, 0x44(r1)
/* 8094DA18  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8094DA1C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8094DA20  39 61 00 30 */	addi r11, r1, 0x30
/* 8094DA24  4B A1 47 B9 */	bl _savegpr_29
/* 8094DA28  7C 7D 1B 78 */	mr r29, r3
/* 8094DA2C  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094DA30  3B E3 11 C0 */	addi r31, r3, lit_3958@l /* 0x809511C0@l */
/* 8094DA34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094DA38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094DA3C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8094DA40  C0 3D 05 C0 */	lfs f1, 0x5c0(r29)
/* 8094DA44  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8094DA48  EC 21 00 28 */	fsubs f1, f1, f0
/* 8094DA4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8094DA50  C0 5D 05 C8 */	lfs f2, 0x5c8(r29)
/* 8094DA54  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8094DA58  EC 42 00 28 */	fsubs f2, f2, f0
/* 8094DA5C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8094DA60  4B 91 9C 15 */	bl cM_atan2s__Fff
/* 8094DA64  B0 7D 05 DC */	sth r3, 0x5dc(r29)
/* 8094DA68  C0 01 00 08 */	lfs f0, 8(r1)
/* 8094DA6C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8094DA70  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8094DA74  EC 00 00 32 */	fmuls f0, f0, f0
/* 8094DA78  EF E1 00 2A */	fadds f31, f1, f0
/* 8094DA7C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094DA80  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8094DA84  40 81 00 0C */	ble lbl_8094DA90
/* 8094DA88  FC 00 F8 34 */	frsqrte f0, f31
/* 8094DA8C  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_8094DA90:
/* 8094DA90  A8 7D 05 FC */	lha r3, 0x5fc(r29)
/* 8094DA94  2C 03 00 01 */	cmpwi r3, 1
/* 8094DA98  41 82 00 3C */	beq lbl_8094DAD4
/* 8094DA9C  40 80 00 38 */	bge lbl_8094DAD4
/* 8094DAA0  2C 03 00 00 */	cmpwi r3, 0
/* 8094DAA4  40 80 00 08 */	bge lbl_8094DAAC
/* 8094DAA8  48 00 00 2C */	b lbl_8094DAD4
lbl_8094DAAC:
/* 8094DAAC  38 03 00 01 */	addi r0, r3, 1
/* 8094DAB0  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8094DAB4  38 00 00 C8 */	li r0, 0xc8
/* 8094DAB8  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8094DABC  7F A3 EB 78 */	mr r3, r29
/* 8094DAC0  38 80 00 06 */	li r4, 6
/* 8094DAC4  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8094DAC8  38 A0 00 02 */	li r5, 2
/* 8094DACC  FC 40 08 90 */	fmr f2, f1
/* 8094DAD0  4B FF E1 D9 */	bl anm_init__FP8ni_classifUcf
lbl_8094DAD4:
/* 8094DAD4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8094DAD8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8094DADC  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094DAE0  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8094DAE4  4B 92 1F 59 */	bl cLib_addCalc2__FPffff
/* 8094DAE8  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8094DAEC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8094DAF0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8094DAF4  EC 01 00 2A */	fadds f0, f1, f0
/* 8094DAF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8094DAFC  40 80 00 24 */	bge lbl_8094DB20
/* 8094DB00  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8094DB04  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8094DB08  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8094DB0C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8094DB10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094DB14  40 81 00 28 */	ble lbl_8094DB3C
/* 8094DB18  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8094DB1C  48 00 00 20 */	b lbl_8094DB3C
lbl_8094DB20:
/* 8094DB20  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8094DB24  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8094DB28  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8094DB2C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8094DB30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094DB34  40 80 00 08 */	bge lbl_8094DB3C
/* 8094DB38  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8094DB3C:
/* 8094DB3C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8094DB40  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 8094DB44  38 A0 00 04 */	li r5, 4
/* 8094DB48  38 C0 04 00 */	li r6, 0x400
/* 8094DB4C  4B 92 2A BD */	bl cLib_addCalcAngleS2__FPssss
/* 8094DB50  A8 1D 06 04 */	lha r0, 0x604(r29)
/* 8094DB54  2C 00 00 00 */	cmpwi r0, 0
/* 8094DB58  41 82 00 10 */	beq lbl_8094DB68
/* 8094DB5C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8094DB60  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8094DB64  40 80 00 14 */	bge lbl_8094DB78
lbl_8094DB68:
/* 8094DB68  38 00 00 05 */	li r0, 5
/* 8094DB6C  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8094DB70  38 00 00 00 */	li r0, 0
/* 8094DB74  B0 1D 05 FC */	sth r0, 0x5fc(r29)
lbl_8094DB78:
/* 8094DB78  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8094DB7C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8094DB80  39 61 00 30 */	addi r11, r1, 0x30
/* 8094DB84  4B A1 46 A5 */	bl _restgpr_29
/* 8094DB88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8094DB8C  7C 08 03 A6 */	mtlr r0
/* 8094DB90  38 21 00 40 */	addi r1, r1, 0x40
/* 8094DB94  4E 80 00 20 */	blr 
