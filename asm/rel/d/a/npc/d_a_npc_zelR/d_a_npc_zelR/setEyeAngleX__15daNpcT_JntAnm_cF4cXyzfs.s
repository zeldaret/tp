lbl_80B71624:
/* 80B71624  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B71628  7C 08 02 A6 */	mflr r0
/* 80B7162C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B71630  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B71634  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B71638  39 61 00 60 */	addi r11, r1, 0x60
/* 80B7163C  4B 7F 0B A0 */	b _savegpr_29
/* 80B71640  7C 7F 1B 78 */	mr r31, r3
/* 80B71644  7C 80 23 78 */	mr r0, r4
/* 80B71648  FF E0 08 90 */	fmr f31, f1
/* 80B7164C  7C BD 2B 78 */	mr r29, r5
/* 80B71650  3C 60 80 B7 */	lis r3, m__18daNpc_ZelR_Param_c@ha
/* 80B71654  3B C3 1A E0 */	addi r30, r3, m__18daNpc_ZelR_Param_c@l
/* 80B71658  38 A0 00 00 */	li r5, 0
/* 80B7165C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B71660  28 04 00 00 */	cmplwi r4, 0
/* 80B71664  41 82 01 40 */	beq lbl_80B717A4
/* 80B71668  38 61 00 18 */	addi r3, r1, 0x18
/* 80B7166C  7C 05 03 78 */	mr r5, r0
/* 80B71670  4B 6F 54 C4 */	b __mi__4cXyzCFRC3Vec
/* 80B71674  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B71678  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B7167C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B71680  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B71684  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B71688  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B7168C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B71690  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B71694  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B71698  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B7169C  38 61 00 0C */	addi r3, r1, 0xc
/* 80B716A0  4B 7D 5A 98 */	b PSVECSquareMag
/* 80B716A4  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B716A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B716AC  40 81 00 58 */	ble lbl_80B71704
/* 80B716B0  FC 00 08 34 */	frsqrte f0, f1
/* 80B716B4  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80B716B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B716BC  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80B716C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B716C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B716C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B716CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B716D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B716D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B716D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B716DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B716E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B716E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B716E8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B716EC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B716F0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B716F4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B716F8  FC 41 00 32 */	fmul f2, f1, f0
/* 80B716FC  FC 40 10 18 */	frsp f2, f2
/* 80B71700  48 00 00 90 */	b lbl_80B71790
lbl_80B71704:
/* 80B71704  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80B71708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B7170C  40 80 00 10 */	bge lbl_80B7171C
/* 80B71710  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B71714  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B71718  48 00 00 78 */	b lbl_80B71790
lbl_80B7171C:
/* 80B7171C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B71720  80 81 00 08 */	lwz r4, 8(r1)
/* 80B71724  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B71728  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B7172C  7C 03 00 00 */	cmpw r3, r0
/* 80B71730  41 82 00 14 */	beq lbl_80B71744
/* 80B71734  40 80 00 40 */	bge lbl_80B71774
/* 80B71738  2C 03 00 00 */	cmpwi r3, 0
/* 80B7173C  41 82 00 20 */	beq lbl_80B7175C
/* 80B71740  48 00 00 34 */	b lbl_80B71774
lbl_80B71744:
/* 80B71744  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B71748  41 82 00 0C */	beq lbl_80B71754
/* 80B7174C  38 00 00 01 */	li r0, 1
/* 80B71750  48 00 00 28 */	b lbl_80B71778
lbl_80B71754:
/* 80B71754  38 00 00 02 */	li r0, 2
/* 80B71758  48 00 00 20 */	b lbl_80B71778
lbl_80B7175C:
/* 80B7175C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B71760  41 82 00 0C */	beq lbl_80B7176C
/* 80B71764  38 00 00 05 */	li r0, 5
/* 80B71768  48 00 00 10 */	b lbl_80B71778
lbl_80B7176C:
/* 80B7176C  38 00 00 03 */	li r0, 3
/* 80B71770  48 00 00 08 */	b lbl_80B71778
lbl_80B71774:
/* 80B71774  38 00 00 04 */	li r0, 4
lbl_80B71778:
/* 80B71778  2C 00 00 01 */	cmpwi r0, 1
/* 80B7177C  40 82 00 10 */	bne lbl_80B7178C
/* 80B71780  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B71784  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B71788  48 00 00 08 */	b lbl_80B71790
lbl_80B7178C:
/* 80B7178C  FC 40 08 90 */	fmr f2, f1
lbl_80B71790:
/* 80B71790  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B71794  4B 6F 5E E0 */	b cM_atan2s__Fff
/* 80B71798  7C 03 00 D0 */	neg r0, r3
/* 80B7179C  7C 05 07 34 */	extsh r5, r0
/* 80B717A0  7C A5 EA 14 */	add r5, r5, r29
lbl_80B717A4:
/* 80B717A4  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B717A8  7C A5 02 14 */	add r5, r5, r0
/* 80B717AC  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80B717B0  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B717B4  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B717B8  C8 5E 00 C0 */	lfd f2, 0xc0(r30)
/* 80B717BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B717C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B717C4  3C 60 43 30 */	lis r3, 0x4330
/* 80B717C8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B717CC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B717D0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B717D4  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B717D8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B717DC  7C A0 07 34 */	extsh r0, r5
/* 80B717E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B717E4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B717E8  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B717EC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B717F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B717F4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B717F8  EC 01 00 2A */	fadds f0, f1, f0
/* 80B717FC  FC 00 00 1E */	fctiwz f0, f0
/* 80B71800  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B71804  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B71808  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B7180C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B71810  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B71814  39 61 00 60 */	addi r11, r1, 0x60
/* 80B71818  4B 7F 0A 10 */	b _restgpr_29
/* 80B7181C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B71820  7C 08 03 A6 */	mtlr r0
/* 80B71824  38 21 00 70 */	addi r1, r1, 0x70
/* 80B71828  4E 80 00 20 */	blr 
