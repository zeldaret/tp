lbl_80831930:
/* 80831930  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80831934  7C 08 02 A6 */	mflr r0
/* 80831938  90 01 00 34 */	stw r0, 0x34(r1)
/* 8083193C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80831940  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80831944  7C 7E 1B 78 */	mr r30, r3
/* 80831948  3C 80 80 83 */	lis r4, lit_3789@ha /* 0x80832CF8@ha */
/* 8083194C  3B E4 2C F8 */	addi r31, r4, lit_3789@l /* 0x80832CF8@l */
/* 80831950  4B FF E3 3D */	bl damage_check__8daE_ZM_cFv
/* 80831954  80 1E 06 5C */	lwz r0, 0x65c(r30)
/* 80831958  28 00 00 06 */	cmplwi r0, 6
/* 8083195C  41 81 00 6C */	bgt lbl_808319C8
/* 80831960  3C 60 80 83 */	lis r3, lit_4712@ha /* 0x80832E94@ha */
/* 80831964  38 63 2E 94 */	addi r3, r3, lit_4712@l /* 0x80832E94@l */
/* 80831968  54 00 10 3A */	slwi r0, r0, 2
/* 8083196C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80831970  7C 09 03 A6 */	mtctr r0
/* 80831974  4E 80 04 20 */	bctr 
lbl_80831978:
/* 80831978  7F C3 F3 78 */	mr r3, r30
/* 8083197C  4B FF E9 C1 */	bl executeSearchPoint__8daE_ZM_cFv
/* 80831980  48 00 00 48 */	b lbl_808319C8
lbl_80831984:
/* 80831984  7F C3 F3 78 */	mr r3, r30
/* 80831988  4B FF EA 11 */	bl executeWait__8daE_ZM_cFv
/* 8083198C  48 00 00 3C */	b lbl_808319C8
lbl_80831990:
/* 80831990  7F C3 F3 78 */	mr r3, r30
/* 80831994  4B FF F0 49 */	bl executeMove__8daE_ZM_cFv
/* 80831998  48 00 00 30 */	b lbl_808319C8
lbl_8083199C:
/* 8083199C  7F C3 F3 78 */	mr r3, r30
/* 808319A0  4B FF F1 19 */	bl executeAttack__8daE_ZM_cFv
/* 808319A4  48 00 00 24 */	b lbl_808319C8
lbl_808319A8:
/* 808319A8  7F C3 F3 78 */	mr r3, r30
/* 808319AC  4B FF F4 7D */	bl executeDamage__8daE_ZM_cFv
/* 808319B0  48 00 00 18 */	b lbl_808319C8
lbl_808319B4:
/* 808319B4  7F C3 F3 78 */	mr r3, r30
/* 808319B8  4B FF F7 0D */	bl executeDead__8daE_ZM_cFv
/* 808319BC  48 00 00 0C */	b lbl_808319C8
lbl_808319C0:
/* 808319C0  7F C3 F3 78 */	mr r3, r30
/* 808319C4  4B FF FA B1 */	bl executeBullet__8daE_ZM_cFv
lbl_808319C8:
/* 808319C8  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 808319CC  2C 00 00 04 */	cmpwi r0, 4
/* 808319D0  40 82 00 30 */	bne lbl_80831A00
/* 808319D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070503@ha */
/* 808319D8  38 03 05 03 */	addi r0, r3, 0x0503 /* 0x00070503@l */
/* 808319DC  90 01 00 08 */	stw r0, 8(r1)
/* 808319E0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 808319E4  38 81 00 08 */	addi r4, r1, 8
/* 808319E8  38 A0 00 00 */	li r5, 0
/* 808319EC  38 C0 FF FF */	li r6, -1
/* 808319F0  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 808319F4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 808319F8  7D 89 03 A6 */	mtctr r12
/* 808319FC  4E 80 04 21 */	bctrl 
lbl_80831A00:
/* 80831A00  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 80831A04  2C 03 00 05 */	cmpwi r3, 5
/* 80831A08  41 82 00 1C */	beq lbl_80831A24
/* 80831A0C  88 1E 07 26 */	lbz r0, 0x726(r30)
/* 80831A10  28 00 00 0A */	cmplwi r0, 0xa
/* 80831A14  40 80 00 10 */	bge lbl_80831A24
/* 80831A18  88 1E 05 46 */	lbz r0, 0x546(r30)
/* 80831A1C  28 00 00 00 */	cmplwi r0, 0
/* 80831A20  41 82 00 D0 */	beq lbl_80831AF0
lbl_80831A24:
/* 80831A24  2C 03 00 05 */	cmpwi r3, 5
/* 80831A28  41 82 00 80 */	beq lbl_80831AA8
/* 80831A2C  A8 7E 07 20 */	lha r3, 0x720(r30)
/* 80831A30  38 03 00 01 */	addi r0, r3, 1
/* 80831A34  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 80831A38  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80831A3C  A8 1E 07 20 */	lha r0, 0x720(r30)
/* 80831A40  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 80831A44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80831A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80831A4C  3C 00 43 30 */	lis r0, 0x4330
/* 80831A50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80831A54  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80831A58  EC 00 08 28 */	fsubs f0, f0, f1
/* 80831A5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80831A60  FC 00 00 1E */	fctiwz f0, f0
/* 80831A64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80831A68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80831A6C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80831A70  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80831A74  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80831A78  7C 43 04 2E */	lfsx f2, r3, r0
/* 80831A7C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80831A80  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x80832F90@ha */
/* 80831A84  38 63 2F 90 */	addi r3, r3, l_HIO@l /* 0x80832F90@l */
/* 80831A88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80831A8C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80831A90  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80831A94  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80831A98  EC 01 00 2A */	fadds f0, f1, f0
/* 80831A9C  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 80831AA0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80831AA4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80831AA8:
/* 80831AA8  7F C3 F3 78 */	mr r3, r30
/* 80831AAC  38 9E 09 54 */	addi r4, r30, 0x954
/* 80831AB0  4B 7E 8C 1D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80831AB4  38 7E 07 7C */	addi r3, r30, 0x77c
/* 80831AB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80831ABC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80831AC0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80831AC4  4B 84 4F E9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80831AC8  88 1E 07 26 */	lbz r0, 0x726(r30)
/* 80831ACC  28 00 00 14 */	cmplwi r0, 0x14
/* 80831AD0  41 82 00 20 */	beq lbl_80831AF0
/* 80831AD4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80831AD8  7C 03 07 74 */	extsb r3, r0
/* 80831ADC  4B 7F B5 91 */	bl dComIfGp_getReverb__Fi
/* 80831AE0  7C 65 1B 78 */	mr r5, r3
/* 80831AE4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80831AE8  38 80 00 00 */	li r4, 0
/* 80831AEC  4B 7D F5 C5 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_80831AF0:
/* 80831AF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80831AF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80831AF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80831AFC  7C 08 03 A6 */	mtlr r0
/* 80831B00  38 21 00 30 */	addi r1, r1, 0x30
/* 80831B04  4E 80 00 20 */	blr 
