lbl_80818AE8:
/* 80818AE8  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80818AEC  7C 08 02 A6 */	mflr r0
/* 80818AF0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80818AF4  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80818AF8  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80818AFC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80818B00  4B B4 96 D8 */	b _savegpr_28
/* 80818B04  7C 7D 1B 78 */	mr r29, r3
/* 80818B08  3C 80 80 82 */	lis r4, lit_3791@ha
/* 80818B0C  3B C4 18 AC */	addi r30, r4, lit_3791@l
/* 80818B10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80818B14  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80818B18  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80818B1C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80818B20  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80818B24  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80818B28  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80818B2C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80818B30  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80818B34  4B 80 1B DC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80818B38  7C 7F 1B 78 */	mr r31, r3
/* 80818B3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 80818B40  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 80818B44  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80818B48  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80818B4C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80818B50  38 A0 00 00 */	li r5, 0
/* 80818B54  38 C0 FF FF */	li r6, -1
/* 80818B58  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80818B5C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80818B60  7D 89 03 A6 */	mtctr r12
/* 80818B64  4E 80 04 21 */	bctrl 
/* 80818B68  7F A3 EB 78 */	mr r3, r29
/* 80818B6C  4B FF E6 95 */	bl setFlyWaitVoice__9daE_YMB_cFv
/* 80818B70  7F A3 EB 78 */	mr r3, r29
/* 80818B74  48 00 65 CD */	bl checkStartBattleDemo__9daE_YMB_cFv
/* 80818B78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80818B7C  40 82 0A 74 */	bne lbl_808195F0
/* 80818B80  38 00 00 01 */	li r0, 1
/* 80818B84  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80818B88  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80818B8C  2C 00 00 02 */	cmpwi r0, 2
/* 80818B90  41 82 00 94 */	beq lbl_80818C24
/* 80818B94  40 80 00 14 */	bge lbl_80818BA8
/* 80818B98  2C 00 00 00 */	cmpwi r0, 0
/* 80818B9C  41 82 00 54 */	beq lbl_80818BF0
/* 80818BA0  40 80 00 18 */	bge lbl_80818BB8
/* 80818BA4  48 00 0A 4C */	b lbl_808195F0
lbl_80818BA8:
/* 80818BA8  2C 00 00 04 */	cmpwi r0, 4
/* 80818BAC  41 82 06 D0 */	beq lbl_8081927C
/* 80818BB0  40 80 0A 40 */	bge lbl_808195F0
/* 80818BB4  48 00 04 78 */	b lbl_8081902C
lbl_80818BB8:
/* 80818BB8  80 1D 08 44 */	lwz r0, 0x844(r29)
/* 80818BBC  60 00 00 01 */	ori r0, r0, 1
/* 80818BC0  90 1D 08 44 */	stw r0, 0x844(r29)
/* 80818BC4  80 1D 09 7C */	lwz r0, 0x97c(r29)
/* 80818BC8  60 00 00 01 */	ori r0, r0, 1
/* 80818BCC  90 1D 09 7C */	stw r0, 0x97c(r29)
/* 80818BD0  80 1D 0A B4 */	lwz r0, 0xab4(r29)
/* 80818BD4  60 00 00 01 */	ori r0, r0, 1
/* 80818BD8  90 1D 0A B4 */	stw r0, 0xab4(r29)
/* 80818BDC  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 80818BE0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80818BE4  40 80 00 0C */	bge lbl_80818BF0
/* 80818BE8  38 00 00 3C */	li r0, 0x3c
/* 80818BEC  90 1D 07 0C */	stw r0, 0x70c(r29)
lbl_80818BF0:
/* 80818BF0  7F A3 EB 78 */	mr r3, r29
/* 80818BF4  38 80 00 11 */	li r4, 0x11
/* 80818BF8  4B FF DE 29 */	bl checkBck__9daE_YMB_cFi
/* 80818BFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80818C00  40 82 00 1C */	bne lbl_80818C1C
/* 80818C04  7F A3 EB 78 */	mr r3, r29
/* 80818C08  38 80 00 11 */	li r4, 0x11
/* 80818C0C  38 A0 00 02 */	li r5, 2
/* 80818C10  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80818C14  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80818C18  4B FF DD 65 */	bl setBck__9daE_YMB_cFiUcff
lbl_80818C1C:
/* 80818C1C  38 00 00 02 */	li r0, 2
/* 80818C20  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_80818C24:
/* 80818C24  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80818C28  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80818C2C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80818C30  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80818C34  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80818C38  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80818C3C  C0 5D 06 A4 */	lfs f2, 0x6a4(r29)
/* 80818C40  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 80818C44  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80818C48  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80818C4C  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 80818C50  38 61 00 80 */	addi r3, r1, 0x80
/* 80818C54  38 81 00 8C */	addi r4, r1, 0x8c
/* 80818C58  4B B2 E7 44 */	b PSVECSquareDistance
/* 80818C5C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80818C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80818C64  40 81 00 58 */	ble lbl_80818CBC
/* 80818C68  FC 00 08 34 */	frsqrte f0, f1
/* 80818C6C  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80818C70  FC 44 00 32 */	fmul f2, f4, f0
/* 80818C74  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80818C78  FC 00 00 32 */	fmul f0, f0, f0
/* 80818C7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80818C80  FC 03 00 28 */	fsub f0, f3, f0
/* 80818C84  FC 02 00 32 */	fmul f0, f2, f0
/* 80818C88  FC 44 00 32 */	fmul f2, f4, f0
/* 80818C8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80818C90  FC 01 00 32 */	fmul f0, f1, f0
/* 80818C94  FC 03 00 28 */	fsub f0, f3, f0
/* 80818C98  FC 02 00 32 */	fmul f0, f2, f0
/* 80818C9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80818CA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80818CA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80818CA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80818CAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80818CB0  FF E1 00 32 */	fmul f31, f1, f0
/* 80818CB4  FF E0 F8 18 */	frsp f31, f31
/* 80818CB8  48 00 00 90 */	b lbl_80818D48
lbl_80818CBC:
/* 80818CBC  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80818CC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80818CC4  40 80 00 10 */	bge lbl_80818CD4
/* 80818CC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80818CCC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80818CD0  48 00 00 78 */	b lbl_80818D48
lbl_80818CD4:
/* 80818CD4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80818CD8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80818CDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80818CE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80818CE4  7C 03 00 00 */	cmpw r3, r0
/* 80818CE8  41 82 00 14 */	beq lbl_80818CFC
/* 80818CEC  40 80 00 40 */	bge lbl_80818D2C
/* 80818CF0  2C 03 00 00 */	cmpwi r3, 0
/* 80818CF4  41 82 00 20 */	beq lbl_80818D14
/* 80818CF8  48 00 00 34 */	b lbl_80818D2C
lbl_80818CFC:
/* 80818CFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80818D00  41 82 00 0C */	beq lbl_80818D0C
/* 80818D04  38 00 00 01 */	li r0, 1
/* 80818D08  48 00 00 28 */	b lbl_80818D30
lbl_80818D0C:
/* 80818D0C  38 00 00 02 */	li r0, 2
/* 80818D10  48 00 00 20 */	b lbl_80818D30
lbl_80818D14:
/* 80818D14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80818D18  41 82 00 0C */	beq lbl_80818D24
/* 80818D1C  38 00 00 05 */	li r0, 5
/* 80818D20  48 00 00 10 */	b lbl_80818D30
lbl_80818D24:
/* 80818D24  38 00 00 03 */	li r0, 3
/* 80818D28  48 00 00 08 */	b lbl_80818D30
lbl_80818D2C:
/* 80818D2C  38 00 00 04 */	li r0, 4
lbl_80818D30:
/* 80818D30  2C 00 00 01 */	cmpwi r0, 1
/* 80818D34  40 82 00 10 */	bne lbl_80818D44
/* 80818D38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80818D3C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80818D40  48 00 00 08 */	b lbl_80818D48
lbl_80818D44:
/* 80818D44  FF E0 08 90 */	fmr f31, f1
lbl_80818D48:
/* 80818D48  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80818D4C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80818D50  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80818D54  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80818D58  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80818D5C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80818D60  C0 5D 06 A4 */	lfs f2, 0x6a4(r29)
/* 80818D64  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 80818D68  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80818D6C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80818D70  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80818D74  38 61 00 68 */	addi r3, r1, 0x68
/* 80818D78  38 81 00 74 */	addi r4, r1, 0x74
/* 80818D7C  4B B2 E6 20 */	b PSVECSquareDistance
/* 80818D80  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80818D84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80818D88  40 81 00 58 */	ble lbl_80818DE0
/* 80818D8C  FC 00 08 34 */	frsqrte f0, f1
/* 80818D90  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80818D94  FC 44 00 32 */	fmul f2, f4, f0
/* 80818D98  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80818D9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80818DA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80818DA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80818DA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80818DAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80818DB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80818DB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80818DB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80818DBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80818DC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80818DC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80818DC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80818DCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80818DD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80818DD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80818DD8  FC 20 08 18 */	frsp f1, f1
/* 80818DDC  48 00 00 88 */	b lbl_80818E64
lbl_80818DE0:
/* 80818DE0  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80818DE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80818DE8  40 80 00 10 */	bge lbl_80818DF8
/* 80818DEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80818DF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80818DF4  48 00 00 70 */	b lbl_80818E64
lbl_80818DF8:
/* 80818DF8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80818DFC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80818E00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80818E04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80818E08  7C 03 00 00 */	cmpw r3, r0
/* 80818E0C  41 82 00 14 */	beq lbl_80818E20
/* 80818E10  40 80 00 40 */	bge lbl_80818E50
/* 80818E14  2C 03 00 00 */	cmpwi r3, 0
/* 80818E18  41 82 00 20 */	beq lbl_80818E38
/* 80818E1C  48 00 00 34 */	b lbl_80818E50
lbl_80818E20:
/* 80818E20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80818E24  41 82 00 0C */	beq lbl_80818E30
/* 80818E28  38 00 00 01 */	li r0, 1
/* 80818E2C  48 00 00 28 */	b lbl_80818E54
lbl_80818E30:
/* 80818E30  38 00 00 02 */	li r0, 2
/* 80818E34  48 00 00 20 */	b lbl_80818E54
lbl_80818E38:
/* 80818E38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80818E3C  41 82 00 0C */	beq lbl_80818E48
/* 80818E40  38 00 00 05 */	li r0, 5
/* 80818E44  48 00 00 10 */	b lbl_80818E54
lbl_80818E48:
/* 80818E48  38 00 00 03 */	li r0, 3
/* 80818E4C  48 00 00 08 */	b lbl_80818E54
lbl_80818E50:
/* 80818E50  38 00 00 04 */	li r0, 4
lbl_80818E54:
/* 80818E54  2C 00 00 01 */	cmpwi r0, 1
/* 80818E58  40 82 00 0C */	bne lbl_80818E64
/* 80818E5C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80818E60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80818E64:
/* 80818E64  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80818E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80818E6C  41 81 00 0C */	bgt lbl_80818E78
/* 80818E70  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80818E74  40 81 00 20 */	ble lbl_80818E94
lbl_80818E78:
/* 80818E78  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 80818E7C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 80818E80  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 80818E84  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 80818E88  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 80818E8C  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 80818E90  48 00 01 24 */	b lbl_80818FB4
lbl_80818E94:
/* 80818E94  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80818E98  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80818E9C  40 81 00 18 */	ble lbl_80818EB4
/* 80818EA0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80818EA4  38 9D 06 9C */	addi r4, r29, 0x69c
/* 80818EA8  4B A5 7D 5C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80818EAC  7C 7C 1B 78 */	mr r28, r3
/* 80818EB0  48 00 00 D4 */	b lbl_80818F84
lbl_80818EB4:
/* 80818EB4  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80818EB8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80818EBC  40 81 00 6C */	ble lbl_80818F28
/* 80818EC0  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80818EC4  4B A4 EA C8 */	b cM_rndFX__Ff
/* 80818EC8  7F FF 07 34 */	extsh r31, r31
/* 80818ECC  3C 7F 00 01 */	addis r3, r31, 1
/* 80818ED0  38 03 80 00 */	addi r0, r3, -32768
/* 80818ED4  C8 5E 00 20 */	lfd f2, 0x20(r30)
/* 80818ED8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80818EDC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80818EE0  3C 00 43 30 */	lis r0, 0x4330
/* 80818EE4  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80818EE8  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 80818EEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80818EF0  EC 00 08 2A */	fadds f0, f0, f1
/* 80818EF4  FC 00 00 1E */	fctiwz f0, f0
/* 80818EF8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80818EFC  83 81 00 BC */	lwz r28, 0xbc(r1)
/* 80818F00  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80818F04  38 9D 06 9C */	addi r4, r29, 0x69c
/* 80818F08  4B A5 7C FC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80818F0C  7C 1F 18 50 */	subf r0, r31, r3
/* 80818F10  7C 00 07 35 */	extsh. r0, r0
/* 80818F14  40 81 00 0C */	ble lbl_80818F20
/* 80818F18  3B 9C E8 00 */	addi r28, r28, -6144
/* 80818F1C  48 00 00 68 */	b lbl_80818F84
lbl_80818F20:
/* 80818F20  3B 9C 18 00 */	addi r28, r28, 0x1800
/* 80818F24  48 00 00 60 */	b lbl_80818F84
lbl_80818F28:
/* 80818F28  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80818F2C  4B A4 EA 60 */	b cM_rndFX__Ff
/* 80818F30  7F E3 07 34 */	extsh r3, r31
/* 80818F34  3C 63 00 01 */	addis r3, r3, 1
/* 80818F38  38 03 80 00 */	addi r0, r3, -32768
/* 80818F3C  C8 5E 00 20 */	lfd f2, 0x20(r30)
/* 80818F40  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80818F44  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80818F48  3C 00 43 30 */	lis r0, 0x4330
/* 80818F4C  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80818F50  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80818F54  EC 00 10 28 */	fsubs f0, f0, f2
/* 80818F58  EC 00 08 2A */	fadds f0, f0, f1
/* 80818F5C  FC 00 00 1E */	fctiwz f0, f0
/* 80818F60  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 80818F64  83 81 00 B4 */	lwz r28, 0xb4(r1)
/* 80818F68  4B A4 E9 04 */	b cM_rnd__Fv
/* 80818F6C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80818F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80818F74  40 80 00 0C */	bge lbl_80818F80
/* 80818F78  3B 9C 18 00 */	addi r28, r28, 0x1800
/* 80818F7C  48 00 00 08 */	b lbl_80818F84
lbl_80818F80:
/* 80818F80  3B 9C E8 00 */	addi r28, r28, -6144
lbl_80818F84:
/* 80818F84  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80818F88  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80818F8C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80818F90  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80818F94  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80818F98  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 80818F9C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80818FA0  7F 85 E3 78 */	mr r5, r28
/* 80818FA4  38 C1 00 98 */	addi r6, r1, 0x98
/* 80818FA8  4B A5 7E 18 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80818FAC  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 80818FB0  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
lbl_80818FB4:
/* 80818FB4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80818FB8  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 80818FBC  4B A5 7C 48 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80818FC0  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80818FC4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80818FC8  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 80818FCC  4B A5 7C A8 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80818FD0  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 80818FD4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80818FD8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80818FDC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80818FE0  D0 1D 06 C8 */	stfs f0, 0x6c8(r29)
/* 80818FE4  38 00 00 1E */	li r0, 0x1e
/* 80818FE8  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 80818FEC  38 00 00 03 */	li r0, 3
/* 80818FF0  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80818FF4  C0 3D 06 A0 */	lfs f1, 0x6a0(r29)
/* 80818FF8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80818FFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80819000  FC 00 02 10 */	fabs f0, f0
/* 80819004  FC 20 00 18 */	frsp f1, f0
/* 80819008  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8081900C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819010  40 80 00 10 */	bge lbl_80819020
/* 80819014  38 00 00 00 */	li r0, 0
/* 80819018  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 8081901C  48 00 05 D4 */	b lbl_808195F0
lbl_80819020:
/* 80819020  38 00 00 01 */	li r0, 1
/* 80819024  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 80819028  48 00 05 C8 */	b lbl_808195F0
lbl_8081902C:
/* 8081902C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80819030  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 80819034  4B A5 7B D0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80819038  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8081903C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80819040  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 80819044  4B A5 7C 30 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80819048  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 8081904C  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 80819050  2C 00 00 00 */	cmpwi r0, 0
/* 80819054  40 82 00 20 */	bne lbl_80819074
/* 80819058  38 7D 06 C8 */	addi r3, r29, 0x6c8
/* 8081905C  3C 80 80 82 */	lis r4, l_HIO@ha
/* 80819060  38 84 1E 64 */	addi r4, r4, l_HIO@l
/* 80819064  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80819068  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081906C  4B A5 76 D4 */	b cLib_chaseF__FPfff
/* 80819070  48 00 00 24 */	b lbl_80819094
lbl_80819074:
/* 80819074  38 7D 06 C8 */	addi r3, r29, 0x6c8
/* 80819078  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8081907C  3C 80 80 82 */	lis r4, l_HIO@ha
/* 80819080  38 84 1E 64 */	addi r4, r4, l_HIO@l
/* 80819084  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80819088  EC 21 00 2A */	fadds f1, f1, f0
/* 8081908C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819090  4B A5 76 B0 */	b cLib_chaseF__FPfff
lbl_80819094:
/* 80819094  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80819098  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8081909C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808190A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808190A4  7C 63 02 14 */	add r3, r3, r0
/* 808190A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 808190AC  FC 00 02 10 */	fabs f0, f0
/* 808190B0  FC 20 00 18 */	frsp f1, f0
/* 808190B4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 808190B8  C0 1D 06 C8 */	lfs f0, 0x6c8(r29)
/* 808190BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 808190C0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 808190C4  4B A5 76 7C */	b cLib_chaseF__FPfff
/* 808190C8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 808190CC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 808190D0  4B A5 7B 34 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 808190D4  7C 64 1B 78 */	mr r4, r3
/* 808190D8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 808190DC  38 A0 04 00 */	li r5, 0x400
/* 808190E0  4B A5 7A B0 */	b cLib_chaseAngleS__FPsss
/* 808190E4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808190E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808190EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 808190F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 808190F4  7C 23 04 2E */	lfsx f1, r3, r0
/* 808190F8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 808190FC  C0 1D 06 C8 */	lfs f0, 0x6c8(r29)
/* 80819100  EC 20 00 72 */	fmuls f1, f0, f1
/* 80819104  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819108  4B A5 76 38 */	b cLib_chaseF__FPfff
/* 8081910C  7F A3 EB 78 */	mr r3, r29
/* 80819110  4B FF F4 09 */	bl setBodyAngle__9daE_YMB_cFv
/* 80819114  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80819118  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 8081911C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80819120  FC 00 02 10 */	fabs f0, f0
/* 80819124  FC 20 00 18 */	frsp f1, f0
/* 80819128  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8081912C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819130  40 80 04 C0 */	bge lbl_808195F0
/* 80819134  C0 5D 06 B0 */	lfs f2, 0x6b0(r29)
/* 80819138  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 8081913C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80819140  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819144  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80819148  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8081914C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80819150  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80819154  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80819158  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8081915C  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80819160  38 61 00 50 */	addi r3, r1, 0x50
/* 80819164  38 81 00 5C */	addi r4, r1, 0x5c
/* 80819168  4B B2 E2 34 */	b PSVECSquareDistance
/* 8081916C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80819170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819174  40 81 00 58 */	ble lbl_808191CC
/* 80819178  FC 00 08 34 */	frsqrte f0, f1
/* 8081917C  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80819180  FC 44 00 32 */	fmul f2, f4, f0
/* 80819184  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80819188  FC 00 00 32 */	fmul f0, f0, f0
/* 8081918C  FC 01 00 32 */	fmul f0, f1, f0
/* 80819190  FC 03 00 28 */	fsub f0, f3, f0
/* 80819194  FC 02 00 32 */	fmul f0, f2, f0
/* 80819198  FC 44 00 32 */	fmul f2, f4, f0
/* 8081919C  FC 00 00 32 */	fmul f0, f0, f0
/* 808191A0  FC 01 00 32 */	fmul f0, f1, f0
/* 808191A4  FC 03 00 28 */	fsub f0, f3, f0
/* 808191A8  FC 02 00 32 */	fmul f0, f2, f0
/* 808191AC  FC 44 00 32 */	fmul f2, f4, f0
/* 808191B0  FC 00 00 32 */	fmul f0, f0, f0
/* 808191B4  FC 01 00 32 */	fmul f0, f1, f0
/* 808191B8  FC 03 00 28 */	fsub f0, f3, f0
/* 808191BC  FC 02 00 32 */	fmul f0, f2, f0
/* 808191C0  FC 21 00 32 */	fmul f1, f1, f0
/* 808191C4  FC 20 08 18 */	frsp f1, f1
/* 808191C8  48 00 00 88 */	b lbl_80819250
lbl_808191CC:
/* 808191CC  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 808191D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808191D4  40 80 00 10 */	bge lbl_808191E4
/* 808191D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 808191DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 808191E0  48 00 00 70 */	b lbl_80819250
lbl_808191E4:
/* 808191E4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 808191E8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 808191EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 808191F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 808191F4  7C 03 00 00 */	cmpw r3, r0
/* 808191F8  41 82 00 14 */	beq lbl_8081920C
/* 808191FC  40 80 00 40 */	bge lbl_8081923C
/* 80819200  2C 03 00 00 */	cmpwi r3, 0
/* 80819204  41 82 00 20 */	beq lbl_80819224
/* 80819208  48 00 00 34 */	b lbl_8081923C
lbl_8081920C:
/* 8081920C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819210  41 82 00 0C */	beq lbl_8081921C
/* 80819214  38 00 00 01 */	li r0, 1
/* 80819218  48 00 00 28 */	b lbl_80819240
lbl_8081921C:
/* 8081921C  38 00 00 02 */	li r0, 2
/* 80819220  48 00 00 20 */	b lbl_80819240
lbl_80819224:
/* 80819224  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819228  41 82 00 0C */	beq lbl_80819234
/* 8081922C  38 00 00 05 */	li r0, 5
/* 80819230  48 00 00 10 */	b lbl_80819240
lbl_80819234:
/* 80819234  38 00 00 03 */	li r0, 3
/* 80819238  48 00 00 08 */	b lbl_80819240
lbl_8081923C:
/* 8081923C  38 00 00 04 */	li r0, 4
lbl_80819240:
/* 80819240  2C 00 00 01 */	cmpwi r0, 1
/* 80819244  40 82 00 0C */	bne lbl_80819250
/* 80819248  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081924C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80819250:
/* 80819250  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80819254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819258  41 80 00 10 */	blt lbl_80819268
/* 8081925C  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 80819260  2C 00 00 00 */	cmpwi r0, 0
/* 80819264  40 82 03 8C */	bne lbl_808195F0
lbl_80819268:
/* 80819268  38 00 00 1E */	li r0, 0x1e
/* 8081926C  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 80819270  38 00 00 04 */	li r0, 4
/* 80819274  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80819278  48 00 03 78 */	b lbl_808195F0
lbl_8081927C:
/* 8081927C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80819280  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80819284  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80819288  EC 01 00 2A */	fadds f0, f1, f0
/* 8081928C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80819290  40 80 00 08 */	bge lbl_80819298
/* 80819294  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80819298:
/* 80819298  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081929C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 808192A0  4B A5 79 64 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 808192A4  7C 64 1B 78 */	mr r4, r3
/* 808192A8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 808192AC  38 A0 08 00 */	li r5, 0x800
/* 808192B0  4B A5 78 E0 */	b cLib_chaseAngleS__FPsss
/* 808192B4  38 7D 06 EA */	addi r3, r29, 0x6ea
/* 808192B8  38 80 00 00 */	li r4, 0
/* 808192BC  38 A0 04 00 */	li r5, 0x400
/* 808192C0  4B A5 78 D0 */	b cLib_chaseAngleS__FPsss
/* 808192C4  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 808192C8  38 80 00 00 */	li r4, 0
/* 808192CC  38 A0 04 00 */	li r5, 0x400
/* 808192D0  4B A5 78 C0 */	b cLib_chaseAngleS__FPsss
/* 808192D4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 808192D8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 808192DC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 808192E0  4B A5 74 60 */	b cLib_chaseF__FPfff
/* 808192E4  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 808192E8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 808192EC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 808192F0  4B A5 74 50 */	b cLib_chaseF__FPfff
/* 808192F4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 808192F8  C0 3D 06 CC */	lfs f1, 0x6cc(r29)
/* 808192FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80819300  40 80 00 08 */	bge lbl_80819308
/* 80819304  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
lbl_80819308:
/* 80819308  7F A3 EB 78 */	mr r3, r29
/* 8081930C  4B FF F6 25 */	bl checkWolfLockIn__9daE_YMB_cFv
/* 80819310  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80819314  41 82 00 18 */	beq lbl_8081932C
/* 80819318  7F A3 EB 78 */	mr r3, r29
/* 8081931C  38 80 00 03 */	li r4, 3
/* 80819320  38 A0 00 00 */	li r5, 0
/* 80819324  4B FF D7 59 */	bl setActionMode__9daE_YMB_cFii
/* 80819328  48 00 02 C8 */	b lbl_808195F0
lbl_8081932C:
/* 8081932C  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 80819330  2C 00 00 00 */	cmpwi r0, 0
/* 80819334  40 82 00 18 */	bne lbl_8081934C
/* 80819338  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081933C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80819340  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80819344  38 00 00 02 */	li r0, 2
/* 80819348  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_8081934C:
/* 8081934C  88 1D 07 64 */	lbz r0, 0x764(r29)
/* 80819350  28 00 00 00 */	cmplwi r0, 0
/* 80819354  41 82 02 9C */	beq lbl_808195F0
/* 80819358  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 8081935C  2C 00 00 00 */	cmpwi r0, 0
/* 80819360  40 82 02 90 */	bne lbl_808195F0
/* 80819364  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80819368  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8081936C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819370  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80819374  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80819378  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081937C  C0 5D 06 A4 */	lfs f2, 0x6a4(r29)
/* 80819380  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 80819384  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80819388  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8081938C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80819390  38 61 00 38 */	addi r3, r1, 0x38
/* 80819394  38 81 00 44 */	addi r4, r1, 0x44
/* 80819398  4B B2 E0 04 */	b PSVECSquareDistance
/* 8081939C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 808193A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808193A4  40 81 00 58 */	ble lbl_808193FC
/* 808193A8  FC 00 08 34 */	frsqrte f0, f1
/* 808193AC  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 808193B0  FC 44 00 32 */	fmul f2, f4, f0
/* 808193B4  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 808193B8  FC 00 00 32 */	fmul f0, f0, f0
/* 808193BC  FC 01 00 32 */	fmul f0, f1, f0
/* 808193C0  FC 03 00 28 */	fsub f0, f3, f0
/* 808193C4  FC 02 00 32 */	fmul f0, f2, f0
/* 808193C8  FC 44 00 32 */	fmul f2, f4, f0
/* 808193CC  FC 00 00 32 */	fmul f0, f0, f0
/* 808193D0  FC 01 00 32 */	fmul f0, f1, f0
/* 808193D4  FC 03 00 28 */	fsub f0, f3, f0
/* 808193D8  FC 02 00 32 */	fmul f0, f2, f0
/* 808193DC  FC 44 00 32 */	fmul f2, f4, f0
/* 808193E0  FC 00 00 32 */	fmul f0, f0, f0
/* 808193E4  FC 01 00 32 */	fmul f0, f1, f0
/* 808193E8  FC 03 00 28 */	fsub f0, f3, f0
/* 808193EC  FC 02 00 32 */	fmul f0, f2, f0
/* 808193F0  FC 21 00 32 */	fmul f1, f1, f0
/* 808193F4  FC 20 08 18 */	frsp f1, f1
/* 808193F8  48 00 00 88 */	b lbl_80819480
lbl_808193FC:
/* 808193FC  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80819400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819404  40 80 00 10 */	bge lbl_80819414
/* 80819408  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081940C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80819410  48 00 00 70 */	b lbl_80819480
lbl_80819414:
/* 80819414  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80819418  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8081941C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80819420  3C 00 7F 80 */	lis r0, 0x7f80
/* 80819424  7C 03 00 00 */	cmpw r3, r0
/* 80819428  41 82 00 14 */	beq lbl_8081943C
/* 8081942C  40 80 00 40 */	bge lbl_8081946C
/* 80819430  2C 03 00 00 */	cmpwi r3, 0
/* 80819434  41 82 00 20 */	beq lbl_80819454
/* 80819438  48 00 00 34 */	b lbl_8081946C
lbl_8081943C:
/* 8081943C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819440  41 82 00 0C */	beq lbl_8081944C
/* 80819444  38 00 00 01 */	li r0, 1
/* 80819448  48 00 00 28 */	b lbl_80819470
lbl_8081944C:
/* 8081944C  38 00 00 02 */	li r0, 2
/* 80819450  48 00 00 20 */	b lbl_80819470
lbl_80819454:
/* 80819454  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819458  41 82 00 0C */	beq lbl_80819464
/* 8081945C  38 00 00 05 */	li r0, 5
/* 80819460  48 00 00 10 */	b lbl_80819470
lbl_80819464:
/* 80819464  38 00 00 03 */	li r0, 3
/* 80819468  48 00 00 08 */	b lbl_80819470
lbl_8081946C:
/* 8081946C  38 00 00 04 */	li r0, 4
lbl_80819470:
/* 80819470  2C 00 00 01 */	cmpwi r0, 1
/* 80819474  40 82 00 0C */	bne lbl_80819480
/* 80819478  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081947C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80819480:
/* 80819480  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80819484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819488  40 80 01 68 */	bge lbl_808195F0
/* 8081948C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80819490  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80819494  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819498  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8081949C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 808194A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808194A4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 808194A8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 808194AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 808194B0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 808194B4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 808194B8  38 61 00 20 */	addi r3, r1, 0x20
/* 808194BC  38 81 00 2C */	addi r4, r1, 0x2c
/* 808194C0  4B B2 DE DC */	b PSVECSquareDistance
/* 808194C4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 808194C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808194CC  40 81 00 58 */	ble lbl_80819524
/* 808194D0  FC 00 08 34 */	frsqrte f0, f1
/* 808194D4  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 808194D8  FC 44 00 32 */	fmul f2, f4, f0
/* 808194DC  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 808194E0  FC 00 00 32 */	fmul f0, f0, f0
/* 808194E4  FC 01 00 32 */	fmul f0, f1, f0
/* 808194E8  FC 03 00 28 */	fsub f0, f3, f0
/* 808194EC  FC 02 00 32 */	fmul f0, f2, f0
/* 808194F0  FC 44 00 32 */	fmul f2, f4, f0
/* 808194F4  FC 00 00 32 */	fmul f0, f0, f0
/* 808194F8  FC 01 00 32 */	fmul f0, f1, f0
/* 808194FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80819500  FC 02 00 32 */	fmul f0, f2, f0
/* 80819504  FC 44 00 32 */	fmul f2, f4, f0
/* 80819508  FC 00 00 32 */	fmul f0, f0, f0
/* 8081950C  FC 01 00 32 */	fmul f0, f1, f0
/* 80819510  FC 03 00 28 */	fsub f0, f3, f0
/* 80819514  FC 02 00 32 */	fmul f0, f2, f0
/* 80819518  FC 21 00 32 */	fmul f1, f1, f0
/* 8081951C  FC 20 08 18 */	frsp f1, f1
/* 80819520  48 00 00 88 */	b lbl_808195A8
lbl_80819524:
/* 80819524  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80819528  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081952C  40 80 00 10 */	bge lbl_8081953C
/* 80819530  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80819534  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80819538  48 00 00 70 */	b lbl_808195A8
lbl_8081953C:
/* 8081953C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80819540  80 81 00 08 */	lwz r4, 8(r1)
/* 80819544  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80819548  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081954C  7C 03 00 00 */	cmpw r3, r0
/* 80819550  41 82 00 14 */	beq lbl_80819564
/* 80819554  40 80 00 40 */	bge lbl_80819594
/* 80819558  2C 03 00 00 */	cmpwi r3, 0
/* 8081955C  41 82 00 20 */	beq lbl_8081957C
/* 80819560  48 00 00 34 */	b lbl_80819594
lbl_80819564:
/* 80819564  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819568  41 82 00 0C */	beq lbl_80819574
/* 8081956C  38 00 00 01 */	li r0, 1
/* 80819570  48 00 00 28 */	b lbl_80819598
lbl_80819574:
/* 80819574  38 00 00 02 */	li r0, 2
/* 80819578  48 00 00 20 */	b lbl_80819598
lbl_8081957C:
/* 8081957C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819580  41 82 00 0C */	beq lbl_8081958C
/* 80819584  38 00 00 05 */	li r0, 5
/* 80819588  48 00 00 10 */	b lbl_80819598
lbl_8081958C:
/* 8081958C  38 00 00 03 */	li r0, 3
/* 80819590  48 00 00 08 */	b lbl_80819598
lbl_80819594:
/* 80819594  38 00 00 04 */	li r0, 4
lbl_80819598:
/* 80819598  2C 00 00 01 */	cmpwi r0, 1
/* 8081959C  40 82 00 0C */	bne lbl_808195A8
/* 808195A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 808195A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_808195A8:
/* 808195A8  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 808195AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808195B0  40 81 00 40 */	ble lbl_808195F0
/* 808195B4  C0 3D 06 A0 */	lfs f1, 0x6a0(r29)
/* 808195B8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 808195BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 808195C0  FC 00 02 10 */	fabs f0, f0
/* 808195C4  FC 20 00 18 */	frsp f1, f0
/* 808195C8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 808195CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808195D0  40 80 00 20 */	bge lbl_808195F0
/* 808195D4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 808195D8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 808195DC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 808195E0  7F A3 EB 78 */	mr r3, r29
/* 808195E4  38 80 00 02 */	li r4, 2
/* 808195E8  38 A0 00 00 */	li r5, 0
/* 808195EC  4B FF D4 91 */	bl setActionMode__9daE_YMB_cFii
lbl_808195F0:
/* 808195F0  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 808195F4  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 808195F8  39 61 00 D0 */	addi r11, r1, 0xd0
/* 808195FC  4B B4 8C 28 */	b _restgpr_28
/* 80819600  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80819604  7C 08 03 A6 */	mtlr r0
/* 80819608  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8081960C  4E 80 00 20 */	blr 
