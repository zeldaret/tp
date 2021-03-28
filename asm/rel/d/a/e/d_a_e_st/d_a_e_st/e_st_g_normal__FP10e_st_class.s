lbl_807A2B00:
/* 807A2B00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A2B04  7C 08 02 A6 */	mflr r0
/* 807A2B08  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A2B0C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807A2B10  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807A2B14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807A2B18  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807A2B1C  7C 7E 1B 78 */	mr r30, r3
/* 807A2B20  3C 80 80 7A */	lis r4, lit_3903@ha
/* 807A2B24  3B E4 68 24 */	addi r31, r4, lit_3903@l
/* 807A2B28  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807A2B2C  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807A2B30  2C 00 00 02 */	cmpwi r0, 2
/* 807A2B34  41 82 00 D0 */	beq lbl_807A2C04
/* 807A2B38  40 80 00 14 */	bge lbl_807A2B4C
/* 807A2B3C  2C 00 00 00 */	cmpwi r0, 0
/* 807A2B40  41 82 00 18 */	beq lbl_807A2B58
/* 807A2B44  40 80 00 5C */	bge lbl_807A2BA0
/* 807A2B48  48 00 01 6C */	b lbl_807A2CB4
lbl_807A2B4C:
/* 807A2B4C  2C 00 00 04 */	cmpwi r0, 4
/* 807A2B50  40 80 01 64 */	bge lbl_807A2CB4
/* 807A2B54  48 00 01 38 */	b lbl_807A2C8C
lbl_807A2B58:
/* 807A2B58  38 00 00 01 */	li r0, 1
/* 807A2B5C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A2B60  38 80 00 22 */	li r4, 0x22
/* 807A2B64  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807A2B68  38 A0 00 02 */	li r5, 2
/* 807A2B6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2B70  4B FF B2 DD */	bl anm_init__FP10e_st_classifUcf
/* 807A2B74  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807A2B78  4B AC 4D DC */	b cM_rndF__Ff
/* 807A2B7C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 807A2B80  EC 00 08 2A */	fadds f0, f0, f1
/* 807A2B84  FC 00 00 1E */	fctiwz f0, f0
/* 807A2B88  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A2B8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807A2B90  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 807A2B94  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807A2B98  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
/* 807A2B9C  48 00 01 18 */	b lbl_807A2CB4
lbl_807A2BA0:
/* 807A2BA0  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 807A2BA4  2C 00 00 00 */	cmpwi r0, 0
/* 807A2BA8  40 82 01 0C */	bne lbl_807A2CB4
/* 807A2BAC  38 00 00 02 */	li r0, 2
/* 807A2BB0  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A2BB4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807A2BB8  4B AC 4D D4 */	b cM_rndFX__Ff
/* 807A2BBC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807A2BC0  EC 00 08 2A */	fadds f0, f0, f1
/* 807A2BC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 807A2BC8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807A2BCC  4B AC 4D C0 */	b cM_rndFX__Ff
/* 807A2BD0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807A2BD4  EC 40 08 2A */	fadds f2, f0, f1
/* 807A2BD8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807A2BDC  C0 21 00 08 */	lfs f1, 8(r1)
/* 807A2BE0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A2BE4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A2BE8  D0 21 00 08 */	stfs f1, 8(r1)
/* 807A2BEC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A2BF0  EC 42 00 28 */	fsubs f2, f2, f0
/* 807A2BF4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807A2BF8  4B AC 4A 7C */	b cM_atan2s__Fff
/* 807A2BFC  B0 7E 05 C8 */	sth r3, 0x5c8(r30)
/* 807A2C00  48 00 00 B4 */	b lbl_807A2CB4
lbl_807A2C04:
/* 807A2C04  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 807A2C08  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 807A2C0C  7C 04 00 50 */	subf r0, r4, r0
/* 807A2C10  7C 00 07 34 */	extsh r0, r0
/* 807A2C14  2C 00 08 00 */	cmpwi r0, 0x800
/* 807A2C18  40 80 00 4C */	bge lbl_807A2C64
/* 807A2C1C  2C 00 F8 00 */	cmpwi r0, -2048
/* 807A2C20  40 81 00 44 */	ble lbl_807A2C64
/* 807A2C24  38 80 00 1F */	li r4, 0x1f
/* 807A2C28  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A2C2C  38 A0 00 02 */	li r5, 2
/* 807A2C30  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2C34  4B FF B2 19 */	bl anm_init__FP10e_st_classifUcf
/* 807A2C38  38 00 00 03 */	li r0, 3
/* 807A2C3C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A2C40  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807A2C44  4B AC 4D 10 */	b cM_rndF__Ff
/* 807A2C48  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 807A2C4C  EC 00 08 2A */	fadds f0, f0, f1
/* 807A2C50  FC 00 00 1E */	fctiwz f0, f0
/* 807A2C54  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A2C58  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807A2C5C  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 807A2C60  48 00 00 54 */	b lbl_807A2CB4
lbl_807A2C64:
/* 807A2C64  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 807A2C68  2C 00 00 21 */	cmpwi r0, 0x21
/* 807A2C6C  41 82 00 48 */	beq lbl_807A2CB4
/* 807A2C70  7F C3 F3 78 */	mr r3, r30
/* 807A2C74  38 80 00 21 */	li r4, 0x21
/* 807A2C78  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A2C7C  38 A0 00 02 */	li r5, 2
/* 807A2C80  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2C84  4B FF B1 C9 */	bl anm_init__FP10e_st_classifUcf
/* 807A2C88  48 00 00 2C */	b lbl_807A2CB4
lbl_807A2C8C:
/* 807A2C8C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807A2C90  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807A2C94  38 63 6D F4 */	addi r3, r3, l_HIO@l
/* 807A2C98  C0 03 00 08 */	lfs f0, 8(r3)
/* 807A2C9C  EF E1 00 32 */	fmuls f31, f1, f0
/* 807A2CA0  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 807A2CA4  2C 00 00 00 */	cmpwi r0, 0
/* 807A2CA8  40 82 00 0C */	bne lbl_807A2CB4
/* 807A2CAC  38 00 00 00 */	li r0, 0
/* 807A2CB0  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A2CB4:
/* 807A2CB4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807A2CB8  FC 20 F8 90 */	fmr f1, f31
/* 807A2CBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2CC0  FC 60 10 90 */	fmr f3, f2
/* 807A2CC4  4B AC CD 78 */	b cLib_addCalc2__FPffff
/* 807A2CC8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807A2CCC  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 807A2CD0  38 A0 00 02 */	li r5, 2
/* 807A2CD4  38 C0 01 00 */	li r6, 0x100
/* 807A2CD8  4B AC D9 30 */	b cLib_addCalcAngleS2__FPssss
/* 807A2CDC  7F C3 F3 78 */	mr r3, r30
/* 807A2CE0  3C 80 80 7A */	lis r4, l_HIO@ha
/* 807A2CE4  38 84 6D F4 */	addi r4, r4, l_HIO@l
/* 807A2CE8  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 807A2CEC  4B FF B8 65 */	bl pl_check__FP10e_st_classf
/* 807A2CF0  2C 03 00 00 */	cmpwi r3, 0
/* 807A2CF4  41 82 00 14 */	beq lbl_807A2D08
/* 807A2CF8  38 00 00 33 */	li r0, 0x33
/* 807A2CFC  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A2D00  38 00 00 00 */	li r0, 0
/* 807A2D04  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A2D08:
/* 807A2D08  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807A2D0C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807A2D10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807A2D14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807A2D18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A2D1C  7C 08 03 A6 */	mtlr r0
/* 807A2D20  38 21 00 40 */	addi r1, r1, 0x40
/* 807A2D24  4E 80 00 20 */	blr 
