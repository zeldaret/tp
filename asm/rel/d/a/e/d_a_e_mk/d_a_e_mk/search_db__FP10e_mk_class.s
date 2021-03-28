lbl_807148FC:
/* 807148FC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80714900  7C 08 02 A6 */	mflr r0
/* 80714904  90 01 00 84 */	stw r0, 0x84(r1)
/* 80714908  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8071490C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80714910  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80714914  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80714918  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8071491C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80714920  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80714924  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80714928  39 61 00 40 */	addi r11, r1, 0x40
/* 8071492C  4B C4 D8 A4 */	b _savegpr_26
/* 80714930  7C 7C 1B 78 */	mr r28, r3
/* 80714934  3C 60 80 72 */	lis r3, lit_3777@ha
/* 80714938  3B C3 C5 44 */	addi r30, r3, lit_3777@l
/* 8071493C  38 A0 00 00 */	li r5, 0
/* 80714940  3C 60 80 72 */	lis r3, target_info_count@ha
/* 80714944  90 A3 CB 8C */	stw r5, target_info_count@l(r3)
/* 80714948  7C A3 2B 78 */	mr r3, r5
/* 8071494C  3C 80 80 72 */	lis r4, target_info@ha
/* 80714950  38 84 CB 3C */	addi r4, r4, target_info@l
/* 80714954  38 00 00 14 */	li r0, 0x14
/* 80714958  7C 09 03 A6 */	mtctr r0
lbl_8071495C:
/* 8071495C  7C A4 19 2E */	stwx r5, r4, r3
/* 80714960  38 63 00 04 */	addi r3, r3, 4
/* 80714964  42 00 FF F8 */	bdnz lbl_8071495C
/* 80714968  3C 60 80 71 */	lis r3, s_d_sub__FPvPv@ha
/* 8071496C  38 63 48 74 */	addi r3, r3, s_d_sub__FPvPv@l
/* 80714970  7F 84 E3 78 */	mr r4, r28
/* 80714974  4B 90 C9 C4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80714978  C3 DE 00 4C */	lfs f30, 0x4c(r30)
/* 8071497C  3C 60 80 72 */	lis r3, target_info_count@ha
/* 80714980  3B E3 CB 8C */	addi r31, r3, target_info_count@l
/* 80714984  80 1F 00 00 */	lwz r0, 0(r31)
/* 80714988  2C 00 00 00 */	cmpwi r0, 0
/* 8071498C  41 82 01 A8 */	beq lbl_80714B34
/* 80714990  3B A0 00 00 */	li r29, 0
/* 80714994  48 00 01 80 */	b lbl_80714B14
lbl_80714998:
/* 80714998  57 A0 10 3A */	slwi r0, r29, 2
/* 8071499C  7F 5B 00 2E */	lwzx r26, r27, r0
/* 807149A0  38 61 00 0C */	addi r3, r1, 0xc
/* 807149A4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807149A8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807149AC  4B B5 21 88 */	b __mi__4cXyzCFRC3Vec
/* 807149B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807149B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807149B8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807149BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807149C0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807149C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807149C8  38 61 00 18 */	addi r3, r1, 0x18
/* 807149CC  4B C3 27 6C */	b PSVECSquareMag
/* 807149D0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807149D4  40 81 00 58 */	ble lbl_80714A2C
/* 807149D8  FC 00 08 34 */	frsqrte f0, f1
/* 807149DC  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 807149E0  FC 44 00 32 */	fmul f2, f4, f0
/* 807149E4  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 807149E8  FC 00 00 32 */	fmul f0, f0, f0
/* 807149EC  FC 01 00 32 */	fmul f0, f1, f0
/* 807149F0  FC 03 00 28 */	fsub f0, f3, f0
/* 807149F4  FC 02 00 32 */	fmul f0, f2, f0
/* 807149F8  FC 44 00 32 */	fmul f2, f4, f0
/* 807149FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80714A00  FC 01 00 32 */	fmul f0, f1, f0
/* 80714A04  FC 03 00 28 */	fsub f0, f3, f0
/* 80714A08  FC 02 00 32 */	fmul f0, f2, f0
/* 80714A0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80714A10  FC 00 00 32 */	fmul f0, f0, f0
/* 80714A14  FC 01 00 32 */	fmul f0, f1, f0
/* 80714A18  FC 03 00 28 */	fsub f0, f3, f0
/* 80714A1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80714A20  FF 81 00 32 */	fmul f28, f1, f0
/* 80714A24  FF 80 E0 18 */	frsp f28, f28
/* 80714A28  48 00 00 90 */	b lbl_80714AB8
lbl_80714A2C:
/* 80714A2C  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 80714A30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80714A34  40 80 00 10 */	bge lbl_80714A44
/* 80714A38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80714A3C  C3 83 0A E0 */	lfs f28, __float_nan@l(r3)
/* 80714A40  48 00 00 78 */	b lbl_80714AB8
lbl_80714A44:
/* 80714A44  D0 21 00 08 */	stfs f1, 8(r1)
/* 80714A48  80 81 00 08 */	lwz r4, 8(r1)
/* 80714A4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80714A50  3C 00 7F 80 */	lis r0, 0x7f80
/* 80714A54  7C 03 00 00 */	cmpw r3, r0
/* 80714A58  41 82 00 14 */	beq lbl_80714A6C
/* 80714A5C  40 80 00 40 */	bge lbl_80714A9C
/* 80714A60  2C 03 00 00 */	cmpwi r3, 0
/* 80714A64  41 82 00 20 */	beq lbl_80714A84
/* 80714A68  48 00 00 34 */	b lbl_80714A9C
lbl_80714A6C:
/* 80714A6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80714A70  41 82 00 0C */	beq lbl_80714A7C
/* 80714A74  38 00 00 01 */	li r0, 1
/* 80714A78  48 00 00 28 */	b lbl_80714AA0
lbl_80714A7C:
/* 80714A7C  38 00 00 02 */	li r0, 2
/* 80714A80  48 00 00 20 */	b lbl_80714AA0
lbl_80714A84:
/* 80714A84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80714A88  41 82 00 0C */	beq lbl_80714A94
/* 80714A8C  38 00 00 05 */	li r0, 5
/* 80714A90  48 00 00 10 */	b lbl_80714AA0
lbl_80714A94:
/* 80714A94  38 00 00 03 */	li r0, 3
/* 80714A98  48 00 00 08 */	b lbl_80714AA0
lbl_80714A9C:
/* 80714A9C  38 00 00 04 */	li r0, 4
lbl_80714AA0:
/* 80714AA0  2C 00 00 01 */	cmpwi r0, 1
/* 80714AA4  40 82 00 10 */	bne lbl_80714AB4
/* 80714AA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80714AAC  C3 83 0A E0 */	lfs f28, __float_nan@l(r3)
/* 80714AB0  48 00 00 08 */	b lbl_80714AB8
lbl_80714AB4:
/* 80714AB4  FF 80 08 90 */	fmr f28, f1
lbl_80714AB8:
/* 80714AB8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80714ABC  4B B5 2E 98 */	b cM_rndF__Ff
/* 80714AC0  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80714AC4  40 80 00 20 */	bge lbl_80714AE4
/* 80714AC8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80714ACC  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 80714AD0  40 81 00 14 */	ble lbl_80714AE4
/* 80714AD4  FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 80714AD8  40 80 00 0C */	bge lbl_80714AE4
/* 80714ADC  7F 43 D3 78 */	mr r3, r26
/* 80714AE0  48 00 00 60 */	b lbl_80714B40
lbl_80714AE4:
/* 80714AE4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80714AE8  3B BD 00 01 */	addi r29, r29, 1
/* 80714AEC  7C 1D 00 00 */	cmpw r29, r0
/* 80714AF0  40 82 00 34 */	bne lbl_80714B24
/* 80714AF4  3B A0 00 00 */	li r29, 0
/* 80714AF8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80714AFC  EF DE 00 2A */	fadds f30, f30, f0
/* 80714B00  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80714B04  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80714B08  40 81 00 1C */	ble lbl_80714B24
/* 80714B0C  38 60 00 00 */	li r3, 0
/* 80714B10  48 00 00 30 */	b lbl_80714B40
lbl_80714B14:
/* 80714B14  3C 60 80 72 */	lis r3, target_info@ha
/* 80714B18  3B 63 CB 3C */	addi r27, r3, target_info@l
/* 80714B1C  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 80714B20  C3 BE 00 50 */	lfs f29, 0x50(r30)
lbl_80714B24:
/* 80714B24  80 1F 00 00 */	lwz r0, 0(r31)
/* 80714B28  7C 1D 00 00 */	cmpw r29, r0
/* 80714B2C  41 80 FE 6C */	blt lbl_80714998
/* 80714B30  48 00 00 0C */	b lbl_80714B3C
lbl_80714B34:
/* 80714B34  38 60 00 00 */	li r3, 0
/* 80714B38  48 00 00 08 */	b lbl_80714B40
lbl_80714B3C:
/* 80714B3C  38 60 00 00 */	li r3, 0
lbl_80714B40:
/* 80714B40  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80714B44  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80714B48  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80714B4C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80714B50  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80714B54  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80714B58  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80714B5C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80714B60  39 61 00 40 */	addi r11, r1, 0x40
/* 80714B64  4B C4 D6 B8 */	b _restgpr_26
/* 80714B68  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80714B6C  7C 08 03 A6 */	mtlr r0
/* 80714B70  38 21 00 80 */	addi r1, r1, 0x80
/* 80714B74  4E 80 00 20 */	blr 
