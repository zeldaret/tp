lbl_809FFBA4:
/* 809FFBA4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809FFBA8  7C 08 02 A6 */	mflr r0
/* 809FFBAC  90 01 00 74 */	stw r0, 0x74(r1)
/* 809FFBB0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809FFBB4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809FFBB8  39 61 00 60 */	addi r11, r1, 0x60
/* 809FFBBC  4B 96 26 21 */	bl _savegpr_29
/* 809FFBC0  7C 7F 1B 78 */	mr r31, r3
/* 809FFBC4  7C 80 23 78 */	mr r0, r4
/* 809FFBC8  FF E0 08 90 */	fmr f31, f1
/* 809FFBCC  7C BD 2B 78 */	mr r29, r5
/* 809FFBD0  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FFBD4  3B C3 06 00 */	addi r30, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FFBD8  38 A0 00 00 */	li r5, 0
/* 809FFBDC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 809FFBE0  28 04 00 00 */	cmplwi r4, 0
/* 809FFBE4  41 82 01 40 */	beq lbl_809FFD24
/* 809FFBE8  38 61 00 18 */	addi r3, r1, 0x18
/* 809FFBEC  7C 05 03 78 */	mr r5, r0
/* 809FFBF0  4B 86 6F 45 */	bl __mi__4cXyzCFRC3Vec
/* 809FFBF4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 809FFBF8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 809FFBFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809FFC00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809FFC04  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 809FFC08  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 809FFC0C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 809FFC10  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FFC14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809FFC18  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809FFC1C  38 61 00 0C */	addi r3, r1, 0xc
/* 809FFC20  4B 94 75 19 */	bl PSVECSquareMag
/* 809FFC24  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FFC28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FFC2C  40 81 00 58 */	ble lbl_809FFC84
/* 809FFC30  FC 00 08 34 */	frsqrte f0, f1
/* 809FFC34  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 809FFC38  FC 44 00 32 */	fmul f2, f4, f0
/* 809FFC3C  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 809FFC40  FC 00 00 32 */	fmul f0, f0, f0
/* 809FFC44  FC 01 00 32 */	fmul f0, f1, f0
/* 809FFC48  FC 03 00 28 */	fsub f0, f3, f0
/* 809FFC4C  FC 02 00 32 */	fmul f0, f2, f0
/* 809FFC50  FC 44 00 32 */	fmul f2, f4, f0
/* 809FFC54  FC 00 00 32 */	fmul f0, f0, f0
/* 809FFC58  FC 01 00 32 */	fmul f0, f1, f0
/* 809FFC5C  FC 03 00 28 */	fsub f0, f3, f0
/* 809FFC60  FC 02 00 32 */	fmul f0, f2, f0
/* 809FFC64  FC 44 00 32 */	fmul f2, f4, f0
/* 809FFC68  FC 00 00 32 */	fmul f0, f0, f0
/* 809FFC6C  FC 01 00 32 */	fmul f0, f1, f0
/* 809FFC70  FC 03 00 28 */	fsub f0, f3, f0
/* 809FFC74  FC 02 00 32 */	fmul f0, f2, f0
/* 809FFC78  FC 41 00 32 */	fmul f2, f1, f0
/* 809FFC7C  FC 40 10 18 */	frsp f2, f2
/* 809FFC80  48 00 00 90 */	b lbl_809FFD10
lbl_809FFC84:
/* 809FFC84  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 809FFC88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FFC8C  40 80 00 10 */	bge lbl_809FFC9C
/* 809FFC90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809FFC94  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809FFC98  48 00 00 78 */	b lbl_809FFD10
lbl_809FFC9C:
/* 809FFC9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 809FFCA0  80 81 00 08 */	lwz r4, 8(r1)
/* 809FFCA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809FFCA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 809FFCAC  7C 03 00 00 */	cmpw r3, r0
/* 809FFCB0  41 82 00 14 */	beq lbl_809FFCC4
/* 809FFCB4  40 80 00 40 */	bge lbl_809FFCF4
/* 809FFCB8  2C 03 00 00 */	cmpwi r3, 0
/* 809FFCBC  41 82 00 20 */	beq lbl_809FFCDC
/* 809FFCC0  48 00 00 34 */	b lbl_809FFCF4
lbl_809FFCC4:
/* 809FFCC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809FFCC8  41 82 00 0C */	beq lbl_809FFCD4
/* 809FFCCC  38 00 00 01 */	li r0, 1
/* 809FFCD0  48 00 00 28 */	b lbl_809FFCF8
lbl_809FFCD4:
/* 809FFCD4  38 00 00 02 */	li r0, 2
/* 809FFCD8  48 00 00 20 */	b lbl_809FFCF8
lbl_809FFCDC:
/* 809FFCDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809FFCE0  41 82 00 0C */	beq lbl_809FFCEC
/* 809FFCE4  38 00 00 05 */	li r0, 5
/* 809FFCE8  48 00 00 10 */	b lbl_809FFCF8
lbl_809FFCEC:
/* 809FFCEC  38 00 00 03 */	li r0, 3
/* 809FFCF0  48 00 00 08 */	b lbl_809FFCF8
lbl_809FFCF4:
/* 809FFCF4  38 00 00 04 */	li r0, 4
lbl_809FFCF8:
/* 809FFCF8  2C 00 00 01 */	cmpwi r0, 1
/* 809FFCFC  40 82 00 10 */	bne lbl_809FFD0C
/* 809FFD00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809FFD04  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809FFD08  48 00 00 08 */	b lbl_809FFD10
lbl_809FFD0C:
/* 809FFD0C  FC 40 08 90 */	fmr f2, f1
lbl_809FFD10:
/* 809FFD10  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 809FFD14  4B 86 79 61 */	bl cM_atan2s__Fff
/* 809FFD18  7C 03 00 D0 */	neg r0, r3
/* 809FFD1C  7C 05 07 34 */	extsh r5, r0
/* 809FFD20  7C A5 EA 14 */	add r5, r5, r29
lbl_809FFD24:
/* 809FFD24  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 809FFD28  7C A5 02 14 */	add r5, r5, r0
/* 809FFD2C  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 809FFD30  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809FFD34  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 809FFD38  C8 5E 01 48 */	lfd f2, 0x148(r30)
/* 809FFD3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809FFD40  90 01 00 34 */	stw r0, 0x34(r1)
/* 809FFD44  3C 60 43 30 */	lis r3, 0x4330
/* 809FFD48  90 61 00 30 */	stw r3, 0x30(r1)
/* 809FFD4C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809FFD50  EC 20 10 28 */	fsubs f1, f0, f2
/* 809FFD54  EC 03 20 28 */	fsubs f0, f3, f4
/* 809FFD58  EC 21 00 32 */	fmuls f1, f1, f0
/* 809FFD5C  7C A0 07 34 */	extsh r0, r5
/* 809FFD60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809FFD64  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809FFD68  90 61 00 38 */	stw r3, 0x38(r1)
/* 809FFD6C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809FFD70  EC 00 10 28 */	fsubs f0, f0, f2
/* 809FFD74  EC 00 01 32 */	fmuls f0, f0, f4
/* 809FFD78  EC 01 00 2A */	fadds f0, f1, f0
/* 809FFD7C  FC 00 00 1E */	fctiwz f0, f0
/* 809FFD80  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809FFD84  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809FFD88  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 809FFD8C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809FFD90  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809FFD94  39 61 00 60 */	addi r11, r1, 0x60
/* 809FFD98  4B 96 24 91 */	bl _restgpr_29
/* 809FFD9C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809FFDA0  7C 08 03 A6 */	mtlr r0
/* 809FFDA4  38 21 00 70 */	addi r1, r1, 0x70
/* 809FFDA8  4E 80 00 20 */	blr 
