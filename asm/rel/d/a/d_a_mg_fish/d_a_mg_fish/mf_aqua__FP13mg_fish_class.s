lbl_8053198C:
/* 8053198C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80531990  7C 08 02 A6 */	mflr r0
/* 80531994  90 01 00 54 */	stw r0, 0x54(r1)
/* 80531998  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8053199C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805319A0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805319A4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805319A8  7C 7E 1B 78 */	mr r30, r3
/* 805319AC  3C 60 80 53 */	lis r3, lit_3679@ha
/* 805319B0  3B E3 61 68 */	addi r31, r3, lit_3679@l
/* 805319B4  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 805319B8  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 805319BC  2C 00 00 01 */	cmpwi r0, 1
/* 805319C0  41 82 00 8C */	beq lbl_80531A4C
/* 805319C4  40 80 00 10 */	bge lbl_805319D4
/* 805319C8  2C 00 00 00 */	cmpwi r0, 0
/* 805319CC  40 80 00 14 */	bge lbl_805319E0
/* 805319D0  48 00 02 94 */	b lbl_80531C64
lbl_805319D4:
/* 805319D4  2C 00 00 03 */	cmpwi r0, 3
/* 805319D8  40 80 02 8C */	bge lbl_80531C64
/* 805319DC  48 00 02 60 */	b lbl_80531C3C
lbl_805319E0:
/* 805319E0  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 805319E4  4B D3 5F A8 */	b cM_rndFX__Ff
/* 805319E8  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 805319EC  EC 00 08 2A */	fadds f0, f0, f1
/* 805319F0  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 805319F4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805319F8  4B D3 5F 94 */	b cM_rndFX__Ff
/* 805319FC  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80531A00  EC 00 08 2A */	fadds f0, f0, f1
/* 80531A04  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 80531A08  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80531A0C  4B D3 5F 48 */	b cM_rndF__Ff
/* 80531A10  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80531A14  EC 00 08 2A */	fadds f0, f0, f1
/* 80531A18  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80531A1C  38 00 00 01 */	li r0, 1
/* 80531A20  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80531A24  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80531A28  4B D3 5F 2C */	b cM_rndF__Ff
/* 80531A2C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80531A30  EC 00 08 2A */	fadds f0, f0, f1
/* 80531A34  FC 00 00 1E */	fctiwz f0, f0
/* 80531A38  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80531A3C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80531A40  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 80531A44  38 00 00 00 */	li r0, 0
/* 80531A48  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_80531A4C:
/* 80531A4C  C3 FF 00 1C */	lfs f31, 0x1c(r31)
/* 80531A50  38 61 00 0C */	addi r3, r1, 0xc
/* 80531A54  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 80531A58  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80531A5C  4B D3 50 D8 */	b __mi__4cXyzCFRC3Vec
/* 80531A60  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80531A64  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80531A68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80531A6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80531A70  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80531A74  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80531A78  4B D3 5B FC */	b cM_atan2s__Fff
/* 80531A7C  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 80531A80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80531A84  EC 20 00 32 */	fmuls f1, f0, f0
/* 80531A88  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80531A8C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80531A90  EC 41 00 2A */	fadds f2, f1, f0
/* 80531A94  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80531A98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80531A9C  40 81 00 0C */	ble lbl_80531AA8
/* 80531AA0  FC 00 10 34 */	frsqrte f0, f2
/* 80531AA4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80531AA8:
/* 80531AA8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80531AAC  4B D3 5B C8 */	b cM_atan2s__Fff
/* 80531AB0  7C 03 00 D0 */	neg r0, r3
/* 80531AB4  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 80531AB8  A8 1E 05 CE */	lha r0, 0x5ce(r30)
/* 80531ABC  2C 00 0C 00 */	cmpwi r0, 0xc00
/* 80531AC0  40 81 00 10 */	ble lbl_80531AD0
/* 80531AC4  38 00 0C 00 */	li r0, 0xc00
/* 80531AC8  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 80531ACC  48 00 00 14 */	b lbl_80531AE0
lbl_80531AD0:
/* 80531AD0  2C 00 F4 00 */	cmpwi r0, -3072
/* 80531AD4  40 80 00 0C */	bge lbl_80531AE0
/* 80531AD8  38 00 F4 00 */	li r0, -3072
/* 80531ADC  B0 1E 05 CE */	sth r0, 0x5ce(r30)
lbl_80531AE0:
/* 80531AE0  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 80531AE4  2C 00 00 00 */	cmpwi r0, 0
/* 80531AE8  41 82 00 FC */	beq lbl_80531BE4
/* 80531AEC  38 61 00 18 */	addi r3, r1, 0x18
/* 80531AF0  4B E1 56 48 */	b PSVECSquareMag
/* 80531AF4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80531AF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531AFC  40 81 00 58 */	ble lbl_80531B54
/* 80531B00  FC 00 08 34 */	frsqrte f0, f1
/* 80531B04  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80531B08  FC 44 00 32 */	fmul f2, f4, f0
/* 80531B0C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80531B10  FC 00 00 32 */	fmul f0, f0, f0
/* 80531B14  FC 01 00 32 */	fmul f0, f1, f0
/* 80531B18  FC 03 00 28 */	fsub f0, f3, f0
/* 80531B1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80531B20  FC 44 00 32 */	fmul f2, f4, f0
/* 80531B24  FC 00 00 32 */	fmul f0, f0, f0
/* 80531B28  FC 01 00 32 */	fmul f0, f1, f0
/* 80531B2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80531B30  FC 02 00 32 */	fmul f0, f2, f0
/* 80531B34  FC 44 00 32 */	fmul f2, f4, f0
/* 80531B38  FC 00 00 32 */	fmul f0, f0, f0
/* 80531B3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80531B40  FC 03 00 28 */	fsub f0, f3, f0
/* 80531B44  FC 02 00 32 */	fmul f0, f2, f0
/* 80531B48  FC 21 00 32 */	fmul f1, f1, f0
/* 80531B4C  FC 20 08 18 */	frsp f1, f1
/* 80531B50  48 00 00 88 */	b lbl_80531BD8
lbl_80531B54:
/* 80531B54  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80531B58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531B5C  40 80 00 10 */	bge lbl_80531B6C
/* 80531B60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80531B64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80531B68  48 00 00 70 */	b lbl_80531BD8
lbl_80531B6C:
/* 80531B6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80531B70  80 81 00 08 */	lwz r4, 8(r1)
/* 80531B74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80531B78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80531B7C  7C 03 00 00 */	cmpw r3, r0
/* 80531B80  41 82 00 14 */	beq lbl_80531B94
/* 80531B84  40 80 00 40 */	bge lbl_80531BC4
/* 80531B88  2C 03 00 00 */	cmpwi r3, 0
/* 80531B8C  41 82 00 20 */	beq lbl_80531BAC
/* 80531B90  48 00 00 34 */	b lbl_80531BC4
lbl_80531B94:
/* 80531B94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80531B98  41 82 00 0C */	beq lbl_80531BA4
/* 80531B9C  38 00 00 01 */	li r0, 1
/* 80531BA0  48 00 00 28 */	b lbl_80531BC8
lbl_80531BA4:
/* 80531BA4  38 00 00 02 */	li r0, 2
/* 80531BA8  48 00 00 20 */	b lbl_80531BC8
lbl_80531BAC:
/* 80531BAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80531BB0  41 82 00 0C */	beq lbl_80531BBC
/* 80531BB4  38 00 00 05 */	li r0, 5
/* 80531BB8  48 00 00 10 */	b lbl_80531BC8
lbl_80531BBC:
/* 80531BBC  38 00 00 03 */	li r0, 3
/* 80531BC0  48 00 00 08 */	b lbl_80531BC8
lbl_80531BC4:
/* 80531BC4  38 00 00 04 */	li r0, 4
lbl_80531BC8:
/* 80531BC8  2C 00 00 01 */	cmpwi r0, 1
/* 80531BCC  40 82 00 0C */	bne lbl_80531BD8
/* 80531BD0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80531BD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80531BD8:
/* 80531BD8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80531BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531BE0  40 80 00 84 */	bge lbl_80531C64
lbl_80531BE4:
/* 80531BE4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80531BE8  4B D3 5D 6C */	b cM_rndF__Ff
/* 80531BEC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80531BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531BF4  40 80 00 3C */	bge lbl_80531C30
/* 80531BF8  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80531BFC  28 00 00 05 */	cmplwi r0, 5
/* 80531C00  41 82 00 30 */	beq lbl_80531C30
/* 80531C04  38 00 00 02 */	li r0, 2
/* 80531C08  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80531C0C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80531C10  4B D3 5D 44 */	b cM_rndF__Ff
/* 80531C14  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80531C18  EC 00 08 2A */	fadds f0, f0, f1
/* 80531C1C  FC 00 00 1E */	fctiwz f0, f0
/* 80531C20  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80531C24  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80531C28  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 80531C2C  48 00 00 38 */	b lbl_80531C64
lbl_80531C30:
/* 80531C30  38 00 00 00 */	li r0, 0
/* 80531C34  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80531C38  48 00 00 2C */	b lbl_80531C64
lbl_80531C3C:
/* 80531C3C  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 80531C40  38 80 00 00 */	li r4, 0
/* 80531C44  38 A0 00 10 */	li r5, 0x10
/* 80531C48  38 C0 00 64 */	li r6, 0x64
/* 80531C4C  4B D3 E9 BC */	b cLib_addCalcAngleS2__FPssss
/* 80531C50  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 80531C54  2C 00 00 00 */	cmpwi r0, 0
/* 80531C58  40 82 00 0C */	bne lbl_80531C64
/* 80531C5C  38 00 00 00 */	li r0, 0
/* 80531C60  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_80531C64:
/* 80531C64  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80531C68  FC 20 F8 90 */	fmr f1, f31
/* 80531C6C  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80531C70  C0 7F 01 AC */	lfs f3, 0x1ac(r31)
/* 80531C74  4B D3 DD C8 */	b cLib_addCalc2__FPffff
/* 80531C78  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80531C7C  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 80531C80  38 A0 00 08 */	li r5, 8
/* 80531C84  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 80531C88  4B D3 E9 80 */	b cLib_addCalcAngleS2__FPssss
/* 80531C8C  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80531C90  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 80531C94  38 A0 00 08 */	li r5, 8
/* 80531C98  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 80531C9C  4B D3 E9 6C */	b cLib_addCalcAngleS2__FPssss
/* 80531CA0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80531CA4  38 80 04 00 */	li r4, 0x400
/* 80531CA8  38 A0 00 01 */	li r5, 1
/* 80531CAC  38 C0 00 20 */	li r6, 0x20
/* 80531CB0  4B D3 E9 58 */	b cLib_addCalcAngleS2__FPssss
/* 80531CB4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80531CB8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80531CBC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80531CC0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80531CC4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80531CC8  7C 08 03 A6 */	mtlr r0
/* 80531CCC  38 21 00 50 */	addi r1, r1, 0x50
/* 80531CD0  4E 80 00 20 */	blr 
