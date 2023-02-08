lbl_80762C4C:
/* 80762C4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80762C50  7C 08 02 A6 */	mflr r0
/* 80762C54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80762C58  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80762C5C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80762C60  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80762C64  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80762C68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80762C6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80762C70  7C 7E 1B 78 */	mr r30, r3
/* 80762C74  3C 80 80 76 */	lis r4, lit_3788@ha /* 0x80764D0C@ha */
/* 80762C78  3B E4 4D 0C */	addi r31, r4, lit_3788@l /* 0x80764D0C@l */
/* 80762C7C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80762C80  C3 DF 00 08 */	lfs f30, 8(r31)
/* 80762C84  A8 03 0A 44 */	lha r0, 0xa44(r3)
/* 80762C88  2C 00 00 01 */	cmpwi r0, 1
/* 80762C8C  41 82 00 48 */	beq lbl_80762CD4
/* 80762C90  40 80 00 10 */	bge lbl_80762CA0
/* 80762C94  2C 00 00 00 */	cmpwi r0, 0
/* 80762C98  40 80 00 14 */	bge lbl_80762CAC
/* 80762C9C  48 00 01 74 */	b lbl_80762E10
lbl_80762CA0:
/* 80762CA0  2C 00 00 03 */	cmpwi r0, 3
/* 80762CA4  40 80 01 6C */	bge lbl_80762E10
/* 80762CA8  48 00 00 8C */	b lbl_80762D34
lbl_80762CAC:
/* 80762CAC  38 00 00 14 */	li r0, 0x14
/* 80762CB0  B0 1E 0A 38 */	sth r0, 0xa38(r30)
/* 80762CB4  38 00 00 01 */	li r0, 1
/* 80762CB8  B0 1E 0A 44 */	sth r0, 0xa44(r30)
/* 80762CBC  38 80 00 04 */	li r4, 4
/* 80762CC0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80762CC4  38 A0 00 00 */	li r5, 0
/* 80762CC8  FC 40 F0 90 */	fmr f2, f30
/* 80762CCC  4B FF F6 F1 */	bl anm_init__FP10e_rb_classifUcf
/* 80762CD0  48 00 01 40 */	b lbl_80762E10
lbl_80762CD4:
/* 80762CD4  80 7E 09 68 */	lwz r3, 0x968(r30)
/* 80762CD8  38 80 00 01 */	li r4, 1
/* 80762CDC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80762CE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80762CE4  40 82 00 14 */	bne lbl_80762CF8
/* 80762CE8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80762CEC  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80762CF0  41 82 00 08 */	beq lbl_80762CF8
/* 80762CF4  38 80 00 00 */	li r4, 0
lbl_80762CF8:
/* 80762CF8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80762CFC  41 82 01 14 */	beq lbl_80762E10
/* 80762D00  7F C3 F3 78 */	mr r3, r30
/* 80762D04  38 80 00 06 */	li r4, 6
/* 80762D08  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80762D0C  38 A0 00 00 */	li r5, 0
/* 80762D10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80762D14  4B FF F6 A9 */	bl anm_init__FP10e_rb_classifUcf
/* 80762D18  38 00 00 02 */	li r0, 2
/* 80762D1C  B0 1E 0A 44 */	sth r0, 0xa44(r30)
/* 80762D20  38 00 00 2D */	li r0, 0x2d
/* 80762D24  B0 1E 0A 38 */	sth r0, 0xa38(r30)
/* 80762D28  A8 1E 0A 48 */	lha r0, 0xa48(r30)
/* 80762D2C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80762D30  48 00 00 E0 */	b lbl_80762E10
lbl_80762D34:
/* 80762D34  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80762D38  A8 9E 0A 48 */	lha r4, 0xa48(r30)
/* 80762D3C  38 A0 00 04 */	li r5, 4
/* 80762D40  38 C0 04 00 */	li r6, 0x400
/* 80762D44  4B B0 D8 C5 */	bl cLib_addCalcAngleS2__FPssss
/* 80762D48  C3 FF 00 74 */	lfs f31, 0x74(r31)
/* 80762D4C  C3 DF 00 78 */	lfs f30, 0x78(r31)
/* 80762D50  A8 1E 0A 38 */	lha r0, 0xa38(r30)
/* 80762D54  2C 00 00 00 */	cmpwi r0, 0
/* 80762D58  41 82 00 10 */	beq lbl_80762D68
/* 80762D5C  80 1E 06 24 */	lwz r0, 0x624(r30)
/* 80762D60  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80762D64  41 82 00 68 */	beq lbl_80762DCC
lbl_80762D68:
/* 80762D68  38 00 00 02 */	li r0, 2
/* 80762D6C  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 80762D70  38 00 00 00 */	li r0, 0
/* 80762D74  B0 1E 0A 44 */	sth r0, 0xa44(r30)
/* 80762D78  A8 1E 0A 38 */	lha r0, 0xa38(r30)
/* 80762D7C  2C 00 00 00 */	cmpwi r0, 0
/* 80762D80  41 82 00 90 */	beq lbl_80762E10
/* 80762D84  38 00 00 04 */	li r0, 4
/* 80762D88  B0 1E 0A 4A */	sth r0, 0xa4a(r30)
/* 80762D8C  38 7E 08 0C */	addi r3, r30, 0x80c
/* 80762D90  4B 92 15 31 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80762D94  28 03 00 00 */	cmplwi r3, 0
/* 80762D98  41 82 00 10 */	beq lbl_80762DA8
/* 80762D9C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80762DA0  D0 1E 0A 30 */	stfs f0, 0xa30(r30)
/* 80762DA4  48 00 00 0C */	b lbl_80762DB0
lbl_80762DA8:
/* 80762DA8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80762DAC  D0 1E 0A 30 */	stfs f0, 0xa30(r30)
lbl_80762DB0:
/* 80762DB0  A8 1E 0A 48 */	lha r0, 0xa48(r30)
/* 80762DB4  B0 1E 0A 50 */	sth r0, 0xa50(r30)
/* 80762DB8  38 00 07 D0 */	li r0, 0x7d0
/* 80762DBC  B0 1E 0A 56 */	sth r0, 0xa56(r30)
/* 80762DC0  38 00 10 00 */	li r0, 0x1000
/* 80762DC4  B0 1E 0A 54 */	sth r0, 0xa54(r30)
/* 80762DC8  48 00 00 48 */	b lbl_80762E10
lbl_80762DCC:
/* 80762DCC  80 1E 08 68 */	lwz r0, 0x868(r30)
/* 80762DD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80762DD4  41 82 00 3C */	beq lbl_80762E10
/* 80762DD8  38 00 00 05 */	li r0, 5
/* 80762DDC  B0 1E 0A 4A */	sth r0, 0xa4a(r30)
/* 80762DE0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80762DE4  D0 1E 0A 30 */	stfs f0, 0xa30(r30)
/* 80762DE8  A8 1E 0A 48 */	lha r0, 0xa48(r30)
/* 80762DEC  B0 1E 0A 50 */	sth r0, 0xa50(r30)
/* 80762DF0  38 00 03 E8 */	li r0, 0x3e8
/* 80762DF4  B0 1E 0A 56 */	sth r0, 0xa56(r30)
/* 80762DF8  38 00 10 00 */	li r0, 0x1000
/* 80762DFC  B0 1E 0A 54 */	sth r0, 0xa54(r30)
/* 80762E00  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80762E04  D0 1E 0A 2C */	stfs f0, 0xa2c(r30)
/* 80762E08  38 00 00 0A */	li r0, 0xa
/* 80762E0C  B0 1E 0A 38 */	sth r0, 0xa38(r30)
lbl_80762E10:
/* 80762E10  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80762E14  FC 20 F8 90 */	fmr f1, f31
/* 80762E18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80762E1C  FC 60 F0 90 */	fmr f3, f30
/* 80762E20  4B B0 CC 1D */	bl cLib_addCalc2__FPffff
/* 80762E24  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80762E28  A8 1E 0A 4C */	lha r0, 0xa4c(r30)
/* 80762E2C  7C 03 02 14 */	add r0, r3, r0
/* 80762E30  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80762E34  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070464@ha */
/* 80762E38  38 03 04 64 */	addi r0, r3, 0x0464 /* 0x00070464@l */
/* 80762E3C  90 01 00 08 */	stw r0, 8(r1)
/* 80762E40  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80762E44  4B BF F2 69 */	bl __cvt_fp2unsigned
/* 80762E48  7C 65 1B 78 */	mr r5, r3
/* 80762E4C  38 7E 09 6C */	addi r3, r30, 0x96c
/* 80762E50  38 81 00 08 */	addi r4, r1, 8
/* 80762E54  38 C0 FF FF */	li r6, -1
/* 80762E58  81 9E 09 6C */	lwz r12, 0x96c(r30)
/* 80762E5C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80762E60  7D 89 03 A6 */	mtctr r12
/* 80762E64  4E 80 04 21 */	bctrl 
/* 80762E68  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80762E6C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80762E70  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80762E74  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80762E78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80762E7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80762E80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80762E84  7C 08 03 A6 */	mtlr r0
/* 80762E88  38 21 00 40 */	addi r1, r1, 0x40
/* 80762E8C  4E 80 00 20 */	blr 
