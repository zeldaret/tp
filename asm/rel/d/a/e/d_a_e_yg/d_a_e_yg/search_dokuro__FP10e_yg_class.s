lbl_807F8AE4:
/* 807F8AE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807F8AE8  7C 08 02 A6 */	mflr r0
/* 807F8AEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 807F8AF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807F8AF4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807F8AF8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 807F8AFC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 807F8B00  39 61 00 40 */	addi r11, r1, 0x40
/* 807F8B04  4B B6 96 C8 */	b _savegpr_25
/* 807F8B08  7C 64 1B 78 */	mr r4, r3
/* 807F8B0C  3C 60 80 80 */	lis r3, lit_3801@ha
/* 807F8B10  3B E3 CC B4 */	addi r31, r3, lit_3801@l
/* 807F8B14  7C 9E 23 78 */	mr r30, r4
/* 807F8B18  38 C0 00 00 */	li r6, 0
/* 807F8B1C  3C 60 80 80 */	lis r3, target_info_count@ha
/* 807F8B20  90 C3 D1 24 */	stw r6, target_info_count@l(r3)
/* 807F8B24  7C C3 33 78 */	mr r3, r6
/* 807F8B28  3C A0 80 80 */	lis r5, target_info@ha
/* 807F8B2C  38 A5 D0 D4 */	addi r5, r5, target_info@l
/* 807F8B30  38 00 00 14 */	li r0, 0x14
/* 807F8B34  7C 09 03 A6 */	mtctr r0
lbl_807F8B38:
/* 807F8B38  7C C5 19 2E */	stwx r6, r5, r3
/* 807F8B3C  38 63 00 04 */	addi r3, r3, 4
/* 807F8B40  42 00 FF F8 */	bdnz lbl_807F8B38
/* 807F8B44  3C 60 80 80 */	lis r3, s_d_sub__FPvPv@ha
/* 807F8B48  38 63 8A 68 */	addi r3, r3, s_d_sub__FPvPv@l
/* 807F8B4C  4B 82 87 EC */	b fpcEx_Search__FPFPvPv_PvPv
/* 807F8B50  C3 DF 00 00 */	lfs f30, 0(r31)
/* 807F8B54  3C 60 80 80 */	lis r3, target_info_count@ha
/* 807F8B58  3B 63 D1 24 */	addi r27, r3, target_info_count@l
/* 807F8B5C  80 1B 00 00 */	lwz r0, 0(r27)
/* 807F8B60  2C 00 00 00 */	cmpwi r0, 0
/* 807F8B64  41 82 00 C8 */	beq lbl_807F8C2C
/* 807F8B68  3B 20 00 00 */	li r25, 0
/* 807F8B6C  48 00 00 A4 */	b lbl_807F8C10
lbl_807F8B70:
/* 807F8B70  57 3C 10 3A */	slwi r28, r25, 2
/* 807F8B74  7F 5D E0 2E */	lwzx r26, r29, r28
/* 807F8B78  38 61 00 08 */	addi r3, r1, 8
/* 807F8B7C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807F8B80  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807F8B84  4B A6 DF B0 */	b __mi__4cXyzCFRC3Vec
/* 807F8B88  C0 21 00 08 */	lfs f1, 8(r1)
/* 807F8B8C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807F8B90  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807F8B94  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F8B98  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807F8B9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807F8BA0  EC 21 00 72 */	fmuls f1, f1, f1
/* 807F8BA4  EC 00 00 32 */	fmuls f0, f0, f0
/* 807F8BA8  EC 21 00 2A */	fadds f1, f1, f0
/* 807F8BAC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807F8BB0  40 81 00 0C */	ble lbl_807F8BBC
/* 807F8BB4  FC 00 08 34 */	frsqrte f0, f1
/* 807F8BB8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807F8BBC:
/* 807F8BBC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 807F8BC0  40 80 00 20 */	bge lbl_807F8BE0
/* 807F8BC4  7F C3 F3 78 */	mr r3, r30
/* 807F8BC8  7C 9D E0 2E */	lwzx r4, r29, r28
/* 807F8BCC  4B 82 42 30 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807F8BD0  2C 03 00 00 */	cmpwi r3, 0
/* 807F8BD4  40 82 00 0C */	bne lbl_807F8BE0
/* 807F8BD8  7F 43 D3 78 */	mr r3, r26
/* 807F8BDC  48 00 00 5C */	b lbl_807F8C38
lbl_807F8BE0:
/* 807F8BE0  80 1B 00 00 */	lwz r0, 0(r27)
/* 807F8BE4  3B 39 00 01 */	addi r25, r25, 1
/* 807F8BE8  7C 19 00 00 */	cmpw r25, r0
/* 807F8BEC  40 82 00 30 */	bne lbl_807F8C1C
/* 807F8BF0  3B 20 00 00 */	li r25, 0
/* 807F8BF4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807F8BF8  EF DE 00 2A */	fadds f30, f30, f0
/* 807F8BFC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807F8C00  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 807F8C04  40 81 00 18 */	ble lbl_807F8C1C
/* 807F8C08  38 60 00 00 */	li r3, 0
/* 807F8C0C  48 00 00 2C */	b lbl_807F8C38
lbl_807F8C10:
/* 807F8C10  3C 60 80 80 */	lis r3, target_info@ha
/* 807F8C14  3B A3 D0 D4 */	addi r29, r3, target_info@l
/* 807F8C18  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_807F8C1C:
/* 807F8C1C  80 1B 00 00 */	lwz r0, 0(r27)
/* 807F8C20  7C 19 00 00 */	cmpw r25, r0
/* 807F8C24  41 80 FF 4C */	blt lbl_807F8B70
/* 807F8C28  48 00 00 0C */	b lbl_807F8C34
lbl_807F8C2C:
/* 807F8C2C  38 60 00 00 */	li r3, 0
/* 807F8C30  48 00 00 08 */	b lbl_807F8C38
lbl_807F8C34:
/* 807F8C34  38 60 00 00 */	li r3, 0
lbl_807F8C38:
/* 807F8C38  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807F8C3C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807F8C40  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 807F8C44  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 807F8C48  39 61 00 40 */	addi r11, r1, 0x40
/* 807F8C4C  4B B6 95 CC */	b _restgpr_25
/* 807F8C50  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807F8C54  7C 08 03 A6 */	mtlr r0
/* 807F8C58  38 21 00 60 */	addi r1, r1, 0x60
/* 807F8C5C  4E 80 00 20 */	blr 
