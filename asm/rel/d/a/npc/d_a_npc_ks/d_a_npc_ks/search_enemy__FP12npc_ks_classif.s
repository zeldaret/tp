lbl_80A49C00:
/* 80A49C00  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80A49C04  7C 08 02 A6 */	mflr r0
/* 80A49C08  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A49C0C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80A49C10  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80A49C14  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80A49C18  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80A49C1C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80A49C20  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80A49C24  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80A49C28  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80A49C2C  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 80A49C30  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 80A49C34  39 61 00 40 */	addi r11, r1, 0x40
/* 80A49C38  4B 91 85 8C */	b _savegpr_23
/* 80A49C3C  7C 7D 1B 78 */	mr r29, r3
/* 80A49C40  7C 9C 23 78 */	mr r28, r4
/* 80A49C44  FF A0 08 90 */	fmr f29, f1
/* 80A49C48  3C 60 80 A6 */	lis r3, lit_1109@ha
/* 80A49C4C  3B C3 FE 48 */	addi r30, r3, lit_1109@l
/* 80A49C50  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A49C54  3B E3 DE FC */	addi r31, r3, lit_4030@l
/* 80A49C58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A49C5C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80A49C60  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80A49C64  28 00 00 00 */	cmplwi r0, 0
/* 80A49C68  41 82 00 24 */	beq lbl_80A49C8C
/* 80A49C6C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80A49C70  83 63 10 18 */	lwz r27, m_midnaActor__9daPy_py_c@l(r3)
/* 80A49C74  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80A49C78  4B 5D 1E 9C */	b fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 80A49C7C  7C 03 D8 40 */	cmplw r3, r27
/* 80A49C80  41 82 00 0C */	beq lbl_80A49C8C
/* 80A49C84  38 60 00 00 */	li r3, 0
/* 80A49C88  48 00 01 B0 */	b lbl_80A49E38
lbl_80A49C8C:
/* 80A49C8C  38 C0 00 00 */	li r6, 0
/* 80A49C90  90 DE 00 D0 */	stw r6, 0xd0(r30)
/* 80A49C94  7C C3 33 78 */	mr r3, r6
/* 80A49C98  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 80A49C9C  38 9E 00 D4 */	addi r4, r30, 0xd4
/* 80A49CA0  38 00 00 0A */	li r0, 0xa
/* 80A49CA4  7C 09 03 A6 */	mtctr r0
lbl_80A49CA8:
/* 80A49CA8  7C C5 19 2E */	stwx r6, r5, r3
/* 80A49CAC  7C C4 19 2E */	stwx r6, r4, r3
/* 80A49CB0  38 63 00 04 */	addi r3, r3, 4
/* 80A49CB4  42 00 FF F4 */	bdnz lbl_80A49CA8
/* 80A49CB8  3C 60 80 A5 */	lis r3, s_e_sub__FPvPv@ha
/* 80A49CBC  38 63 9B 90 */	addi r3, r3, s_e_sub__FPvPv@l
/* 80A49CC0  7F A4 EB 78 */	mr r4, r29
/* 80A49CC4  4B 5D 76 74 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A49CC8  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 80A49CCC  C3 DF 00 14 */	lfs f30, 0x14(r31)
/* 80A49CD0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A49CD4  2C 00 00 01 */	cmpwi r0, 1
/* 80A49CD8  40 82 00 08 */	bne lbl_80A49CE0
/* 80A49CDC  C3 DF 00 48 */	lfs f30, 0x48(r31)
lbl_80A49CE0:
/* 80A49CE0  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 80A49CE4  2C 00 00 00 */	cmpwi r0, 0
/* 80A49CE8  41 82 01 44 */	beq lbl_80A49E2C
/* 80A49CEC  3A E0 00 00 */	li r23, 0
/* 80A49CF0  48 00 01 20 */	b lbl_80A49E10
lbl_80A49CF4:
/* 80A49CF4  56 FA 10 3A */	slwi r26, r23, 2
/* 80A49CF8  7F 1B D0 2E */	lwzx r24, r27, r26
/* 80A49CFC  C0 38 04 D0 */	lfs f1, 0x4d0(r24)
/* 80A49D00  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80A49D04  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A49D08  D0 41 00 08 */	stfs f2, 8(r1)
/* 80A49D0C  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80A49D10  EC 3B 00 2A */	fadds f1, f27, f0
/* 80A49D14  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80A49D18  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A49D1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A49D20  C0 38 04 D8 */	lfs f1, 0x4d8(r24)
/* 80A49D24  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80A49D28  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A49D2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A49D30  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A49D34  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A49D38  EC 21 00 2A */	fadds f1, f1, f0
/* 80A49D3C  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 80A49D40  40 81 00 0C */	ble lbl_80A49D4C
/* 80A49D44  FC 00 08 34 */	frsqrte f0, f1
/* 80A49D48  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A49D4C:
/* 80A49D4C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A49D50  40 80 00 94 */	bge lbl_80A49DE4
/* 80A49D54  2C 1C 00 00 */	cmpwi r28, 0
/* 80A49D58  40 82 00 0C */	bne lbl_80A49D64
/* 80A49D5C  7F 03 C3 78 */	mr r3, r24
/* 80A49D60  48 00 00 D8 */	b lbl_80A49E38
lbl_80A49D64:
/* 80A49D64  3B 3E 00 D4 */	addi r25, r30, 0xd4
/* 80A49D68  7C 19 D0 2E */	lwzx r0, r25, r26
/* 80A49D6C  2C 00 00 00 */	cmpwi r0, 0
/* 80A49D70  40 82 00 18 */	bne lbl_80A49D88
/* 80A49D74  7F A3 EB 78 */	mr r3, r29
/* 80A49D78  7F 04 C3 78 */	mr r4, r24
/* 80A49D7C  4B 5D 30 80 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A49D80  2C 03 00 00 */	cmpwi r3, 0
/* 80A49D84  41 82 00 10 */	beq lbl_80A49D94
lbl_80A49D88:
/* 80A49D88  38 00 00 01 */	li r0, 1
/* 80A49D8C  7C 19 D1 2E */	stwx r0, r25, r26
/* 80A49D90  48 00 00 54 */	b lbl_80A49DE4
lbl_80A49D94:
/* 80A49D94  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A49D98  FC 00 02 10 */	fabs f0, f0
/* 80A49D9C  FC 00 00 18 */	frsp f0, f0
/* 80A49DA0  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80A49DA4  4C 40 13 82 */	cror 2, 0, 2
/* 80A49DA8  40 82 00 3C */	bne lbl_80A49DE4
/* 80A49DAC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A49DB0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A49DB4  4B 81 D8 C0 */	b cM_atan2s__Fff
/* 80A49DB8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80A49DBC  7C 03 00 50 */	subf r0, r3, r0
/* 80A49DC0  7C 00 07 35 */	extsh. r0, r0
/* 80A49DC4  40 80 00 0C */	bge lbl_80A49DD0
/* 80A49DC8  7C 00 00 D0 */	neg r0, r0
/* 80A49DCC  7C 00 07 34 */	extsh r0, r0
lbl_80A49DD0:
/* 80A49DD0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80A49DD4  28 00 4E 20 */	cmplwi r0, 0x4e20
/* 80A49DD8  40 80 00 0C */	bge lbl_80A49DE4
/* 80A49DDC  7F 03 C3 78 */	mr r3, r24
/* 80A49DE0  48 00 00 58 */	b lbl_80A49E38
lbl_80A49DE4:
/* 80A49DE4  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 80A49DE8  3A F7 00 01 */	addi r23, r23, 1
/* 80A49DEC  7C 17 00 00 */	cmpw r23, r0
/* 80A49DF0  40 82 00 2C */	bne lbl_80A49E1C
/* 80A49DF4  3A E0 00 00 */	li r23, 0
/* 80A49DF8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80A49DFC  EF FF 00 2A */	fadds f31, f31, f0
/* 80A49E00  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 80A49E04  40 81 00 18 */	ble lbl_80A49E1C
/* 80A49E08  38 60 00 00 */	li r3, 0
/* 80A49E0C  48 00 00 2C */	b lbl_80A49E38
lbl_80A49E10:
/* 80A49E10  3B 7E 00 A8 */	addi r27, r30, 0xa8
/* 80A49E14  C3 7F 00 40 */	lfs f27, 0x40(r31)
/* 80A49E18  C3 9F 00 30 */	lfs f28, 0x30(r31)
lbl_80A49E1C:
/* 80A49E1C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 80A49E20  7C 17 00 00 */	cmpw r23, r0
/* 80A49E24  41 80 FE D0 */	blt lbl_80A49CF4
/* 80A49E28  48 00 00 0C */	b lbl_80A49E34
lbl_80A49E2C:
/* 80A49E2C  38 60 00 00 */	li r3, 0
/* 80A49E30  48 00 00 08 */	b lbl_80A49E38
lbl_80A49E34:
/* 80A49E34  38 60 00 00 */	li r3, 0
lbl_80A49E38:
/* 80A49E38  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80A49E3C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80A49E40  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80A49E44  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80A49E48  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80A49E4C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80A49E50  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80A49E54  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80A49E58  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 80A49E5C  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 80A49E60  39 61 00 40 */	addi r11, r1, 0x40
/* 80A49E64  4B 91 83 AC */	b _restgpr_23
/* 80A49E68  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80A49E6C  7C 08 03 A6 */	mtlr r0
/* 80A49E70  38 21 00 90 */	addi r1, r1, 0x90
/* 80A49E74  4E 80 00 20 */	blr 
