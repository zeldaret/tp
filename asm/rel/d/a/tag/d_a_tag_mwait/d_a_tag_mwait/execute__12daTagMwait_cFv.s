lbl_80D5C0A8:
/* 80D5C0A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D5C0AC  7C 08 02 A6 */	mflr r0
/* 80D5C0B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D5C0B4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80D5C0B8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80D5C0BC  39 61 00 40 */	addi r11, r1, 0x40
/* 80D5C0C0  4B 60 61 18 */	b _savegpr_28
/* 80D5C0C4  7C 7C 1B 78 */	mr r28, r3
/* 80D5C0C8  3C 80 80 D6 */	lis r4, lit_3841@ha
/* 80D5C0CC  3B E4 C5 80 */	addi r31, r4, lit_3841@l
/* 80D5C0D0  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 80D5C0D4  83 A4 10 18 */	lwz r29, m_midnaActor__9daPy_py_c@l(r4)
/* 80D5C0D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D5C0DC  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 80D5C0E0  83 C5 5D B4 */	lwz r30, 0x5db4(r5)
/* 80D5C0E4  28 1D 00 00 */	cmplwi r29, 0
/* 80D5C0E8  40 82 00 0C */	bne lbl_80D5C0F4
/* 80D5C0EC  38 60 00 01 */	li r3, 1
/* 80D5C0F0  48 00 04 40 */	b lbl_80D5C530
lbl_80D5C0F4:
/* 80D5C0F4  38 80 00 00 */	li r4, 0
/* 80D5C0F8  90 9C 05 5C */	stw r4, 0x55c(r28)
/* 80D5C0FC  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D5C100  28 00 00 01 */	cmplwi r0, 1
/* 80D5C104  40 82 00 98 */	bne lbl_80D5C19C
/* 80D5C108  88 1C 05 6C */	lbz r0, 0x56c(r28)
/* 80D5C10C  28 00 00 00 */	cmplwi r0, 0
/* 80D5C110  41 82 00 10 */	beq lbl_80D5C120
/* 80D5C114  A0 1D 05 E4 */	lhz r0, 0x5e4(r29)
/* 80D5C118  28 00 01 CA */	cmplwi r0, 0x1ca
/* 80D5C11C  41 82 04 10 */	beq lbl_80D5C52C
lbl_80D5C120:
/* 80D5C120  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80D5C124  28 00 00 00 */	cmplwi r0, 0
/* 80D5C128  40 82 00 2C */	bne lbl_80D5C154
/* 80D5C12C  38 7C 05 80 */	addi r3, r28, 0x580
/* 80D5C130  7F 84 E3 78 */	mr r4, r28
/* 80D5C134  A8 1C 04 E8 */	lha r0, 0x4e8(r28)
/* 80D5C138  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80D5C13C  38 C0 00 00 */	li r6, 0
/* 80D5C140  38 E0 00 00 */	li r7, 0
/* 80D5C144  4B 4E DE 4C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D5C148  38 00 00 01 */	li r0, 1
/* 80D5C14C  98 1C 05 6A */	stb r0, 0x56a(r28)
/* 80D5C150  48 00 03 DC */	b lbl_80D5C52C
lbl_80D5C154:
/* 80D5C154  38 7C 05 80 */	addi r3, r28, 0x580
/* 80D5C158  7F 84 E3 78 */	mr r4, r28
/* 80D5C15C  38 A0 00 00 */	li r5, 0
/* 80D5C160  38 C0 00 00 */	li r6, 0
/* 80D5C164  4B 4E E1 74 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D5C168  2C 03 00 00 */	cmpwi r3, 0
/* 80D5C16C  41 82 03 C0 */	beq lbl_80D5C52C
/* 80D5C170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5C174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5C178  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D5C17C  4B 2E 62 EC */	b reset__14dEvt_control_cFv
/* 80D5C180  88 1C 05 6C */	lbz r0, 0x56c(r28)
/* 80D5C184  28 00 00 00 */	cmplwi r0, 0
/* 80D5C188  41 82 03 A4 */	beq lbl_80D5C52C
/* 80D5C18C  7F 83 E3 78 */	mr r3, r28
/* 80D5C190  4B 2B DA EC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D5C194  38 60 00 01 */	li r3, 1
/* 80D5C198  48 00 03 98 */	b lbl_80D5C530
lbl_80D5C19C:
/* 80D5C19C  88 1C 05 6C */	lbz r0, 0x56c(r28)
/* 80D5C1A0  28 00 00 00 */	cmplwi r0, 0
/* 80D5C1A4  41 82 00 50 */	beq lbl_80D5C1F4
/* 80D5C1A8  38 80 00 00 */	li r4, 0
/* 80D5C1AC  38 A0 00 00 */	li r5, 0
/* 80D5C1B0  4B 2B EF EC */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80D5C1B4  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80D5C1B8  60 00 00 01 */	ori r0, r0, 1
/* 80D5C1BC  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80D5C1C0  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80D5C1C4  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80D5C1C8  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80D5C1CC  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80D5C1D0  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80D5C1D4  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 80D5C1D8  C0 1C 05 50 */	lfs f0, 0x550(r28)
/* 80D5C1DC  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 80D5C1E0  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 80D5C1E4  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 80D5C1E8  C0 1C 05 58 */	lfs f0, 0x558(r28)
/* 80D5C1EC  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80D5C1F0  48 00 03 3C */	b lbl_80D5C52C
lbl_80D5C1F4:
/* 80D5C1F4  98 9C 05 6A */	stb r4, 0x56a(r28)
/* 80D5C1F8  80 65 5D B4 */	lwz r3, 0x5db4(r5)
/* 80D5C1FC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D5C200  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D5C204  41 82 03 28 */	beq lbl_80D5C52C
/* 80D5C208  28 1D 00 00 */	cmplwi r29, 0
/* 80D5C20C  41 82 03 20 */	beq lbl_80D5C52C
/* 80D5C210  7C A3 2B 78 */	mr r3, r5
/* 80D5C214  88 9C 05 68 */	lbz r4, 0x568(r28)
/* 80D5C218  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D5C21C  7C 05 07 74 */	extsb r5, r0
/* 80D5C220  4B 2D 91 40 */	b isSwitch__10dSv_info_cCFii
/* 80D5C224  2C 03 00 00 */	cmpwi r3, 0
/* 80D5C228  41 82 03 04 */	beq lbl_80D5C52C
/* 80D5C22C  88 1C 05 6B */	lbz r0, 0x56b(r28)
/* 80D5C230  28 00 00 01 */	cmplwi r0, 1
/* 80D5C234  40 82 00 38 */	bne lbl_80D5C26C
/* 80D5C238  C0 1C 05 74 */	lfs f0, 0x574(r28)
/* 80D5C23C  D0 1D 09 AC */	stfs f0, 0x9ac(r29)
/* 80D5C240  C0 1C 05 78 */	lfs f0, 0x578(r28)
/* 80D5C244  D0 1D 09 B0 */	stfs f0, 0x9b0(r29)
/* 80D5C248  C0 1C 05 7C */	lfs f0, 0x57c(r28)
/* 80D5C24C  D0 1D 09 B4 */	stfs f0, 0x9b4(r29)
/* 80D5C250  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 80D5C254  60 00 04 00 */	ori r0, r0, 0x400
/* 80D5C258  90 1D 08 90 */	stw r0, 0x890(r29)
/* 80D5C25C  80 1D 08 98 */	lwz r0, 0x898(r29)
/* 80D5C260  60 00 00 02 */	ori r0, r0, 2
/* 80D5C264  90 1D 08 98 */	stw r0, 0x898(r29)
/* 80D5C268  48 00 00 28 */	b lbl_80D5C290
lbl_80D5C26C:
/* 80D5C26C  C0 1C 05 74 */	lfs f0, 0x574(r28)
/* 80D5C270  D0 1D 09 AC */	stfs f0, 0x9ac(r29)
/* 80D5C274  C0 1C 05 78 */	lfs f0, 0x578(r28)
/* 80D5C278  D0 1D 09 B0 */	stfs f0, 0x9b0(r29)
/* 80D5C27C  C0 1C 05 7C */	lfs f0, 0x57c(r28)
/* 80D5C280  D0 1D 09 B4 */	stfs f0, 0x9b4(r29)
/* 80D5C284  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 80D5C288  60 00 04 00 */	ori r0, r0, 0x400
/* 80D5C28C  90 1D 08 90 */	stw r0, 0x890(r29)
lbl_80D5C290:
/* 80D5C290  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D5C294  38 9C 05 74 */	addi r4, r28, 0x574
/* 80D5C298  4B 5E B1 04 */	b PSVECSquareDistance
/* 80D5C29C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D5C2A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5C2A4  40 81 00 58 */	ble lbl_80D5C2FC
/* 80D5C2A8  FC 00 08 34 */	frsqrte f0, f1
/* 80D5C2AC  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80D5C2B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5C2B4  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80D5C2B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5C2BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5C2C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5C2C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5C2C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5C2CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5C2D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5C2D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5C2D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5C2DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5C2E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5C2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5C2E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5C2EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5C2F0  FC 21 00 32 */	fmul f1, f1, f0
/* 80D5C2F4  FC 20 08 18 */	frsp f1, f1
/* 80D5C2F8  48 00 00 88 */	b lbl_80D5C380
lbl_80D5C2FC:
/* 80D5C2FC  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80D5C300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5C304  40 80 00 10 */	bge lbl_80D5C314
/* 80D5C308  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D5C30C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D5C310  48 00 00 70 */	b lbl_80D5C380
lbl_80D5C314:
/* 80D5C314  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D5C318  80 81 00 08 */	lwz r4, 8(r1)
/* 80D5C31C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D5C320  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D5C324  7C 03 00 00 */	cmpw r3, r0
/* 80D5C328  41 82 00 14 */	beq lbl_80D5C33C
/* 80D5C32C  40 80 00 40 */	bge lbl_80D5C36C
/* 80D5C330  2C 03 00 00 */	cmpwi r3, 0
/* 80D5C334  41 82 00 20 */	beq lbl_80D5C354
/* 80D5C338  48 00 00 34 */	b lbl_80D5C36C
lbl_80D5C33C:
/* 80D5C33C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5C340  41 82 00 0C */	beq lbl_80D5C34C
/* 80D5C344  38 00 00 01 */	li r0, 1
/* 80D5C348  48 00 00 28 */	b lbl_80D5C370
lbl_80D5C34C:
/* 80D5C34C  38 00 00 02 */	li r0, 2
/* 80D5C350  48 00 00 20 */	b lbl_80D5C370
lbl_80D5C354:
/* 80D5C354  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5C358  41 82 00 0C */	beq lbl_80D5C364
/* 80D5C35C  38 00 00 05 */	li r0, 5
/* 80D5C360  48 00 00 10 */	b lbl_80D5C370
lbl_80D5C364:
/* 80D5C364  38 00 00 03 */	li r0, 3
/* 80D5C368  48 00 00 08 */	b lbl_80D5C370
lbl_80D5C36C:
/* 80D5C36C  38 00 00 04 */	li r0, 4
lbl_80D5C370:
/* 80D5C370  2C 00 00 01 */	cmpwi r0, 1
/* 80D5C374  40 82 00 0C */	bne lbl_80D5C380
/* 80D5C378  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D5C37C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D5C380:
/* 80D5C380  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D5C384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5C388  40 80 01 A4 */	bge lbl_80D5C52C
/* 80D5C38C  88 1C 05 6D */	lbz r0, 0x56d(r28)
/* 80D5C390  28 00 00 01 */	cmplwi r0, 1
/* 80D5C394  40 82 00 10 */	bne lbl_80D5C3A4
/* 80D5C398  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 80D5C39C  64 00 80 00 */	oris r0, r0, 0x8000
/* 80D5C3A0  90 1D 08 90 */	stw r0, 0x890(r29)
lbl_80D5C3A4:
/* 80D5C3A4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80D5C3A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D5C3AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D5C3B0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D5C3B4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D5C3B8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D5C3BC  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80D5C3C0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80D5C3C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D5C3C8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D5C3CC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80D5C3D0  38 61 00 0C */	addi r3, r1, 0xc
/* 80D5C3D4  38 81 00 18 */	addi r4, r1, 0x18
/* 80D5C3D8  4B 5E AF C4 */	b PSVECSquareDistance
/* 80D5C3DC  FF E0 08 90 */	fmr f31, f1
/* 80D5C3E0  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 80D5C3E4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D5C3E8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D5C3EC  4C 40 13 82 */	cror 2, 0, 2
/* 80D5C3F0  40 82 00 2C */	bne lbl_80D5C41C
/* 80D5C3F4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D5C3F8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80D5C3FC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80D5C400  4C 41 13 82 */	cror 2, 1, 2
/* 80D5C404  40 82 00 18 */	bne lbl_80D5C41C
/* 80D5C408  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 80D5C40C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D5C410  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D5C414  4C 40 13 82 */	cror 2, 0, 2
/* 80D5C418  41 82 00 24 */	beq lbl_80D5C43C
lbl_80D5C41C:
/* 80D5C41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5C420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5C424  88 9C 05 69 */	lbz r4, 0x569(r28)
/* 80D5C428  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D5C42C  7C 05 07 74 */	extsb r5, r0
/* 80D5C430  4B 2D 8F 30 */	b isSwitch__10dSv_info_cCFii
/* 80D5C434  2C 03 00 00 */	cmpwi r3, 0
/* 80D5C438  41 82 00 A0 */	beq lbl_80D5C4D8
lbl_80D5C43C:
/* 80D5C43C  80 9D 08 90 */	lwz r4, 0x890(r29)
/* 80D5C440  3C 60 78 00 */	lis r3, 0x7800 /* 0x77FFFBFF@ha */
/* 80D5C444  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0x77FFFBFF@l */
/* 80D5C448  7C 80 00 38 */	and r0, r4, r0
/* 80D5C44C  90 1D 08 90 */	stw r0, 0x890(r29)
/* 80D5C450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5C454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5C458  88 9C 05 69 */	lbz r4, 0x569(r28)
/* 80D5C45C  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D5C460  7C 05 07 74 */	extsb r5, r0
/* 80D5C464  4B 2D 8D 9C */	b onSwitch__10dSv_info_cFii
/* 80D5C468  38 00 00 01 */	li r0, 1
/* 80D5C46C  98 1C 05 6C */	stb r0, 0x56c(r28)
/* 80D5C470  A8 1C 04 E8 */	lha r0, 0x4e8(r28)
/* 80D5C474  2C 00 00 00 */	cmpwi r0, 0
/* 80D5C478  40 82 00 10 */	bne lbl_80D5C488
/* 80D5C47C  7F 83 E3 78 */	mr r3, r28
/* 80D5C480  4B 2B D7 FC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D5C484  48 00 00 A8 */	b lbl_80D5C52C
lbl_80D5C488:
/* 80D5C488  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80D5C48C  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80D5C490  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80D5C494  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80D5C498  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80D5C49C  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 80D5C4A0  C0 1C 05 50 */	lfs f0, 0x550(r28)
/* 80D5C4A4  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 80D5C4A8  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 80D5C4AC  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 80D5C4B0  C0 1C 05 58 */	lfs f0, 0x558(r28)
/* 80D5C4B4  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80D5C4B8  7F 83 E3 78 */	mr r3, r28
/* 80D5C4BC  38 80 00 00 */	li r4, 0
/* 80D5C4C0  38 A0 00 00 */	li r5, 0
/* 80D5C4C4  4B 2B EC D8 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80D5C4C8  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80D5C4CC  60 00 00 01 */	ori r0, r0, 1
/* 80D5C4D0  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80D5C4D4  48 00 00 58 */	b lbl_80D5C52C
lbl_80D5C4D8:
/* 80D5C4D8  C0 3C 05 70 */	lfs f1, 0x570(r28)
/* 80D5C4DC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D5C4E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5C4E4  40 81 00 48 */	ble lbl_80D5C52C
/* 80D5C4E8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80D5C4EC  40 80 00 40 */	bge lbl_80D5C52C
/* 80D5C4F0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D5C4F4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80D5C4F8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80D5C4FC  4C 41 13 82 */	cror 2, 1, 2
/* 80D5C500  40 82 00 2C */	bne lbl_80D5C52C
/* 80D5C504  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 80D5C508  EC 01 00 2A */	fadds f0, f1, f0
/* 80D5C50C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D5C510  4C 40 13 82 */	cror 2, 0, 2
/* 80D5C514  40 82 00 18 */	bne lbl_80D5C52C
/* 80D5C518  38 00 00 02 */	li r0, 2
/* 80D5C51C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80D5C520  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80D5C524  60 00 00 01 */	ori r0, r0, 1
/* 80D5C528  B0 1C 00 FA */	sth r0, 0xfa(r28)
lbl_80D5C52C:
/* 80D5C52C  38 60 00 01 */	li r3, 1
lbl_80D5C530:
/* 80D5C530  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80D5C534  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80D5C538  39 61 00 40 */	addi r11, r1, 0x40
/* 80D5C53C  4B 60 5C E8 */	b _restgpr_28
/* 80D5C540  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D5C544  7C 08 03 A6 */	mtlr r0
/* 80D5C548  38 21 00 50 */	addi r1, r1, 0x50
/* 80D5C54C  4E 80 00 20 */	blr 
