lbl_80B84B74:
/* 80B84B74  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80B84B78  7C 08 02 A6 */	mflr r0
/* 80B84B7C  90 01 01 34 */	stw r0, 0x134(r1)
/* 80B84B80  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80B84B84  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80B84B88  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 80B84B8C  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 80B84B90  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 80B84B94  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 80B84B98  39 61 01 00 */	addi r11, r1, 0x100
/* 80B84B9C  4B 7D D6 2D */	bl _savegpr_24
/* 80B84BA0  7C 79 1B 78 */	mr r25, r3
/* 80B84BA4  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B84BA8  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B84BAC  3B BF 00 00 */	addi r29, r31, 0
/* 80B84BB0  AB 9D 00 74 */	lha r28, 0x74(r29)
/* 80B84BB4  3B 60 00 06 */	li r27, 6
/* 80B84BB8  C3 E3 07 9C */	lfs f31, 0x79c(r3)
/* 80B84BBC  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B84BC0  2C 00 00 02 */	cmpwi r0, 2
/* 80B84BC4  41 82 01 18 */	beq lbl_80B84CDC
/* 80B84BC8  40 80 0F 18 */	bge lbl_80B85AE0
/* 80B84BCC  2C 00 00 00 */	cmpwi r0, 0
/* 80B84BD0  41 82 00 0C */	beq lbl_80B84BDC
/* 80B84BD4  48 00 0F 0C */	b lbl_80B85AE0
/* 80B84BD8  48 00 0F 08 */	b lbl_80B85AE0
lbl_80B84BDC:
/* 80B84BDC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B84BE0  D0 19 05 30 */	stfs f0, 0x530(r25)
/* 80B84BE4  D0 19 04 F8 */	stfs f0, 0x4f8(r25)
/* 80B84BE8  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 80B84BEC  D0 19 05 00 */	stfs f0, 0x500(r25)
/* 80B84BF0  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 80B84BF4  38 00 00 00 */	li r0, 0
/* 80B84BF8  98 19 15 3D */	stb r0, 0x153d(r25)
/* 80B84BFC  38 80 00 00 */	li r4, 0
/* 80B84C00  38 A0 00 00 */	li r5, 0
/* 80B84C04  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B84C08  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B84C0C  7D 89 03 A6 */	mtctr r12
/* 80B84C10  4E 80 04 21 */	bctrl 
/* 80B84C14  88 19 15 76 */	lbz r0, 0x1576(r25)
/* 80B84C18  28 00 00 00 */	cmplwi r0, 0
/* 80B84C1C  40 82 00 28 */	bne lbl_80B84C44
/* 80B84C20  7F 23 CB 78 */	mr r3, r25
/* 80B84C24  38 80 00 17 */	li r4, 0x17
/* 80B84C28  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B84C2C  38 A0 00 00 */	li r5, 0
/* 80B84C30  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B84C34  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B84C38  7D 89 03 A6 */	mtctr r12
/* 80B84C3C  4E 80 04 21 */	bctrl 
/* 80B84C40  48 00 00 24 */	b lbl_80B84C64
lbl_80B84C44:
/* 80B84C44  7F 23 CB 78 */	mr r3, r25
/* 80B84C48  38 80 00 16 */	li r4, 0x16
/* 80B84C4C  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B84C50  38 A0 00 00 */	li r5, 0
/* 80B84C54  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B84C58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B84C5C  7D 89 03 A6 */	mtctr r12
/* 80B84C60  4E 80 04 21 */	bctrl 
lbl_80B84C64:
/* 80B84C64  38 00 00 01 */	li r0, 1
/* 80B84C68  98 19 15 20 */	stb r0, 0x1520(r25)
/* 80B84C6C  38 00 00 00 */	li r0, 0
/* 80B84C70  98 19 07 BC */	stb r0, 0x7bc(r25)
/* 80B84C74  7F 23 CB 78 */	mr r3, r25
/* 80B84C78  38 80 00 00 */	li r4, 0
/* 80B84C7C  4B FF 9A 79 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B84C80  38 60 00 00 */	li r3, 0
/* 80B84C84  90 79 09 38 */	stw r3, 0x938(r25)
/* 80B84C88  90 79 09 6C */	stw r3, 0x96c(r25)
/* 80B84C8C  38 00 00 02 */	li r0, 2
/* 80B84C90  B0 19 14 E6 */	sth r0, 0x14e6(r25)
/* 80B84C94  98 79 15 3E */	stb r3, 0x153e(r25)
/* 80B84C98  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B84C9C  B0 19 15 36 */	sth r0, 0x1536(r25)
/* 80B84CA0  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B84CA4  B0 19 15 38 */	sth r0, 0x1538(r25)
/* 80B84CA8  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B84CAC  B0 19 15 3A */	sth r0, 0x153a(r25)
/* 80B84CB0  7F 23 CB 78 */	mr r3, r25
/* 80B84CB4  4B FF D5 85 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B84CB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B84CBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B84CC0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B84CC4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B84CC8  D0 19 15 00 */	stfs f0, 0x1500(r25)
/* 80B84CCC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B84CD0  D0 19 15 04 */	stfs f0, 0x1504(r25)
/* 80B84CD4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B84CD8  D0 19 15 08 */	stfs f0, 0x1508(r25)
lbl_80B84CDC:
/* 80B84CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B84CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B84CE4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80B84CE8  38 7F 00 00 */	addi r3, r31, 0
/* 80B84CEC  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80B84CF0  38 79 15 6C */	addi r3, r25, 0x156c
/* 80B84CF4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B84CF8  EC 41 00 28 */	fsubs f2, f1, f0
/* 80B84CFC  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80B84D00  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B84D04  4B 6E BA 3D */	bl cLib_chaseF__FPfff
/* 80B84D08  83 59 15 98 */	lwz r26, 0x1598(r25)
/* 80B84D0C  7F 23 CB 78 */	mr r3, r25
/* 80B84D10  38 81 00 CC */	addi r4, r1, 0xcc
/* 80B84D14  48 00 20 89 */	bl moveRiverPosCalc__11daNpc_zrA_cFR4cXyz
/* 80B84D18  88 19 15 3C */	lbz r0, 0x153c(r25)
/* 80B84D1C  28 00 00 00 */	cmplwi r0, 0
/* 80B84D20  41 82 07 50 */	beq lbl_80B85470
/* 80B84D24  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80B84D28  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80B84D2C  88 03 00 BC */	lbz r0, 0xbc(r3)
/* 80B84D30  98 19 15 0C */	stb r0, 0x150c(r25)
/* 80B84D34  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B84D38  80 63 00 04 */	lwz r3, 4(r3)
/* 80B84D3C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B84D40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B84D44  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B84D48  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B84D4C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B84D50  4B 7C 17 61 */	bl PSMTXCopy
/* 80B84D54  38 79 04 EC */	addi r3, r25, 0x4ec
/* 80B84D58  4B 48 81 19 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B84D5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B84D60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B84D64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B84D68  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B84D6C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B84D70  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B84D74  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B84D78  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B84D7C  88 19 15 3E */	lbz r0, 0x153e(r25)
/* 80B84D80  28 00 00 00 */	cmplwi r0, 0
/* 80B84D84  41 82 05 2C */	beq lbl_80B852B0
/* 80B84D88  88 19 15 77 */	lbz r0, 0x1577(r25)
/* 80B84D8C  28 00 00 00 */	cmplwi r0, 0
/* 80B84D90  41 82 00 4C */	beq lbl_80B84DDC
/* 80B84D94  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B84D98  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B84D9C  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80B84DA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84DA4  40 81 00 38 */	ble lbl_80B84DDC
/* 80B84DA8  C0 1F 07 8C */	lfs f0, 0x78c(r31)
/* 80B84DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84DB0  40 80 00 2C */	bge lbl_80B84DDC
/* 80B84DB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B84DB8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B84DBC  38 61 00 30 */	addi r3, r1, 0x30
/* 80B84DC0  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80B84DC4  C0 5F 07 80 */	lfs f2, 0x780(r31)
/* 80B84DC8  C0 7F 07 4C */	lfs f3, 0x74c(r31)
/* 80B84DCC  4B 6E AC 71 */	bl cLib_addCalc2__FPffff
/* 80B84DD0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B84DD4  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B84DD8  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B84DDC:
/* 80B84DDC  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B84DE0  38 81 00 CC */	addi r4, r1, 0xcc
/* 80B84DE4  4B 6E BE 21 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B84DE8  7C 60 1B 78 */	mr r0, r3
/* 80B84DEC  B0 01 00 36 */	sth r0, 0x36(r1)
/* 80B84DF0  38 79 15 38 */	addi r3, r25, 0x1538
/* 80B84DF4  7C 04 07 34 */	extsh r4, r0
/* 80B84DF8  38 A0 00 06 */	li r5, 6
/* 80B84DFC  7F 86 E3 78 */	mr r6, r28
/* 80B84E00  4B 6E B8 09 */	bl cLib_addCalcAngleS2__FPssss
/* 80B84E04  38 79 04 DE */	addi r3, r25, 0x4de
/* 80B84E08  A8 99 15 38 */	lha r4, 0x1538(r25)
/* 80B84E0C  38 A0 00 06 */	li r5, 6
/* 80B84E10  7F 86 E3 78 */	mr r6, r28
/* 80B84E14  4B 6E B7 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 80B84E18  C0 39 15 4C */	lfs f1, 0x154c(r25)
/* 80B84E1C  C0 19 15 44 */	lfs f0, 0x1544(r25)
/* 80B84E20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B84E24  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B84E28  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B84E2C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80B84E30  38 61 00 3C */	addi r3, r1, 0x3c
/* 80B84E34  4B 7C 23 05 */	bl PSVECSquareMag
/* 80B84E38  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B84E3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84E40  40 81 00 58 */	ble lbl_80B84E98
/* 80B84E44  FC 00 08 34 */	frsqrte f0, f1
/* 80B84E48  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B84E4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84E50  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B84E54  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84E58  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84E5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84E60  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84E64  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84E68  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84E6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84E70  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84E74  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84E78  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84E7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84E80  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84E84  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84E88  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84E8C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B84E90  FC 20 08 18 */	frsp f1, f1
/* 80B84E94  48 00 00 88 */	b lbl_80B84F1C
lbl_80B84E98:
/* 80B84E98  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B84E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84EA0  40 80 00 10 */	bge lbl_80B84EB0
/* 80B84EA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B84EA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B84EAC  48 00 00 70 */	b lbl_80B84F1C
lbl_80B84EB0:
/* 80B84EB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B84EB4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B84EB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B84EBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B84EC0  7C 03 00 00 */	cmpw r3, r0
/* 80B84EC4  41 82 00 14 */	beq lbl_80B84ED8
/* 80B84EC8  40 80 00 40 */	bge lbl_80B84F08
/* 80B84ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80B84ED0  41 82 00 20 */	beq lbl_80B84EF0
/* 80B84ED4  48 00 00 34 */	b lbl_80B84F08
lbl_80B84ED8:
/* 80B84ED8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B84EDC  41 82 00 0C */	beq lbl_80B84EE8
/* 80B84EE0  38 00 00 01 */	li r0, 1
/* 80B84EE4  48 00 00 28 */	b lbl_80B84F0C
lbl_80B84EE8:
/* 80B84EE8  38 00 00 02 */	li r0, 2
/* 80B84EEC  48 00 00 20 */	b lbl_80B84F0C
lbl_80B84EF0:
/* 80B84EF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B84EF4  41 82 00 0C */	beq lbl_80B84F00
/* 80B84EF8  38 00 00 05 */	li r0, 5
/* 80B84EFC  48 00 00 10 */	b lbl_80B84F0C
lbl_80B84F00:
/* 80B84F00  38 00 00 03 */	li r0, 3
/* 80B84F04  48 00 00 08 */	b lbl_80B84F0C
lbl_80B84F08:
/* 80B84F08  38 00 00 04 */	li r0, 4
lbl_80B84F0C:
/* 80B84F0C  2C 00 00 01 */	cmpwi r0, 1
/* 80B84F10  40 82 00 0C */	bne lbl_80B84F1C
/* 80B84F14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B84F18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B84F1C:
/* 80B84F1C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B84F20  D0 19 15 44 */	stfs f0, 0x1544(r25)
/* 80B84F24  D0 39 15 4C */	stfs f1, 0x154c(r25)
/* 80B84F28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B84F2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B84F30  A8 99 04 DE */	lha r4, 0x4de(r25)
/* 80B84F34  4B 48 74 A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B84F38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B84F3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B84F40  38 99 15 44 */	addi r4, r25, 0x1544
/* 80B84F44  7C 85 23 78 */	mr r5, r4
/* 80B84F48  4B 7C 1E 25 */	bl PSMTXMultVec
/* 80B84F4C  7F 23 CB 78 */	mr r3, r25
/* 80B84F50  7F 80 07 34 */	extsh r0, r28
/* 80B84F54  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B84F58  7C 00 01 94 */	addze r0, r0
/* 80B84F5C  7C 04 07 34 */	extsh r4, r0
/* 80B84F60  38 A0 00 0C */	li r5, 0xc
/* 80B84F64  38 D9 04 DE */	addi r6, r25, 0x4de
/* 80B84F68  38 F9 04 E0 */	addi r7, r25, 0x4e0
/* 80B84F6C  4B FF D0 4D */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B84F70  C0 39 15 48 */	lfs f1, 0x1548(r25)
/* 80B84F74  C0 1F 08 0C */	lfs f0, 0x80c(r31)
/* 80B84F78  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B84F7C  D0 19 15 48 */	stfs f0, 0x1548(r25)
/* 80B84F80  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B84F84  38 99 15 44 */	addi r4, r25, 0x1544
/* 80B84F88  7C 65 1B 78 */	mr r5, r3
/* 80B84F8C  4B 7C 21 05 */	bl PSVECAdd
/* 80B84F90  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B84F94  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80B84F98  40 80 01 20 */	bge lbl_80B850B8
/* 80B84F9C  C0 39 15 4C */	lfs f1, 0x154c(r25)
/* 80B84FA0  C0 19 15 44 */	lfs f0, 0x1544(r25)
/* 80B84FA4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B84FA8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B84FAC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B84FB0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B84FB4  38 61 00 54 */	addi r3, r1, 0x54
/* 80B84FB8  4B 7C 21 81 */	bl PSVECSquareMag
/* 80B84FBC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B84FC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84FC4  40 81 00 58 */	ble lbl_80B8501C
/* 80B84FC8  FC 00 08 34 */	frsqrte f0, f1
/* 80B84FCC  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B84FD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84FD4  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B84FD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84FDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84FE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84FE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84FE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84FEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84FF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84FF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84FF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84FFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85000  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85004  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85008  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8500C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85010  FC 41 00 32 */	fmul f2, f1, f0
/* 80B85014  FC 40 10 18 */	frsp f2, f2
/* 80B85018  48 00 00 90 */	b lbl_80B850A8
lbl_80B8501C:
/* 80B8501C  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B85020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85024  40 80 00 10 */	bge lbl_80B85034
/* 80B85028  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8502C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B85030  48 00 00 78 */	b lbl_80B850A8
lbl_80B85034:
/* 80B85034  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B85038  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80B8503C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B85040  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B85044  7C 03 00 00 */	cmpw r3, r0
/* 80B85048  41 82 00 14 */	beq lbl_80B8505C
/* 80B8504C  40 80 00 40 */	bge lbl_80B8508C
/* 80B85050  2C 03 00 00 */	cmpwi r3, 0
/* 80B85054  41 82 00 20 */	beq lbl_80B85074
/* 80B85058  48 00 00 34 */	b lbl_80B8508C
lbl_80B8505C:
/* 80B8505C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B85060  41 82 00 0C */	beq lbl_80B8506C
/* 80B85064  38 00 00 01 */	li r0, 1
/* 80B85068  48 00 00 28 */	b lbl_80B85090
lbl_80B8506C:
/* 80B8506C  38 00 00 02 */	li r0, 2
/* 80B85070  48 00 00 20 */	b lbl_80B85090
lbl_80B85074:
/* 80B85074  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B85078  41 82 00 0C */	beq lbl_80B85084
/* 80B8507C  38 00 00 05 */	li r0, 5
/* 80B85080  48 00 00 10 */	b lbl_80B85090
lbl_80B85084:
/* 80B85084  38 00 00 03 */	li r0, 3
/* 80B85088  48 00 00 08 */	b lbl_80B85090
lbl_80B8508C:
/* 80B8508C  38 00 00 04 */	li r0, 4
lbl_80B85090:
/* 80B85090  2C 00 00 01 */	cmpwi r0, 1
/* 80B85094  40 82 00 10 */	bne lbl_80B850A4
/* 80B85098  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8509C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B850A0  48 00 00 08 */	b lbl_80B850A8
lbl_80B850A4:
/* 80B850A4  FC 40 08 90 */	fmr f2, f1
lbl_80B850A8:
/* 80B850A8  C0 39 15 48 */	lfs f1, 0x1548(r25)
/* 80B850AC  4B 6E 25 C9 */	bl cM_atan2s__Fff
/* 80B850B0  7C 03 00 D0 */	neg r0, r3
/* 80B850B4  B0 19 04 DC */	sth r0, 0x4dc(r25)
lbl_80B850B8:
/* 80B850B8  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B850BC  B0 19 08 F0 */	sth r0, 0x8f0(r25)
/* 80B850C0  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B850C4  B0 19 08 F2 */	sth r0, 0x8f2(r25)
/* 80B850C8  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B850CC  B0 19 08 F4 */	sth r0, 0x8f4(r25)
/* 80B850D0  A8 19 08 F0 */	lha r0, 0x8f0(r25)
/* 80B850D4  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 80B850D8  A8 19 08 F2 */	lha r0, 0x8f2(r25)
/* 80B850DC  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B850E0  A8 19 08 F4 */	lha r0, 0x8f4(r25)
/* 80B850E4  B0 19 04 E8 */	sth r0, 0x4e8(r25)
/* 80B850E8  80 19 05 FC */	lwz r0, 0x5fc(r25)
/* 80B850EC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B850F0  41 82 01 B8 */	beq lbl_80B852A8
/* 80B850F4  88 19 15 77 */	lbz r0, 0x1577(r25)
/* 80B850F8  28 00 00 00 */	cmplwi r0, 0
/* 80B850FC  41 82 00 94 */	beq lbl_80B85190
/* 80B85100  C0 39 15 48 */	lfs f1, 0x1548(r25)
/* 80B85104  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B85108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8510C  4C 40 13 82 */	cror 2, 0, 2
/* 80B85110  40 82 00 80 */	bne lbl_80B85190
/* 80B85114  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 80B85118  EC 02 08 2A */	fadds f0, f2, f1
/* 80B8511C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80B85120  4C 40 13 82 */	cror 2, 0, 2
/* 80B85124  40 82 00 6C */	bne lbl_80B85190
/* 80B85128  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80B8512C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B85130  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80B85134  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80B85138  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B8513C  D3 E1 00 AC */	stfs f31, 0xac(r1)
/* 80B85140  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80B85144  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B85148  38 80 00 00 */	li r4, 0
/* 80B8514C  4B 49 A7 31 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80B85150  38 00 00 00 */	li r0, 0
/* 80B85154  98 19 15 77 */	stb r0, 0x1577(r25)
/* 80B85158  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600C4@ha */
/* 80B8515C  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000600C4@l */
/* 80B85160  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B85164  38 79 0B 48 */	addi r3, r25, 0xb48
/* 80B85168  38 81 00 24 */	addi r4, r1, 0x24
/* 80B8516C  38 A0 00 00 */	li r5, 0
/* 80B85170  38 C0 FF FF */	li r6, -1
/* 80B85174  81 99 0B 48 */	lwz r12, 0xb48(r25)
/* 80B85178  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B8517C  7D 89 03 A6 */	mtctr r12
/* 80B85180  4E 80 04 21 */	bctrl 
/* 80B85184  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B85188  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B8518C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B85190:
/* 80B85190  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 80B85194  38 7F 00 00 */	addi r3, r31, 0
/* 80B85198  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B8519C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80B851A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B851A4  4C 40 13 82 */	cror 2, 0, 2
/* 80B851A8  40 82 01 00 */	bne lbl_80B852A8
/* 80B851AC  38 00 00 00 */	li r0, 0
/* 80B851B0  98 19 15 3E */	stb r0, 0x153e(r25)
/* 80B851B4  98 19 15 3C */	stb r0, 0x153c(r25)
/* 80B851B8  38 79 15 44 */	addi r3, r25, 0x1544
/* 80B851BC  4B 7C 1F 7D */	bl PSVECSquareMag
/* 80B851C0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B851C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B851C8  40 81 00 58 */	ble lbl_80B85220
/* 80B851CC  FC 00 08 34 */	frsqrte f0, f1
/* 80B851D0  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B851D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B851D8  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B851DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B851E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B851E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B851E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B851EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B851F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B851F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B851F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B851FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85200  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85204  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85208  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8520C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85210  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85214  FC 21 00 32 */	fmul f1, f1, f0
/* 80B85218  FC 20 08 18 */	frsp f1, f1
/* 80B8521C  48 00 00 88 */	b lbl_80B852A4
lbl_80B85220:
/* 80B85220  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B85224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85228  40 80 00 10 */	bge lbl_80B85238
/* 80B8522C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B85230  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B85234  48 00 00 70 */	b lbl_80B852A4
lbl_80B85238:
/* 80B85238  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B8523C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80B85240  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B85244  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B85248  7C 03 00 00 */	cmpw r3, r0
/* 80B8524C  41 82 00 14 */	beq lbl_80B85260
/* 80B85250  40 80 00 40 */	bge lbl_80B85290
/* 80B85254  2C 03 00 00 */	cmpwi r3, 0
/* 80B85258  41 82 00 20 */	beq lbl_80B85278
/* 80B8525C  48 00 00 34 */	b lbl_80B85290
lbl_80B85260:
/* 80B85260  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B85264  41 82 00 0C */	beq lbl_80B85270
/* 80B85268  38 00 00 01 */	li r0, 1
/* 80B8526C  48 00 00 28 */	b lbl_80B85294
lbl_80B85270:
/* 80B85270  38 00 00 02 */	li r0, 2
/* 80B85274  48 00 00 20 */	b lbl_80B85294
lbl_80B85278:
/* 80B85278  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8527C  41 82 00 0C */	beq lbl_80B85288
/* 80B85280  38 00 00 05 */	li r0, 5
/* 80B85284  48 00 00 10 */	b lbl_80B85294
lbl_80B85288:
/* 80B85288  38 00 00 03 */	li r0, 3
/* 80B8528C  48 00 00 08 */	b lbl_80B85294
lbl_80B85290:
/* 80B85290  38 00 00 04 */	li r0, 4
lbl_80B85294:
/* 80B85294  2C 00 00 01 */	cmpwi r0, 1
/* 80B85298  40 82 00 0C */	bne lbl_80B852A4
/* 80B8529C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B852A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B852A4:
/* 80B852A4  D0 39 15 24 */	stfs f1, 0x1524(r25)
lbl_80B852A8:
/* 80B852A8  38 60 00 01 */	li r3, 1
/* 80B852AC  48 00 08 38 */	b lbl_80B85AE4
lbl_80B852B0:
/* 80B852B0  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B852B4  38 81 00 CC */	addi r4, r1, 0xcc
/* 80B852B8  4B 6E B9 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B852BC  3B 01 00 36 */	addi r24, r1, 0x36
/* 80B852C0  B0 61 00 36 */	sth r3, 0x36(r1)
/* 80B852C4  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B852C8  3B 41 00 38 */	addi r26, r1, 0x38
/* 80B852CC  B0 01 00 38 */	sth r0, 0x38(r1)
/* 80B852D0  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B852D4  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80B852D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B852DC  40 81 01 80 */	ble lbl_80B8545C
/* 80B852E0  38 00 D0 00 */	li r0, -12288
/* 80B852E4  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80B852E8  80 19 05 FC */	lwz r0, 0x5fc(r25)
/* 80B852EC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B852F0  41 82 02 2C */	beq lbl_80B8551C
/* 80B852F4  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 80B852F8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B852FC  40 80 00 18 */	bge lbl_80B85314
/* 80B85300  A8 1D 00 74 */	lha r0, 0x74(r29)
/* 80B85304  54 00 08 3C */	slwi r0, r0, 1
/* 80B85308  7C 1C 07 34 */	extsh r28, r0
/* 80B8530C  3B 60 00 02 */	li r27, 2
/* 80B85310  48 00 02 0C */	b lbl_80B8551C
lbl_80B85314:
/* 80B85314  88 19 15 77 */	lbz r0, 0x1577(r25)
/* 80B85318  28 00 00 00 */	cmplwi r0, 0
/* 80B8531C  40 82 00 64 */	bne lbl_80B85380
/* 80B85320  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80B85324  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B85328  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 80B8532C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80B85330  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B85334  D3 E1 00 A0 */	stfs f31, 0xa0(r1)
/* 80B85338  38 61 00 9C */	addi r3, r1, 0x9c
/* 80B8533C  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B85340  38 80 00 00 */	li r4, 0
/* 80B85344  4B 49 A5 39 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80B85348  38 00 00 01 */	li r0, 1
/* 80B8534C  98 19 15 77 */	stb r0, 0x1577(r25)
/* 80B85350  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D5@ha */
/* 80B85354  38 03 00 D5 */	addi r0, r3, 0x00D5 /* 0x000600D5@l */
/* 80B85358  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B8535C  38 79 0B 48 */	addi r3, r25, 0xb48
/* 80B85360  38 81 00 20 */	addi r4, r1, 0x20
/* 80B85364  38 A0 00 00 */	li r5, 0
/* 80B85368  38 C0 FF FF */	li r6, -1
/* 80B8536C  81 99 0B 48 */	lwz r12, 0xb48(r25)
/* 80B85370  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B85374  7D 89 03 A6 */	mtctr r12
/* 80B85378  4E 80 04 21 */	bctrl 
/* 80B8537C  48 00 01 A0 */	b lbl_80B8551C
lbl_80B85380:
/* 80B85380  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B85384  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B85388  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80B8538C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85390  40 81 00 38 */	ble lbl_80B853C8
/* 80B85394  C0 1F 07 8C */	lfs f0, 0x78c(r31)
/* 80B85398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8539C  40 80 00 2C */	bge lbl_80B853C8
/* 80B853A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B853A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B853A8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B853AC  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80B853B0  C0 5F 07 80 */	lfs f2, 0x780(r31)
/* 80B853B4  C0 7F 07 A8 */	lfs f3, 0x7a8(r31)
/* 80B853B8  4B 6E A6 85 */	bl cLib_addCalc2__FPffff
/* 80B853BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B853C0  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B853C4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B853C8:
/* 80B853C8  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80B853CC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80B853D0  40 81 01 4C */	ble lbl_80B8551C
/* 80B853D4  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B853D8  2C 00 E0 00 */	cmpwi r0, -8192
/* 80B853DC  40 80 01 40 */	bge lbl_80B8551C
/* 80B853E0  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B853E4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B853E8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B853EC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80B853F0  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80B853F4  7F 23 CB 78 */	mr r3, r25
/* 80B853F8  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B853FC  4B FF D1 89 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B85400  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80B85404  D0 19 15 44 */	stfs f0, 0x1544(r25)
/* 80B85408  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80B8540C  D0 19 15 48 */	stfs f0, 0x1548(r25)
/* 80B85410  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80B85414  D0 19 15 4C */	stfs f0, 0x154c(r25)
/* 80B85418  38 00 00 01 */	li r0, 1
/* 80B8541C  98 19 15 3E */	stb r0, 0x153e(r25)
/* 80B85420  C0 39 15 48 */	lfs f1, 0x1548(r25)
/* 80B85424  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80B85428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8542C  40 81 00 08 */	ble lbl_80B85434
/* 80B85430  D0 19 15 48 */	stfs f0, 0x1548(r25)
lbl_80B85434:
/* 80B85434  7F 23 CB 78 */	mr r3, r25
/* 80B85438  7F 84 E3 78 */	mr r4, r28
/* 80B8543C  38 A0 00 06 */	li r5, 6
/* 80B85440  7F 06 C3 78 */	mr r6, r24
/* 80B85444  7F 47 D3 78 */	mr r7, r26
/* 80B85448  4B FF CB 71 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B8544C  A8 01 00 38 */	lha r0, 0x38(r1)
/* 80B85450  B0 19 04 E0 */	sth r0, 0x4e0(r25)
/* 80B85454  38 60 00 01 */	li r3, 1
/* 80B85458  48 00 06 8C */	b lbl_80B85AE4
lbl_80B8545C:
/* 80B8545C  38 61 00 CC */	addi r3, r1, 0xcc
/* 80B85460  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80B85464  4B 6E B8 11 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B85468  B0 61 00 34 */	sth r3, 0x34(r1)
/* 80B8546C  48 00 00 B0 */	b lbl_80B8551C
lbl_80B85470:
/* 80B85470  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80B85474  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80B85478  88 63 00 BC */	lbz r3, 0xbc(r3)
/* 80B8547C  88 19 15 0D */	lbz r0, 0x150d(r25)
/* 80B85480  28 00 00 01 */	cmplwi r0, 1
/* 80B85484  41 82 00 18 */	beq lbl_80B8549C
/* 80B85488  88 19 15 0C */	lbz r0, 0x150c(r25)
/* 80B8548C  7C 03 00 40 */	cmplw r3, r0
/* 80B85490  40 81 00 0C */	ble lbl_80B8549C
/* 80B85494  38 00 00 01 */	li r0, 1
/* 80B85498  98 19 15 3C */	stb r0, 0x153c(r25)
lbl_80B8549C:
/* 80B8549C  98 79 15 0C */	stb r3, 0x150c(r25)
/* 80B854A0  80 99 15 98 */	lwz r4, 0x1598(r25)
/* 80B854A4  80 79 0C 1C */	lwz r3, 0xc1c(r25)
/* 80B854A8  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B854AC  38 03 FF FF */	addi r0, r3, -1
/* 80B854B0  7C 04 00 00 */	cmpw r4, r0
/* 80B854B4  40 82 00 20 */	bne lbl_80B854D4
/* 80B854B8  38 00 10 00 */	li r0, 0x1000
/* 80B854BC  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80B854C0  38 00 C0 00 */	li r0, -16384
/* 80B854C4  B0 01 00 36 */	sth r0, 0x36(r1)
/* 80B854C8  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B854CC  B0 01 00 38 */	sth r0, 0x38(r1)
/* 80B854D0  48 00 00 2C */	b lbl_80B854FC
lbl_80B854D4:
/* 80B854D4  38 61 00 CC */	addi r3, r1, 0xcc
/* 80B854D8  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80B854DC  4B 6E B7 99 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B854E0  B0 61 00 34 */	sth r3, 0x34(r1)
/* 80B854E4  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B854E8  38 81 00 CC */	addi r4, r1, 0xcc
/* 80B854EC  4B 6E B7 19 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B854F0  B0 61 00 36 */	sth r3, 0x36(r1)
/* 80B854F4  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B854F8  B0 01 00 38 */	sth r0, 0x38(r1)
lbl_80B854FC:
/* 80B854FC  88 19 15 0D */	lbz r0, 0x150d(r25)
/* 80B85500  28 00 00 01 */	cmplwi r0, 1
/* 80B85504  40 82 00 18 */	bne lbl_80B8551C
/* 80B85508  80 19 15 98 */	lwz r0, 0x1598(r25)
/* 80B8550C  7C 1A 00 00 */	cmpw r26, r0
/* 80B85510  41 82 00 0C */	beq lbl_80B8551C
/* 80B85514  7F 23 CB 78 */	mr r3, r25
/* 80B85518  48 00 19 61 */	bl createRuppi__11daNpc_zrA_cFv
lbl_80B8551C:
/* 80B8551C  38 61 00 84 */	addi r3, r1, 0x84
/* 80B85520  38 99 15 00 */	addi r4, r25, 0x1500
/* 80B85524  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B85528  4B 6E 16 0D */	bl __mi__4cXyzCFRC3Vec
/* 80B8552C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B85530  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B85534  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80B85538  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B8553C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B85540  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B85544  38 61 00 90 */	addi r3, r1, 0x90
/* 80B85548  4B 7C 1B F1 */	bl PSVECSquareMag
/* 80B8554C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B85550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85554  40 81 00 58 */	ble lbl_80B855AC
/* 80B85558  FC 00 08 34 */	frsqrte f0, f1
/* 80B8555C  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B85560  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85564  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B85568  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8556C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85570  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85574  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85578  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8557C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85580  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85584  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85588  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8558C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85590  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85594  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85598  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8559C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B855A0  FC 21 00 32 */	fmul f1, f1, f0
/* 80B855A4  FC 20 08 18 */	frsp f1, f1
/* 80B855A8  48 00 00 88 */	b lbl_80B85630
lbl_80B855AC:
/* 80B855AC  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B855B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B855B4  40 80 00 10 */	bge lbl_80B855C4
/* 80B855B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B855BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B855C0  48 00 00 70 */	b lbl_80B85630
lbl_80B855C4:
/* 80B855C4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B855C8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B855CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B855D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B855D4  7C 03 00 00 */	cmpw r3, r0
/* 80B855D8  41 82 00 14 */	beq lbl_80B855EC
/* 80B855DC  40 80 00 40 */	bge lbl_80B8561C
/* 80B855E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B855E4  41 82 00 20 */	beq lbl_80B85604
/* 80B855E8  48 00 00 34 */	b lbl_80B8561C
lbl_80B855EC:
/* 80B855EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B855F0  41 82 00 0C */	beq lbl_80B855FC
/* 80B855F4  38 00 00 01 */	li r0, 1
/* 80B855F8  48 00 00 28 */	b lbl_80B85620
lbl_80B855FC:
/* 80B855FC  38 00 00 02 */	li r0, 2
/* 80B85600  48 00 00 20 */	b lbl_80B85620
lbl_80B85604:
/* 80B85604  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B85608  41 82 00 0C */	beq lbl_80B85614
/* 80B8560C  38 00 00 05 */	li r0, 5
/* 80B85610  48 00 00 10 */	b lbl_80B85620
lbl_80B85614:
/* 80B85614  38 00 00 03 */	li r0, 3
/* 80B85618  48 00 00 08 */	b lbl_80B85620
lbl_80B8561C:
/* 80B8561C  38 00 00 04 */	li r0, 4
lbl_80B85620:
/* 80B85620  2C 00 00 01 */	cmpwi r0, 1
/* 80B85624  40 82 00 0C */	bne lbl_80B85630
/* 80B85628  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8562C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B85630:
/* 80B85630  3B BF 00 00 */	addi r29, r31, 0
/* 80B85634  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80B85638  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8563C  40 80 00 0C */	bge lbl_80B85648
/* 80B85640  FF C0 00 90 */	fmr f30, f0
/* 80B85644  48 00 00 0C */	b lbl_80B85650
lbl_80B85648:
/* 80B85648  C0 1F 08 10 */	lfs f0, 0x810(r31)
/* 80B8564C  EF C1 00 32 */	fmuls f30, f1, f0
lbl_80B85650:
/* 80B85650  38 61 00 78 */	addi r3, r1, 0x78
/* 80B85654  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B85658  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80B8565C  4B 6E 14 D9 */	bl __mi__4cXyzCFRC3Vec
/* 80B85660  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B85664  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B85668  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8566C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B85670  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80B85674  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B85678  38 61 00 48 */	addi r3, r1, 0x48
/* 80B8567C  4B 7C 1A BD */	bl PSVECSquareMag
/* 80B85680  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B85684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85688  40 81 00 58 */	ble lbl_80B856E0
/* 80B8568C  FC 00 08 34 */	frsqrte f0, f1
/* 80B85690  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B85694  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85698  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B8569C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B856A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B856A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B856A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B856AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B856B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B856B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B856B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B856BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B856C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B856C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B856C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B856CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B856D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B856D4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B856D8  FC 20 08 18 */	frsp f1, f1
/* 80B856DC  48 00 00 88 */	b lbl_80B85764
lbl_80B856E0:
/* 80B856E0  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B856E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B856E8  40 80 00 10 */	bge lbl_80B856F8
/* 80B856EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B856F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B856F4  48 00 00 70 */	b lbl_80B85764
lbl_80B856F8:
/* 80B856F8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B856FC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B85700  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B85704  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B85708  7C 03 00 00 */	cmpw r3, r0
/* 80B8570C  41 82 00 14 */	beq lbl_80B85720
/* 80B85710  40 80 00 40 */	bge lbl_80B85750
/* 80B85714  2C 03 00 00 */	cmpwi r3, 0
/* 80B85718  41 82 00 20 */	beq lbl_80B85738
/* 80B8571C  48 00 00 34 */	b lbl_80B85750
lbl_80B85720:
/* 80B85720  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B85724  41 82 00 0C */	beq lbl_80B85730
/* 80B85728  38 00 00 01 */	li r0, 1
/* 80B8572C  48 00 00 28 */	b lbl_80B85754
lbl_80B85730:
/* 80B85730  38 00 00 02 */	li r0, 2
/* 80B85734  48 00 00 20 */	b lbl_80B85754
lbl_80B85738:
/* 80B85738  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8573C  41 82 00 0C */	beq lbl_80B85748
/* 80B85740  38 00 00 05 */	li r0, 5
/* 80B85744  48 00 00 10 */	b lbl_80B85754
lbl_80B85748:
/* 80B85748  38 00 00 03 */	li r0, 3
/* 80B8574C  48 00 00 08 */	b lbl_80B85754
lbl_80B85750:
/* 80B85750  38 00 00 04 */	li r0, 4
lbl_80B85754:
/* 80B85754  2C 00 00 01 */	cmpwi r0, 1
/* 80B85758  40 82 00 0C */	bne lbl_80B85764
/* 80B8575C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B85760  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B85764:
/* 80B85764  C0 1F 07 B0 */	lfs f0, 0x7b0(r31)
/* 80B85768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8576C  40 80 00 10 */	bge lbl_80B8577C
/* 80B85770  A8 61 00 34 */	lha r3, 0x34(r1)
/* 80B85774  38 03 10 00 */	addi r0, r3, 0x1000
/* 80B85778  B0 01 00 34 */	sth r0, 0x34(r1)
lbl_80B8577C:
/* 80B8577C  88 19 15 3C */	lbz r0, 0x153c(r25)
/* 80B85780  28 00 00 00 */	cmplwi r0, 0
/* 80B85784  41 82 00 28 */	beq lbl_80B857AC
/* 80B85788  C0 3F 07 CC */	lfs f1, 0x7cc(r31)
/* 80B8578C  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80B85790  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B85794  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80B85798  40 80 00 08 */	bge lbl_80B857A0
/* 80B8579C  FF C0 00 90 */	fmr f30, f0
lbl_80B857A0:
/* 80B857A0  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 80B857A4  EF DE 00 32 */	fmuls f30, f30, f0
/* 80B857A8  48 00 00 DC */	b lbl_80B85884
lbl_80B857AC:
/* 80B857AC  80 99 15 98 */	lwz r4, 0x1598(r25)
/* 80B857B0  A0 19 0C 18 */	lhz r0, 0xc18(r25)
/* 80B857B4  7C 04 00 00 */	cmpw r4, r0
/* 80B857B8  41 80 00 CC */	blt lbl_80B85884
/* 80B857BC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B857C0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B857C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B857C8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B857CC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B857D0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B857D4  38 79 0C 18 */	addi r3, r25, 0xc18
/* 80B857D8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80B857DC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80B857E0  4B FF 36 29 */	bl chkPassDst__16daNpc_zrA_Path_cFUs4cXyz
/* 80B857E4  FF A0 08 90 */	fmr f29, f1
/* 80B857E8  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80B857EC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B857F0  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80B857F4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B857F8  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80B857FC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B85800  38 79 0C 18 */	addi r3, r25, 0xc18
/* 80B85804  80 19 15 98 */	lwz r0, 0x1598(r25)
/* 80B85808  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80B8580C  38 A1 00 60 */	addi r5, r1, 0x60
/* 80B85810  4B FF 35 F9 */	bl chkPassDst__16daNpc_zrA_Path_cFUs4cXyz
/* 80B85814  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80B85818  C0 1F 08 14 */	lfs f0, 0x814(r31)
/* 80B8581C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85820  40 81 00 0C */	ble lbl_80B8582C
/* 80B85824  C3 DF 00 B0 */	lfs f30, 0xb0(r31)
/* 80B85828  48 00 00 30 */	b lbl_80B85858
lbl_80B8582C:
/* 80B8582C  C0 1F 08 18 */	lfs f0, 0x818(r31)
/* 80B85830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85834  40 81 00 10 */	ble lbl_80B85844
/* 80B85838  C0 1F 08 1C */	lfs f0, 0x81c(r31)
/* 80B8583C  EF DE 00 32 */	fmuls f30, f30, f0
/* 80B85840  48 00 00 18 */	b lbl_80B85858
lbl_80B85844:
/* 80B85844  C0 1F 08 20 */	lfs f0, 0x820(r31)
/* 80B85848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8584C  40 81 00 0C */	ble lbl_80B85858
/* 80B85850  C0 1F 07 A8 */	lfs f0, 0x7a8(r31)
/* 80B85854  EF DE 00 32 */	fmuls f30, f30, f0
lbl_80B85858:
/* 80B85858  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8585C  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80B85860  40 82 00 24 */	bne lbl_80B85884
/* 80B85864  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B85868  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80B8586C  4B 6E B4 09 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B85870  B0 61 00 34 */	sth r3, 0x34(r1)
/* 80B85874  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B85878  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B8587C  4B 6E B3 89 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B85880  B0 61 00 36 */	sth r3, 0x36(r1)
lbl_80B85884:
/* 80B85884  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B85888  D0 19 15 00 */	stfs f0, 0x1500(r25)
/* 80B8588C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B85890  D0 19 15 04 */	stfs f0, 0x1504(r25)
/* 80B85894  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B85898  D0 19 15 08 */	stfs f0, 0x1508(r25)
/* 80B8589C  38 79 15 24 */	addi r3, r25, 0x1524
/* 80B858A0  FC 20 F0 90 */	fmr f1, f30
/* 80B858A4  C0 5F 08 24 */	lfs f2, 0x824(r31)
/* 80B858A8  C0 7F 07 98 */	lfs f3, 0x798(r31)
/* 80B858AC  4B 6E A1 91 */	bl cLib_addCalc2__FPffff
/* 80B858B0  7F 23 CB 78 */	mr r3, r25
/* 80B858B4  38 81 00 34 */	addi r4, r1, 0x34
/* 80B858B8  38 B9 15 36 */	addi r5, r25, 0x1536
/* 80B858BC  7F 66 DB 78 */	mr r6, r27
/* 80B858C0  7F 87 E3 78 */	mr r7, r28
/* 80B858C4  4B FF CC 31 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B858C8  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B858CC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B858D0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B858D4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80B858D8  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80B858DC  7F 23 CB 78 */	mr r3, r25
/* 80B858E0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B858E4  4B FF CC A1 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B858E8  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B858EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B858F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B858F4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B858F8  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80B858FC  41 82 01 40 */	beq lbl_80B85A3C
/* 80B85900  38 61 00 90 */	addi r3, r1, 0x90
/* 80B85904  4B 7C 18 35 */	bl PSVECSquareMag
/* 80B85908  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8590C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85910  40 81 00 58 */	ble lbl_80B85968
/* 80B85914  FC 00 08 34 */	frsqrte f0, f1
/* 80B85918  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B8591C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85920  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B85924  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85928  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8592C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85930  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85934  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85938  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8593C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85940  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85944  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85948  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8594C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85950  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85954  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85958  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8595C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B85960  FC 20 08 18 */	frsp f1, f1
/* 80B85964  48 00 00 88 */	b lbl_80B859EC
lbl_80B85968:
/* 80B85968  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B8596C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85970  40 80 00 10 */	bge lbl_80B85980
/* 80B85974  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B85978  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B8597C  48 00 00 70 */	b lbl_80B859EC
lbl_80B85980:
/* 80B85980  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B85984  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B85988  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8598C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B85990  7C 03 00 00 */	cmpw r3, r0
/* 80B85994  41 82 00 14 */	beq lbl_80B859A8
/* 80B85998  40 80 00 40 */	bge lbl_80B859D8
/* 80B8599C  2C 03 00 00 */	cmpwi r3, 0
/* 80B859A0  41 82 00 20 */	beq lbl_80B859C0
/* 80B859A4  48 00 00 34 */	b lbl_80B859D8
lbl_80B859A8:
/* 80B859A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B859AC  41 82 00 0C */	beq lbl_80B859B8
/* 80B859B0  38 00 00 01 */	li r0, 1
/* 80B859B4  48 00 00 28 */	b lbl_80B859DC
lbl_80B859B8:
/* 80B859B8  38 00 00 02 */	li r0, 2
/* 80B859BC  48 00 00 20 */	b lbl_80B859DC
lbl_80B859C0:
/* 80B859C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B859C4  41 82 00 0C */	beq lbl_80B859D0
/* 80B859C8  38 00 00 05 */	li r0, 5
/* 80B859CC  48 00 00 10 */	b lbl_80B859DC
lbl_80B859D0:
/* 80B859D0  38 00 00 03 */	li r0, 3
/* 80B859D4  48 00 00 08 */	b lbl_80B859DC
lbl_80B859D8:
/* 80B859D8  38 00 00 04 */	li r0, 4
lbl_80B859DC:
/* 80B859DC  2C 00 00 01 */	cmpwi r0, 1
/* 80B859E0  40 82 00 0C */	bne lbl_80B859EC
/* 80B859E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B859E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B859EC:
/* 80B859EC  C0 19 15 24 */	lfs f0, 0x1524(r25)
/* 80B859F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B859F4  C0 1F 08 28 */	lfs f0, 0x828(r31)
/* 80B859F8  EC 41 00 24 */	fdivs f2, f1, f0
/* 80B859FC  38 61 00 28 */	addi r3, r1, 0x28
/* 80B85A00  C0 3F 07 80 */	lfs f1, 0x780(r31)
/* 80B85A04  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B85A08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B85A0C  40 80 00 08 */	bge lbl_80B85A14
/* 80B85A10  48 00 00 18 */	b lbl_80B85A28
lbl_80B85A14:
/* 80B85A14  C0 1F 08 2C */	lfs f0, 0x82c(r31)
/* 80B85A18  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B85A1C  40 81 00 08 */	ble lbl_80B85A24
/* 80B85A20  48 00 00 08 */	b lbl_80B85A28
lbl_80B85A24:
/* 80B85A24  FC 00 10 90 */	fmr f0, f2
lbl_80B85A28:
/* 80B85A28  EC 21 00 2A */	fadds f1, f1, f0
/* 80B85A2C  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B85A30  C0 7F 08 30 */	lfs f3, 0x830(r31)
/* 80B85A34  4B 6E A0 09 */	bl cLib_addCalc2__FPffff
/* 80B85A38  48 00 00 18 */	b lbl_80B85A50
lbl_80B85A3C:
/* 80B85A3C  38 61 00 28 */	addi r3, r1, 0x28
/* 80B85A40  C0 3F 08 34 */	lfs f1, 0x834(r31)
/* 80B85A44  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B85A48  C0 7F 08 30 */	lfs f3, 0x830(r31)
/* 80B85A4C  4B 6E 9F F1 */	bl cLib_addCalc2__FPffff
lbl_80B85A50:
/* 80B85A50  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B85A54  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B85A58  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B85A5C  88 19 15 3C */	lbz r0, 0x153c(r25)
/* 80B85A60  28 00 00 00 */	cmplwi r0, 0
/* 80B85A64  40 82 00 2C */	bne lbl_80B85A90
/* 80B85A68  80 19 05 FC */	lwz r0, 0x5fc(r25)
/* 80B85A6C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B85A70  41 82 00 20 */	beq lbl_80B85A90
/* 80B85A74  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 80B85A78  38 7F 00 00 */	addi r3, r31, 0
/* 80B85A7C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B85A80  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80B85A84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85A88  40 81 00 08 */	ble lbl_80B85A90
/* 80B85A8C  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
lbl_80B85A90:
/* 80B85A90  7F 23 CB 78 */	mr r3, r25
/* 80B85A94  7F 84 E3 78 */	mr r4, r28
/* 80B85A98  7F 65 DB 78 */	mr r5, r27
/* 80B85A9C  38 C1 00 36 */	addi r6, r1, 0x36
/* 80B85AA0  38 E1 00 38 */	addi r7, r1, 0x38
/* 80B85AA4  4B FF C5 15 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B85AA8  A8 01 00 38 */	lha r0, 0x38(r1)
/* 80B85AAC  B0 19 04 E0 */	sth r0, 0x4e0(r25)
/* 80B85AB0  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B85AB4  B0 19 08 F0 */	sth r0, 0x8f0(r25)
/* 80B85AB8  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B85ABC  B0 19 08 F2 */	sth r0, 0x8f2(r25)
/* 80B85AC0  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B85AC4  B0 19 08 F4 */	sth r0, 0x8f4(r25)
/* 80B85AC8  A8 19 08 F0 */	lha r0, 0x8f0(r25)
/* 80B85ACC  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 80B85AD0  A8 19 08 F2 */	lha r0, 0x8f2(r25)
/* 80B85AD4  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B85AD8  A8 19 08 F4 */	lha r0, 0x8f4(r25)
/* 80B85ADC  B0 19 04 E8 */	sth r0, 0x4e8(r25)
lbl_80B85AE0:
/* 80B85AE0  38 60 00 01 */	li r3, 1
lbl_80B85AE4:
/* 80B85AE4  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 80B85AE8  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80B85AEC  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 80B85AF0  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 80B85AF4  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 80B85AF8  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 80B85AFC  39 61 01 00 */	addi r11, r1, 0x100
/* 80B85B00  4B 7D C7 15 */	bl _restgpr_24
/* 80B85B04  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80B85B08  7C 08 03 A6 */	mtlr r0
/* 80B85B0C  38 21 01 30 */	addi r1, r1, 0x130
/* 80B85B10  4E 80 00 20 */	blr 
