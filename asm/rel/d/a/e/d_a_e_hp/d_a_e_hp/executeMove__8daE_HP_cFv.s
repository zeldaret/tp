lbl_806E6C74:
/* 806E6C74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E6C78  7C 08 02 A6 */	mflr r0
/* 806E6C7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E6C80  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806E6C84  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806E6C88  7C 7E 1B 78 */	mr r30, r3
/* 806E6C8C  3C 80 80 6F */	lis r4, lit_3905@ha /* 0x806EA1F4@ha */
/* 806E6C90  3B E4 A1 F4 */	addi r31, r4, lit_3905@l /* 0x806EA1F4@l */
/* 806E6C94  80 03 07 14 */	lwz r0, 0x714(r3)
/* 806E6C98  2C 00 00 01 */	cmpwi r0, 1
/* 806E6C9C  41 82 00 60 */	beq lbl_806E6CFC
/* 806E6CA0  40 80 01 F8 */	bge lbl_806E6E98
/* 806E6CA4  2C 00 00 00 */	cmpwi r0, 0
/* 806E6CA8  40 80 00 08 */	bge lbl_806E6CB0
/* 806E6CAC  48 00 01 EC */	b lbl_806E6E98
lbl_806E6CB0:
/* 806E6CB0  38 00 00 00 */	li r0, 0
/* 806E6CB4  98 1E 07 1F */	stb r0, 0x71f(r30)
/* 806E6CB8  38 80 00 0C */	li r4, 0xc
/* 806E6CBC  38 A0 00 02 */	li r5, 2
/* 806E6CC0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806E6CC4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E6CC8  4B FF F8 4D */	bl setBck__8daE_HP_cFiUcff
/* 806E6CCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052E@ha */
/* 806E6CD0  38 03 05 2E */	addi r0, r3, 0x052E /* 0x0007052E@l */
/* 806E6CD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E6CD8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E6CDC  38 81 00 0C */	addi r4, r1, 0xc
/* 806E6CE0  38 A0 FF FF */	li r5, -1
/* 806E6CE4  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E6CE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E6CEC  7D 89 03 A6 */	mtctr r12
/* 806E6CF0  4E 80 04 21 */	bctrl 
/* 806E6CF4  38 00 00 01 */	li r0, 1
/* 806E6CF8  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_806E6CFC:
/* 806E6CFC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806E6D00  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E6D04  38 61 00 10 */	addi r3, r1, 0x10
/* 806E6D08  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E6D0C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806E6D10  4B B7 FE 25 */	bl __mi__4cXyzCFRC3Vec
/* 806E6D14  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806E6D18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E6D1C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806E6D20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E6D24  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806E6D28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E6D2C  38 61 00 1C */	addi r3, r1, 0x1c
/* 806E6D30  4B C6 04 09 */	bl PSVECSquareMag
/* 806E6D34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E6D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6D3C  40 81 00 58 */	ble lbl_806E6D94
/* 806E6D40  FC 00 08 34 */	frsqrte f0, f1
/* 806E6D44  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E6D48  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6D4C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E6D50  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6D54  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6D58  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6D5C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6D60  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6D64  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6D68  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6D6C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6D70  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6D74  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6D78  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6D7C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6D80  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6D84  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6D88  FC 21 00 32 */	fmul f1, f1, f0
/* 806E6D8C  FC 20 08 18 */	frsp f1, f1
/* 806E6D90  48 00 00 88 */	b lbl_806E6E18
lbl_806E6D94:
/* 806E6D94  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E6D98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6D9C  40 80 00 10 */	bge lbl_806E6DAC
/* 806E6DA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E6DA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E6DA8  48 00 00 70 */	b lbl_806E6E18
lbl_806E6DAC:
/* 806E6DAC  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E6DB0  80 81 00 08 */	lwz r4, 8(r1)
/* 806E6DB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E6DB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E6DBC  7C 03 00 00 */	cmpw r3, r0
/* 806E6DC0  41 82 00 14 */	beq lbl_806E6DD4
/* 806E6DC4  40 80 00 40 */	bge lbl_806E6E04
/* 806E6DC8  2C 03 00 00 */	cmpwi r3, 0
/* 806E6DCC  41 82 00 20 */	beq lbl_806E6DEC
/* 806E6DD0  48 00 00 34 */	b lbl_806E6E04
lbl_806E6DD4:
/* 806E6DD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E6DD8  41 82 00 0C */	beq lbl_806E6DE4
/* 806E6DDC  38 00 00 01 */	li r0, 1
/* 806E6DE0  48 00 00 28 */	b lbl_806E6E08
lbl_806E6DE4:
/* 806E6DE4  38 00 00 02 */	li r0, 2
/* 806E6DE8  48 00 00 20 */	b lbl_806E6E08
lbl_806E6DEC:
/* 806E6DEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E6DF0  41 82 00 0C */	beq lbl_806E6DFC
/* 806E6DF4  38 00 00 05 */	li r0, 5
/* 806E6DF8  48 00 00 10 */	b lbl_806E6E08
lbl_806E6DFC:
/* 806E6DFC  38 00 00 03 */	li r0, 3
/* 806E6E00  48 00 00 08 */	b lbl_806E6E08
lbl_806E6E04:
/* 806E6E04  38 00 00 04 */	li r0, 4
lbl_806E6E08:
/* 806E6E08  2C 00 00 01 */	cmpwi r0, 1
/* 806E6E0C  40 82 00 0C */	bne lbl_806E6E18
/* 806E6E10  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E6E14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806E6E18:
/* 806E6E18  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 806E6E1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6E20  40 81 00 18 */	ble lbl_806E6E38
/* 806E6E24  7F C3 F3 78 */	mr r3, r30
/* 806E6E28  38 80 00 00 */	li r4, 0
/* 806E6E2C  38 A0 00 64 */	li r5, 0x64
/* 806E6E30  4B FF F7 91 */	bl setActionMode__8daE_HP_cFii
/* 806E6E34  48 00 00 64 */	b lbl_806E6E98
lbl_806E6E38:
/* 806E6E38  7F C3 F3 78 */	mr r3, r30
/* 806E6E3C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806E6E40  4B FF F7 8D */	bl mChkDistance__8daE_HP_cFf
/* 806E6E44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E6E48  41 82 00 50 */	beq lbl_806E6E98
/* 806E6E4C  4B A7 85 D9 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 806E6E50  2C 03 00 00 */	cmpwi r3, 0
/* 806E6E54  40 82 00 34 */	bne lbl_806E6E88
/* 806E6E58  88 7E 07 1F */	lbz r3, 0x71f(r30)
/* 806E6E5C  38 03 00 01 */	addi r0, r3, 1
/* 806E6E60  98 1E 07 1F */	stb r0, 0x71f(r30)
/* 806E6E64  88 9E 07 1F */	lbz r4, 0x71f(r30)
/* 806E6E68  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806EA4F8@ha */
/* 806E6E6C  38 63 A4 F8 */	addi r3, r3, l_HIO@l /* 0x806EA4F8@l */
/* 806E6E70  A8 03 00 10 */	lha r0, 0x10(r3)
/* 806E6E74  7C 04 00 00 */	cmpw r4, r0
/* 806E6E78  40 80 00 10 */	bge lbl_806E6E88
/* 806E6E7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E6E80  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E6E84  48 00 00 14 */	b lbl_806E6E98
lbl_806E6E88:
/* 806E6E88  7F C3 F3 78 */	mr r3, r30
/* 806E6E8C  38 80 00 03 */	li r4, 3
/* 806E6E90  38 A0 00 00 */	li r5, 0
/* 806E6E94  4B FF F7 2D */	bl setActionMode__8daE_HP_cFii
lbl_806E6E98:
/* 806E6E98  7F C3 F3 78 */	mr r3, r30
/* 806E6E9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E6EA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E6EA4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806E6EA8  4B 93 38 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806E6EAC  7C 64 1B 78 */	mr r4, r3
/* 806E6EB0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806E6EB4  38 A0 00 04 */	li r5, 4
/* 806E6EB8  38 C0 08 00 */	li r6, 0x800
/* 806E6EBC  4B B8 97 4D */	bl cLib_addCalcAngleS2__FPssss
/* 806E6EC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806E6EC4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806E6EC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E6ECC  7C 08 03 A6 */	mtlr r0
/* 806E6ED0  38 21 00 30 */	addi r1, r1, 0x30
/* 806E6ED4  4E 80 00 20 */	blr 
