lbl_80830AB8:
/* 80830AB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80830ABC  7C 08 02 A6 */	mflr r0
/* 80830AC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80830AC4  39 61 00 70 */	addi r11, r1, 0x70
/* 80830AC8  4B B3 17 11 */	bl _savegpr_28
/* 80830ACC  7C 7D 1B 78 */	mr r29, r3
/* 80830AD0  3C 80 80 83 */	lis r4, lit_3789@ha /* 0x80832CF8@ha */
/* 80830AD4  3B E4 2C F8 */	addi r31, r4, lit_3789@l /* 0x80832CF8@l */
/* 80830AD8  3C 80 80 83 */	lis r4, l_HIO@ha /* 0x80832F90@ha */
/* 80830ADC  38 84 2F 90 */	addi r4, r4, l_HIO@l /* 0x80832F90@l */
/* 80830AE0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80830AE4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80830AE8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80830AEC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80830AF0  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 80830AF4  83 84 00 04 */	lwz r28, 4(r4)
/* 80830AF8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80830AFC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80830B00  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80830B04  7F C4 F3 78 */	mr r4, r30
/* 80830B08  4B 7E 9C 09 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80830B0C  7C 64 1B 78 */	mr r4, r3
/* 80830B10  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80830B14  38 A0 00 02 */	li r5, 2
/* 80830B18  38 C0 06 00 */	li r6, 0x600
/* 80830B1C  4B A3 FA ED */	bl cLib_addCalcAngleS2__FPssss
/* 80830B20  88 1D 07 25 */	lbz r0, 0x725(r29)
/* 80830B24  28 00 00 00 */	cmplwi r0, 0
/* 80830B28  40 82 02 E8 */	bne lbl_80830E10
/* 80830B2C  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 80830B30  2C 00 00 01 */	cmpwi r0, 1
/* 80830B34  41 82 00 44 */	beq lbl_80830B78
/* 80830B38  40 80 00 10 */	bge lbl_80830B48
/* 80830B3C  2C 00 00 00 */	cmpwi r0, 0
/* 80830B40  40 80 00 14 */	bge lbl_80830B54
/* 80830B44  48 00 02 CC */	b lbl_80830E10
lbl_80830B48:
/* 80830B48  2C 00 00 03 */	cmpwi r0, 3
/* 80830B4C  40 80 02 C4 */	bge lbl_80830E10
/* 80830B50  48 00 02 70 */	b lbl_80830DC0
lbl_80830B54:
/* 80830B54  7F A3 EB 78 */	mr r3, r29
/* 80830B58  38 80 00 06 */	li r4, 6
/* 80830B5C  38 A0 00 00 */	li r5, 0
/* 80830B60  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80830B64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80830B68  4B FF F0 6D */	bl setBck__8daE_ZM_cFiUcff
/* 80830B6C  38 00 00 01 */	li r0, 1
/* 80830B70  90 1D 06 60 */	stw r0, 0x660(r29)
/* 80830B74  48 00 02 9C */	b lbl_80830E10
lbl_80830B78:
/* 80830B78  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80830B7C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80830B80  FC 00 00 1E */	fctiwz f0, f0
/* 80830B84  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80830B88  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80830B8C  2C 00 00 02 */	cmpwi r0, 2
/* 80830B90  40 82 00 30 */	bne lbl_80830BC0
/* 80830B94  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703BA@ha */
/* 80830B98  38 03 03 BA */	addi r0, r3, 0x03BA /* 0x000703BA@l */
/* 80830B9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80830BA0  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80830BA4  38 81 00 24 */	addi r4, r1, 0x24
/* 80830BA8  38 A0 00 00 */	li r5, 0
/* 80830BAC  38 C0 FF FF */	li r6, -1
/* 80830BB0  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 80830BB4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80830BB8  7D 89 03 A6 */	mtctr r12
/* 80830BBC  4E 80 04 21 */	bctrl 
lbl_80830BC0:
/* 80830BC0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80830BC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80830BC8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80830BCC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80830BD0  4B B1 58 E1 */	bl PSMTXCopy
/* 80830BD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80830BD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80830BDC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80830BE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80830BE4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80830BE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80830BEC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80830BF0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80830BF4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80830BF8  38 80 00 01 */	li r4, 1
/* 80830BFC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80830C00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80830C04  40 82 00 18 */	bne lbl_80830C1C
/* 80830C08  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80830C0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80830C10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80830C14  41 82 00 08 */	beq lbl_80830C1C
/* 80830C18  38 80 00 00 */	li r4, 0
lbl_80830C1C:
/* 80830C1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80830C20  41 82 01 40 */	beq lbl_80830D60
/* 80830C24  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80830C28  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80830C2C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80830C30  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 80830C34  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80830C38  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80830C3C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80830C40  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80830C44  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80830C48  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80830C4C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80830C50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80830C54  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80830C58  EC 01 00 2A */	fadds f0, f1, f0
/* 80830C5C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80830C60  38 61 00 30 */	addi r3, r1, 0x30
/* 80830C64  38 81 00 3C */	addi r4, r1, 0x3c
/* 80830C68  7C 65 1B 78 */	mr r5, r3
/* 80830C6C  4B B1 64 49 */	bl PSVECSubtract
/* 80830C70  38 61 00 30 */	addi r3, r1, 0x30
/* 80830C74  4B A3 64 DD */	bl atan2sY_XZ__4cXyzCFv
/* 80830C78  B0 61 00 28 */	sth r3, 0x28(r1)
/* 80830C7C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80830C80  7C 07 07 74 */	extsb r7, r0
/* 80830C84  38 00 00 00 */	li r0, 0
/* 80830C88  90 01 00 08 */	stw r0, 8(r1)
/* 80830C8C  38 60 01 E3 */	li r3, 0x1e3
/* 80830C90  28 1D 00 00 */	cmplwi r29, 0
/* 80830C94  41 82 00 0C */	beq lbl_80830CA0
/* 80830C98  80 9D 00 04 */	lwz r4, 4(r29)
/* 80830C9C  48 00 00 08 */	b lbl_80830CA4
lbl_80830CA0:
/* 80830CA0  38 80 FF FF */	li r4, -1
lbl_80830CA4:
/* 80830CA4  38 A0 00 14 */	li r5, 0x14
/* 80830CA8  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80830CAC  39 01 00 28 */	addi r8, r1, 0x28
/* 80830CB0  39 20 00 00 */	li r9, 0
/* 80830CB4  39 40 FF FF */	li r10, -1
/* 80830CB8  4B 7E 92 39 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80830CBC  90 7D 04 A4 */	stw r3, 0x4a4(r29)
/* 80830CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80830CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80830CC8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80830CCC  38 80 00 00 */	li r4, 0
/* 80830CD0  90 81 00 08 */	stw r4, 8(r1)
/* 80830CD4  38 00 FF FF */	li r0, -1
/* 80830CD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80830CDC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80830CE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80830CE4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80830CE8  38 80 00 00 */	li r4, 0
/* 80830CEC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000886B@ha */
/* 80830CF0  38 A5 88 6B */	addi r5, r5, 0x886B /* 0x0000886B@l */
/* 80830CF4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80830CF8  38 E0 00 00 */	li r7, 0
/* 80830CFC  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80830D00  39 21 00 48 */	addi r9, r1, 0x48
/* 80830D04  39 40 00 FF */	li r10, 0xff
/* 80830D08  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80830D0C  4B 81 BD 85 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80830D10  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703BB@ha */
/* 80830D14  38 03 03 BB */	addi r0, r3, 0x03BB /* 0x000703BB@l */
/* 80830D18  90 01 00 20 */	stw r0, 0x20(r1)
/* 80830D1C  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80830D20  38 81 00 20 */	addi r4, r1, 0x20
/* 80830D24  38 A0 00 00 */	li r5, 0
/* 80830D28  38 C0 FF FF */	li r6, -1
/* 80830D2C  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 80830D30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80830D34  7D 89 03 A6 */	mtctr r12
/* 80830D38  4E 80 04 21 */	bctrl 
/* 80830D3C  7F A3 EB 78 */	mr r3, r29
/* 80830D40  38 80 00 06 */	li r4, 6
/* 80830D44  38 A0 00 00 */	li r5, 0
/* 80830D48  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80830D4C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80830D50  4B FF EE 85 */	bl setBck__8daE_ZM_cFiUcff
/* 80830D54  38 00 00 02 */	li r0, 2
/* 80830D58  90 1D 06 60 */	stw r0, 0x660(r29)
/* 80830D5C  48 00 00 B4 */	b lbl_80830E10
lbl_80830D60:
/* 80830D60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80830D64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80830D68  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80830D6C  38 00 00 FF */	li r0, 0xff
/* 80830D70  90 01 00 08 */	stw r0, 8(r1)
/* 80830D74  38 80 00 00 */	li r4, 0
/* 80830D78  90 81 00 0C */	stw r4, 0xc(r1)
/* 80830D7C  38 00 FF FF */	li r0, -1
/* 80830D80  90 01 00 10 */	stw r0, 0x10(r1)
/* 80830D84  90 81 00 14 */	stw r4, 0x14(r1)
/* 80830D88  90 81 00 18 */	stw r4, 0x18(r1)
/* 80830D8C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80830D90  80 9D 07 30 */	lwz r4, 0x730(r29)
/* 80830D94  38 A0 00 00 */	li r5, 0
/* 80830D98  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000886C@ha */
/* 80830D9C  38 C6 88 6C */	addi r6, r6, 0x886C /* 0x0000886C@l */
/* 80830DA0  38 E1 00 3C */	addi r7, r1, 0x3c
/* 80830DA4  39 00 00 00 */	li r8, 0
/* 80830DA8  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80830DAC  39 41 00 48 */	addi r10, r1, 0x48
/* 80830DB0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80830DB4  4B 81 C7 19 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80830DB8  90 7D 07 30 */	stw r3, 0x730(r29)
/* 80830DBC  48 00 00 54 */	b lbl_80830E10
lbl_80830DC0:
/* 80830DC0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80830DC4  38 80 00 01 */	li r4, 1
/* 80830DC8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80830DCC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80830DD0  40 82 00 18 */	bne lbl_80830DE8
/* 80830DD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80830DD8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80830DDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80830DE0  41 82 00 08 */	beq lbl_80830DE8
/* 80830DE4  38 80 00 00 */	li r4, 0
lbl_80830DE8:
/* 80830DE8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80830DEC  41 82 00 24 */	beq lbl_80830E10
/* 80830DF0  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x80832F90@ha */
/* 80830DF4  38 63 2F 90 */	addi r3, r3, l_HIO@l /* 0x80832F90@l */
/* 80830DF8  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80830DFC  98 1D 07 25 */	stb r0, 0x725(r29)
/* 80830E00  7F A3 EB 78 */	mr r3, r29
/* 80830E04  38 80 00 01 */	li r4, 1
/* 80830E08  38 A0 00 02 */	li r5, 2
/* 80830E0C  4B FF EE 75 */	bl setActionMode__8daE_ZM_cFii
lbl_80830E10:
/* 80830E10  39 61 00 70 */	addi r11, r1, 0x70
/* 80830E14  4B B3 14 11 */	bl _restgpr_28
/* 80830E18  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80830E1C  7C 08 03 A6 */	mtlr r0
/* 80830E20  38 21 00 70 */	addi r1, r1, 0x70
/* 80830E24  4E 80 00 20 */	blr 
