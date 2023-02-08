lbl_80B25BDC:
/* 80B25BDC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B25BE0  7C 08 02 A6 */	mflr r0
/* 80B25BE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B25BE8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B25BEC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B25BF0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80B25BF4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80B25BF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B25BFC  4B 83 C5 DD */	bl _savegpr_28
/* 80B25C00  7C 7E 1B 78 */	mr r30, r3
/* 80B25C04  3C 60 80 B2 */	lis r3, lit_3768@ha /* 0x80B2657C@ha */
/* 80B25C08  3B E3 65 7C */	addi r31, r3, lit_3768@l /* 0x80B2657C@l */
/* 80B25C0C  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 80B25C10  2C 00 00 01 */	cmpwi r0, 1
/* 80B25C14  41 82 01 D0 */	beq lbl_80B25DE4
/* 80B25C18  40 80 02 18 */	bge lbl_80B25E30
/* 80B25C1C  2C 00 00 00 */	cmpwi r0, 0
/* 80B25C20  40 80 00 08 */	bge lbl_80B25C28
/* 80B25C24  48 00 02 0C */	b lbl_80B25E30
lbl_80B25C28:
/* 80B25C28  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80B25C2C  2C 00 00 00 */	cmpwi r0, 0
/* 80B25C30  40 82 01 A0 */	bne lbl_80B25DD0
/* 80B25C34  3B A0 00 00 */	li r29, 0
/* 80B25C38  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80B25C3C  C3 DF 00 40 */	lfs f30, 0x40(r31)
lbl_80B25C40:
/* 80B25C40  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80B25C44  4B 74 1D 49 */	bl cM_rndFX__Ff
/* 80B25C48  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80B25C4C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B25C50  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80B25C54  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80B25C58  4B 74 1D 35 */	bl cM_rndFX__Ff
/* 80B25C5C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80B25C60  EC 00 08 2A */	fadds f0, f0, f1
/* 80B25C64  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80B25C68  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80B25C6C  4B 74 1D 21 */	bl cM_rndFX__Ff
/* 80B25C70  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80B25C74  EC 00 08 2A */	fadds f0, f0, f1
/* 80B25C78  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80B25C7C  38 61 00 18 */	addi r3, r1, 0x18
/* 80B25C80  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 80B25C84  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B25C88  4B 74 0E AD */	bl __mi__4cXyzCFRC3Vec
/* 80B25C8C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B25C90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B25C94  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B25C98  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B25C9C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B25CA0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B25CA4  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80B25CA8  38 61 00 24 */	addi r3, r1, 0x24
/* 80B25CAC  4B 82 14 8D */	bl PSVECSquareMag
/* 80B25CB0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B25CB4  40 81 00 58 */	ble lbl_80B25D0C
/* 80B25CB8  FC 00 08 34 */	frsqrte f0, f1
/* 80B25CBC  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80B25CC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B25CC4  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80B25CC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B25CCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B25CD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B25CD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B25CD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B25CDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B25CE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B25CE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B25CE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B25CEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B25CF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B25CF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B25CF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B25CFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B25D00  FC 21 00 32 */	fmul f1, f1, f0
/* 80B25D04  FC 20 08 18 */	frsp f1, f1
/* 80B25D08  48 00 00 88 */	b lbl_80B25D90
lbl_80B25D0C:
/* 80B25D0C  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80B25D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B25D14  40 80 00 10 */	bge lbl_80B25D24
/* 80B25D18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B25D1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B25D20  48 00 00 70 */	b lbl_80B25D90
lbl_80B25D24:
/* 80B25D24  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B25D28  80 81 00 08 */	lwz r4, 8(r1)
/* 80B25D2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B25D30  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B25D34  7C 03 00 00 */	cmpw r3, r0
/* 80B25D38  41 82 00 14 */	beq lbl_80B25D4C
/* 80B25D3C  40 80 00 40 */	bge lbl_80B25D7C
/* 80B25D40  2C 03 00 00 */	cmpwi r3, 0
/* 80B25D44  41 82 00 20 */	beq lbl_80B25D64
/* 80B25D48  48 00 00 34 */	b lbl_80B25D7C
lbl_80B25D4C:
/* 80B25D4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B25D50  41 82 00 0C */	beq lbl_80B25D5C
/* 80B25D54  38 00 00 01 */	li r0, 1
/* 80B25D58  48 00 00 28 */	b lbl_80B25D80
lbl_80B25D5C:
/* 80B25D5C  38 00 00 02 */	li r0, 2
/* 80B25D60  48 00 00 20 */	b lbl_80B25D80
lbl_80B25D64:
/* 80B25D64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B25D68  41 82 00 0C */	beq lbl_80B25D74
/* 80B25D6C  38 00 00 05 */	li r0, 5
/* 80B25D70  48 00 00 10 */	b lbl_80B25D80
lbl_80B25D74:
/* 80B25D74  38 00 00 03 */	li r0, 3
/* 80B25D78  48 00 00 08 */	b lbl_80B25D80
lbl_80B25D7C:
/* 80B25D7C  38 00 00 04 */	li r0, 4
lbl_80B25D80:
/* 80B25D80  2C 00 00 01 */	cmpwi r0, 1
/* 80B25D84  40 82 00 0C */	bne lbl_80B25D90
/* 80B25D88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B25D8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B25D90:
/* 80B25D90  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80B25D94  40 81 00 30 */	ble lbl_80B25DC4
/* 80B25D98  38 00 00 01 */	li r0, 1
/* 80B25D9C  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
/* 80B25DA0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80B25DA4  4B 74 1B B1 */	bl cM_rndF__Ff
/* 80B25DA8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80B25DAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80B25DB0  FC 00 00 1E */	fctiwz f0, f0
/* 80B25DB4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B25DB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B25DBC  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 80B25DC0  48 00 00 10 */	b lbl_80B25DD0
lbl_80B25DC4:
/* 80B25DC4  3B BD 00 01 */	addi r29, r29, 1
/* 80B25DC8  2C 1D 00 64 */	cmpwi r29, 0x64
/* 80B25DCC  41 80 FE 74 */	blt lbl_80B25C40
lbl_80B25DD0:
/* 80B25DD0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80B25DD4  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80B25DD8  3B A0 00 00 */	li r29, 0
/* 80B25DDC  C3 FF 00 4C */	lfs f31, 0x4c(r31)
/* 80B25DE0  48 00 00 50 */	b lbl_80B25E30
lbl_80B25DE4:
/* 80B25DE4  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80B25DE8  2C 00 00 00 */	cmpwi r0, 0
/* 80B25DEC  40 82 00 2C */	bne lbl_80B25E18
/* 80B25DF0  38 00 00 00 */	li r0, 0
/* 80B25DF4  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
/* 80B25DF8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80B25DFC  4B 74 1B 59 */	bl cM_rndF__Ff
/* 80B25E00  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80B25E04  EC 00 08 2A */	fadds f0, f0, f1
/* 80B25E08  FC 00 00 1E */	fctiwz f0, f0
/* 80B25E0C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B25E10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B25E14  B0 1E 05 DC */	sth r0, 0x5dc(r30)
lbl_80B25E18:
/* 80B25E18  3C 60 80 B2 */	lis r3, l_HIO@ha /* 0x80B26688@ha */
/* 80B25E1C  38 63 66 88 */	addi r3, r3, l_HIO@l /* 0x80B26688@l */
/* 80B25E20  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B25E24  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80B25E28  3B A0 04 00 */	li r29, 0x400
/* 80B25E2C  C3 FF 00 50 */	lfs f31, 0x50(r31)
lbl_80B25E30:
/* 80B25E30  A8 1E 05 DE */	lha r0, 0x5de(r30)
/* 80B25E34  2C 00 00 00 */	cmpwi r0, 0
/* 80B25E38  41 82 00 20 */	beq lbl_80B25E58
/* 80B25E3C  C3 FF 00 50 */	lfs f31, 0x50(r31)
/* 80B25E40  3C 60 80 B2 */	lis r3, l_HIO@ha /* 0x80B26688@ha */
/* 80B25E44  38 63 66 88 */	addi r3, r3, l_HIO@l /* 0x80B26688@l */
/* 80B25E48  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B25E4C  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80B25E50  3B A0 06 00 */	li r29, 0x600
/* 80B25E54  48 00 00 50 */	b lbl_80B25EA4
lbl_80B25E58:
/* 80B25E58  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80B25E5C  3C 60 80 B2 */	lis r3, l_HIO@ha /* 0x80B26688@ha */
/* 80B25E60  38 63 66 88 */	addi r3, r3, l_HIO@l /* 0x80B26688@l */
/* 80B25E64  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B25E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B25E6C  40 80 00 38 */	bge lbl_80B25EA4
/* 80B25E70  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80B25E74  4B 74 1A E1 */	bl cM_rndF__Ff
/* 80B25E78  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80B25E7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B25E80  FC 00 00 1E */	fctiwz f0, f0
/* 80B25E84  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B25E88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B25E8C  B0 1E 05 DE */	sth r0, 0x5de(r30)
/* 80B25E90  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 80B25E94  2C 00 00 01 */	cmpwi r0, 1
/* 80B25E98  40 82 00 0C */	bne lbl_80B25EA4
/* 80B25E9C  38 00 00 00 */	li r0, 0
/* 80B25EA0  B0 1E 05 C0 */	sth r0, 0x5c0(r30)
lbl_80B25EA4:
/* 80B25EA4  38 61 00 0C */	addi r3, r1, 0xc
/* 80B25EA8  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 80B25EAC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B25EB0  4B 74 0C 85 */	bl __mi__4cXyzCFRC3Vec
/* 80B25EB4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80B25EB8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B25EBC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B25EC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B25EC4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80B25EC8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80B25ECC  AB 9E 04 DE */	lha r28, 0x4de(r30)
/* 80B25ED0  4B 74 17 A5 */	bl cM_atan2s__Fff
/* 80B25ED4  7C 64 1B 78 */	mr r4, r3
/* 80B25ED8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80B25EDC  38 A0 00 04 */	li r5, 4
/* 80B25EE0  7F A6 EB 78 */	mr r6, r29
/* 80B25EE4  4B 74 A7 25 */	bl cLib_addCalcAngleS2__FPssss
/* 80B25EE8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B25EEC  EC 20 00 32 */	fmuls f1, f0, f0
/* 80B25EF0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B25EF4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80B25EF8  EC 41 00 2A */	fadds f2, f1, f0
/* 80B25EFC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80B25F00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B25F04  40 81 00 0C */	ble lbl_80B25F10
/* 80B25F08  FC 00 10 34 */	frsqrte f0, f2
/* 80B25F0C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80B25F10:
/* 80B25F10  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B25F14  4B 74 17 61 */	bl cM_atan2s__Fff
/* 80B25F18  7C 03 00 D0 */	neg r0, r3
/* 80B25F1C  7C 04 07 34 */	extsh r4, r0
/* 80B25F20  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80B25F24  38 A0 00 04 */	li r5, 4
/* 80B25F28  7F A6 EB 78 */	mr r6, r29
/* 80B25F2C  4B 74 A6 DD */	bl cLib_addCalcAngleS2__FPssss
/* 80B25F30  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B25F34  7F 80 E0 50 */	subf r28, r0, r28
/* 80B25F38  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80B25F3C  7F 80 07 34 */	extsh r0, r28
/* 80B25F40  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80B25F44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B25F48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B25F4C  3C 00 43 30 */	lis r0, 0x4330
/* 80B25F50  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B25F54  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B25F58  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B25F5C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B25F60  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80B25F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B25F68  40 81 00 0C */	ble lbl_80B25F74
/* 80B25F6C  FC 20 00 90 */	fmr f1, f0
/* 80B25F70  48 00 00 14 */	b lbl_80B25F84
lbl_80B25F74:
/* 80B25F74  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80B25F78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B25F7C  40 80 00 08 */	bge lbl_80B25F84
/* 80B25F80  FC 20 00 90 */	fmr f1, f0
lbl_80B25F84:
/* 80B25F84  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B25F88  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80B25F8C  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80B25F90  4B 74 9A AD */	bl cLib_addCalc2__FPffff
/* 80B25F94  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B25F98  C0 3E 05 E4 */	lfs f1, 0x5e4(r30)
/* 80B25F9C  3C 80 80 B2 */	lis r4, l_HIO@ha /* 0x80B26688@ha */
/* 80B25FA0  38 84 66 88 */	addi r4, r4, l_HIO@l /* 0x80B26688@l */
/* 80B25FA4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80B25FA8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B25FAC  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80B25FB0  FC 60 F8 90 */	fmr f3, f31
/* 80B25FB4  4B 74 9A 89 */	bl cLib_addCalc2__FPffff
/* 80B25FB8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B25FBC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B25FC0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80B25FC4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80B25FC8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B25FCC  4B 83 C2 59 */	bl _restgpr_28
/* 80B25FD0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B25FD4  7C 08 03 A6 */	mtlr r0
/* 80B25FD8  38 21 00 70 */	addi r1, r1, 0x70
/* 80B25FDC  4E 80 00 20 */	blr 
