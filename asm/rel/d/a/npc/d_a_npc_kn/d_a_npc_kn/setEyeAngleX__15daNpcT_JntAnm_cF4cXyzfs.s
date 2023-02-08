lbl_80A3C790:
/* 80A3C790  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A3C794  7C 08 02 A6 */	mflr r0
/* 80A3C798  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A3C79C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A3C7A0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A3C7A4  39 61 00 60 */	addi r11, r1, 0x60
/* 80A3C7A8  4B 92 5A 35 */	bl _savegpr_29
/* 80A3C7AC  7C 7F 1B 78 */	mr r31, r3
/* 80A3C7B0  7C 80 23 78 */	mr r0, r4
/* 80A3C7B4  FF E0 08 90 */	fmr f31, f1
/* 80A3C7B8  7C BD 2B 78 */	mr r29, r5
/* 80A3C7BC  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A3C7C0  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A3C7C4  38 A0 00 00 */	li r5, 0
/* 80A3C7C8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A3C7CC  28 04 00 00 */	cmplwi r4, 0
/* 80A3C7D0  41 82 01 40 */	beq lbl_80A3C910
/* 80A3C7D4  38 61 00 18 */	addi r3, r1, 0x18
/* 80A3C7D8  7C 05 03 78 */	mr r5, r0
/* 80A3C7DC  4B 82 A3 59 */	bl __mi__4cXyzCFRC3Vec
/* 80A3C7E0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A3C7E4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A3C7E8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A3C7EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3C7F0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A3C7F4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A3C7F8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A3C7FC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A3C800  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3C804  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A3C808  38 61 00 0C */	addi r3, r1, 0xc
/* 80A3C80C  4B 90 A9 2D */	bl PSVECSquareMag
/* 80A3C810  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A3C814  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3C818  40 81 00 58 */	ble lbl_80A3C870
/* 80A3C81C  FC 00 08 34 */	frsqrte f0, f1
/* 80A3C820  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 80A3C824  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3C828  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 80A3C82C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3C830  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3C834  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3C838  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3C83C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3C840  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3C844  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3C848  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3C84C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3C850  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3C854  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3C858  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3C85C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3C860  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3C864  FC 41 00 32 */	fmul f2, f1, f0
/* 80A3C868  FC 40 10 18 */	frsp f2, f2
/* 80A3C86C  48 00 00 90 */	b lbl_80A3C8FC
lbl_80A3C870:
/* 80A3C870  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 80A3C874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3C878  40 80 00 10 */	bge lbl_80A3C888
/* 80A3C87C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A3C880  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A3C884  48 00 00 78 */	b lbl_80A3C8FC
lbl_80A3C888:
/* 80A3C888  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A3C88C  80 81 00 08 */	lwz r4, 8(r1)
/* 80A3C890  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A3C894  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A3C898  7C 03 00 00 */	cmpw r3, r0
/* 80A3C89C  41 82 00 14 */	beq lbl_80A3C8B0
/* 80A3C8A0  40 80 00 40 */	bge lbl_80A3C8E0
/* 80A3C8A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A3C8A8  41 82 00 20 */	beq lbl_80A3C8C8
/* 80A3C8AC  48 00 00 34 */	b lbl_80A3C8E0
lbl_80A3C8B0:
/* 80A3C8B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A3C8B4  41 82 00 0C */	beq lbl_80A3C8C0
/* 80A3C8B8  38 00 00 01 */	li r0, 1
/* 80A3C8BC  48 00 00 28 */	b lbl_80A3C8E4
lbl_80A3C8C0:
/* 80A3C8C0  38 00 00 02 */	li r0, 2
/* 80A3C8C4  48 00 00 20 */	b lbl_80A3C8E4
lbl_80A3C8C8:
/* 80A3C8C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A3C8CC  41 82 00 0C */	beq lbl_80A3C8D8
/* 80A3C8D0  38 00 00 05 */	li r0, 5
/* 80A3C8D4  48 00 00 10 */	b lbl_80A3C8E4
lbl_80A3C8D8:
/* 80A3C8D8  38 00 00 03 */	li r0, 3
/* 80A3C8DC  48 00 00 08 */	b lbl_80A3C8E4
lbl_80A3C8E0:
/* 80A3C8E0  38 00 00 04 */	li r0, 4
lbl_80A3C8E4:
/* 80A3C8E4  2C 00 00 01 */	cmpwi r0, 1
/* 80A3C8E8  40 82 00 10 */	bne lbl_80A3C8F8
/* 80A3C8EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A3C8F0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A3C8F4  48 00 00 08 */	b lbl_80A3C8FC
lbl_80A3C8F8:
/* 80A3C8F8  FC 40 08 90 */	fmr f2, f1
lbl_80A3C8FC:
/* 80A3C8FC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A3C900  4B 82 AD 75 */	bl cM_atan2s__Fff
/* 80A3C904  7C 03 00 D0 */	neg r0, r3
/* 80A3C908  7C 05 07 34 */	extsh r5, r0
/* 80A3C90C  7C A5 EA 14 */	add r5, r5, r29
lbl_80A3C910:
/* 80A3C910  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A3C914  7C A5 02 14 */	add r5, r5, r0
/* 80A3C918  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80A3C91C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A3C920  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A3C924  C8 5E 00 30 */	lfd f2, 0x30(r30)
/* 80A3C928  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3C92C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3C930  3C 60 43 30 */	lis r3, 0x4330
/* 80A3C934  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A3C938  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A3C93C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A3C940  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A3C944  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A3C948  7C A0 07 34 */	extsh r0, r5
/* 80A3C94C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3C950  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A3C954  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A3C958  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A3C95C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A3C960  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A3C964  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3C968  FC 00 00 1E */	fctiwz f0, f0
/* 80A3C96C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A3C970  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3C974  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A3C978  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A3C97C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A3C980  39 61 00 60 */	addi r11, r1, 0x60
/* 80A3C984  4B 92 58 A5 */	bl _restgpr_29
/* 80A3C988  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A3C98C  7C 08 03 A6 */	mtlr r0
/* 80A3C990  38 21 00 70 */	addi r1, r1, 0x70
/* 80A3C994  4E 80 00 20 */	blr 
