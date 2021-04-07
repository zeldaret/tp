lbl_80A89AB0:
/* 80A89AB0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A89AB4  7C 08 02 A6 */	mflr r0
/* 80A89AB8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A89ABC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A89AC0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A89AC4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80A89AC8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80A89ACC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80A89AD0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80A89AD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A89AD8  4B 8D 86 F1 */	bl _savegpr_24
/* 80A89ADC  7C 7D 1B 78 */	mr r29, r3
/* 80A89AE0  3C 60 80 A9 */	lis r3, lit_1109@ha /* 0x80A92A88@ha */
/* 80A89AE4  3B C3 2A 88 */	addi r30, r3, lit_1109@l /* 0x80A92A88@l */
/* 80A89AE8  3C 60 80 A9 */	lis r3, lit_3990@ha /* 0x80A9241C@ha */
/* 80A89AEC  3B E3 24 1C */	addi r31, r3, lit_3990@l /* 0x80A9241C@l */
/* 80A89AF0  38 C0 00 00 */	li r6, 0
/* 80A89AF4  90 DE 00 90 */	stw r6, 0x90(r30)
/* 80A89AF8  7C C3 33 78 */	mr r3, r6
/* 80A89AFC  38 BE 00 68 */	addi r5, r30, 0x68
/* 80A89B00  38 9E 00 7C */	addi r4, r30, 0x7c
/* 80A89B04  38 00 00 05 */	li r0, 5
/* 80A89B08  7C 09 03 A6 */	mtctr r0
lbl_80A89B0C:
/* 80A89B0C  7C C5 19 2E */	stwx r6, r5, r3
/* 80A89B10  7C C4 19 2E */	stwx r6, r4, r3
/* 80A89B14  38 63 00 04 */	addi r3, r3, 4
/* 80A89B18  42 00 FF F4 */	bdnz lbl_80A89B0C
/* 80A89B1C  88 1D 06 F8 */	lbz r0, 0x6f8(r29)
/* 80A89B20  7C 00 07 75 */	extsb. r0, r0
/* 80A89B24  41 82 00 18 */	beq lbl_80A89B3C
/* 80A89B28  3C 60 80 A9 */	lis r3, s_bl_sub__FPvPv@ha /* 0x80A899C0@ha */
/* 80A89B2C  38 63 99 C0 */	addi r3, r3, s_bl_sub__FPvPv@l /* 0x80A899C0@l */
/* 80A89B30  7F A4 EB 78 */	mr r4, r29
/* 80A89B34  4B 59 78 05 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A89B38  48 00 00 14 */	b lbl_80A89B4C
lbl_80A89B3C:
/* 80A89B3C  3C 60 80 A9 */	lis r3, s_ss_sub__FPvPv@ha /* 0x80A89A38@ha */
/* 80A89B40  38 63 9A 38 */	addi r3, r3, s_ss_sub__FPvPv@l /* 0x80A89A38@l */
/* 80A89B44  7F A4 EB 78 */	mr r4, r29
/* 80A89B48  4B 59 77 F1 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_80A89B4C:
/* 80A89B4C  C3 DF 00 30 */	lfs f30, 0x30(r31)
/* 80A89B50  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 80A89B54  2C 00 00 00 */	cmpwi r0, 0
/* 80A89B58  41 82 01 94 */	beq lbl_80A89CEC
/* 80A89B5C  3B 00 00 00 */	li r24, 0
/* 80A89B60  48 00 01 70 */	b lbl_80A89CD0
lbl_80A89B64:
/* 80A89B64  57 1B 10 3A */	slwi r27, r24, 2
/* 80A89B68  7F 3C D8 2E */	lwzx r25, r28, r27
/* 80A89B6C  C0 99 04 D0 */	lfs f4, 0x4d0(r25)
/* 80A89B70  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80A89B74  EC 64 00 28 */	fsubs f3, f4, f0
/* 80A89B78  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80A89B7C  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80A89B80  EC 3F 00 2A */	fadds f1, f31, f0
/* 80A89B84  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80A89B88  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A89B8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A89B90  C0 39 04 D8 */	lfs f1, 0x4d8(r25)
/* 80A89B94  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80A89B98  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A89B9C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A89BA0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A89BA4  EC 04 00 28 */	fsubs f0, f4, f0
/* 80A89BA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A89BAC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A89BB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A89BB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A89BB8  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80A89BBC  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80A89BC0  EC 41 00 2A */	fadds f2, f1, f0
/* 80A89BC4  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 80A89BC8  40 81 00 0C */	ble lbl_80A89BD4
/* 80A89BCC  FC 00 10 34 */	frsqrte f0, f2
/* 80A89BD0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A89BD4:
/* 80A89BD4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A89BD8  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A89BDC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A89BE0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A89BE4  EC 61 00 2A */	fadds f3, f1, f0
/* 80A89BE8  FC 03 E8 40 */	fcmpo cr0, f3, f29
/* 80A89BEC  40 81 00 0C */	ble lbl_80A89BF8
/* 80A89BF0  FC 00 18 34 */	frsqrte f0, f3
/* 80A89BF4  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_80A89BF8:
/* 80A89BF8  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 80A89BFC  40 80 00 A4 */	bge lbl_80A89CA0
/* 80A89C00  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80A89C04  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 80A89C08  EC 01 00 2A */	fadds f0, f1, f0
/* 80A89C0C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80A89C10  41 81 00 90 */	bgt lbl_80A89CA0
/* 80A89C14  3B 5E 00 7C */	addi r26, r30, 0x7c
/* 80A89C18  7C 1A D8 2E */	lwzx r0, r26, r27
/* 80A89C1C  2C 00 00 00 */	cmpwi r0, 0
/* 80A89C20  40 82 00 18 */	bne lbl_80A89C38
/* 80A89C24  7F A3 EB 78 */	mr r3, r29
/* 80A89C28  7F 24 CB 78 */	mr r4, r25
/* 80A89C2C  4B FF F5 71 */	bl other_bg_check__FP10fopAc_ac_cP10fopAc_ac_c
/* 80A89C30  2C 03 00 00 */	cmpwi r3, 0
/* 80A89C34  41 82 00 10 */	beq lbl_80A89C44
lbl_80A89C38:
/* 80A89C38  38 00 00 01 */	li r0, 1
/* 80A89C3C  7C 1A D9 2E */	stwx r0, r26, r27
/* 80A89C40  48 00 00 60 */	b lbl_80A89CA0
lbl_80A89C44:
/* 80A89C44  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80A89C48  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80A89C4C  EC 21 00 2A */	fadds f1, f1, f0
/* 80A89C50  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80A89C54  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A89C58  FC 00 02 10 */	fabs f0, f0
/* 80A89C5C  FC 20 00 18 */	frsp f1, f0
/* 80A89C60  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A89C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A89C68  4C 40 13 82 */	cror 2, 0, 2
/* 80A89C6C  40 82 00 34 */	bne lbl_80A89CA0
/* 80A89C70  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A89C74  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80A89C78  4B 7D D9 FD */	bl cM_atan2s__Fff
/* 80A89C7C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80A89C80  7C 03 00 50 */	subf r0, r3, r0
/* 80A89C84  7C 00 07 34 */	extsh r0, r0
/* 80A89C88  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A89C8C  40 80 00 14 */	bge lbl_80A89CA0
/* 80A89C90  2C 00 C0 00 */	cmpwi r0, -16384
/* 80A89C94  40 81 00 0C */	ble lbl_80A89CA0
/* 80A89C98  7F 23 CB 78 */	mr r3, r25
/* 80A89C9C  48 00 00 5C */	b lbl_80A89CF8
lbl_80A89CA0:
/* 80A89CA0  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 80A89CA4  3B 18 00 01 */	addi r24, r24, 1
/* 80A89CA8  7C 18 00 00 */	cmpw r24, r0
/* 80A89CAC  40 82 00 30 */	bne lbl_80A89CDC
/* 80A89CB0  3B 00 00 00 */	li r24, 0
/* 80A89CB4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A89CB8  EF DE 00 2A */	fadds f30, f30, f0
/* 80A89CBC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80A89CC0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80A89CC4  40 81 00 18 */	ble lbl_80A89CDC
/* 80A89CC8  38 60 00 00 */	li r3, 0
/* 80A89CCC  48 00 00 2C */	b lbl_80A89CF8
lbl_80A89CD0:
/* 80A89CD0  3B 9E 00 68 */	addi r28, r30, 0x68
/* 80A89CD4  C3 FF 00 20 */	lfs f31, 0x20(r31)
/* 80A89CD8  C3 BF 00 10 */	lfs f29, 0x10(r31)
lbl_80A89CDC:
/* 80A89CDC  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 80A89CE0  7C 18 00 00 */	cmpw r24, r0
/* 80A89CE4  41 80 FE 80 */	blt lbl_80A89B64
/* 80A89CE8  48 00 00 0C */	b lbl_80A89CF4
lbl_80A89CEC:
/* 80A89CEC  38 60 00 00 */	li r3, 0
/* 80A89CF0  48 00 00 08 */	b lbl_80A89CF8
lbl_80A89CF4:
/* 80A89CF4  38 60 00 00 */	li r3, 0
lbl_80A89CF8:
/* 80A89CF8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A89CFC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A89D00  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80A89D04  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80A89D08  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80A89D0C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80A89D10  39 61 00 40 */	addi r11, r1, 0x40
/* 80A89D14  4B 8D 85 01 */	bl _restgpr_24
/* 80A89D18  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A89D1C  7C 08 03 A6 */	mtlr r0
/* 80A89D20  38 21 00 70 */	addi r1, r1, 0x70
/* 80A89D24  4E 80 00 20 */	blr 
