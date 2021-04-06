lbl_80AE6158:
/* 80AE6158  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AE615C  7C 08 02 A6 */	mflr r0
/* 80AE6160  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AE6164  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AE6168  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AE616C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE6170  4B 87 C0 6D */	bl _savegpr_29
/* 80AE6174  7C 7F 1B 78 */	mr r31, r3
/* 80AE6178  7C 80 23 78 */	mr r0, r4
/* 80AE617C  FF E0 08 90 */	fmr f31, f1
/* 80AE6180  7C BD 2B 78 */	mr r29, r5
/* 80AE6184  3C 60 80 AE */	lis r3, m__17daNpc_Sha_Param_c@ha /* 0x80AE6BC8@ha */
/* 80AE6188  3B C3 6B C8 */	addi r30, r3, m__17daNpc_Sha_Param_c@l /* 0x80AE6BC8@l */
/* 80AE618C  38 A0 00 00 */	li r5, 0
/* 80AE6190  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80AE6194  28 04 00 00 */	cmplwi r4, 0
/* 80AE6198  41 82 01 40 */	beq lbl_80AE62D8
/* 80AE619C  38 61 00 18 */	addi r3, r1, 0x18
/* 80AE61A0  7C 05 03 78 */	mr r5, r0
/* 80AE61A4  4B 78 09 91 */	bl __mi__4cXyzCFRC3Vec
/* 80AE61A8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80AE61AC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80AE61B0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AE61B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AE61B8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80AE61BC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80AE61C0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80AE61C4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80AE61C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AE61CC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AE61D0  38 61 00 0C */	addi r3, r1, 0xc
/* 80AE61D4  4B 86 0F 65 */	bl PSVECSquareMag
/* 80AE61D8  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80AE61DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AE61E0  40 81 00 58 */	ble lbl_80AE6238
/* 80AE61E4  FC 00 08 34 */	frsqrte f0, f1
/* 80AE61E8  C8 9E 00 E0 */	lfd f4, 0xe0(r30)
/* 80AE61EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80AE61F0  C8 7E 00 E8 */	lfd f3, 0xe8(r30)
/* 80AE61F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80AE61F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80AE61FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80AE6200  FC 02 00 32 */	fmul f0, f2, f0
/* 80AE6204  FC 44 00 32 */	fmul f2, f4, f0
/* 80AE6208  FC 00 00 32 */	fmul f0, f0, f0
/* 80AE620C  FC 01 00 32 */	fmul f0, f1, f0
/* 80AE6210  FC 03 00 28 */	fsub f0, f3, f0
/* 80AE6214  FC 02 00 32 */	fmul f0, f2, f0
/* 80AE6218  FC 44 00 32 */	fmul f2, f4, f0
/* 80AE621C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AE6220  FC 01 00 32 */	fmul f0, f1, f0
/* 80AE6224  FC 03 00 28 */	fsub f0, f3, f0
/* 80AE6228  FC 02 00 32 */	fmul f0, f2, f0
/* 80AE622C  FC 41 00 32 */	fmul f2, f1, f0
/* 80AE6230  FC 40 10 18 */	frsp f2, f2
/* 80AE6234  48 00 00 90 */	b lbl_80AE62C4
lbl_80AE6238:
/* 80AE6238  C8 1E 00 F0 */	lfd f0, 0xf0(r30)
/* 80AE623C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AE6240  40 80 00 10 */	bge lbl_80AE6250
/* 80AE6244  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AE6248  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AE624C  48 00 00 78 */	b lbl_80AE62C4
lbl_80AE6250:
/* 80AE6250  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AE6254  80 81 00 08 */	lwz r4, 8(r1)
/* 80AE6258  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AE625C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AE6260  7C 03 00 00 */	cmpw r3, r0
/* 80AE6264  41 82 00 14 */	beq lbl_80AE6278
/* 80AE6268  40 80 00 40 */	bge lbl_80AE62A8
/* 80AE626C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE6270  41 82 00 20 */	beq lbl_80AE6290
/* 80AE6274  48 00 00 34 */	b lbl_80AE62A8
lbl_80AE6278:
/* 80AE6278  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AE627C  41 82 00 0C */	beq lbl_80AE6288
/* 80AE6280  38 00 00 01 */	li r0, 1
/* 80AE6284  48 00 00 28 */	b lbl_80AE62AC
lbl_80AE6288:
/* 80AE6288  38 00 00 02 */	li r0, 2
/* 80AE628C  48 00 00 20 */	b lbl_80AE62AC
lbl_80AE6290:
/* 80AE6290  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AE6294  41 82 00 0C */	beq lbl_80AE62A0
/* 80AE6298  38 00 00 05 */	li r0, 5
/* 80AE629C  48 00 00 10 */	b lbl_80AE62AC
lbl_80AE62A0:
/* 80AE62A0  38 00 00 03 */	li r0, 3
/* 80AE62A4  48 00 00 08 */	b lbl_80AE62AC
lbl_80AE62A8:
/* 80AE62A8  38 00 00 04 */	li r0, 4
lbl_80AE62AC:
/* 80AE62AC  2C 00 00 01 */	cmpwi r0, 1
/* 80AE62B0  40 82 00 10 */	bne lbl_80AE62C0
/* 80AE62B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AE62B8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AE62BC  48 00 00 08 */	b lbl_80AE62C4
lbl_80AE62C0:
/* 80AE62C0  FC 40 08 90 */	fmr f2, f1
lbl_80AE62C4:
/* 80AE62C4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AE62C8  4B 78 13 AD */	bl cM_atan2s__Fff
/* 80AE62CC  7C 03 00 D0 */	neg r0, r3
/* 80AE62D0  7C 05 07 34 */	extsh r5, r0
/* 80AE62D4  7C A5 EA 14 */	add r5, r5, r29
lbl_80AE62D8:
/* 80AE62D8  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80AE62DC  7C A5 02 14 */	add r5, r5, r0
/* 80AE62E0  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 80AE62E4  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AE62E8  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80AE62EC  C8 5E 00 D8 */	lfd f2, 0xd8(r30)
/* 80AE62F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AE62F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE62F8  3C 60 43 30 */	lis r3, 0x4330
/* 80AE62FC  90 61 00 30 */	stw r3, 0x30(r1)
/* 80AE6300  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AE6304  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AE6308  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AE630C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AE6310  7C A0 07 34 */	extsh r0, r5
/* 80AE6314  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AE6318  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AE631C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80AE6320  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AE6324  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AE6328  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AE632C  EC 01 00 2A */	fadds f0, f1, f0
/* 80AE6330  FC 00 00 1E */	fctiwz f0, f0
/* 80AE6334  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80AE6338  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AE633C  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80AE6340  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AE6344  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AE6348  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE634C  4B 87 BE DD */	bl _restgpr_29
/* 80AE6350  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AE6354  7C 08 03 A6 */	mtlr r0
/* 80AE6358  38 21 00 70 */	addi r1, r1, 0x70
/* 80AE635C  4E 80 00 20 */	blr 
