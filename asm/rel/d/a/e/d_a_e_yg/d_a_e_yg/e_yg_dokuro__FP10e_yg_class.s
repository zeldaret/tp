lbl_807F9BB8:
/* 807F9BB8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807F9BBC  7C 08 02 A6 */	mflr r0
/* 807F9BC0  90 01 00 64 */	stw r0, 0x64(r1)
/* 807F9BC4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807F9BC8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807F9BCC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 807F9BD0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 807F9BD4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807F9BD8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807F9BDC  7C 7E 1B 78 */	mr r30, r3
/* 807F9BE0  3C 60 80 80 */	lis r3, lit_3801@ha
/* 807F9BE4  3B E3 CC B4 */	addi r31, r3, lit_3801@l
/* 807F9BE8  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 807F9BEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F9BF0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807F9BF4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807F9BF8  38 81 00 0C */	addi r4, r1, 0xc
/* 807F9BFC  4B 81 FB FC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807F9C00  7C 64 1B 79 */	or. r4, r3, r3
/* 807F9C04  41 82 00 1C */	beq lbl_807F9C20
/* 807F9C08  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 807F9C0C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807F9C10  40 82 00 10 */	bne lbl_807F9C20
/* 807F9C14  80 04 04 9C */	lwz r0, 0x49c(r4)
/* 807F9C18  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 807F9C1C  41 82 00 14 */	beq lbl_807F9C30
lbl_807F9C20:
/* 807F9C20  38 00 00 00 */	li r0, 0
/* 807F9C24  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807F9C28  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F9C2C  48 00 02 A4 */	b lbl_807F9ED0
lbl_807F9C30:
/* 807F9C30  38 61 00 10 */	addi r3, r1, 0x10
/* 807F9C34  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 807F9C38  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807F9C3C  4B A6 CE F8 */	b __mi__4cXyzCFRC3Vec
/* 807F9C40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807F9C44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807F9C48  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807F9C4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807F9C50  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807F9C54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F9C58  38 61 00 1C */	addi r3, r1, 0x1c
/* 807F9C5C  4B B4 D4 DC */	b PSVECSquareMag
/* 807F9C60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F9C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F9C68  40 81 00 58 */	ble lbl_807F9CC0
/* 807F9C6C  FC 00 08 34 */	frsqrte f0, f1
/* 807F9C70  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807F9C74  FC 44 00 32 */	fmul f2, f4, f0
/* 807F9C78  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807F9C7C  FC 00 00 32 */	fmul f0, f0, f0
/* 807F9C80  FC 01 00 32 */	fmul f0, f1, f0
/* 807F9C84  FC 03 00 28 */	fsub f0, f3, f0
/* 807F9C88  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9C8C  FC 44 00 32 */	fmul f2, f4, f0
/* 807F9C90  FC 00 00 32 */	fmul f0, f0, f0
/* 807F9C94  FC 01 00 32 */	fmul f0, f1, f0
/* 807F9C98  FC 03 00 28 */	fsub f0, f3, f0
/* 807F9C9C  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9CA0  FC 44 00 32 */	fmul f2, f4, f0
/* 807F9CA4  FC 00 00 32 */	fmul f0, f0, f0
/* 807F9CA8  FC 01 00 32 */	fmul f0, f1, f0
/* 807F9CAC  FC 03 00 28 */	fsub f0, f3, f0
/* 807F9CB0  FC 02 00 32 */	fmul f0, f2, f0
/* 807F9CB4  FF E1 00 32 */	fmul f31, f1, f0
/* 807F9CB8  FF E0 F8 18 */	frsp f31, f31
/* 807F9CBC  48 00 00 90 */	b lbl_807F9D4C
lbl_807F9CC0:
/* 807F9CC0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807F9CC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F9CC8  40 80 00 10 */	bge lbl_807F9CD8
/* 807F9CCC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807F9CD0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807F9CD4  48 00 00 78 */	b lbl_807F9D4C
lbl_807F9CD8:
/* 807F9CD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 807F9CDC  80 81 00 08 */	lwz r4, 8(r1)
/* 807F9CE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F9CE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F9CE8  7C 03 00 00 */	cmpw r3, r0
/* 807F9CEC  41 82 00 14 */	beq lbl_807F9D00
/* 807F9CF0  40 80 00 40 */	bge lbl_807F9D30
/* 807F9CF4  2C 03 00 00 */	cmpwi r3, 0
/* 807F9CF8  41 82 00 20 */	beq lbl_807F9D18
/* 807F9CFC  48 00 00 34 */	b lbl_807F9D30
lbl_807F9D00:
/* 807F9D00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F9D04  41 82 00 0C */	beq lbl_807F9D10
/* 807F9D08  38 00 00 01 */	li r0, 1
/* 807F9D0C  48 00 00 28 */	b lbl_807F9D34
lbl_807F9D10:
/* 807F9D10  38 00 00 02 */	li r0, 2
/* 807F9D14  48 00 00 20 */	b lbl_807F9D34
lbl_807F9D18:
/* 807F9D18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F9D1C  41 82 00 0C */	beq lbl_807F9D28
/* 807F9D20  38 00 00 05 */	li r0, 5
/* 807F9D24  48 00 00 10 */	b lbl_807F9D34
lbl_807F9D28:
/* 807F9D28  38 00 00 03 */	li r0, 3
/* 807F9D2C  48 00 00 08 */	b lbl_807F9D34
lbl_807F9D30:
/* 807F9D30  38 00 00 04 */	li r0, 4
lbl_807F9D34:
/* 807F9D34  2C 00 00 01 */	cmpwi r0, 1
/* 807F9D38  40 82 00 10 */	bne lbl_807F9D48
/* 807F9D3C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807F9D40  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807F9D44  48 00 00 08 */	b lbl_807F9D4C
lbl_807F9D48:
/* 807F9D48  FF E0 08 90 */	fmr f31, f1
lbl_807F9D4C:
/* 807F9D4C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 807F9D50  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 807F9D54  4B A6 D9 20 */	b cM_atan2s__Fff
/* 807F9D58  B0 7E 05 C8 */	sth r3, 0x5c8(r30)
/* 807F9D5C  C3 DF 00 04 */	lfs f30, 4(r31)
/* 807F9D60  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 807F9D64  2C 00 00 02 */	cmpwi r0, 2
/* 807F9D68  41 82 00 98 */	beq lbl_807F9E00
/* 807F9D6C  40 80 00 14 */	bge lbl_807F9D80
/* 807F9D70  2C 00 00 00 */	cmpwi r0, 0
/* 807F9D74  41 82 00 18 */	beq lbl_807F9D8C
/* 807F9D78  40 80 00 38 */	bge lbl_807F9DB0
/* 807F9D7C  48 00 01 08 */	b lbl_807F9E84
lbl_807F9D80:
/* 807F9D80  2C 00 00 04 */	cmpwi r0, 4
/* 807F9D84  40 80 01 00 */	bge lbl_807F9E84
/* 807F9D88  48 00 00 D8 */	b lbl_807F9E60
lbl_807F9D8C:
/* 807F9D8C  7F C3 F3 78 */	mr r3, r30
/* 807F9D90  38 80 00 08 */	li r4, 8
/* 807F9D94  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F9D98  38 A0 00 00 */	li r5, 0
/* 807F9D9C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F9DA0  4B FF E5 F5 */	bl anm_init__FP10e_yg_classifUcf
/* 807F9DA4  38 00 00 01 */	li r0, 1
/* 807F9DA8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F9DAC  48 00 00 D8 */	b lbl_807F9E84
lbl_807F9DB0:
/* 807F9DB0  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807F9DB4  38 80 00 01 */	li r4, 1
/* 807F9DB8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F9DBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F9DC0  40 82 00 14 */	bne lbl_807F9DD4
/* 807F9DC4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F9DC8  FC 1E 00 00 */	fcmpu cr0, f30, f0
/* 807F9DCC  41 82 00 08 */	beq lbl_807F9DD4
/* 807F9DD0  38 80 00 00 */	li r4, 0
lbl_807F9DD4:
/* 807F9DD4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F9DD8  41 82 00 AC */	beq lbl_807F9E84
/* 807F9DDC  7F C3 F3 78 */	mr r3, r30
/* 807F9DE0  38 80 00 0D */	li r4, 0xd
/* 807F9DE4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F9DE8  38 A0 00 02 */	li r5, 2
/* 807F9DEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F9DF0  4B FF E5 A5 */	bl anm_init__FP10e_yg_classifUcf
/* 807F9DF4  38 00 00 02 */	li r0, 2
/* 807F9DF8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F9DFC  48 00 00 88 */	b lbl_807F9E84
lbl_807F9E00:
/* 807F9E00  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807F9E04  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807F9E08  40 80 00 48 */	bge lbl_807F9E50
/* 807F9E0C  7F C3 F3 78 */	mr r3, r30
/* 807F9E10  38 80 00 09 */	li r4, 9
/* 807F9E14  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F9E18  38 A0 00 02 */	li r5, 2
/* 807F9E1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F9E20  4B FF E5 75 */	bl anm_init__FP10e_yg_classifUcf
/* 807F9E24  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807F9E28  4B A6 DB 2C */	b cM_rndF__Ff
/* 807F9E2C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807F9E30  EC 00 08 2A */	fadds f0, f0, f1
/* 807F9E34  FC 00 00 1E */	fctiwz f0, f0
/* 807F9E38  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807F9E3C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807F9E40  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807F9E44  38 00 00 03 */	li r0, 3
/* 807F9E48  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F9E4C  48 00 00 38 */	b lbl_807F9E84
lbl_807F9E50:
/* 807F9E50  3C 60 80 80 */	lis r3, l_HIO@ha
/* 807F9E54  38 63 D0 6C */	addi r3, r3, l_HIO@l
/* 807F9E58  C3 C3 00 0C */	lfs f30, 0xc(r3)
/* 807F9E5C  48 00 00 28 */	b lbl_807F9E84
lbl_807F9E60:
/* 807F9E60  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807F9E64  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807F9E68  40 80 00 0C */	bge lbl_807F9E74
/* 807F9E6C  C3 DF 00 64 */	lfs f30, 0x64(r31)
/* 807F9E70  48 00 00 14 */	b lbl_807F9E84
lbl_807F9E74:
/* 807F9E74  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 807F9E78  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807F9E7C  40 81 00 08 */	ble lbl_807F9E84
/* 807F9E80  C3 DF 00 A8 */	lfs f30, 0xa8(r31)
lbl_807F9E84:
/* 807F9E84  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807F9E88  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 807F9E8C  38 A0 00 02 */	li r5, 2
/* 807F9E90  38 C0 20 00 */	li r6, 0x2000
/* 807F9E94  4B A7 67 74 */	b cLib_addCalcAngleS2__FPssss
/* 807F9E98  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807F9E9C  FC 20 F0 90 */	fmr f1, f30
/* 807F9EA0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F9EA4  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 807F9EA8  4B A7 5B 94 */	b cLib_addCalc2__FPffff
/* 807F9EAC  7F C3 F3 78 */	mr r3, r30
/* 807F9EB0  C0 3E 0B AC */	lfs f1, 0xbac(r30)
/* 807F9EB4  4B FF E5 8D */	bl pl_check__FP10e_yg_classf
/* 807F9EB8  2C 03 00 00 */	cmpwi r3, 0
/* 807F9EBC  41 82 00 14 */	beq lbl_807F9ED0
/* 807F9EC0  38 00 00 01 */	li r0, 1
/* 807F9EC4  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807F9EC8  38 00 00 00 */	li r0, 0
/* 807F9ECC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807F9ED0:
/* 807F9ED0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807F9ED4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807F9ED8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 807F9EDC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 807F9EE0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807F9EE4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807F9EE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807F9EEC  7C 08 03 A6 */	mtlr r0
/* 807F9EF0  38 21 00 60 */	addi r1, r1, 0x60
/* 807F9EF4  4E 80 00 20 */	blr 
