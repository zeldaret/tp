lbl_80ACF764:
/* 80ACF764  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80ACF768  7C 08 02 A6 */	mflr r0
/* 80ACF76C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80ACF770  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80ACF774  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80ACF778  39 61 00 60 */	addi r11, r1, 0x60
/* 80ACF77C  4B 89 2A 61 */	bl _savegpr_29
/* 80ACF780  7C 7F 1B 78 */	mr r31, r3
/* 80ACF784  7C 80 23 78 */	mr r0, r4
/* 80ACF788  FF E0 08 90 */	fmr f31, f1
/* 80ACF78C  7C BD 2B 78 */	mr r29, r5
/* 80ACF790  3C 60 80 AD */	lis r3, m__19daNpc_Seira_Param_c@ha /* 0x80ACFDF0@ha */
/* 80ACF794  3B C3 FD F0 */	addi r30, r3, m__19daNpc_Seira_Param_c@l /* 0x80ACFDF0@l */
/* 80ACF798  38 A0 00 00 */	li r5, 0
/* 80ACF79C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80ACF7A0  28 04 00 00 */	cmplwi r4, 0
/* 80ACF7A4  41 82 01 40 */	beq lbl_80ACF8E4
/* 80ACF7A8  38 61 00 18 */	addi r3, r1, 0x18
/* 80ACF7AC  7C 05 03 78 */	mr r5, r0
/* 80ACF7B0  4B 79 73 85 */	bl __mi__4cXyzCFRC3Vec
/* 80ACF7B4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80ACF7B8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80ACF7BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80ACF7C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80ACF7C4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80ACF7C8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80ACF7CC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80ACF7D0  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80ACF7D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80ACF7D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80ACF7DC  38 61 00 0C */	addi r3, r1, 0xc
/* 80ACF7E0  4B 87 79 59 */	bl PSVECSquareMag
/* 80ACF7E4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80ACF7E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ACF7EC  40 81 00 58 */	ble lbl_80ACF844
/* 80ACF7F0  FC 00 08 34 */	frsqrte f0, f1
/* 80ACF7F4  C8 9E 00 E0 */	lfd f4, 0xe0(r30)
/* 80ACF7F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80ACF7FC  C8 7E 00 E8 */	lfd f3, 0xe8(r30)
/* 80ACF800  FC 00 00 32 */	fmul f0, f0, f0
/* 80ACF804  FC 01 00 32 */	fmul f0, f1, f0
/* 80ACF808  FC 03 00 28 */	fsub f0, f3, f0
/* 80ACF80C  FC 02 00 32 */	fmul f0, f2, f0
/* 80ACF810  FC 44 00 32 */	fmul f2, f4, f0
/* 80ACF814  FC 00 00 32 */	fmul f0, f0, f0
/* 80ACF818  FC 01 00 32 */	fmul f0, f1, f0
/* 80ACF81C  FC 03 00 28 */	fsub f0, f3, f0
/* 80ACF820  FC 02 00 32 */	fmul f0, f2, f0
/* 80ACF824  FC 44 00 32 */	fmul f2, f4, f0
/* 80ACF828  FC 00 00 32 */	fmul f0, f0, f0
/* 80ACF82C  FC 01 00 32 */	fmul f0, f1, f0
/* 80ACF830  FC 03 00 28 */	fsub f0, f3, f0
/* 80ACF834  FC 02 00 32 */	fmul f0, f2, f0
/* 80ACF838  FC 41 00 32 */	fmul f2, f1, f0
/* 80ACF83C  FC 40 10 18 */	frsp f2, f2
/* 80ACF840  48 00 00 90 */	b lbl_80ACF8D0
lbl_80ACF844:
/* 80ACF844  C8 1E 00 F0 */	lfd f0, 0xf0(r30)
/* 80ACF848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ACF84C  40 80 00 10 */	bge lbl_80ACF85C
/* 80ACF850  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80ACF854  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80ACF858  48 00 00 78 */	b lbl_80ACF8D0
lbl_80ACF85C:
/* 80ACF85C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80ACF860  80 81 00 08 */	lwz r4, 8(r1)
/* 80ACF864  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80ACF868  3C 00 7F 80 */	lis r0, 0x7f80
/* 80ACF86C  7C 03 00 00 */	cmpw r3, r0
/* 80ACF870  41 82 00 14 */	beq lbl_80ACF884
/* 80ACF874  40 80 00 40 */	bge lbl_80ACF8B4
/* 80ACF878  2C 03 00 00 */	cmpwi r3, 0
/* 80ACF87C  41 82 00 20 */	beq lbl_80ACF89C
/* 80ACF880  48 00 00 34 */	b lbl_80ACF8B4
lbl_80ACF884:
/* 80ACF884  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ACF888  41 82 00 0C */	beq lbl_80ACF894
/* 80ACF88C  38 00 00 01 */	li r0, 1
/* 80ACF890  48 00 00 28 */	b lbl_80ACF8B8
lbl_80ACF894:
/* 80ACF894  38 00 00 02 */	li r0, 2
/* 80ACF898  48 00 00 20 */	b lbl_80ACF8B8
lbl_80ACF89C:
/* 80ACF89C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ACF8A0  41 82 00 0C */	beq lbl_80ACF8AC
/* 80ACF8A4  38 00 00 05 */	li r0, 5
/* 80ACF8A8  48 00 00 10 */	b lbl_80ACF8B8
lbl_80ACF8AC:
/* 80ACF8AC  38 00 00 03 */	li r0, 3
/* 80ACF8B0  48 00 00 08 */	b lbl_80ACF8B8
lbl_80ACF8B4:
/* 80ACF8B4  38 00 00 04 */	li r0, 4
lbl_80ACF8B8:
/* 80ACF8B8  2C 00 00 01 */	cmpwi r0, 1
/* 80ACF8BC  40 82 00 10 */	bne lbl_80ACF8CC
/* 80ACF8C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80ACF8C4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80ACF8C8  48 00 00 08 */	b lbl_80ACF8D0
lbl_80ACF8CC:
/* 80ACF8CC  FC 40 08 90 */	fmr f2, f1
lbl_80ACF8D0:
/* 80ACF8D0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80ACF8D4  4B 79 7D A1 */	bl cM_atan2s__Fff
/* 80ACF8D8  7C 03 00 D0 */	neg r0, r3
/* 80ACF8DC  7C 05 07 34 */	extsh r5, r0
/* 80ACF8E0  7C A5 EA 14 */	add r5, r5, r29
lbl_80ACF8E4:
/* 80ACF8E4  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80ACF8E8  7C A5 02 14 */	add r5, r5, r0
/* 80ACF8EC  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 80ACF8F0  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80ACF8F4  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80ACF8F8  C8 5E 00 D8 */	lfd f2, 0xd8(r30)
/* 80ACF8FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ACF900  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACF904  3C 60 43 30 */	lis r3, 0x4330
/* 80ACF908  90 61 00 30 */	stw r3, 0x30(r1)
/* 80ACF90C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ACF910  EC 20 10 28 */	fsubs f1, f0, f2
/* 80ACF914  EC 03 20 28 */	fsubs f0, f3, f4
/* 80ACF918  EC 21 00 32 */	fmuls f1, f1, f0
/* 80ACF91C  7C A0 07 34 */	extsh r0, r5
/* 80ACF920  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ACF924  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80ACF928  90 61 00 38 */	stw r3, 0x38(r1)
/* 80ACF92C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80ACF930  EC 00 10 28 */	fsubs f0, f0, f2
/* 80ACF934  EC 00 01 32 */	fmuls f0, f0, f4
/* 80ACF938  EC 01 00 2A */	fadds f0, f1, f0
/* 80ACF93C  FC 00 00 1E */	fctiwz f0, f0
/* 80ACF940  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80ACF944  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ACF948  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80ACF94C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80ACF950  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80ACF954  39 61 00 60 */	addi r11, r1, 0x60
/* 80ACF958  4B 89 28 D1 */	bl _restgpr_29
/* 80ACF95C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80ACF960  7C 08 03 A6 */	mtlr r0
/* 80ACF964  38 21 00 70 */	addi r1, r1, 0x70
/* 80ACF968  4E 80 00 20 */	blr 
