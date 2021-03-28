lbl_80A49930:
/* 80A49930  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A49934  7C 08 02 A6 */	mflr r0
/* 80A49938  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A4993C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A49940  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A49944  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80A49948  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80A4994C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80A49950  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80A49954  39 61 00 40 */	addi r11, r1, 0x40
/* 80A49958  4B 91 88 6C */	b _savegpr_23
/* 80A4995C  7C 67 1B 78 */	mr r7, r3
/* 80A49960  7C 9C 23 78 */	mr r28, r4
/* 80A49964  3C 60 80 A6 */	lis r3, lit_1109@ha
/* 80A49968  3B C3 FE 48 */	addi r30, r3, lit_1109@l
/* 80A4996C  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A49970  3B E3 DE FC */	addi r31, r3, lit_4030@l
/* 80A49974  7C FD 3B 78 */	mr r29, r7
/* 80A49978  38 C0 00 00 */	li r6, 0
/* 80A4997C  90 DE 00 D0 */	stw r6, 0xd0(r30)
/* 80A49980  7C C3 33 78 */	mr r3, r6
/* 80A49984  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 80A49988  38 9E 00 D4 */	addi r4, r30, 0xd4
/* 80A4998C  38 00 00 0A */	li r0, 0xa
/* 80A49990  7C 09 03 A6 */	mtctr r0
lbl_80A49994:
/* 80A49994  7C C5 19 2E */	stwx r6, r5, r3
/* 80A49998  7C C4 19 2E */	stwx r6, r4, r3
/* 80A4999C  38 63 00 04 */	addi r3, r3, 4
/* 80A499A0  42 00 FF F4 */	bdnz lbl_80A49994
/* 80A499A4  3C 60 80 A5 */	lis r3, s_b_sub__FPvPv@ha
/* 80A499A8  38 63 98 B4 */	addi r3, r3, s_b_sub__FPvPv@l
/* 80A499AC  7C E4 3B 78 */	mr r4, r7
/* 80A499B0  4B 5D 79 88 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A499B4  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 80A499B8  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 80A499BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A499C0  41 82 01 4C */	beq lbl_80A49B0C
/* 80A499C4  3A E0 00 00 */	li r23, 0
/* 80A499C8  48 00 01 28 */	b lbl_80A49AF0
lbl_80A499CC:
/* 80A499CC  56 FA 10 3A */	slwi r26, r23, 2
/* 80A499D0  7F 1B D0 2E */	lwzx r24, r27, r26
/* 80A499D4  C0 38 04 D0 */	lfs f1, 0x4d0(r24)
/* 80A499D8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80A499DC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A499E0  D0 41 00 08 */	stfs f2, 8(r1)
/* 80A499E4  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80A499E8  EC 3D 00 2A */	fadds f1, f29, f0
/* 80A499EC  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80A499F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A499F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A499F8  C0 38 04 D8 */	lfs f1, 0x4d8(r24)
/* 80A499FC  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80A49A00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A49A04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A49A08  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A49A0C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A49A10  EC 21 00 2A */	fadds f1, f1, f0
/* 80A49A14  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A49A18  40 81 00 0C */	ble lbl_80A49A24
/* 80A49A1C  FC 00 08 34 */	frsqrte f0, f1
/* 80A49A20  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A49A24:
/* 80A49A24  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A49A28  40 80 00 98 */	bge lbl_80A49AC0
/* 80A49A2C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A49A30  40 82 00 0C */	bne lbl_80A49A3C
/* 80A49A34  7F 03 C3 78 */	mr r3, r24
/* 80A49A38  48 00 00 E0 */	b lbl_80A49B18
lbl_80A49A3C:
/* 80A49A3C  3B 3E 00 D4 */	addi r25, r30, 0xd4
/* 80A49A40  7C 19 D0 2E */	lwzx r0, r25, r26
/* 80A49A44  2C 00 00 00 */	cmpwi r0, 0
/* 80A49A48  40 82 00 18 */	bne lbl_80A49A60
/* 80A49A4C  7F A3 EB 78 */	mr r3, r29
/* 80A49A50  7F 04 C3 78 */	mr r4, r24
/* 80A49A54  4B 5D 33 A8 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A49A58  2C 03 00 00 */	cmpwi r3, 0
/* 80A49A5C  41 82 00 10 */	beq lbl_80A49A6C
lbl_80A49A60:
/* 80A49A60  38 00 00 01 */	li r0, 1
/* 80A49A64  7C 19 D1 2E */	stwx r0, r25, r26
/* 80A49A68  48 00 00 58 */	b lbl_80A49AC0
lbl_80A49A6C:
/* 80A49A6C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A49A70  FC 00 02 10 */	fabs f0, f0
/* 80A49A74  FC 20 00 18 */	frsp f1, f0
/* 80A49A78  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80A49A7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A49A80  4C 40 13 82 */	cror 2, 0, 2
/* 80A49A84  40 82 00 3C */	bne lbl_80A49AC0
/* 80A49A88  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A49A8C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A49A90  4B 81 DB E4 */	b cM_atan2s__Fff
/* 80A49A94  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80A49A98  7C 03 00 50 */	subf r0, r3, r0
/* 80A49A9C  7C 00 07 35 */	extsh. r0, r0
/* 80A49AA0  40 80 00 0C */	bge lbl_80A49AAC
/* 80A49AA4  7C 00 00 D0 */	neg r0, r0
/* 80A49AA8  7C 00 07 34 */	extsh r0, r0
lbl_80A49AAC:
/* 80A49AAC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80A49AB0  28 00 4E 20 */	cmplwi r0, 0x4e20
/* 80A49AB4  40 80 00 0C */	bge lbl_80A49AC0
/* 80A49AB8  7F 03 C3 78 */	mr r3, r24
/* 80A49ABC  48 00 00 5C */	b lbl_80A49B18
lbl_80A49AC0:
/* 80A49AC0  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 80A49AC4  3A F7 00 01 */	addi r23, r23, 1
/* 80A49AC8  7C 17 00 00 */	cmpw r23, r0
/* 80A49ACC  40 82 00 30 */	bne lbl_80A49AFC
/* 80A49AD0  3A E0 00 00 */	li r23, 0
/* 80A49AD4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A49AD8  EF FF 00 2A */	fadds f31, f31, f0
/* 80A49ADC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80A49AE0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A49AE4  40 81 00 18 */	ble lbl_80A49AFC
/* 80A49AE8  38 60 00 00 */	li r3, 0
/* 80A49AEC  48 00 00 2C */	b lbl_80A49B18
lbl_80A49AF0:
/* 80A49AF0  3B 7E 00 A8 */	addi r27, r30, 0xa8
/* 80A49AF4  FF A0 F8 90 */	fmr f29, f31
/* 80A49AF8  C3 DF 00 30 */	lfs f30, 0x30(r31)
lbl_80A49AFC:
/* 80A49AFC  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 80A49B00  7C 17 00 00 */	cmpw r23, r0
/* 80A49B04  41 80 FE C8 */	blt lbl_80A499CC
/* 80A49B08  48 00 00 0C */	b lbl_80A49B14
lbl_80A49B0C:
/* 80A49B0C  38 60 00 00 */	li r3, 0
/* 80A49B10  48 00 00 08 */	b lbl_80A49B18
lbl_80A49B14:
/* 80A49B14  38 60 00 00 */	li r3, 0
lbl_80A49B18:
/* 80A49B18  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A49B1C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A49B20  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80A49B24  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80A49B28  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80A49B2C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80A49B30  39 61 00 40 */	addi r11, r1, 0x40
/* 80A49B34  4B 91 86 DC */	b _restgpr_23
/* 80A49B38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A49B3C  7C 08 03 A6 */	mtlr r0
/* 80A49B40  38 21 00 70 */	addi r1, r1, 0x70
/* 80A49B44  4E 80 00 20 */	blr 
