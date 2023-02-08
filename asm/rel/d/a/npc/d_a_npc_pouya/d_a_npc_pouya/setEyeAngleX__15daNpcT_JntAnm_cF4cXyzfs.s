lbl_80AB1B0C:
/* 80AB1B0C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AB1B10  7C 08 02 A6 */	mflr r0
/* 80AB1B14  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AB1B18  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AB1B1C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AB1B20  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB1B24  4B 8B 06 B9 */	bl _savegpr_29
/* 80AB1B28  7C 7F 1B 78 */	mr r31, r3
/* 80AB1B2C  7C 80 23 78 */	mr r0, r4
/* 80AB1B30  FF E0 08 90 */	fmr f31, f1
/* 80AB1B34  7C BD 2B 78 */	mr r29, r5
/* 80AB1B38  3C 60 80 AB */	lis r3, m__19daNpc_Pouya_Param_c@ha /* 0x80AB2000@ha */
/* 80AB1B3C  3B C3 20 00 */	addi r30, r3, m__19daNpc_Pouya_Param_c@l /* 0x80AB2000@l */
/* 80AB1B40  38 A0 00 00 */	li r5, 0
/* 80AB1B44  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80AB1B48  28 04 00 00 */	cmplwi r4, 0
/* 80AB1B4C  41 82 01 40 */	beq lbl_80AB1C8C
/* 80AB1B50  38 61 00 18 */	addi r3, r1, 0x18
/* 80AB1B54  7C 05 03 78 */	mr r5, r0
/* 80AB1B58  4B 7B 4F DD */	bl __mi__4cXyzCFRC3Vec
/* 80AB1B5C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80AB1B60  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80AB1B64  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AB1B68  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AB1B6C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80AB1B70  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80AB1B74  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80AB1B78  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AB1B7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AB1B80  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AB1B84  38 61 00 0C */	addi r3, r1, 0xc
/* 80AB1B88  4B 89 55 B1 */	bl PSVECSquareMag
/* 80AB1B8C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AB1B90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AB1B94  40 81 00 58 */	ble lbl_80AB1BEC
/* 80AB1B98  FC 00 08 34 */	frsqrte f0, f1
/* 80AB1B9C  C8 9E 00 F8 */	lfd f4, 0xf8(r30)
/* 80AB1BA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80AB1BA4  C8 7E 01 00 */	lfd f3, 0x100(r30)
/* 80AB1BA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80AB1BAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80AB1BB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80AB1BB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80AB1BB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80AB1BBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80AB1BC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80AB1BC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80AB1BC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80AB1BCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80AB1BD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80AB1BD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80AB1BD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80AB1BDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80AB1BE0  FC 41 00 32 */	fmul f2, f1, f0
/* 80AB1BE4  FC 40 10 18 */	frsp f2, f2
/* 80AB1BE8  48 00 00 90 */	b lbl_80AB1C78
lbl_80AB1BEC:
/* 80AB1BEC  C8 1E 01 08 */	lfd f0, 0x108(r30)
/* 80AB1BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AB1BF4  40 80 00 10 */	bge lbl_80AB1C04
/* 80AB1BF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AB1BFC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AB1C00  48 00 00 78 */	b lbl_80AB1C78
lbl_80AB1C04:
/* 80AB1C04  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AB1C08  80 81 00 08 */	lwz r4, 8(r1)
/* 80AB1C0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AB1C10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AB1C14  7C 03 00 00 */	cmpw r3, r0
/* 80AB1C18  41 82 00 14 */	beq lbl_80AB1C2C
/* 80AB1C1C  40 80 00 40 */	bge lbl_80AB1C5C
/* 80AB1C20  2C 03 00 00 */	cmpwi r3, 0
/* 80AB1C24  41 82 00 20 */	beq lbl_80AB1C44
/* 80AB1C28  48 00 00 34 */	b lbl_80AB1C5C
lbl_80AB1C2C:
/* 80AB1C2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AB1C30  41 82 00 0C */	beq lbl_80AB1C3C
/* 80AB1C34  38 00 00 01 */	li r0, 1
/* 80AB1C38  48 00 00 28 */	b lbl_80AB1C60
lbl_80AB1C3C:
/* 80AB1C3C  38 00 00 02 */	li r0, 2
/* 80AB1C40  48 00 00 20 */	b lbl_80AB1C60
lbl_80AB1C44:
/* 80AB1C44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AB1C48  41 82 00 0C */	beq lbl_80AB1C54
/* 80AB1C4C  38 00 00 05 */	li r0, 5
/* 80AB1C50  48 00 00 10 */	b lbl_80AB1C60
lbl_80AB1C54:
/* 80AB1C54  38 00 00 03 */	li r0, 3
/* 80AB1C58  48 00 00 08 */	b lbl_80AB1C60
lbl_80AB1C5C:
/* 80AB1C5C  38 00 00 04 */	li r0, 4
lbl_80AB1C60:
/* 80AB1C60  2C 00 00 01 */	cmpwi r0, 1
/* 80AB1C64  40 82 00 10 */	bne lbl_80AB1C74
/* 80AB1C68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AB1C6C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AB1C70  48 00 00 08 */	b lbl_80AB1C78
lbl_80AB1C74:
/* 80AB1C74  FC 40 08 90 */	fmr f2, f1
lbl_80AB1C78:
/* 80AB1C78  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AB1C7C  4B 7B 59 F9 */	bl cM_atan2s__Fff
/* 80AB1C80  7C 03 00 D0 */	neg r0, r3
/* 80AB1C84  7C 05 07 34 */	extsh r5, r0
/* 80AB1C88  7C A5 EA 14 */	add r5, r5, r29
lbl_80AB1C8C:
/* 80AB1C8C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80AB1C90  7C A5 02 14 */	add r5, r5, r0
/* 80AB1C94  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 80AB1C98  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AB1C9C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80AB1CA0  C8 5E 00 F0 */	lfd f2, 0xf0(r30)
/* 80AB1CA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB1CA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB1CAC  3C 60 43 30 */	lis r3, 0x4330
/* 80AB1CB0  90 61 00 30 */	stw r3, 0x30(r1)
/* 80AB1CB4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AB1CB8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AB1CBC  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AB1CC0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AB1CC4  7C A0 07 34 */	extsh r0, r5
/* 80AB1CC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB1CCC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AB1CD0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80AB1CD4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AB1CD8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AB1CDC  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AB1CE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80AB1CE4  FC 00 00 1E */	fctiwz f0, f0
/* 80AB1CE8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80AB1CEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB1CF0  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80AB1CF4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AB1CF8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AB1CFC  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB1D00  4B 8B 05 29 */	bl _restgpr_29
/* 80AB1D04  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AB1D08  7C 08 03 A6 */	mtlr r0
/* 80AB1D0C  38 21 00 70 */	addi r1, r1, 0x70
/* 80AB1D10  4E 80 00 20 */	blr 
