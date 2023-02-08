lbl_80B675C0:
/* 80B675C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B675C4  7C 08 02 A6 */	mflr r0
/* 80B675C8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B675CC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B675D0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B675D4  39 61 00 60 */	addi r11, r1, 0x60
/* 80B675D8  4B 7F AC 05 */	bl _savegpr_29
/* 80B675DC  7C 7F 1B 78 */	mr r31, r3
/* 80B675E0  7C 80 23 78 */	mr r0, r4
/* 80B675E4  FF E0 08 90 */	fmr f31, f1
/* 80B675E8  7C BD 2B 78 */	mr r29, r5
/* 80B675EC  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B675F0  3B C3 7C 38 */	addi r30, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B675F4  38 A0 00 00 */	li r5, 0
/* 80B675F8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B675FC  28 04 00 00 */	cmplwi r4, 0
/* 80B67600  41 82 01 40 */	beq lbl_80B67740
/* 80B67604  38 61 00 18 */	addi r3, r1, 0x18
/* 80B67608  7C 05 03 78 */	mr r5, r0
/* 80B6760C  4B 6F F5 29 */	bl __mi__4cXyzCFRC3Vec
/* 80B67610  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B67614  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B67618  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B6761C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B67620  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B67624  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B67628  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B6762C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B67630  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B67634  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B67638  38 61 00 0C */	addi r3, r1, 0xc
/* 80B6763C  4B 7D FA FD */	bl PSVECSquareMag
/* 80B67640  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B67644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B67648  40 81 00 58 */	ble lbl_80B676A0
/* 80B6764C  FC 00 08 34 */	frsqrte f0, f1
/* 80B67650  C8 9E 01 28 */	lfd f4, 0x128(r30)
/* 80B67654  FC 44 00 32 */	fmul f2, f4, f0
/* 80B67658  C8 7E 01 30 */	lfd f3, 0x130(r30)
/* 80B6765C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B67660  FC 01 00 32 */	fmul f0, f1, f0
/* 80B67664  FC 03 00 28 */	fsub f0, f3, f0
/* 80B67668  FC 02 00 32 */	fmul f0, f2, f0
/* 80B6766C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B67670  FC 00 00 32 */	fmul f0, f0, f0
/* 80B67674  FC 01 00 32 */	fmul f0, f1, f0
/* 80B67678  FC 03 00 28 */	fsub f0, f3, f0
/* 80B6767C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B67680  FC 44 00 32 */	fmul f2, f4, f0
/* 80B67684  FC 00 00 32 */	fmul f0, f0, f0
/* 80B67688  FC 01 00 32 */	fmul f0, f1, f0
/* 80B6768C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B67690  FC 02 00 32 */	fmul f0, f2, f0
/* 80B67694  FC 41 00 32 */	fmul f2, f1, f0
/* 80B67698  FC 40 10 18 */	frsp f2, f2
/* 80B6769C  48 00 00 90 */	b lbl_80B6772C
lbl_80B676A0:
/* 80B676A0  C8 1E 01 38 */	lfd f0, 0x138(r30)
/* 80B676A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B676A8  40 80 00 10 */	bge lbl_80B676B8
/* 80B676AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B676B0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B676B4  48 00 00 78 */	b lbl_80B6772C
lbl_80B676B8:
/* 80B676B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B676BC  80 81 00 08 */	lwz r4, 8(r1)
/* 80B676C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B676C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B676C8  7C 03 00 00 */	cmpw r3, r0
/* 80B676CC  41 82 00 14 */	beq lbl_80B676E0
/* 80B676D0  40 80 00 40 */	bge lbl_80B67710
/* 80B676D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B676D8  41 82 00 20 */	beq lbl_80B676F8
/* 80B676DC  48 00 00 34 */	b lbl_80B67710
lbl_80B676E0:
/* 80B676E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B676E4  41 82 00 0C */	beq lbl_80B676F0
/* 80B676E8  38 00 00 01 */	li r0, 1
/* 80B676EC  48 00 00 28 */	b lbl_80B67714
lbl_80B676F0:
/* 80B676F0  38 00 00 02 */	li r0, 2
/* 80B676F4  48 00 00 20 */	b lbl_80B67714
lbl_80B676F8:
/* 80B676F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B676FC  41 82 00 0C */	beq lbl_80B67708
/* 80B67700  38 00 00 05 */	li r0, 5
/* 80B67704  48 00 00 10 */	b lbl_80B67714
lbl_80B67708:
/* 80B67708  38 00 00 03 */	li r0, 3
/* 80B6770C  48 00 00 08 */	b lbl_80B67714
lbl_80B67710:
/* 80B67710  38 00 00 04 */	li r0, 4
lbl_80B67714:
/* 80B67714  2C 00 00 01 */	cmpwi r0, 1
/* 80B67718  40 82 00 10 */	bne lbl_80B67728
/* 80B6771C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B67720  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B67724  48 00 00 08 */	b lbl_80B6772C
lbl_80B67728:
/* 80B67728  FC 40 08 90 */	fmr f2, f1
lbl_80B6772C:
/* 80B6772C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B67730  4B 6F FF 45 */	bl cM_atan2s__Fff
/* 80B67734  7C 03 00 D0 */	neg r0, r3
/* 80B67738  7C 05 07 34 */	extsh r5, r0
/* 80B6773C  7C A5 EA 14 */	add r5, r5, r29
lbl_80B67740:
/* 80B67740  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B67744  7C A5 02 14 */	add r5, r5, r0
/* 80B67748  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 80B6774C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B67750  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B67754  C8 5E 01 58 */	lfd f2, 0x158(r30)
/* 80B67758  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6775C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B67760  3C 60 43 30 */	lis r3, 0x4330
/* 80B67764  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B67768  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B6776C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B67770  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B67774  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B67778  7C A0 07 34 */	extsh r0, r5
/* 80B6777C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B67780  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B67784  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B67788  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B6778C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B67790  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B67794  EC 01 00 2A */	fadds f0, f1, f0
/* 80B67798  FC 00 00 1E */	fctiwz f0, f0
/* 80B6779C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B677A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B677A4  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B677A8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B677AC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B677B0  39 61 00 60 */	addi r11, r1, 0x60
/* 80B677B4  4B 7F AA 75 */	bl _restgpr_29
/* 80B677B8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B677BC  7C 08 03 A6 */	mtlr r0
/* 80B677C0  38 21 00 70 */	addi r1, r1, 0x70
/* 80B677C4  4E 80 00 20 */	blr 
