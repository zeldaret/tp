lbl_80AEEBE0:
/* 80AEEBE0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AEEBE4  7C 08 02 A6 */	mflr r0
/* 80AEEBE8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AEEBEC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AEEBF0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AEEBF4  39 61 00 60 */	addi r11, r1, 0x60
/* 80AEEBF8  4B 87 35 E5 */	bl _savegpr_29
/* 80AEEBFC  7C 7F 1B 78 */	mr r31, r3
/* 80AEEC00  7C 80 23 78 */	mr r0, r4
/* 80AEEC04  FF E0 08 90 */	fmr f31, f1
/* 80AEEC08  7C BD 2B 78 */	mr r29, r5
/* 80AEEC0C  3C 60 80 AF */	lis r3, m__18daNpc_solA_Param_c@ha /* 0x80AEF100@ha */
/* 80AEEC10  3B C3 F1 00 */	addi r30, r3, m__18daNpc_solA_Param_c@l /* 0x80AEF100@l */
/* 80AEEC14  38 A0 00 00 */	li r5, 0
/* 80AEEC18  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80AEEC1C  28 04 00 00 */	cmplwi r4, 0
/* 80AEEC20  41 82 01 40 */	beq lbl_80AEED60
/* 80AEEC24  38 61 00 18 */	addi r3, r1, 0x18
/* 80AEEC28  7C 05 03 78 */	mr r5, r0
/* 80AEEC2C  4B 77 7F 09 */	bl __mi__4cXyzCFRC3Vec
/* 80AEEC30  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80AEEC34  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80AEEC38  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AEEC3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AEEC40  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80AEEC44  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80AEEC48  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80AEEC4C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AEEC50  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AEEC54  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AEEC58  38 61 00 0C */	addi r3, r1, 0xc
/* 80AEEC5C  4B 85 84 DD */	bl PSVECSquareMag
/* 80AEEC60  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AEEC64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AEEC68  40 81 00 58 */	ble lbl_80AEECC0
/* 80AEEC6C  FC 00 08 34 */	frsqrte f0, f1
/* 80AEEC70  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80AEEC74  FC 44 00 32 */	fmul f2, f4, f0
/* 80AEEC78  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80AEEC7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AEEC80  FC 01 00 32 */	fmul f0, f1, f0
/* 80AEEC84  FC 03 00 28 */	fsub f0, f3, f0
/* 80AEEC88  FC 02 00 32 */	fmul f0, f2, f0
/* 80AEEC8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AEEC90  FC 00 00 32 */	fmul f0, f0, f0
/* 80AEEC94  FC 01 00 32 */	fmul f0, f1, f0
/* 80AEEC98  FC 03 00 28 */	fsub f0, f3, f0
/* 80AEEC9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80AEECA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80AEECA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80AEECA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80AEECAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80AEECB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80AEECB4  FC 41 00 32 */	fmul f2, f1, f0
/* 80AEECB8  FC 40 10 18 */	frsp f2, f2
/* 80AEECBC  48 00 00 90 */	b lbl_80AEED4C
lbl_80AEECC0:
/* 80AEECC0  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80AEECC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AEECC8  40 80 00 10 */	bge lbl_80AEECD8
/* 80AEECCC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AEECD0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AEECD4  48 00 00 78 */	b lbl_80AEED4C
lbl_80AEECD8:
/* 80AEECD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AEECDC  80 81 00 08 */	lwz r4, 8(r1)
/* 80AEECE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AEECE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AEECE8  7C 03 00 00 */	cmpw r3, r0
/* 80AEECEC  41 82 00 14 */	beq lbl_80AEED00
/* 80AEECF0  40 80 00 40 */	bge lbl_80AEED30
/* 80AEECF4  2C 03 00 00 */	cmpwi r3, 0
/* 80AEECF8  41 82 00 20 */	beq lbl_80AEED18
/* 80AEECFC  48 00 00 34 */	b lbl_80AEED30
lbl_80AEED00:
/* 80AEED00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AEED04  41 82 00 0C */	beq lbl_80AEED10
/* 80AEED08  38 00 00 01 */	li r0, 1
/* 80AEED0C  48 00 00 28 */	b lbl_80AEED34
lbl_80AEED10:
/* 80AEED10  38 00 00 02 */	li r0, 2
/* 80AEED14  48 00 00 20 */	b lbl_80AEED34
lbl_80AEED18:
/* 80AEED18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AEED1C  41 82 00 0C */	beq lbl_80AEED28
/* 80AEED20  38 00 00 05 */	li r0, 5
/* 80AEED24  48 00 00 10 */	b lbl_80AEED34
lbl_80AEED28:
/* 80AEED28  38 00 00 03 */	li r0, 3
/* 80AEED2C  48 00 00 08 */	b lbl_80AEED34
lbl_80AEED30:
/* 80AEED30  38 00 00 04 */	li r0, 4
lbl_80AEED34:
/* 80AEED34  2C 00 00 01 */	cmpwi r0, 1
/* 80AEED38  40 82 00 10 */	bne lbl_80AEED48
/* 80AEED3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AEED40  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AEED44  48 00 00 08 */	b lbl_80AEED4C
lbl_80AEED48:
/* 80AEED48  FC 40 08 90 */	fmr f2, f1
lbl_80AEED4C:
/* 80AEED4C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AEED50  4B 77 89 25 */	bl cM_atan2s__Fff
/* 80AEED54  7C 03 00 D0 */	neg r0, r3
/* 80AEED58  7C 05 07 34 */	extsh r5, r0
/* 80AEED5C  7C A5 EA 14 */	add r5, r5, r29
lbl_80AEED60:
/* 80AEED60  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80AEED64  7C A5 02 14 */	add r5, r5, r0
/* 80AEED68  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80AEED6C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AEED70  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80AEED74  C8 5E 00 C0 */	lfd f2, 0xc0(r30)
/* 80AEED78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AEED7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AEED80  3C 60 43 30 */	lis r3, 0x4330
/* 80AEED84  90 61 00 30 */	stw r3, 0x30(r1)
/* 80AEED88  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AEED8C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AEED90  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AEED94  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AEED98  7C A0 07 34 */	extsh r0, r5
/* 80AEED9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AEEDA0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AEEDA4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80AEEDA8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AEEDAC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AEEDB0  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AEEDB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80AEEDB8  FC 00 00 1E */	fctiwz f0, f0
/* 80AEEDBC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80AEEDC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AEEDC4  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80AEEDC8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AEEDCC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AEEDD0  39 61 00 60 */	addi r11, r1, 0x60
/* 80AEEDD4  4B 87 34 55 */	bl _restgpr_29
/* 80AEEDD8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AEEDDC  7C 08 03 A6 */	mtlr r0
/* 80AEEDE0  38 21 00 70 */	addi r1, r1, 0x70
/* 80AEEDE4  4E 80 00 20 */	blr 
