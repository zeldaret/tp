lbl_805E3CAC:
/* 805E3CAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E3CB0  7C 08 02 A6 */	mflr r0
/* 805E3CB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E3CB8  39 61 00 40 */	addi r11, r1, 0x40
/* 805E3CBC  4B D7 E5 1D */	bl _savegpr_28
/* 805E3CC0  7C 7D 1B 78 */	mr r29, r3
/* 805E3CC4  3C 80 80 5F */	lis r4, lit_1109@ha /* 0x805ED6C0@ha */
/* 805E3CC8  3B C4 D6 C0 */	addi r30, r4, lit_1109@l /* 0x805ED6C0@l */
/* 805E3CCC  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805E3CD0  3B E4 D0 60 */	addi r31, r4, lit_3911@l /* 0x805ED060@l */
/* 805E3CD4  88 03 05 C7 */	lbz r0, 0x5c7(r3)
/* 805E3CD8  2C 00 00 01 */	cmpwi r0, 1
/* 805E3CDC  41 82 00 64 */	beq lbl_805E3D40
/* 805E3CE0  40 80 00 10 */	bge lbl_805E3CF0
/* 805E3CE4  2C 00 00 00 */	cmpwi r0, 0
/* 805E3CE8  40 80 00 14 */	bge lbl_805E3CFC
/* 805E3CEC  48 00 01 50 */	b lbl_805E3E3C
lbl_805E3CF0:
/* 805E3CF0  2C 00 00 03 */	cmpwi r0, 3
/* 805E3CF4  40 80 01 48 */	bge lbl_805E3E3C
/* 805E3CF8  48 00 00 EC */	b lbl_805E3DE4
lbl_805E3CFC:
/* 805E3CFC  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 805E3D00  4B C8 3C 55 */	bl cM_rndF__Ff
/* 805E3D04  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 805E3D08  EC 00 08 2A */	fadds f0, f0, f1
/* 805E3D0C  FC 00 00 1E */	fctiwz f0, f0
/* 805E3D10  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805E3D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E3D18  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E3D1C  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E3D20  38 03 00 01 */	addi r0, r3, 1
/* 805E3D24  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E3D28  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805E3D2C  D0 1D 06 44 */	stfs f0, 0x644(r29)
/* 805E3D30  80 1D 0B D4 */	lwz r0, 0xbd4(r29)
/* 805E3D34  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E3D38  90 1D 0B D4 */	stw r0, 0xbd4(r29)
/* 805E3D3C  48 00 01 00 */	b lbl_805E3E3C
lbl_805E3D40:
/* 805E3D40  4B FF F4 A5 */	bl F_FookChk__8daB_GG_cFv
/* 805E3D44  3C 60 80 5F */	lis r3, d_a_b_gg__stringBase0@ha /* 0x805ED3D4@ha */
/* 805E3D48  38 63 D3 D4 */	addi r3, r3, d_a_b_gg__stringBase0@l /* 0x805ED3D4@l */
/* 805E3D4C  38 63 00 05 */	addi r3, r3, 5
/* 805E3D50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E3D54  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E3D58  38 9C 4E 00 */	addi r4, r28, 0x4e00
/* 805E3D5C  4B D8 4C 39 */	bl strcmp
/* 805E3D60  2C 03 00 00 */	cmpwi r3, 0
/* 805E3D64  40 82 00 2C */	bne lbl_805E3D90
/* 805E3D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E3D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E3D70  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 805E3D74  2C 00 00 0F */	cmpwi r0, 0xf
/* 805E3D78  40 82 00 18 */	bne lbl_805E3D90
/* 805E3D7C  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E3D80  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E3D84  C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 805E3D88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3D8C  41 81 00 B0 */	bgt lbl_805E3E3C
lbl_805E3D90:
/* 805E3D90  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 805E3D94  2C 00 00 00 */	cmpwi r0, 0
/* 805E3D98  40 82 00 A4 */	bne lbl_805E3E3C
/* 805E3D9C  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 805E3DA0  2C 00 00 02 */	cmpwi r0, 2
/* 805E3DA4  41 82 00 34 */	beq lbl_805E3DD8
/* 805E3DA8  88 1C 4F AD */	lbz r0, 0x4fad(r28)
/* 805E3DAC  28 00 00 00 */	cmplwi r0, 0
/* 805E3DB0  40 82 00 1C */	bne lbl_805E3DCC
/* 805E3DB4  7F A3 EB 78 */	mr r3, r29
/* 805E3DB8  38 80 00 00 */	li r4, 0
/* 805E3DBC  38 A0 00 02 */	li r5, 2
/* 805E3DC0  38 C0 00 0A */	li r6, 0xa
/* 805E3DC4  4B FF BC A1 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E3DC8  48 00 00 74 */	b lbl_805E3E3C
lbl_805E3DCC:
/* 805E3DCC  38 00 00 C8 */	li r0, 0xc8
/* 805E3DD0  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E3DD4  48 00 00 68 */	b lbl_805E3E3C
lbl_805E3DD8:
/* 805E3DD8  38 00 00 64 */	li r0, 0x64
/* 805E3DDC  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E3DE0  48 00 00 5C */	b lbl_805E3E3C
lbl_805E3DE4:
/* 805E3DE4  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 805E3DE8  28 00 00 00 */	cmplwi r0, 0
/* 805E3DEC  41 82 00 14 */	beq lbl_805E3E00
/* 805E3DF0  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3DF4  38 03 EB 00 */	addi r0, r3, -5376
/* 805E3DF8  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 805E3DFC  48 00 00 10 */	b lbl_805E3E0C
lbl_805E3E00:
/* 805E3E00  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3E04  38 03 15 00 */	addi r0, r3, 0x1500
/* 805E3E08  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_805E3E0C:
/* 805E3E0C  A8 1D 05 DA */	lha r0, 0x5da(r29)
/* 805E3E10  2C 00 00 00 */	cmpwi r0, 0
/* 805E3E14  40 82 00 14 */	bne lbl_805E3E28
/* 805E3E18  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E3E1C  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E3E20  38 00 00 01 */	li r0, 1
/* 805E3E24  98 1D 05 C7 */	stb r0, 0x5c7(r29)
lbl_805E3E28:
/* 805E3E28  38 7D 06 BE */	addi r3, r29, 0x6be
/* 805E3E2C  38 80 00 00 */	li r4, 0
/* 805E3E30  38 A0 00 01 */	li r5, 1
/* 805E3E34  38 C0 01 00 */	li r6, 0x100
/* 805E3E38  4B C8 C7 D1 */	bl cLib_addCalcAngleS2__FPssss
lbl_805E3E3C:
/* 805E3E3C  38 61 00 08 */	addi r3, r1, 8
/* 805E3E40  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 805E3E44  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805E3E48  4B C8 2C ED */	bl __mi__4cXyzCFRC3Vec
/* 805E3E4C  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E3E50  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E3E54  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E3E58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E3E5C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805E3E60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E3E64  EC 21 00 72 */	fmuls f1, f1, f1
/* 805E3E68  EC 00 00 32 */	fmuls f0, f0, f0
/* 805E3E6C  EC 41 00 2A */	fadds f2, f1, f0
/* 805E3E70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E3E74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E3E78  40 81 00 0C */	ble lbl_805E3E84
/* 805E3E7C  FC 00 10 34 */	frsqrte f0, f2
/* 805E3E80  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805E3E84:
/* 805E3E84  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 805E3E88  4B C8 37 ED */	bl cM_atan2s__Fff
/* 805E3E8C  7C 03 00 D0 */	neg r0, r3
/* 805E3E90  7C 04 07 34 */	extsh r4, r0
/* 805E3E94  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 805E3E98  38 A0 00 10 */	li r5, 0x10
/* 805E3E9C  38 C0 06 00 */	li r6, 0x600
/* 805E3EA0  4B C8 C7 69 */	bl cLib_addCalcAngleS2__FPssss
/* 805E3EA4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805E3EA8  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 805E3EAC  4B C8 CD 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E3EB0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805E3EB4  7C 00 18 50 */	subf r0, r0, r3
/* 805E3EB8  7C 04 07 34 */	extsh r4, r0
/* 805E3EBC  38 7D 06 BE */	addi r3, r29, 0x6be
/* 805E3EC0  38 A0 00 10 */	li r5, 0x10
/* 805E3EC4  38 C0 01 00 */	li r6, 0x100
/* 805E3EC8  4B C8 C7 41 */	bl cLib_addCalcAngleS2__FPssss
/* 805E3ECC  A8 1D 06 BE */	lha r0, 0x6be(r29)
/* 805E3ED0  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805E3ED4  40 81 00 10 */	ble lbl_805E3EE4
/* 805E3ED8  38 00 20 00 */	li r0, 0x2000
/* 805E3EDC  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 805E3EE0  48 00 00 14 */	b lbl_805E3EF4
lbl_805E3EE4:
/* 805E3EE4  2C 00 E0 00 */	cmpwi r0, -8192
/* 805E3EE8  40 80 00 0C */	bge lbl_805E3EF4
/* 805E3EEC  38 00 E0 00 */	li r0, -8192
/* 805E3EF0  B0 1D 06 BE */	sth r0, 0x6be(r29)
lbl_805E3EF4:
/* 805E3EF4  39 61 00 40 */	addi r11, r1, 0x40
/* 805E3EF8  4B D7 E3 2D */	bl _restgpr_28
/* 805E3EFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E3F00  7C 08 03 A6 */	mtlr r0
/* 805E3F04  38 21 00 40 */	addi r1, r1, 0x40
/* 805E3F08  4E 80 00 20 */	blr 
