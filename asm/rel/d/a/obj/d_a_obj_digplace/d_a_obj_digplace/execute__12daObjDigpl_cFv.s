lbl_8057C1EC:
/* 8057C1EC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8057C1F0  7C 08 02 A6 */	mflr r0
/* 8057C1F4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8057C1F8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8057C1FC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8057C200  39 61 00 70 */	addi r11, r1, 0x70
/* 8057C204  4B DE 5F C8 */	b _savegpr_25
/* 8057C208  7C 79 1B 78 */	mr r25, r3
/* 8057C20C  3C 60 80 58 */	lis r3, lit_3822@ha
/* 8057C210  3B A3 C8 B0 */	addi r29, r3, lit_3822@l
/* 8057C214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057C218  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8057C21C  83 9E 5D B4 */	lwz r28, 0x5db4(r30)
/* 8057C220  88 19 05 6A */	lbz r0, 0x56a(r25)
/* 8057C224  28 00 00 01 */	cmplwi r0, 1
/* 8057C228  40 82 01 54 */	bne lbl_8057C37C
/* 8057C22C  88 99 05 69 */	lbz r4, 0x569(r25)
/* 8057C230  28 04 00 FF */	cmplwi r4, 0xff
/* 8057C234  41 82 00 14 */	beq lbl_8057C248
/* 8057C238  7F C3 F3 78 */	mr r3, r30
/* 8057C23C  88 19 04 BA */	lbz r0, 0x4ba(r25)
/* 8057C240  7C 05 07 74 */	extsb r5, r0
/* 8057C244  4B AB 8F BC */	b onSwitch__10dSv_info_cFii
lbl_8057C248:
/* 8057C248  C0 59 04 D8 */	lfs f2, 0x4d8(r25)
/* 8057C24C  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 8057C250  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8057C254  EC 21 00 28 */	fsubs f1, f1, f0
/* 8057C258  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 8057C25C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8057C260  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8057C264  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8057C268  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 8057C26C  28 03 00 00 */	cmplwi r3, 0
/* 8057C270  41 82 00 18 */	beq lbl_8057C288
/* 8057C274  80 63 00 08 */	lwz r3, 8(r3)
/* 8057C278  88 19 05 6C */	lbz r0, 0x56c(r25)
/* 8057C27C  54 00 20 36 */	slwi r0, r0, 4
/* 8057C280  7C 83 00 AE */	lbzx r4, r3, r0
/* 8057C284  48 00 00 10 */	b lbl_8057C294
lbl_8057C288:
/* 8057C288  80 19 00 B0 */	lwz r0, 0xb0(r25)
/* 8057C28C  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 8057C290  7C 04 03 78 */	mr r4, r0
lbl_8057C294:
/* 8057C294  88 19 05 68 */	lbz r0, 0x568(r25)
/* 8057C298  28 00 00 00 */	cmplwi r0, 0
/* 8057C29C  40 82 00 2C */	bne lbl_8057C2C8
/* 8057C2A0  38 61 00 3C */	addi r3, r1, 0x3c
/* 8057C2A4  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8057C2A8  38 A0 FF FF */	li r5, -1
/* 8057C2AC  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8057C2B0  7C 06 07 74 */	extsb r6, r0
/* 8057C2B4  38 FC 04 E4 */	addi r7, r28, 0x4e4
/* 8057C2B8  39 00 00 00 */	li r8, 0
/* 8057C2BC  39 20 00 09 */	li r9, 9
/* 8057C2C0  4B A9 FF 80 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 8057C2C4  48 00 00 40 */	b lbl_8057C304
lbl_8057C2C8:
/* 8057C2C8  28 00 00 02 */	cmplwi r0, 2
/* 8057C2CC  40 82 00 38 */	bne lbl_8057C304
/* 8057C2D0  38 00 00 00 */	li r0, 0
/* 8057C2D4  90 01 00 08 */	stw r0, 8(r1)
/* 8057C2D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057C2DC  38 61 00 3C */	addi r3, r1, 0x3c
/* 8057C2E0  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8057C2E4  38 A0 FF FF */	li r5, -1
/* 8057C2E8  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8057C2EC  7C 06 07 74 */	extsb r6, r0
/* 8057C2F0  38 FC 04 E4 */	addi r7, r28, 0x4e4
/* 8057C2F4  39 00 00 09 */	li r8, 9
/* 8057C2F8  39 20 00 00 */	li r9, 0
/* 8057C2FC  39 40 00 00 */	li r10, 0
/* 8057C300  4B A9 FC 64 */	b fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
lbl_8057C304:
/* 8057C304  88 19 05 68 */	lbz r0, 0x568(r25)
/* 8057C308  28 00 00 01 */	cmplwi r0, 1
/* 8057C30C  40 82 00 10 */	bne lbl_8057C31C
/* 8057C310  38 00 00 02 */	li r0, 2
/* 8057C314  98 19 05 6A */	stb r0, 0x56a(r25)
/* 8057C318  48 00 00 64 */	b lbl_8057C37C
lbl_8057C31C:
/* 8057C31C  80 19 05 B8 */	lwz r0, 0x5b8(r25)
/* 8057C320  28 00 00 00 */	cmplwi r0, 0
/* 8057C324  41 82 00 48 */	beq lbl_8057C36C
/* 8057C328  88 79 05 6C */	lbz r3, 0x56c(r25)
/* 8057C32C  7C 60 2E 70 */	srawi r0, r3, 5
/* 8057C330  54 00 10 3A */	slwi r0, r0, 2
/* 8057C334  7C D9 02 14 */	add r6, r25, r0
/* 8057C338  80 A6 05 A0 */	lwz r5, 0x5a0(r6)
/* 8057C33C  38 80 00 01 */	li r4, 1
/* 8057C340  54 60 D8 08 */	slwi r0, r3, 0x1b
/* 8057C344  54 63 0F FE */	srwi r3, r3, 0x1f
/* 8057C348  7C 03 00 50 */	subf r0, r3, r0
/* 8057C34C  54 00 28 3E */	rotlwi r0, r0, 5
/* 8057C350  7C 00 1A 14 */	add r0, r0, r3
/* 8057C354  7C 80 00 30 */	slw r0, r4, r0
/* 8057C358  7C A0 03 78 */	or r0, r5, r0
/* 8057C35C  90 06 05 A0 */	stw r0, 0x5a0(r6)
/* 8057C360  38 00 00 00 */	li r0, 0
/* 8057C364  98 19 05 6A */	stb r0, 0x56a(r25)
/* 8057C368  48 00 00 14 */	b lbl_8057C37C
lbl_8057C36C:
/* 8057C36C  7F 23 CB 78 */	mr r3, r25
/* 8057C370  4B A9 D9 0C */	b fopAcM_delete__FP10fopAc_ac_c
/* 8057C374  38 60 00 01 */	li r3, 1
/* 8057C378  48 00 04 E8 */	b lbl_8057C860
lbl_8057C37C:
/* 8057C37C  80 19 05 5C */	lwz r0, 0x55c(r25)
/* 8057C380  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8057C384  90 19 05 5C */	stw r0, 0x55c(r25)
/* 8057C388  80 19 05 B8 */	lwz r0, 0x5b8(r25)
/* 8057C38C  28 00 00 00 */	cmplwi r0, 0
/* 8057C390  41 82 02 C4 */	beq lbl_8057C654
/* 8057C394  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8057C398  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8057C39C  EC 01 00 2A */	fadds f0, f1, f0
/* 8057C3A0  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 8057C3A4  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8057C3A8  D0 19 05 54 */	stfs f0, 0x554(r25)
/* 8057C3AC  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 8057C3B0  83 63 00 08 */	lwz r27, 8(r3)
/* 8057C3B4  3C 60 80 45 */	lis r3, __float_max@ha
/* 8057C3B8  C3 E3 0A E8 */	lfs f31, __float_max@l(r3)
/* 8057C3BC  3B 40 00 00 */	li r26, 0
/* 8057C3C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057C3C4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8057C3C8  48 00 02 7C */	b lbl_8057C644
lbl_8057C3CC:
/* 8057C3CC  7F 40 2E 70 */	srawi r0, r26, 5
/* 8057C3D0  54 03 10 3A */	slwi r3, r0, 2
/* 8057C3D4  38 03 05 A0 */	addi r0, r3, 0x5a0
/* 8057C3D8  7C B9 00 2E */	lwzx r5, r25, r0
/* 8057C3DC  38 80 00 01 */	li r4, 1
/* 8057C3E0  57 40 D8 08 */	slwi r0, r26, 0x1b
/* 8057C3E4  57 43 0F FE */	srwi r3, r26, 0x1f
/* 8057C3E8  7C 03 00 50 */	subf r0, r3, r0
/* 8057C3EC  54 00 28 3E */	rotlwi r0, r0, 5
/* 8057C3F0  7C 00 1A 14 */	add r0, r0, r3
/* 8057C3F4  7C 80 00 30 */	slw r0, r4, r0
/* 8057C3F8  7C A0 00 39 */	and. r0, r5, r0
/* 8057C3FC  40 82 02 40 */	bne lbl_8057C63C
/* 8057C400  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 8057C404  C0 3B 00 08 */	lfs f1, 8(r27)
/* 8057C408  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8057C40C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8057C410  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8057C414  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8057C418  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8057C41C  38 81 00 30 */	addi r4, r1, 0x30
/* 8057C420  4B DC AF 7C */	b PSVECSquareDistance
/* 8057C424  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8057C428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C42C  40 81 00 58 */	ble lbl_8057C484
/* 8057C430  FC 00 08 34 */	frsqrte f0, f1
/* 8057C434  C8 9D 00 20 */	lfd f4, 0x20(r29)
/* 8057C438  FC 44 00 32 */	fmul f2, f4, f0
/* 8057C43C  C8 7D 00 28 */	lfd f3, 0x28(r29)
/* 8057C440  FC 00 00 32 */	fmul f0, f0, f0
/* 8057C444  FC 01 00 32 */	fmul f0, f1, f0
/* 8057C448  FC 03 00 28 */	fsub f0, f3, f0
/* 8057C44C  FC 02 00 32 */	fmul f0, f2, f0
/* 8057C450  FC 44 00 32 */	fmul f2, f4, f0
/* 8057C454  FC 00 00 32 */	fmul f0, f0, f0
/* 8057C458  FC 01 00 32 */	fmul f0, f1, f0
/* 8057C45C  FC 03 00 28 */	fsub f0, f3, f0
/* 8057C460  FC 02 00 32 */	fmul f0, f2, f0
/* 8057C464  FC 44 00 32 */	fmul f2, f4, f0
/* 8057C468  FC 00 00 32 */	fmul f0, f0, f0
/* 8057C46C  FC 01 00 32 */	fmul f0, f1, f0
/* 8057C470  FC 03 00 28 */	fsub f0, f3, f0
/* 8057C474  FC 02 00 32 */	fmul f0, f2, f0
/* 8057C478  FC 21 00 32 */	fmul f1, f1, f0
/* 8057C47C  FC 20 08 18 */	frsp f1, f1
/* 8057C480  48 00 00 88 */	b lbl_8057C508
lbl_8057C484:
/* 8057C484  C8 1D 00 30 */	lfd f0, 0x30(r29)
/* 8057C488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C48C  40 80 00 10 */	bge lbl_8057C49C
/* 8057C490  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057C494  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8057C498  48 00 00 70 */	b lbl_8057C508
lbl_8057C49C:
/* 8057C49C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8057C4A0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8057C4A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8057C4A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8057C4AC  7C 03 00 00 */	cmpw r3, r0
/* 8057C4B0  41 82 00 14 */	beq lbl_8057C4C4
/* 8057C4B4  40 80 00 40 */	bge lbl_8057C4F4
/* 8057C4B8  2C 03 00 00 */	cmpwi r3, 0
/* 8057C4BC  41 82 00 20 */	beq lbl_8057C4DC
/* 8057C4C0  48 00 00 34 */	b lbl_8057C4F4
lbl_8057C4C4:
/* 8057C4C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057C4C8  41 82 00 0C */	beq lbl_8057C4D4
/* 8057C4CC  38 00 00 01 */	li r0, 1
/* 8057C4D0  48 00 00 28 */	b lbl_8057C4F8
lbl_8057C4D4:
/* 8057C4D4  38 00 00 02 */	li r0, 2
/* 8057C4D8  48 00 00 20 */	b lbl_8057C4F8
lbl_8057C4DC:
/* 8057C4DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057C4E0  41 82 00 0C */	beq lbl_8057C4EC
/* 8057C4E4  38 00 00 05 */	li r0, 5
/* 8057C4E8  48 00 00 10 */	b lbl_8057C4F8
lbl_8057C4EC:
/* 8057C4EC  38 00 00 03 */	li r0, 3
/* 8057C4F0  48 00 00 08 */	b lbl_8057C4F8
lbl_8057C4F4:
/* 8057C4F4  38 00 00 04 */	li r0, 4
lbl_8057C4F8:
/* 8057C4F8  2C 00 00 01 */	cmpwi r0, 1
/* 8057C4FC  40 82 00 0C */	bne lbl_8057C508
/* 8057C500  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057C504  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8057C508:
/* 8057C508  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8057C50C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C510  40 80 00 5C */	bge lbl_8057C56C
/* 8057C514  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057C518  38 80 07 0F */	li r4, 0x70f
/* 8057C51C  38 A1 00 30 */	addi r5, r1, 0x30
/* 8057C520  38 C0 00 00 */	li r6, 0
/* 8057C524  38 E0 00 FF */	li r7, 0xff
/* 8057C528  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 8057C52C  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 8057C530  7D 09 43 78 */	mr r9, r8
/* 8057C534  39 40 00 00 */	li r10, 0
/* 8057C538  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 8057C53C  4B AD 0C 7C */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 8057C540  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057C544  38 80 07 3D */	li r4, 0x73d
/* 8057C548  38 A1 00 30 */	addi r5, r1, 0x30
/* 8057C54C  38 C0 00 00 */	li r6, 0
/* 8057C550  38 E0 00 FF */	li r7, 0xff
/* 8057C554  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 8057C558  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 8057C55C  7D 09 43 78 */	mr r9, r8
/* 8057C560  39 40 00 00 */	li r10, 0
/* 8057C564  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 8057C568  4B AD 0C 50 */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
lbl_8057C56C:
/* 8057C56C  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8057C570  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8057C574  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8057C578  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 8057C57C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8057C580  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8057C584  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8057C588  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8057C58C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8057C590  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8057C594  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8057C598  38 61 00 18 */	addi r3, r1, 0x18
/* 8057C59C  38 81 00 24 */	addi r4, r1, 0x24
/* 8057C5A0  4B DC AD FC */	b PSVECSquareDistance
/* 8057C5A4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8057C5A8  40 81 00 94 */	ble lbl_8057C63C
/* 8057C5AC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8057C5B0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8057C5B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8057C5B8  FC 00 02 10 */	fabs f0, f0
/* 8057C5BC  FC 40 00 18 */	frsp f2, f0
/* 8057C5C0  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 8057C5C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8057C5C8  40 80 00 74 */	bge lbl_8057C63C
/* 8057C5CC  FF E0 08 90 */	fmr f31, f1
/* 8057C5D0  9B 59 05 6C */	stb r26, 0x56c(r25)
/* 8057C5D4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8057C5D8  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 8057C5DC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8057C5E0  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 8057C5E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8057C5E8  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
/* 8057C5EC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8057C5F0  D0 19 05 50 */	stfs f0, 0x550(r25)
/* 8057C5F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8057C5F8  D0 19 05 54 */	stfs f0, 0x554(r25)
/* 8057C5FC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8057C600  D0 19 05 58 */	stfs f0, 0x558(r25)
/* 8057C604  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8057C608  D0 19 05 38 */	stfs f0, 0x538(r25)
/* 8057C60C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8057C610  D0 19 05 3C */	stfs f0, 0x53c(r25)
/* 8057C614  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8057C618  D0 19 05 40 */	stfs f0, 0x540(r25)
/* 8057C61C  88 1B 00 03 */	lbz r0, 3(r27)
/* 8057C620  28 00 00 00 */	cmplwi r0, 0
/* 8057C624  40 82 00 10 */	bne lbl_8057C634
/* 8057C628  38 00 00 00 */	li r0, 0
/* 8057C62C  98 19 05 68 */	stb r0, 0x568(r25)
/* 8057C630  48 00 00 0C */	b lbl_8057C63C
lbl_8057C634:
/* 8057C634  38 00 00 02 */	li r0, 2
/* 8057C638  98 19 05 68 */	stb r0, 0x568(r25)
lbl_8057C63C:
/* 8057C63C  3B 5A 00 01 */	addi r26, r26, 1
/* 8057C640  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_8057C644:
/* 8057C644  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 8057C648  A0 03 00 00 */	lhz r0, 0(r3)
/* 8057C64C  7C 1A 00 00 */	cmpw r26, r0
/* 8057C650  41 80 FD 7C */	blt lbl_8057C3CC
lbl_8057C654:
/* 8057C654  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 8057C658  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8057C65C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8057C660  41 82 01 FC */	beq lbl_8057C85C
/* 8057C664  88 19 05 6A */	lbz r0, 0x56a(r25)
/* 8057C668  28 00 00 00 */	cmplwi r0, 0
/* 8057C66C  40 82 01 F0 */	bne lbl_8057C85C
/* 8057C670  88 19 05 6B */	lbz r0, 0x56b(r25)
/* 8057C674  28 00 00 00 */	cmplwi r0, 0
/* 8057C678  40 82 00 7C */	bne lbl_8057C6F4
/* 8057C67C  7F 83 E3 78 */	mr r3, r28
/* 8057C680  7F 24 CB 78 */	mr r4, r25
/* 8057C684  4B A9 E1 18 */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8057C688  7C 7A 1B 78 */	mr r26, r3
/* 8057C68C  7F 23 CB 78 */	mr r3, r25
/* 8057C690  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8057C694  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8057C698  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8057C69C  4B A9 E3 F8 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8057C6A0  2C 1A 28 00 */	cmpwi r26, 0x2800
/* 8057C6A4  40 81 00 10 */	ble lbl_8057C6B4
/* 8057C6A8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8057C6AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C6B0  40 80 00 10 */	bge lbl_8057C6C0
lbl_8057C6B4:
/* 8057C6B4  80 19 05 5C */	lwz r0, 0x55c(r25)
/* 8057C6B8  60 00 00 80 */	ori r0, r0, 0x80
/* 8057C6BC  90 19 05 5C */	stw r0, 0x55c(r25)
lbl_8057C6C0:
/* 8057C6C0  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 8057C6C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C6C8  40 80 00 2C */	bge lbl_8057C6F4
/* 8057C6CC  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 8057C6D0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8057C6D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8057C6D8  FC 00 02 10 */	fabs f0, f0
/* 8057C6DC  FC 20 00 18 */	frsp f1, f0
/* 8057C6E0  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 8057C6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C6E8  40 80 00 0C */	bge lbl_8057C6F4
/* 8057C6EC  38 79 05 50 */	addi r3, r25, 0x550
/* 8057C6F0  4B BE 2E 00 */	b setLookPos__9daPy_py_cFP4cXyz
lbl_8057C6F4:
/* 8057C6F4  80 19 05 B8 */	lwz r0, 0x5b8(r25)
/* 8057C6F8  28 00 00 00 */	cmplwi r0, 0
/* 8057C6FC  40 82 01 60 */	bne lbl_8057C85C
/* 8057C700  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8057C704  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 8057C708  4B DC AC 94 */	b PSVECSquareDistance
/* 8057C70C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8057C710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C714  40 81 00 58 */	ble lbl_8057C76C
/* 8057C718  FC 00 08 34 */	frsqrte f0, f1
/* 8057C71C  C8 9D 00 20 */	lfd f4, 0x20(r29)
/* 8057C720  FC 44 00 32 */	fmul f2, f4, f0
/* 8057C724  C8 7D 00 28 */	lfd f3, 0x28(r29)
/* 8057C728  FC 00 00 32 */	fmul f0, f0, f0
/* 8057C72C  FC 01 00 32 */	fmul f0, f1, f0
/* 8057C730  FC 03 00 28 */	fsub f0, f3, f0
/* 8057C734  FC 02 00 32 */	fmul f0, f2, f0
/* 8057C738  FC 44 00 32 */	fmul f2, f4, f0
/* 8057C73C  FC 00 00 32 */	fmul f0, f0, f0
/* 8057C740  FC 01 00 32 */	fmul f0, f1, f0
/* 8057C744  FC 03 00 28 */	fsub f0, f3, f0
/* 8057C748  FC 02 00 32 */	fmul f0, f2, f0
/* 8057C74C  FC 44 00 32 */	fmul f2, f4, f0
/* 8057C750  FC 00 00 32 */	fmul f0, f0, f0
/* 8057C754  FC 01 00 32 */	fmul f0, f1, f0
/* 8057C758  FC 03 00 28 */	fsub f0, f3, f0
/* 8057C75C  FC 02 00 32 */	fmul f0, f2, f0
/* 8057C760  FC 21 00 32 */	fmul f1, f1, f0
/* 8057C764  FC 20 08 18 */	frsp f1, f1
/* 8057C768  48 00 00 88 */	b lbl_8057C7F0
lbl_8057C76C:
/* 8057C76C  C8 1D 00 30 */	lfd f0, 0x30(r29)
/* 8057C770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C774  40 80 00 10 */	bge lbl_8057C784
/* 8057C778  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057C77C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8057C780  48 00 00 70 */	b lbl_8057C7F0
lbl_8057C784:
/* 8057C784  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8057C788  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8057C78C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8057C790  3C 00 7F 80 */	lis r0, 0x7f80
/* 8057C794  7C 03 00 00 */	cmpw r3, r0
/* 8057C798  41 82 00 14 */	beq lbl_8057C7AC
/* 8057C79C  40 80 00 40 */	bge lbl_8057C7DC
/* 8057C7A0  2C 03 00 00 */	cmpwi r3, 0
/* 8057C7A4  41 82 00 20 */	beq lbl_8057C7C4
/* 8057C7A8  48 00 00 34 */	b lbl_8057C7DC
lbl_8057C7AC:
/* 8057C7AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057C7B0  41 82 00 0C */	beq lbl_8057C7BC
/* 8057C7B4  38 00 00 01 */	li r0, 1
/* 8057C7B8  48 00 00 28 */	b lbl_8057C7E0
lbl_8057C7BC:
/* 8057C7BC  38 00 00 02 */	li r0, 2
/* 8057C7C0  48 00 00 20 */	b lbl_8057C7E0
lbl_8057C7C4:
/* 8057C7C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057C7C8  41 82 00 0C */	beq lbl_8057C7D4
/* 8057C7CC  38 00 00 05 */	li r0, 5
/* 8057C7D0  48 00 00 10 */	b lbl_8057C7E0
lbl_8057C7D4:
/* 8057C7D4  38 00 00 03 */	li r0, 3
/* 8057C7D8  48 00 00 08 */	b lbl_8057C7E0
lbl_8057C7DC:
/* 8057C7DC  38 00 00 04 */	li r0, 4
lbl_8057C7E0:
/* 8057C7E0  2C 00 00 01 */	cmpwi r0, 1
/* 8057C7E4  40 82 00 0C */	bne lbl_8057C7F0
/* 8057C7E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057C7EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8057C7F0:
/* 8057C7F0  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8057C7F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057C7F8  40 80 00 64 */	bge lbl_8057C85C
/* 8057C7FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057C800  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 8057C804  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8057C808  38 80 07 0F */	li r4, 0x70f
/* 8057C80C  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 8057C810  38 C0 00 00 */	li r6, 0
/* 8057C814  38 E0 00 FF */	li r7, 0xff
/* 8057C818  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 8057C81C  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 8057C820  7D 09 43 78 */	mr r9, r8
/* 8057C824  39 40 00 00 */	li r10, 0
/* 8057C828  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 8057C82C  4B AD 09 8C */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 8057C830  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8057C834  38 80 07 3D */	li r4, 0x73d
/* 8057C838  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 8057C83C  38 C0 00 00 */	li r6, 0
/* 8057C840  38 E0 00 FF */	li r7, 0xff
/* 8057C844  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 8057C848  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 8057C84C  7D 09 43 78 */	mr r9, r8
/* 8057C850  39 40 00 00 */	li r10, 0
/* 8057C854  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 8057C858  4B AD 09 60 */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
lbl_8057C85C:
/* 8057C85C  38 60 00 01 */	li r3, 1
lbl_8057C860:
/* 8057C860  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8057C864  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8057C868  39 61 00 70 */	addi r11, r1, 0x70
/* 8057C86C  4B DE 59 AC */	b _restgpr_25
/* 8057C870  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8057C874  7C 08 03 A6 */	mtlr r0
/* 8057C878  38 21 00 80 */	addi r1, r1, 0x80
/* 8057C87C  4E 80 00 20 */	blr 
