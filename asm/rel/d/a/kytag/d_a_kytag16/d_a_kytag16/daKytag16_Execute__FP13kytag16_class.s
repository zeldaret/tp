lbl_80860C60:
/* 80860C60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80860C64  7C 08 02 A6 */	mflr r0
/* 80860C68  90 01 00 44 */	stw r0, 0x44(r1)
/* 80860C6C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80860C70  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80860C74  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80860C78  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80860C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80860C80  4B B0 15 5D */	bl _savegpr_29
/* 80860C84  7C 7E 1B 78 */	mr r30, r3
/* 80860C88  3C 60 80 86 */	lis r3, lit_3839@ha /* 0x80861134@ha */
/* 80860C8C  3B E3 11 34 */	addi r31, r3, lit_3839@l /* 0x80861134@l */
/* 80860C90  3B A0 00 00 */	li r29, 0
/* 80860C94  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80860C98  FF C0 F8 90 */	fmr f30, f31
/* 80860C9C  88 7E 05 71 */	lbz r3, 0x571(r30)
/* 80860CA0  28 03 00 1F */	cmplwi r3, 0x1f
/* 80860CA4  40 80 00 60 */	bge lbl_80860D04
/* 80860CA8  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 80860CAC  7C 03 00 40 */	cmplw r3, r0
/* 80860CB0  40 81 00 2C */	ble lbl_80860CDC
/* 80860CB4  4B 93 ED 5D */	bl dKy_getdaytime_hour__Fv
/* 80860CB8  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 80860CBC  7C 03 00 00 */	cmpw r3, r0
/* 80860CC0  40 80 00 14 */	bge lbl_80860CD4
/* 80860CC4  4B 93 ED 4D */	bl dKy_getdaytime_hour__Fv
/* 80860CC8  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 80860CCC  7C 03 00 00 */	cmpw r3, r0
/* 80860CD0  41 81 00 38 */	bgt lbl_80860D08
lbl_80860CD4:
/* 80860CD4  3B A0 00 01 */	li r29, 1
/* 80860CD8  48 00 00 30 */	b lbl_80860D08
lbl_80860CDC:
/* 80860CDC  4B 93 ED 35 */	bl dKy_getdaytime_hour__Fv
/* 80860CE0  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 80860CE4  7C 03 00 00 */	cmpw r3, r0
/* 80860CE8  41 80 00 20 */	blt lbl_80860D08
/* 80860CEC  4B 93 ED 25 */	bl dKy_getdaytime_hour__Fv
/* 80860CF0  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 80860CF4  7C 03 00 00 */	cmpw r3, r0
/* 80860CF8  41 81 00 10 */	bgt lbl_80860D08
/* 80860CFC  3B A0 00 01 */	li r29, 1
/* 80860D00  48 00 00 08 */	b lbl_80860D08
lbl_80860D04:
/* 80860D04  3B A0 00 01 */	li r29, 1
lbl_80860D08:
/* 80860D08  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80860D0C  41 82 00 40 */	beq lbl_80860D4C
/* 80860D10  3B A0 00 00 */	li r29, 0
/* 80860D14  88 9E 05 73 */	lbz r4, 0x573(r30)
/* 80860D18  28 04 00 FF */	cmplwi r4, 0xff
/* 80860D1C  41 82 00 2C */	beq lbl_80860D48
/* 80860D20  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80860D24  88 A3 0D 64 */	lbz r5, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80860D28  7C A5 07 74 */	extsb r5, r5
/* 80860D2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80860D30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80860D34  4B 7D 46 2D */	bl isSwitch__10dSv_info_cCFii
/* 80860D38  2C 03 00 00 */	cmpwi r3, 0
/* 80860D3C  41 82 00 10 */	beq lbl_80860D4C
/* 80860D40  3B A0 00 01 */	li r29, 1
/* 80860D44  48 00 00 08 */	b lbl_80860D4C
lbl_80860D48:
/* 80860D48  3B A0 00 01 */	li r29, 1
lbl_80860D4C:
/* 80860D4C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80860D50  41 82 00 B8 */	beq lbl_80860E08
/* 80860D54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80860D58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80860D5C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80860D60  3C 80 80 86 */	lis r4, d_a_kytag16__stringBase0@ha /* 0x80861194@ha */
/* 80860D64  38 84 11 94 */	addi r4, r4, d_a_kytag16__stringBase0@l /* 0x80861194@l */
/* 80860D68  4B B0 7C 2D */	bl strcmp
/* 80860D6C  2C 03 00 00 */	cmpwi r3, 0
/* 80860D70  41 82 00 20 */	beq lbl_80860D90
/* 80860D74  38 7E 05 68 */	addi r3, r30, 0x568
/* 80860D78  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80860D7C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80860D80  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80860D84  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80860D88  4B A0 EB F5 */	bl cLib_addCalc__FPfffff
/* 80860D8C  48 00 00 94 */	b lbl_80860E20
lbl_80860D90:
/* 80860D90  A8 BE 05 88 */	lha r5, 0x588(r30)
/* 80860D94  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 80860D98  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80860D9C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80860DA0  7F E4 04 2E */	lfsx f31, r4, r0
/* 80860DA4  A8 1E 05 8A */	lha r0, 0x58a(r30)
/* 80860DA8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80860DAC  7C 64 02 14 */	add r3, r4, r0
/* 80860DB0  C3 C3 00 04 */	lfs f30, 4(r3)
/* 80860DB4  38 05 05 00 */	addi r0, r5, 0x500
/* 80860DB8  B0 1E 05 88 */	sth r0, 0x588(r30)
/* 80860DBC  A8 7E 05 8A */	lha r3, 0x58a(r30)
/* 80860DC0  38 03 03 20 */	addi r0, r3, 0x320
/* 80860DC4  B0 1E 05 8A */	sth r0, 0x58a(r30)
/* 80860DC8  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80860DCC  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 80860DD0  1C 00 05 00 */	mulli r0, r0, 0x500
/* 80860DD4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80860DD8  7C 04 04 2E */	lfsx f0, r4, r0
/* 80860DDC  38 7E 05 68 */	addi r3, r30, 0x568
/* 80860DE0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80860DE4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80860DE8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80860DEC  EC 21 00 2A */	fadds f1, f1, f0
/* 80860DF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80860DF4  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80860DF8  4B A0 EB 85 */	bl cLib_addCalc__FPfffff
/* 80860DFC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80860E00  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 80860E04  48 00 00 1C */	b lbl_80860E20
lbl_80860E08:
/* 80860E08  38 7E 05 68 */	addi r3, r30, 0x568
/* 80860E0C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80860E10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80860E14  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80860E18  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80860E1C  4B A0 EB 61 */	bl cLib_addCalc__FPfffff
lbl_80860E20:
/* 80860E20  C0 9E 05 68 */	lfs f4, 0x568(r30)
/* 80860E24  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80860E28  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80860E2C  40 81 00 44 */	ble lbl_80860E70
/* 80860E30  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80860E34  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 80860E38  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80860E3C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80860E40  EC 21 00 2A */	fadds f1, f1, f0
/* 80860E44  C0 5E 05 7C */	lfs f2, 0x57c(r30)
/* 80860E48  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80860E4C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80860E50  EC 42 00 2A */	fadds f2, f2, f0
/* 80860E54  C0 7E 05 80 */	lfs f3, 0x580(r30)
/* 80860E58  38 9E 05 6D */	addi r4, r30, 0x56d
/* 80860E5C  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 80860E60  EC 80 01 32 */	fmuls f4, f0, f4
/* 80860E64  88 BE 05 8C */	lbz r5, 0x58c(r30)
/* 80860E68  88 DE 05 8D */	lbz r6, 0x58d(r30)
/* 80860E6C  4B 94 97 F9 */	bl dKy_BossSpotLight_set__FP4cXyzfffP8_GXColorfUcUc
lbl_80860E70:
/* 80860E70  38 60 00 01 */	li r3, 1
/* 80860E74  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80860E78  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80860E7C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80860E80  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80860E84  39 61 00 20 */	addi r11, r1, 0x20
/* 80860E88  4B B0 13 A1 */	bl _restgpr_29
/* 80860E8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80860E90  7C 08 03 A6 */	mtlr r0
/* 80860E94  38 21 00 40 */	addi r1, r1, 0x40
/* 80860E98  4E 80 00 20 */	blr 
