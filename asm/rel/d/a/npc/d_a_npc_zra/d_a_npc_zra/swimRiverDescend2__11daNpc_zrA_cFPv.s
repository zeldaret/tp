lbl_80B85B14:
/* 80B85B14  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B85B18  7C 08 02 A6 */	mflr r0
/* 80B85B1C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B85B20  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80B85B24  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80B85B28  39 61 00 90 */	addi r11, r1, 0x90
/* 80B85B2C  4B 7D C6 A8 */	b _savegpr_27
/* 80B85B30  7C 7D 1B 78 */	mr r29, r3
/* 80B85B34  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B85B38  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l
/* 80B85B3C  38 9F 00 00 */	addi r4, r31, 0
/* 80B85B40  AB C4 00 74 */	lha r30, 0x74(r4)
/* 80B85B44  C3 E3 07 9C */	lfs f31, 0x79c(r3)
/* 80B85B48  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B85B4C  2C 00 00 02 */	cmpwi r0, 2
/* 80B85B50  41 82 00 F4 */	beq lbl_80B85C44
/* 80B85B54  40 80 04 A4 */	bge lbl_80B85FF8
/* 80B85B58  2C 00 00 00 */	cmpwi r0, 0
/* 80B85B5C  41 82 00 0C */	beq lbl_80B85B68
/* 80B85B60  48 00 04 98 */	b lbl_80B85FF8
/* 80B85B64  48 00 04 94 */	b lbl_80B85FF8
lbl_80B85B68:
/* 80B85B68  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B85B6C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80B85B70  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80B85B74  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B85B78  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80B85B7C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B85B80  38 00 00 00 */	li r0, 0
/* 80B85B84  98 1D 15 3D */	stb r0, 0x153d(r29)
/* 80B85B88  38 80 00 00 */	li r4, 0
/* 80B85B8C  38 A0 00 00 */	li r5, 0
/* 80B85B90  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B85B94  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B85B98  7D 89 03 A6 */	mtctr r12
/* 80B85B9C  4E 80 04 21 */	bctrl 
/* 80B85BA0  88 1D 15 76 */	lbz r0, 0x1576(r29)
/* 80B85BA4  28 00 00 00 */	cmplwi r0, 0
/* 80B85BA8  40 82 00 28 */	bne lbl_80B85BD0
/* 80B85BAC  7F A3 EB 78 */	mr r3, r29
/* 80B85BB0  38 80 00 17 */	li r4, 0x17
/* 80B85BB4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B85BB8  38 A0 00 00 */	li r5, 0
/* 80B85BBC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B85BC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B85BC4  7D 89 03 A6 */	mtctr r12
/* 80B85BC8  4E 80 04 21 */	bctrl 
/* 80B85BCC  48 00 00 24 */	b lbl_80B85BF0
lbl_80B85BD0:
/* 80B85BD0  7F A3 EB 78 */	mr r3, r29
/* 80B85BD4  38 80 00 16 */	li r4, 0x16
/* 80B85BD8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B85BDC  38 A0 00 00 */	li r5, 0
/* 80B85BE0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B85BE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B85BE8  7D 89 03 A6 */	mtctr r12
/* 80B85BEC  4E 80 04 21 */	bctrl 
lbl_80B85BF0:
/* 80B85BF0  38 00 00 01 */	li r0, 1
/* 80B85BF4  98 1D 15 20 */	stb r0, 0x1520(r29)
/* 80B85BF8  38 00 00 00 */	li r0, 0
/* 80B85BFC  98 1D 07 BC */	stb r0, 0x7bc(r29)
/* 80B85C00  7F A3 EB 78 */	mr r3, r29
/* 80B85C04  38 80 00 00 */	li r4, 0
/* 80B85C08  4B FF 8A ED */	bl setLookMode__11daNpc_zrA_cFi
/* 80B85C0C  38 00 00 00 */	li r0, 0
/* 80B85C10  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B85C14  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B85C18  98 1D 15 3E */	stb r0, 0x153e(r29)
/* 80B85C1C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B85C20  B0 1D 15 36 */	sth r0, 0x1536(r29)
/* 80B85C24  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B85C28  B0 1D 15 38 */	sth r0, 0x1538(r29)
/* 80B85C2C  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B85C30  B0 1D 15 3A */	sth r0, 0x153a(r29)
/* 80B85C34  7F A3 EB 78 */	mr r3, r29
/* 80B85C38  4B FF C6 01 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B85C3C  38 00 00 02 */	li r0, 2
/* 80B85C40  B0 1D 14 E6 */	sth r0, 0x14e6(r29)
lbl_80B85C44:
/* 80B85C44  7F A3 EB 78 */	mr r3, r29
/* 80B85C48  38 81 00 60 */	addi r4, r1, 0x60
/* 80B85C4C  48 00 11 51 */	bl moveRiverPosCalc__11daNpc_zrA_cFR4cXyz
/* 80B85C50  C0 1F 08 00 */	lfs f0, 0x800(r31)
/* 80B85C54  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B85C58  C0 1F 08 04 */	lfs f0, 0x804(r31)
/* 80B85C5C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B85C60  C0 1F 08 08 */	lfs f0, 0x808(r31)
/* 80B85C64  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B85C68  38 61 00 3C */	addi r3, r1, 0x3c
/* 80B85C6C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B85C70  38 A1 00 48 */	addi r5, r1, 0x48
/* 80B85C74  4B 6E 0E C0 */	b __mi__4cXyzCFRC3Vec
/* 80B85C78  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B85C7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B85C80  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B85C84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B85C88  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B85C8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B85C90  38 61 00 18 */	addi r3, r1, 0x18
/* 80B85C94  4B 7C 14 A4 */	b PSVECSquareMag
/* 80B85C98  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B85C9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85CA0  40 81 00 58 */	ble lbl_80B85CF8
/* 80B85CA4  FC 00 08 34 */	frsqrte f0, f1
/* 80B85CA8  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B85CAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85CB0  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B85CB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85CB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85CBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85CC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85CC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85CC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85CCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85CD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85CD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85CD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B85CDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B85CE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B85CE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B85CE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B85CEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B85CF0  FC 20 08 18 */	frsp f1, f1
/* 80B85CF4  48 00 00 88 */	b lbl_80B85D7C
lbl_80B85CF8:
/* 80B85CF8  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B85CFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85D00  40 80 00 10 */	bge lbl_80B85D10
/* 80B85D04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B85D08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B85D0C  48 00 00 70 */	b lbl_80B85D7C
lbl_80B85D10:
/* 80B85D10  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B85D14  80 81 00 08 */	lwz r4, 8(r1)
/* 80B85D18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B85D1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B85D20  7C 03 00 00 */	cmpw r3, r0
/* 80B85D24  41 82 00 14 */	beq lbl_80B85D38
/* 80B85D28  40 80 00 40 */	bge lbl_80B85D68
/* 80B85D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B85D30  41 82 00 20 */	beq lbl_80B85D50
/* 80B85D34  48 00 00 34 */	b lbl_80B85D68
lbl_80B85D38:
/* 80B85D38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B85D3C  41 82 00 0C */	beq lbl_80B85D48
/* 80B85D40  38 00 00 01 */	li r0, 1
/* 80B85D44  48 00 00 28 */	b lbl_80B85D6C
lbl_80B85D48:
/* 80B85D48  38 00 00 02 */	li r0, 2
/* 80B85D4C  48 00 00 20 */	b lbl_80B85D6C
lbl_80B85D50:
/* 80B85D50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B85D54  41 82 00 0C */	beq lbl_80B85D60
/* 80B85D58  38 00 00 05 */	li r0, 5
/* 80B85D5C  48 00 00 10 */	b lbl_80B85D6C
lbl_80B85D60:
/* 80B85D60  38 00 00 03 */	li r0, 3
/* 80B85D64  48 00 00 08 */	b lbl_80B85D6C
lbl_80B85D68:
/* 80B85D68  38 00 00 04 */	li r0, 4
lbl_80B85D6C:
/* 80B85D6C  2C 00 00 01 */	cmpwi r0, 1
/* 80B85D70  40 82 00 0C */	bne lbl_80B85D7C
/* 80B85D74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B85D78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B85D7C:
/* 80B85D7C  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80B85D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85D84  40 80 00 84 */	bge lbl_80B85E08
/* 80B85D88  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80B85D8C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B85D90  41 82 02 68 */	beq lbl_80B85FF8
/* 80B85D94  7F A3 EB 78 */	mr r3, r29
/* 80B85D98  38 80 00 00 */	li r4, 0
/* 80B85D9C  38 A0 00 00 */	li r5, 0
/* 80B85DA0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B85DA4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B85DA8  7D 89 03 A6 */	mtctr r12
/* 80B85DAC  4E 80 04 21 */	bctrl 
/* 80B85DB0  7F A3 EB 78 */	mr r3, r29
/* 80B85DB4  38 80 00 1E */	li r4, 0x1e
/* 80B85DB8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B85DBC  38 A0 00 00 */	li r5, 0
/* 80B85DC0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B85DC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B85DC8  7D 89 03 A6 */	mtctr r12
/* 80B85DCC  4E 80 04 21 */	bctrl 
/* 80B85DD0  38 00 00 00 */	li r0, 0
/* 80B85DD4  98 1D 15 94 */	stb r0, 0x1594(r29)
/* 80B85DD8  3C 60 80 B9 */	lis r3, lit_9347@ha
/* 80B85DDC  38 83 D7 A4 */	addi r4, r3, lit_9347@l
/* 80B85DE0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B85DE4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B85DE8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B85DEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B85DF0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B85DF4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B85DF8  7F A3 EB 78 */	mr r3, r29
/* 80B85DFC  38 81 00 30 */	addi r4, r1, 0x30
/* 80B85E00  4B FF 7D 21 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B85E04  48 00 01 F4 */	b lbl_80B85FF8
lbl_80B85E08:
/* 80B85E08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B85E0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B85E10  88 9D 15 0E */	lbz r4, 0x150e(r29)
/* 80B85E14  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B85E18  7C 05 07 74 */	extsb r5, r0
/* 80B85E1C  4B 4A F5 44 */	b isSwitch__10dSv_info_cCFii
/* 80B85E20  2C 03 00 00 */	cmpwi r3, 0
/* 80B85E24  41 82 00 88 */	beq lbl_80B85EAC
/* 80B85E28  38 00 00 03 */	li r0, 3
/* 80B85E2C  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80B85E30  38 00 00 01 */	li r0, 1
/* 80B85E34  98 1D 09 ED */	stb r0, 0x9ed(r29)
/* 80B85E38  7F A3 EB 78 */	mr r3, r29
/* 80B85E3C  38 80 00 00 */	li r4, 0
/* 80B85E40  38 A0 00 00 */	li r5, 0
/* 80B85E44  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B85E48  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B85E4C  7D 89 03 A6 */	mtctr r12
/* 80B85E50  4E 80 04 21 */	bctrl 
/* 80B85E54  7F A3 EB 78 */	mr r3, r29
/* 80B85E58  38 80 00 1E */	li r4, 0x1e
/* 80B85E5C  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B85E60  38 A0 00 00 */	li r5, 0
/* 80B85E64  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B85E68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B85E6C  7D 89 03 A6 */	mtctr r12
/* 80B85E70  4E 80 04 21 */	bctrl 
/* 80B85E74  38 00 00 00 */	li r0, 0
/* 80B85E78  98 1D 15 94 */	stb r0, 0x1594(r29)
/* 80B85E7C  3C 60 80 B9 */	lis r3, lit_9351@ha
/* 80B85E80  38 83 D7 B0 */	addi r4, r3, lit_9351@l
/* 80B85E84  80 64 00 00 */	lwz r3, 0(r4)
/* 80B85E88  80 04 00 04 */	lwz r0, 4(r4)
/* 80B85E8C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B85E90  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B85E94  80 04 00 08 */	lwz r0, 8(r4)
/* 80B85E98  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B85E9C  7F A3 EB 78 */	mr r3, r29
/* 80B85EA0  38 81 00 24 */	addi r4, r1, 0x24
/* 80B85EA4  4B FF 7C 7D */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B85EA8  48 00 01 50 */	b lbl_80B85FF8
lbl_80B85EAC:
/* 80B85EAC  38 7F 00 00 */	addi r3, r31, 0
/* 80B85EB0  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80B85EB4  38 7D 15 6C */	addi r3, r29, 0x156c
/* 80B85EB8  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B85EBC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80B85EC0  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80B85EC4  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B85EC8  4B 6E A8 78 */	b cLib_chaseF__FPfff
/* 80B85ECC  38 61 00 48 */	addi r3, r1, 0x48
/* 80B85ED0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B85ED4  4B 6E AD A0 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B85ED8  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80B85EDC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B85EE0  38 81 00 48 */	addi r4, r1, 0x48
/* 80B85EE4  4B 6E AD 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B85EE8  3B 61 00 12 */	addi r27, r1, 0x12
/* 80B85EEC  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B85EF0  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B85EF4  3B 81 00 14 */	addi r28, r1, 0x14
/* 80B85EF8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80B85EFC  38 7D 15 24 */	addi r3, r29, 0x1524
/* 80B85F00  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80B85F04  38 9F 00 00 */	addi r4, r31, 0
/* 80B85F08  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 80B85F0C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B85F10  C0 5F 08 24 */	lfs f2, 0x824(r31)
/* 80B85F14  C0 7F 07 98 */	lfs f3, 0x798(r31)
/* 80B85F18  4B 6E 9B 24 */	b cLib_addCalc2__FPffff
/* 80B85F1C  7F A3 EB 78 */	mr r3, r29
/* 80B85F20  38 81 00 10 */	addi r4, r1, 0x10
/* 80B85F24  38 BD 15 36 */	addi r5, r29, 0x1536
/* 80B85F28  38 C0 00 06 */	li r6, 6
/* 80B85F2C  7F C7 F3 78 */	mr r7, r30
/* 80B85F30  4B FF C5 C5 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B85F34  C0 3D 15 24 */	lfs f1, 0x1524(r29)
/* 80B85F38  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B85F3C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B85F40  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B85F44  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B85F48  7F A3 EB 78 */	mr r3, r29
/* 80B85F4C  38 81 00 54 */	addi r4, r1, 0x54
/* 80B85F50  4B FF C6 35 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B85F54  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B85F58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B85F5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B85F60  38 61 00 0C */	addi r3, r1, 0xc
/* 80B85F64  C0 3F 08 34 */	lfs f1, 0x834(r31)
/* 80B85F68  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B85F6C  C0 7F 08 30 */	lfs f3, 0x830(r31)
/* 80B85F70  4B 6E 9A CC */	b cLib_addCalc2__FPffff
/* 80B85F74  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B85F78  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B85F7C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B85F80  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80B85F84  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B85F88  41 82 00 20 */	beq lbl_80B85FA8
/* 80B85F8C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B85F90  38 7F 00 00 */	addi r3, r31, 0
/* 80B85F94  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B85F98  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80B85F9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B85FA0  40 81 00 08 */	ble lbl_80B85FA8
/* 80B85FA4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80B85FA8:
/* 80B85FA8  7F A3 EB 78 */	mr r3, r29
/* 80B85FAC  7F C4 F3 78 */	mr r4, r30
/* 80B85FB0  38 A0 00 06 */	li r5, 6
/* 80B85FB4  7F 66 DB 78 */	mr r6, r27
/* 80B85FB8  7F 87 E3 78 */	mr r7, r28
/* 80B85FBC  4B FF BF FD */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B85FC0  A8 01 00 14 */	lha r0, 0x14(r1)
/* 80B85FC4  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80B85FC8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B85FCC  B0 1D 08 F0 */	sth r0, 0x8f0(r29)
/* 80B85FD0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B85FD4  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B85FD8  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B85FDC  B0 1D 08 F4 */	sth r0, 0x8f4(r29)
/* 80B85FE0  A8 1D 08 F0 */	lha r0, 0x8f0(r29)
/* 80B85FE4  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B85FE8  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B85FEC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B85FF0  A8 1D 08 F4 */	lha r0, 0x8f4(r29)
/* 80B85FF4  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
lbl_80B85FF8:
/* 80B85FF8  38 60 00 01 */	li r3, 1
/* 80B85FFC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80B86000  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80B86004  39 61 00 90 */	addi r11, r1, 0x90
/* 80B86008  4B 7D C2 18 */	b _restgpr_27
/* 80B8600C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B86010  7C 08 03 A6 */	mtlr r0
/* 80B86014  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B86018  4E 80 00 20 */	blr 
