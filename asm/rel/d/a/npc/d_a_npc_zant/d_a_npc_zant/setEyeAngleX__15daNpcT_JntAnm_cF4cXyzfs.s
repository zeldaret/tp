lbl_80B6E48C:
/* 80B6E48C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B6E490  7C 08 02 A6 */	mflr r0
/* 80B6E494  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B6E498  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B6E49C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B6E4A0  39 61 00 60 */	addi r11, r1, 0x60
/* 80B6E4A4  4B 7F 3D 38 */	b _savegpr_29
/* 80B6E4A8  7C 7F 1B 78 */	mr r31, r3
/* 80B6E4AC  7C 80 23 78 */	mr r0, r4
/* 80B6E4B0  FF E0 08 90 */	fmr f31, f1
/* 80B6E4B4  7C BD 2B 78 */	mr r29, r5
/* 80B6E4B8  3C 60 80 B7 */	lis r3, m__18daNpc_Zant_Param_c@ha
/* 80B6E4BC  3B C3 E9 A8 */	addi r30, r3, m__18daNpc_Zant_Param_c@l
/* 80B6E4C0  38 A0 00 00 */	li r5, 0
/* 80B6E4C4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B6E4C8  28 04 00 00 */	cmplwi r4, 0
/* 80B6E4CC  41 82 01 40 */	beq lbl_80B6E60C
/* 80B6E4D0  38 61 00 18 */	addi r3, r1, 0x18
/* 80B6E4D4  7C 05 03 78 */	mr r5, r0
/* 80B6E4D8  4B 6F 86 5C */	b __mi__4cXyzCFRC3Vec
/* 80B6E4DC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B6E4E0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B6E4E4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B6E4E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B6E4EC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B6E4F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B6E4F4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B6E4F8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80B6E4FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B6E500  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B6E504  38 61 00 0C */	addi r3, r1, 0xc
/* 80B6E508  4B 7D 8C 30 */	b PSVECSquareMag
/* 80B6E50C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80B6E510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B6E514  40 81 00 58 */	ble lbl_80B6E56C
/* 80B6E518  FC 00 08 34 */	frsqrte f0, f1
/* 80B6E51C  C8 9E 00 C0 */	lfd f4, 0xc0(r30)
/* 80B6E520  FC 44 00 32 */	fmul f2, f4, f0
/* 80B6E524  C8 7E 00 C8 */	lfd f3, 0xc8(r30)
/* 80B6E528  FC 00 00 32 */	fmul f0, f0, f0
/* 80B6E52C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B6E530  FC 03 00 28 */	fsub f0, f3, f0
/* 80B6E534  FC 02 00 32 */	fmul f0, f2, f0
/* 80B6E538  FC 44 00 32 */	fmul f2, f4, f0
/* 80B6E53C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B6E540  FC 01 00 32 */	fmul f0, f1, f0
/* 80B6E544  FC 03 00 28 */	fsub f0, f3, f0
/* 80B6E548  FC 02 00 32 */	fmul f0, f2, f0
/* 80B6E54C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B6E550  FC 00 00 32 */	fmul f0, f0, f0
/* 80B6E554  FC 01 00 32 */	fmul f0, f1, f0
/* 80B6E558  FC 03 00 28 */	fsub f0, f3, f0
/* 80B6E55C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B6E560  FC 41 00 32 */	fmul f2, f1, f0
/* 80B6E564  FC 40 10 18 */	frsp f2, f2
/* 80B6E568  48 00 00 90 */	b lbl_80B6E5F8
lbl_80B6E56C:
/* 80B6E56C  C8 1E 00 D0 */	lfd f0, 0xd0(r30)
/* 80B6E570  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B6E574  40 80 00 10 */	bge lbl_80B6E584
/* 80B6E578  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B6E57C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B6E580  48 00 00 78 */	b lbl_80B6E5F8
lbl_80B6E584:
/* 80B6E584  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B6E588  80 81 00 08 */	lwz r4, 8(r1)
/* 80B6E58C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B6E590  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B6E594  7C 03 00 00 */	cmpw r3, r0
/* 80B6E598  41 82 00 14 */	beq lbl_80B6E5AC
/* 80B6E59C  40 80 00 40 */	bge lbl_80B6E5DC
/* 80B6E5A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B6E5A4  41 82 00 20 */	beq lbl_80B6E5C4
/* 80B6E5A8  48 00 00 34 */	b lbl_80B6E5DC
lbl_80B6E5AC:
/* 80B6E5AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B6E5B0  41 82 00 0C */	beq lbl_80B6E5BC
/* 80B6E5B4  38 00 00 01 */	li r0, 1
/* 80B6E5B8  48 00 00 28 */	b lbl_80B6E5E0
lbl_80B6E5BC:
/* 80B6E5BC  38 00 00 02 */	li r0, 2
/* 80B6E5C0  48 00 00 20 */	b lbl_80B6E5E0
lbl_80B6E5C4:
/* 80B6E5C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B6E5C8  41 82 00 0C */	beq lbl_80B6E5D4
/* 80B6E5CC  38 00 00 05 */	li r0, 5
/* 80B6E5D0  48 00 00 10 */	b lbl_80B6E5E0
lbl_80B6E5D4:
/* 80B6E5D4  38 00 00 03 */	li r0, 3
/* 80B6E5D8  48 00 00 08 */	b lbl_80B6E5E0
lbl_80B6E5DC:
/* 80B6E5DC  38 00 00 04 */	li r0, 4
lbl_80B6E5E0:
/* 80B6E5E0  2C 00 00 01 */	cmpwi r0, 1
/* 80B6E5E4  40 82 00 10 */	bne lbl_80B6E5F4
/* 80B6E5E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B6E5EC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B6E5F0  48 00 00 08 */	b lbl_80B6E5F8
lbl_80B6E5F4:
/* 80B6E5F4  FC 40 08 90 */	fmr f2, f1
lbl_80B6E5F8:
/* 80B6E5F8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B6E5FC  4B 6F 90 78 */	b cM_atan2s__Fff
/* 80B6E600  7C 03 00 D0 */	neg r0, r3
/* 80B6E604  7C 05 07 34 */	extsh r5, r0
/* 80B6E608  7C A5 EA 14 */	add r5, r5, r29
lbl_80B6E60C:
/* 80B6E60C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B6E610  7C A5 02 14 */	add r5, r5, r0
/* 80B6E614  C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 80B6E618  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B6E61C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B6E620  C8 5E 00 B8 */	lfd f2, 0xb8(r30)
/* 80B6E624  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6E628  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6E62C  3C 60 43 30 */	lis r3, 0x4330
/* 80B6E630  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B6E634  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B6E638  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B6E63C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B6E640  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B6E644  7C A0 07 34 */	extsh r0, r5
/* 80B6E648  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6E64C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B6E650  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B6E654  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B6E658  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B6E65C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B6E660  EC 01 00 2A */	fadds f0, f1, f0
/* 80B6E664  FC 00 00 1E */	fctiwz f0, f0
/* 80B6E668  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B6E66C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B6E670  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B6E674  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B6E678  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B6E67C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B6E680  4B 7F 3B A8 */	b _restgpr_29
/* 80B6E684  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B6E688  7C 08 03 A6 */	mtlr r0
/* 80B6E68C  38 21 00 70 */	addi r1, r1, 0x70
/* 80B6E690  4E 80 00 20 */	blr 
