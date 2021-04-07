lbl_80AACC50:
/* 80AACC50  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AACC54  7C 08 02 A6 */	mflr r0
/* 80AACC58  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AACC5C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AACC60  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AACC64  39 61 00 60 */	addi r11, r1, 0x60
/* 80AACC68  4B 8B 55 75 */	bl _savegpr_29
/* 80AACC6C  7C 7F 1B 78 */	mr r31, r3
/* 80AACC70  7C 80 23 78 */	mr r0, r4
/* 80AACC74  FF E0 08 90 */	fmr f31, f1
/* 80AACC78  7C BD 2B 78 */	mr r29, r5
/* 80AACC7C  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AACC80  3B C3 D1 EC */	addi r30, r3, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AACC84  38 A0 00 00 */	li r5, 0
/* 80AACC88  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80AACC8C  28 04 00 00 */	cmplwi r4, 0
/* 80AACC90  41 82 01 40 */	beq lbl_80AACDD0
/* 80AACC94  38 61 00 18 */	addi r3, r1, 0x18
/* 80AACC98  7C 05 03 78 */	mr r5, r0
/* 80AACC9C  4B 7B 9E 99 */	bl __mi__4cXyzCFRC3Vec
/* 80AACCA0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80AACCA4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80AACCA8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AACCAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AACCB0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80AACCB4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80AACCB8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80AACCBC  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AACCC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AACCC4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AACCC8  38 61 00 0C */	addi r3, r1, 0xc
/* 80AACCCC  4B 89 A4 6D */	bl PSVECSquareMag
/* 80AACCD0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AACCD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AACCD8  40 81 00 58 */	ble lbl_80AACD30
/* 80AACCDC  FC 00 08 34 */	frsqrte f0, f1
/* 80AACCE0  C8 9E 01 08 */	lfd f4, 0x108(r30)
/* 80AACCE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80AACCE8  C8 7E 01 10 */	lfd f3, 0x110(r30)
/* 80AACCEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80AACCF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80AACCF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80AACCF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80AACCFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80AACD00  FC 00 00 32 */	fmul f0, f0, f0
/* 80AACD04  FC 01 00 32 */	fmul f0, f1, f0
/* 80AACD08  FC 03 00 28 */	fsub f0, f3, f0
/* 80AACD0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80AACD10  FC 44 00 32 */	fmul f2, f4, f0
/* 80AACD14  FC 00 00 32 */	fmul f0, f0, f0
/* 80AACD18  FC 01 00 32 */	fmul f0, f1, f0
/* 80AACD1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80AACD20  FC 02 00 32 */	fmul f0, f2, f0
/* 80AACD24  FC 41 00 32 */	fmul f2, f1, f0
/* 80AACD28  FC 40 10 18 */	frsp f2, f2
/* 80AACD2C  48 00 00 90 */	b lbl_80AACDBC
lbl_80AACD30:
/* 80AACD30  C8 1E 01 18 */	lfd f0, 0x118(r30)
/* 80AACD34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AACD38  40 80 00 10 */	bge lbl_80AACD48
/* 80AACD3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AACD40  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AACD44  48 00 00 78 */	b lbl_80AACDBC
lbl_80AACD48:
/* 80AACD48  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AACD4C  80 81 00 08 */	lwz r4, 8(r1)
/* 80AACD50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AACD54  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AACD58  7C 03 00 00 */	cmpw r3, r0
/* 80AACD5C  41 82 00 14 */	beq lbl_80AACD70
/* 80AACD60  40 80 00 40 */	bge lbl_80AACDA0
/* 80AACD64  2C 03 00 00 */	cmpwi r3, 0
/* 80AACD68  41 82 00 20 */	beq lbl_80AACD88
/* 80AACD6C  48 00 00 34 */	b lbl_80AACDA0
lbl_80AACD70:
/* 80AACD70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AACD74  41 82 00 0C */	beq lbl_80AACD80
/* 80AACD78  38 00 00 01 */	li r0, 1
/* 80AACD7C  48 00 00 28 */	b lbl_80AACDA4
lbl_80AACD80:
/* 80AACD80  38 00 00 02 */	li r0, 2
/* 80AACD84  48 00 00 20 */	b lbl_80AACDA4
lbl_80AACD88:
/* 80AACD88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AACD8C  41 82 00 0C */	beq lbl_80AACD98
/* 80AACD90  38 00 00 05 */	li r0, 5
/* 80AACD94  48 00 00 10 */	b lbl_80AACDA4
lbl_80AACD98:
/* 80AACD98  38 00 00 03 */	li r0, 3
/* 80AACD9C  48 00 00 08 */	b lbl_80AACDA4
lbl_80AACDA0:
/* 80AACDA0  38 00 00 04 */	li r0, 4
lbl_80AACDA4:
/* 80AACDA4  2C 00 00 01 */	cmpwi r0, 1
/* 80AACDA8  40 82 00 10 */	bne lbl_80AACDB8
/* 80AACDAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AACDB0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AACDB4  48 00 00 08 */	b lbl_80AACDBC
lbl_80AACDB8:
/* 80AACDB8  FC 40 08 90 */	fmr f2, f1
lbl_80AACDBC:
/* 80AACDBC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AACDC0  4B 7B A8 B5 */	bl cM_atan2s__Fff
/* 80AACDC4  7C 03 00 D0 */	neg r0, r3
/* 80AACDC8  7C 05 07 34 */	extsh r5, r0
/* 80AACDCC  7C A5 EA 14 */	add r5, r5, r29
lbl_80AACDD0:
/* 80AACDD0  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80AACDD4  7C A5 02 14 */	add r5, r5, r0
/* 80AACDD8  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 80AACDDC  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AACDE0  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80AACDE4  C8 5E 01 00 */	lfd f2, 0x100(r30)
/* 80AACDE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AACDEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AACDF0  3C 60 43 30 */	lis r3, 0x4330
/* 80AACDF4  90 61 00 30 */	stw r3, 0x30(r1)
/* 80AACDF8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AACDFC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AACE00  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AACE04  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AACE08  7C A0 07 34 */	extsh r0, r5
/* 80AACE0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AACE10  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AACE14  90 61 00 38 */	stw r3, 0x38(r1)
/* 80AACE18  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AACE1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AACE20  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AACE24  EC 01 00 2A */	fadds f0, f1, f0
/* 80AACE28  FC 00 00 1E */	fctiwz f0, f0
/* 80AACE2C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80AACE30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AACE34  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80AACE38  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AACE3C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AACE40  39 61 00 60 */	addi r11, r1, 0x60
/* 80AACE44  4B 8B 53 E5 */	bl _restgpr_29
/* 80AACE48  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AACE4C  7C 08 03 A6 */	mtlr r0
/* 80AACE50  38 21 00 70 */	addi r1, r1, 0x70
/* 80AACE54  4E 80 00 20 */	blr 
