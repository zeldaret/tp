lbl_807E8C54:
/* 807E8C54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807E8C58  7C 08 02 A6 */	mflr r0
/* 807E8C5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807E8C60  39 61 00 40 */	addi r11, r1, 0x40
/* 807E8C64  4B B7 95 79 */	bl _savegpr_29
/* 807E8C68  7C 7F 1B 78 */	mr r31, r3
/* 807E8C6C  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807E8C70  3B C3 F7 70 */	addi r30, r3, lit_3905@l /* 0x807EF770@l */
/* 807E8C74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E8C78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E8C7C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 807E8C80  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 807E8C84  41 82 01 80 */	beq lbl_807E8E04
/* 807E8C88  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E8C8C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E8C90  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 807E8C94  7D 89 03 A6 */	mtctr r12
/* 807E8C98  4E 80 04 21 */	bctrl 
/* 807E8C9C  7C 7D 1B 79 */	or. r29, r3, r3
/* 807E8CA0  41 82 01 64 */	beq lbl_807E8E04
/* 807E8CA4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807E8CA8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 807E8CAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E8CB0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807E8CB4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807E8CB8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807E8CBC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 807E8CC0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E8CC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E8CC8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807E8CCC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807E8CD0  38 61 00 0C */	addi r3, r1, 0xc
/* 807E8CD4  38 81 00 18 */	addi r4, r1, 0x18
/* 807E8CD8  4B B5 E6 C5 */	bl PSVECSquareDistance
/* 807E8CDC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E8CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E8CE4  40 81 00 58 */	ble lbl_807E8D3C
/* 807E8CE8  FC 00 08 34 */	frsqrte f0, f1
/* 807E8CEC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807E8CF0  FC 44 00 32 */	fmul f2, f4, f0
/* 807E8CF4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807E8CF8  FC 00 00 32 */	fmul f0, f0, f0
/* 807E8CFC  FC 01 00 32 */	fmul f0, f1, f0
/* 807E8D00  FC 03 00 28 */	fsub f0, f3, f0
/* 807E8D04  FC 02 00 32 */	fmul f0, f2, f0
/* 807E8D08  FC 44 00 32 */	fmul f2, f4, f0
/* 807E8D0C  FC 00 00 32 */	fmul f0, f0, f0
/* 807E8D10  FC 01 00 32 */	fmul f0, f1, f0
/* 807E8D14  FC 03 00 28 */	fsub f0, f3, f0
/* 807E8D18  FC 02 00 32 */	fmul f0, f2, f0
/* 807E8D1C  FC 44 00 32 */	fmul f2, f4, f0
/* 807E8D20  FC 00 00 32 */	fmul f0, f0, f0
/* 807E8D24  FC 01 00 32 */	fmul f0, f1, f0
/* 807E8D28  FC 03 00 28 */	fsub f0, f3, f0
/* 807E8D2C  FC 02 00 32 */	fmul f0, f2, f0
/* 807E8D30  FC 21 00 32 */	fmul f1, f1, f0
/* 807E8D34  FC 20 08 18 */	frsp f1, f1
/* 807E8D38  48 00 00 88 */	b lbl_807E8DC0
lbl_807E8D3C:
/* 807E8D3C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807E8D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E8D44  40 80 00 10 */	bge lbl_807E8D54
/* 807E8D48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807E8D4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807E8D50  48 00 00 70 */	b lbl_807E8DC0
lbl_807E8D54:
/* 807E8D54  D0 21 00 08 */	stfs f1, 8(r1)
/* 807E8D58  80 81 00 08 */	lwz r4, 8(r1)
/* 807E8D5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E8D60  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E8D64  7C 03 00 00 */	cmpw r3, r0
/* 807E8D68  41 82 00 14 */	beq lbl_807E8D7C
/* 807E8D6C  40 80 00 40 */	bge lbl_807E8DAC
/* 807E8D70  2C 03 00 00 */	cmpwi r3, 0
/* 807E8D74  41 82 00 20 */	beq lbl_807E8D94
/* 807E8D78  48 00 00 34 */	b lbl_807E8DAC
lbl_807E8D7C:
/* 807E8D7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E8D80  41 82 00 0C */	beq lbl_807E8D8C
/* 807E8D84  38 00 00 01 */	li r0, 1
/* 807E8D88  48 00 00 28 */	b lbl_807E8DB0
lbl_807E8D8C:
/* 807E8D8C  38 00 00 02 */	li r0, 2
/* 807E8D90  48 00 00 20 */	b lbl_807E8DB0
lbl_807E8D94:
/* 807E8D94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E8D98  41 82 00 0C */	beq lbl_807E8DA4
/* 807E8D9C  38 00 00 05 */	li r0, 5
/* 807E8DA0  48 00 00 10 */	b lbl_807E8DB0
lbl_807E8DA4:
/* 807E8DA4  38 00 00 03 */	li r0, 3
/* 807E8DA8  48 00 00 08 */	b lbl_807E8DB0
lbl_807E8DAC:
/* 807E8DAC  38 00 00 04 */	li r0, 4
lbl_807E8DB0:
/* 807E8DB0  2C 00 00 01 */	cmpwi r0, 1
/* 807E8DB4  40 82 00 0C */	bne lbl_807E8DC0
/* 807E8DB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807E8DBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807E8DC0:
/* 807E8DC0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807E8DC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E8DC8  40 80 00 3C */	bge lbl_807E8E04
/* 807E8DCC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807E8DD0  7F A4 EB 78 */	mr r4, r29
/* 807E8DD4  4B A8 7E 31 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807E8DD8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807E8DDC  7C 00 18 50 */	subf r0, r0, r3
/* 807E8DE0  7C 00 07 35 */	extsh. r0, r0
/* 807E8DE4  40 80 00 10 */	bge lbl_807E8DF4
/* 807E8DE8  38 00 00 00 */	li r0, 0
/* 807E8DEC  90 1F 06 C0 */	stw r0, 0x6c0(r31)
/* 807E8DF0  48 00 00 0C */	b lbl_807E8DFC
lbl_807E8DF4:
/* 807E8DF4  38 00 00 01 */	li r0, 1
/* 807E8DF8  90 1F 06 C0 */	stw r0, 0x6c0(r31)
lbl_807E8DFC:
/* 807E8DFC  38 60 00 01 */	li r3, 1
/* 807E8E00  48 00 00 54 */	b lbl_807E8E54
lbl_807E8E04:
/* 807E8E04  3C 60 80 7F */	lis r3, s_obj_sub__FPvPv@ha /* 0x807E8B2C@ha */
/* 807E8E08  38 63 8B 2C */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x807E8B2C@l */
/* 807E8E0C  7F E4 FB 78 */	mr r4, r31
/* 807E8E10  4B 83 85 29 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807E8E14  7C 64 1B 79 */	or. r4, r3, r3
/* 807E8E18  41 82 00 38 */	beq lbl_807E8E50
/* 807E8E1C  7F E3 FB 78 */	mr r3, r31
/* 807E8E20  4B 83 18 F1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807E8E24  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807E8E28  7C 00 18 50 */	subf r0, r0, r3
/* 807E8E2C  7C 00 07 35 */	extsh. r0, r0
/* 807E8E30  40 80 00 10 */	bge lbl_807E8E40
/* 807E8E34  38 00 00 00 */	li r0, 0
/* 807E8E38  90 1F 06 C0 */	stw r0, 0x6c0(r31)
/* 807E8E3C  48 00 00 0C */	b lbl_807E8E48
lbl_807E8E40:
/* 807E8E40  38 00 00 01 */	li r0, 1
/* 807E8E44  90 1F 06 C0 */	stw r0, 0x6c0(r31)
lbl_807E8E48:
/* 807E8E48  38 60 00 01 */	li r3, 1
/* 807E8E4C  48 00 00 08 */	b lbl_807E8E54
lbl_807E8E50:
/* 807E8E50  38 60 00 00 */	li r3, 0
lbl_807E8E54:
/* 807E8E54  39 61 00 40 */	addi r11, r1, 0x40
/* 807E8E58  4B B7 93 D1 */	bl _restgpr_29
/* 807E8E5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807E8E60  7C 08 03 A6 */	mtlr r0
/* 807E8E64  38 21 00 40 */	addi r1, r1, 0x40
/* 807E8E68  4E 80 00 20 */	blr 
