lbl_80B77A98:
/* 80B77A98  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B77A9C  7C 08 02 A6 */	mflr r0
/* 80B77AA0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B77AA4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B77AA8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B77AAC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B77AB0  4B 7E A7 2D */	bl _savegpr_29
/* 80B77AB4  7C 7F 1B 78 */	mr r31, r3
/* 80B77AB8  7C 80 23 78 */	mr r0, r4
/* 80B77ABC  FF E0 08 90 */	fmr f31, f1
/* 80B77AC0  7C BD 2B 78 */	mr r29, r5
/* 80B77AC4  3C 60 80 B7 */	lis r3, m__19daNpc_Zelda_Param_c@ha /* 0x80B77FC8@ha */
/* 80B77AC8  3B C3 7F C8 */	addi r30, r3, m__19daNpc_Zelda_Param_c@l /* 0x80B77FC8@l */
/* 80B77ACC  38 A0 00 00 */	li r5, 0
/* 80B77AD0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B77AD4  28 04 00 00 */	cmplwi r4, 0
/* 80B77AD8  41 82 01 40 */	beq lbl_80B77C18
/* 80B77ADC  38 61 00 18 */	addi r3, r1, 0x18
/* 80B77AE0  7C 05 03 78 */	mr r5, r0
/* 80B77AE4  4B 6E F0 51 */	bl __mi__4cXyzCFRC3Vec
/* 80B77AE8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B77AEC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B77AF0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B77AF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B77AF8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B77AFC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B77B00  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B77B04  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B77B08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B77B0C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B77B10  38 61 00 0C */	addi r3, r1, 0xc
/* 80B77B14  4B 7C F6 25 */	bl PSVECSquareMag
/* 80B77B18  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B77B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B77B20  40 81 00 58 */	ble lbl_80B77B78
/* 80B77B24  FC 00 08 34 */	frsqrte f0, f1
/* 80B77B28  C8 9E 00 D8 */	lfd f4, 0xd8(r30)
/* 80B77B2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B77B30  C8 7E 00 E0 */	lfd f3, 0xe0(r30)
/* 80B77B34  FC 00 00 32 */	fmul f0, f0, f0
/* 80B77B38  FC 01 00 32 */	fmul f0, f1, f0
/* 80B77B3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B77B40  FC 02 00 32 */	fmul f0, f2, f0
/* 80B77B44  FC 44 00 32 */	fmul f2, f4, f0
/* 80B77B48  FC 00 00 32 */	fmul f0, f0, f0
/* 80B77B4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B77B50  FC 03 00 28 */	fsub f0, f3, f0
/* 80B77B54  FC 02 00 32 */	fmul f0, f2, f0
/* 80B77B58  FC 44 00 32 */	fmul f2, f4, f0
/* 80B77B5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B77B60  FC 01 00 32 */	fmul f0, f1, f0
/* 80B77B64  FC 03 00 28 */	fsub f0, f3, f0
/* 80B77B68  FC 02 00 32 */	fmul f0, f2, f0
/* 80B77B6C  FC 41 00 32 */	fmul f2, f1, f0
/* 80B77B70  FC 40 10 18 */	frsp f2, f2
/* 80B77B74  48 00 00 90 */	b lbl_80B77C04
lbl_80B77B78:
/* 80B77B78  C8 1E 00 E8 */	lfd f0, 0xe8(r30)
/* 80B77B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B77B80  40 80 00 10 */	bge lbl_80B77B90
/* 80B77B84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B77B88  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B77B8C  48 00 00 78 */	b lbl_80B77C04
lbl_80B77B90:
/* 80B77B90  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B77B94  80 81 00 08 */	lwz r4, 8(r1)
/* 80B77B98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B77B9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B77BA0  7C 03 00 00 */	cmpw r3, r0
/* 80B77BA4  41 82 00 14 */	beq lbl_80B77BB8
/* 80B77BA8  40 80 00 40 */	bge lbl_80B77BE8
/* 80B77BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B77BB0  41 82 00 20 */	beq lbl_80B77BD0
/* 80B77BB4  48 00 00 34 */	b lbl_80B77BE8
lbl_80B77BB8:
/* 80B77BB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B77BBC  41 82 00 0C */	beq lbl_80B77BC8
/* 80B77BC0  38 00 00 01 */	li r0, 1
/* 80B77BC4  48 00 00 28 */	b lbl_80B77BEC
lbl_80B77BC8:
/* 80B77BC8  38 00 00 02 */	li r0, 2
/* 80B77BCC  48 00 00 20 */	b lbl_80B77BEC
lbl_80B77BD0:
/* 80B77BD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B77BD4  41 82 00 0C */	beq lbl_80B77BE0
/* 80B77BD8  38 00 00 05 */	li r0, 5
/* 80B77BDC  48 00 00 10 */	b lbl_80B77BEC
lbl_80B77BE0:
/* 80B77BE0  38 00 00 03 */	li r0, 3
/* 80B77BE4  48 00 00 08 */	b lbl_80B77BEC
lbl_80B77BE8:
/* 80B77BE8  38 00 00 04 */	li r0, 4
lbl_80B77BEC:
/* 80B77BEC  2C 00 00 01 */	cmpwi r0, 1
/* 80B77BF0  40 82 00 10 */	bne lbl_80B77C00
/* 80B77BF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B77BF8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B77BFC  48 00 00 08 */	b lbl_80B77C04
lbl_80B77C00:
/* 80B77C00  FC 40 08 90 */	fmr f2, f1
lbl_80B77C04:
/* 80B77C04  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B77C08  4B 6E FA 6D */	bl cM_atan2s__Fff
/* 80B77C0C  7C 03 00 D0 */	neg r0, r3
/* 80B77C10  7C 05 07 34 */	extsh r5, r0
/* 80B77C14  7C A5 EA 14 */	add r5, r5, r29
lbl_80B77C18:
/* 80B77C18  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B77C1C  7C A5 02 14 */	add r5, r5, r0
/* 80B77C20  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80B77C24  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B77C28  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B77C2C  C8 5E 00 D0 */	lfd f2, 0xd0(r30)
/* 80B77C30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B77C34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B77C38  3C 60 43 30 */	lis r3, 0x4330
/* 80B77C3C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B77C40  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B77C44  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B77C48  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B77C4C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B77C50  7C A0 07 34 */	extsh r0, r5
/* 80B77C54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B77C58  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B77C5C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B77C60  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B77C64  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B77C68  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B77C6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B77C70  FC 00 00 1E */	fctiwz f0, f0
/* 80B77C74  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B77C78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B77C7C  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B77C80  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B77C84  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B77C88  39 61 00 60 */	addi r11, r1, 0x60
/* 80B77C8C  4B 7E A5 9D */	bl _restgpr_29
/* 80B77C90  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B77C94  7C 08 03 A6 */	mtlr r0
/* 80B77C98  38 21 00 70 */	addi r1, r1, 0x70
/* 80B77C9C  4E 80 00 20 */	blr 
