lbl_806E3208:
/* 806E3208  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806E320C  7C 08 02 A6 */	mflr r0
/* 806E3210  90 01 00 54 */	stw r0, 0x54(r1)
/* 806E3214  39 61 00 50 */	addi r11, r1, 0x50
/* 806E3218  4B C7 EF C4 */	b _savegpr_29
/* 806E321C  7C 7E 1B 78 */	mr r30, r3
/* 806E3220  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E3224  3B E3 59 20 */	addi r31, r3, lit_3791@l
/* 806E3228  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 806E322C  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 806E3230  80 BE 06 1C */	lwz r5, 0x61c(r30)
/* 806E3234  2C 05 00 0E */	cmpwi r5, 0xe
/* 806E3238  40 82 00 34 */	bne lbl_806E326C
/* 806E323C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 806E3240  4B B8 47 4C */	b cM_rndFX__Ff
/* 806E3244  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 806E3248  EC 00 08 2A */	fadds f0, f0, f1
/* 806E324C  FC 00 00 1E */	fctiwz f0, f0
/* 806E3250  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806E3254  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806E3258  7C 00 07 34 */	extsh r0, r0
/* 806E325C  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 806E3260  38 00 00 02 */	li r0, 2
/* 806E3264  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 806E3268  48 00 01 A0 */	b lbl_806E3408
lbl_806E326C:
/* 806E326C  38 60 00 01 */	li r3, 1
/* 806E3270  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806E3274  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E3278  40 82 00 18 */	bne lbl_806E3290
/* 806E327C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E3280  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806E3284  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E3288  41 82 00 08 */	beq lbl_806E3290
/* 806E328C  38 60 00 00 */	li r3, 0
lbl_806E3290:
/* 806E3290  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E3294  41 82 00 28 */	beq lbl_806E32BC
/* 806E3298  2C 05 00 06 */	cmpwi r5, 6
/* 806E329C  40 82 00 20 */	bne lbl_806E32BC
/* 806E32A0  7F C3 F3 78 */	mr r3, r30
/* 806E32A4  38 80 00 0E */	li r4, 0xe
/* 806E32A8  38 A0 00 02 */	li r5, 2
/* 806E32AC  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806E32B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E32B4  4B FF DB D9 */	bl SetAnm__8daE_HM_cFiiff
/* 806E32B8  48 00 01 50 */	b lbl_806E3408
lbl_806E32BC:
/* 806E32BC  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 806E32C0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 806E32C4  40 82 01 0C */	bne lbl_806E33D0
/* 806E32C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070247@ha */
/* 806E32CC  38 03 02 47 */	addi r0, r3, 0x0247 /* 0x00070247@l */
/* 806E32D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E32D4  38 7E 06 30 */	addi r3, r30, 0x630
/* 806E32D8  38 81 00 24 */	addi r4, r1, 0x24
/* 806E32DC  38 A0 FF FF */	li r5, -1
/* 806E32E0  81 9E 06 30 */	lwz r12, 0x630(r30)
/* 806E32E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E32E8  7D 89 03 A6 */	mtctr r12
/* 806E32EC  4E 80 04 21 */	bctrl 
/* 806E32F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070248@ha */
/* 806E32F4  38 03 02 48 */	addi r0, r3, 0x0248 /* 0x00070248@l */
/* 806E32F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 806E32FC  38 7E 06 30 */	addi r3, r30, 0x630
/* 806E3300  38 81 00 20 */	addi r4, r1, 0x20
/* 806E3304  38 A0 00 00 */	li r5, 0
/* 806E3308  38 C0 FF FF */	li r6, -1
/* 806E330C  81 9E 06 30 */	lwz r12, 0x630(r30)
/* 806E3310  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806E3314  7D 89 03 A6 */	mtctr r12
/* 806E3318  4E 80 04 21 */	bctrl 
/* 806E331C  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806E3320  38 63 5C 24 */	addi r3, r3, l_HIO@l
/* 806E3324  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E3328  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E332C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806E3330  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E3334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E3338  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 806E333C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E3340  38 80 00 00 */	li r4, 0
/* 806E3344  90 81 00 08 */	stw r4, 8(r1)
/* 806E3348  38 00 FF FF */	li r0, -1
/* 806E334C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E3350  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E3354  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E3358  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E335C  38 80 00 00 */	li r4, 0
/* 806E3360  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008699@ha */
/* 806E3364  38 A5 86 99 */	addi r5, r5, 0x8699 /* 0x00008699@l */
/* 806E3368  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E336C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E3370  39 1E 05 CC */	addi r8, r30, 0x5cc
/* 806E3374  39 21 00 28 */	addi r9, r1, 0x28
/* 806E3378  39 40 00 FF */	li r10, 0xff
/* 806E337C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E3380  4B 96 97 10 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E3384  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E3388  38 80 00 00 */	li r4, 0
/* 806E338C  90 81 00 08 */	stw r4, 8(r1)
/* 806E3390  38 00 FF FF */	li r0, -1
/* 806E3394  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E3398  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E339C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E33A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E33A4  38 80 00 00 */	li r4, 0
/* 806E33A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000869A@ha */
/* 806E33AC  38 A5 86 9A */	addi r5, r5, 0x869A /* 0x0000869A@l */
/* 806E33B0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E33B4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E33B8  39 1E 05 CC */	addi r8, r30, 0x5cc
/* 806E33BC  39 21 00 28 */	addi r9, r1, 0x28
/* 806E33C0  39 40 00 FF */	li r10, 0xff
/* 806E33C4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E33C8  4B 96 96 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E33CC  48 00 00 3C */	b lbl_806E3408
lbl_806E33D0:
/* 806E33D0  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 806E33D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806E33D8  40 81 00 30 */	ble lbl_806E3408
/* 806E33DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E33E0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E33E4  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806E33E8  38 63 5C 24 */	addi r3, r3, l_HIO@l
/* 806E33EC  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 806E33F0  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 806E33F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806E33F8  EC 20 00 B2 */	fmuls f1, f0, f2
/* 806E33FC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 806E3400  EC 40 00 B2 */	fmuls f2, f0, f2
/* 806E3404  4B B8 D3 3C */	b cLib_chaseF__FPfff
lbl_806E3408:
/* 806E3408  39 61 00 50 */	addi r11, r1, 0x50
/* 806E340C  4B C7 EE 1C */	b _restgpr_29
/* 806E3410  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806E3414  7C 08 03 A6 */	mtlr r0
/* 806E3418  38 21 00 50 */	addi r1, r1, 0x50
/* 806E341C  4E 80 00 20 */	blr 
