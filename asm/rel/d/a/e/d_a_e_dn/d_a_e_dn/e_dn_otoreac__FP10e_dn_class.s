lbl_804E6A8C:
/* 804E6A8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E6A90  7C 08 02 A6 */	mflr r0
/* 804E6A94  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E6A98  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804E6A9C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804E6AA0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804E6AA4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804E6AA8  7C 7E 1B 78 */	mr r30, r3
/* 804E6AAC  3C 60 80 4F */	lis r3, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E6AB0  3B E3 E8 AC */	addi r31, r3, lit_3789@l /* 0x804EE8AC@l */
/* 804E6AB4  C3 FF 00 04 */	lfs f31, 4(r31)
/* 804E6AB8  38 80 00 02 */	li r4, 2
/* 804E6ABC  98 9E 06 F4 */	stb r4, 0x6f4(r30)
/* 804E6AC0  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 804E6AC4  2C 00 00 01 */	cmpwi r0, 1
/* 804E6AC8  41 82 00 6C */	beq lbl_804E6B34
/* 804E6ACC  40 80 00 10 */	bge lbl_804E6ADC
/* 804E6AD0  2C 00 00 00 */	cmpwi r0, 0
/* 804E6AD4  40 80 00 14 */	bge lbl_804E6AE8
/* 804E6AD8  48 00 02 50 */	b lbl_804E6D28
lbl_804E6ADC:
/* 804E6ADC  2C 00 00 03 */	cmpwi r0, 3
/* 804E6AE0  40 80 02 48 */	bge lbl_804E6D28
/* 804E6AE4  48 00 00 8C */	b lbl_804E6B70
lbl_804E6AE8:
/* 804E6AE8  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 804E6AEC  4B D8 0E 69 */	bl cM_rndF__Ff
/* 804E6AF0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804E6AF4  EC 40 08 2A */	fadds f2, f0, f1
/* 804E6AF8  7F C3 F3 78 */	mr r3, r30
/* 804E6AFC  38 80 00 1F */	li r4, 0x1f
/* 804E6B00  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E6B04  38 A0 00 02 */	li r5, 2
/* 804E6B08  4B FF E7 C9 */	bl anm_init__FP10e_dn_classifUcf
/* 804E6B0C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E6B10  4B D8 0E 45 */	bl cM_rndF__Ff
/* 804E6B14  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804E6B18  EC 00 08 2A */	fadds f0, f0, f1
/* 804E6B1C  FC 00 00 1E */	fctiwz f0, f0
/* 804E6B20  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E6B24  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E6B28  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E6B2C  38 00 00 01 */	li r0, 1
/* 804E6B30  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E6B34:
/* 804E6B34  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E6B38  2C 00 00 00 */	cmpwi r0, 0
/* 804E6B3C  40 82 01 EC */	bne lbl_804E6D28
/* 804E6B40  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804E6B44  4B D8 0E 49 */	bl cM_rndFX__Ff
/* 804E6B48  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E6B4C  EC 40 08 2A */	fadds f2, f0, f1
/* 804E6B50  7F C3 F3 78 */	mr r3, r30
/* 804E6B54  38 80 00 1E */	li r4, 0x1e
/* 804E6B58  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E6B5C  38 A0 00 02 */	li r5, 2
/* 804E6B60  4B FF E7 71 */	bl anm_init__FP10e_dn_classifUcf
/* 804E6B64  38 00 00 02 */	li r0, 2
/* 804E6B68  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E6B6C  48 00 01 BC */	b lbl_804E6D28
lbl_804E6B70:
/* 804E6B70  3C 60 80 4F */	lis r3, l_HIO@ha /* 0x804EEF3C@ha */
/* 804E6B74  38 63 EF 3C */	addi r3, r3, l_HIO@l /* 0x804EEF3C@l */
/* 804E6B78  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 804E6B7C  A8 7E 06 CC */	lha r3, 0x6cc(r30)
/* 804E6B80  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 804E6B84  40 82 00 1C */	bne lbl_804E6BA0
/* 804E6B88  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804E6B8C  41 82 00 10 */	beq lbl_804E6B9C
/* 804E6B90  38 00 00 01 */	li r0, 1
/* 804E6B94  98 1E 10 E4 */	stb r0, 0x10e4(r30)
/* 804E6B98  48 00 00 08 */	b lbl_804E6BA0
lbl_804E6B9C:
/* 804E6B9C  98 9E 10 E4 */	stb r4, 0x10e4(r30)
lbl_804E6BA0:
/* 804E6BA0  38 61 00 0C */	addi r3, r1, 0xc
/* 804E6BA4  38 9E 07 38 */	addi r4, r30, 0x738
/* 804E6BA8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E6BAC  4B D7 FF 89 */	bl __mi__4cXyzCFRC3Vec
/* 804E6BB0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E6BB4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804E6BB8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E6BBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E6BC0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804E6BC4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804E6BC8  4B D8 0A AD */	bl cM_atan2s__Fff
/* 804E6BCC  7C 64 1B 78 */	mr r4, r3
/* 804E6BD0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804E6BD4  38 A0 00 02 */	li r5, 2
/* 804E6BD8  38 C0 0C 00 */	li r6, 0xc00
/* 804E6BDC  4B D8 9A 2D */	bl cLib_addCalcAngleS2__FPssss
/* 804E6BE0  38 61 00 18 */	addi r3, r1, 0x18
/* 804E6BE4  4B E6 05 55 */	bl PSVECSquareMag
/* 804E6BE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E6BEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6BF0  40 81 00 58 */	ble lbl_804E6C48
/* 804E6BF4  FC 00 08 34 */	frsqrte f0, f1
/* 804E6BF8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 804E6BFC  FC 44 00 32 */	fmul f2, f4, f0
/* 804E6C00  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 804E6C04  FC 00 00 32 */	fmul f0, f0, f0
/* 804E6C08  FC 01 00 32 */	fmul f0, f1, f0
/* 804E6C0C  FC 03 00 28 */	fsub f0, f3, f0
/* 804E6C10  FC 02 00 32 */	fmul f0, f2, f0
/* 804E6C14  FC 44 00 32 */	fmul f2, f4, f0
/* 804E6C18  FC 00 00 32 */	fmul f0, f0, f0
/* 804E6C1C  FC 01 00 32 */	fmul f0, f1, f0
/* 804E6C20  FC 03 00 28 */	fsub f0, f3, f0
/* 804E6C24  FC 02 00 32 */	fmul f0, f2, f0
/* 804E6C28  FC 44 00 32 */	fmul f2, f4, f0
/* 804E6C2C  FC 00 00 32 */	fmul f0, f0, f0
/* 804E6C30  FC 01 00 32 */	fmul f0, f1, f0
/* 804E6C34  FC 03 00 28 */	fsub f0, f3, f0
/* 804E6C38  FC 02 00 32 */	fmul f0, f2, f0
/* 804E6C3C  FC 21 00 32 */	fmul f1, f1, f0
/* 804E6C40  FC 20 08 18 */	frsp f1, f1
/* 804E6C44  48 00 00 88 */	b lbl_804E6CCC
lbl_804E6C48:
/* 804E6C48  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 804E6C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6C50  40 80 00 10 */	bge lbl_804E6C60
/* 804E6C54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804E6C58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804E6C5C  48 00 00 70 */	b lbl_804E6CCC
lbl_804E6C60:
/* 804E6C60  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E6C64  80 81 00 08 */	lwz r4, 8(r1)
/* 804E6C68  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804E6C6C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804E6C70  7C 03 00 00 */	cmpw r3, r0
/* 804E6C74  41 82 00 14 */	beq lbl_804E6C88
/* 804E6C78  40 80 00 40 */	bge lbl_804E6CB8
/* 804E6C7C  2C 03 00 00 */	cmpwi r3, 0
/* 804E6C80  41 82 00 20 */	beq lbl_804E6CA0
/* 804E6C84  48 00 00 34 */	b lbl_804E6CB8
lbl_804E6C88:
/* 804E6C88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E6C8C  41 82 00 0C */	beq lbl_804E6C98
/* 804E6C90  38 00 00 01 */	li r0, 1
/* 804E6C94  48 00 00 28 */	b lbl_804E6CBC
lbl_804E6C98:
/* 804E6C98  38 00 00 02 */	li r0, 2
/* 804E6C9C  48 00 00 20 */	b lbl_804E6CBC
lbl_804E6CA0:
/* 804E6CA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E6CA4  41 82 00 0C */	beq lbl_804E6CB0
/* 804E6CA8  38 00 00 05 */	li r0, 5
/* 804E6CAC  48 00 00 10 */	b lbl_804E6CBC
lbl_804E6CB0:
/* 804E6CB0  38 00 00 03 */	li r0, 3
/* 804E6CB4  48 00 00 08 */	b lbl_804E6CBC
lbl_804E6CB8:
/* 804E6CB8  38 00 00 04 */	li r0, 4
lbl_804E6CBC:
/* 804E6CBC  2C 00 00 01 */	cmpwi r0, 1
/* 804E6CC0  40 82 00 0C */	bne lbl_804E6CCC
/* 804E6CC4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804E6CC8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804E6CCC:
/* 804E6CCC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 804E6CD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6CD4  41 80 00 10 */	blt lbl_804E6CE4
/* 804E6CD8  80 1E 08 B0 */	lwz r0, 0x8b0(r30)
/* 804E6CDC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804E6CE0  41 82 00 48 */	beq lbl_804E6D28
lbl_804E6CE4:
/* 804E6CE4  38 00 00 00 */	li r0, 0
/* 804E6CE8  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E6CEC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E6CF0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804E6CF4  4B D8 0C 61 */	bl cM_rndF__Ff
/* 804E6CF8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804E6CFC  EC 00 08 2A */	fadds f0, f0, f1
/* 804E6D00  FC 00 00 1E */	fctiwz f0, f0
/* 804E6D04  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E6D08  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E6D0C  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E6D10  7F C3 F3 78 */	mr r3, r30
/* 804E6D14  38 80 00 21 */	li r4, 0x21
/* 804E6D18  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E6D1C  38 A0 00 02 */	li r5, 2
/* 804E6D20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E6D24  4B FF E5 AD */	bl anm_init__FP10e_dn_classifUcf
lbl_804E6D28:
/* 804E6D28  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E6D2C  FC 20 F8 90 */	fmr f1, f31
/* 804E6D30  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E6D34  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 804E6D38  4B D8 8D 05 */	bl cLib_addCalc2__FPffff
/* 804E6D3C  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 804E6D40  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804E6D44  40 82 00 58 */	bne lbl_804E6D9C
/* 804E6D48  7F C3 F3 78 */	mr r3, r30
/* 804E6D4C  C0 3E 06 D8 */	lfs f1, 0x6d8(r30)
/* 804E6D50  38 80 40 00 */	li r4, 0x4000
/* 804E6D54  4B FF F5 11 */	bl pl_check__FP10e_dn_classfs
/* 804E6D58  2C 03 00 00 */	cmpwi r3, 0
/* 804E6D5C  41 82 00 20 */	beq lbl_804E6D7C
/* 804E6D60  38 00 00 03 */	li r0, 3
/* 804E6D64  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E6D68  38 00 FF F6 */	li r0, -10
/* 804E6D6C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E6D70  38 00 00 3C */	li r0, 0x3c
/* 804E6D74  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E6D78  48 00 00 24 */	b lbl_804E6D9C
lbl_804E6D7C:
/* 804E6D7C  7F C3 F3 78 */	mr r3, r30
/* 804E6D80  4B FF F4 59 */	bl bomb_view_check__FP10e_dn_class
/* 804E6D84  28 03 00 00 */	cmplwi r3, 0
/* 804E6D88  41 82 00 14 */	beq lbl_804E6D9C
/* 804E6D8C  38 00 00 0B */	li r0, 0xb
/* 804E6D90  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E6D94  38 00 00 00 */	li r0, 0
/* 804E6D98  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E6D9C:
/* 804E6D9C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804E6DA0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804E6DA4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804E6DA8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804E6DAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E6DB0  7C 08 03 A6 */	mtlr r0
/* 804E6DB4  38 21 00 50 */	addi r1, r1, 0x50
/* 804E6DB8  4E 80 00 20 */	blr 
