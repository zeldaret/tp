lbl_8099F1B8:
/* 8099F1B8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8099F1BC  7C 08 02 A6 */	mflr r0
/* 8099F1C0  90 01 00 84 */	stw r0, 0x84(r1)
/* 8099F1C4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8099F1C8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8099F1CC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8099F1D0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8099F1D4  39 61 00 60 */	addi r11, r1, 0x60
/* 8099F1D8  4B 9C 2F E8 */	b _savegpr_22
/* 8099F1DC  7C 79 1B 78 */	mr r25, r3
/* 8099F1E0  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha
/* 8099F1E4  3B C3 4E D0 */	addi r30, r3, M_attr__12daNpcCoach_c@l
/* 8099F1E8  C3 FE 00 A0 */	lfs f31, 0xa0(r30)
/* 8099F1EC  FF C0 F8 90 */	fmr f30, f31
/* 8099F1F0  54 83 06 3F */	clrlwi. r3, r4, 0x18
/* 8099F1F4  38 00 00 3F */	li r0, 0x3f
/* 8099F1F8  7F 63 03 D6 */	divw r27, r3, r0
/* 8099F1FC  40 82 00 20 */	bne lbl_8099F21C
/* 8099F200  3B 60 00 02 */	li r27, 2
/* 8099F204  38 00 00 00 */	li r0, 0
/* 8099F208  98 19 1D C4 */	stb r0, 0x1dc4(r25)
/* 8099F20C  3B A0 00 00 */	li r29, 0
/* 8099F210  3B 80 00 00 */	li r28, 0
/* 8099F214  90 19 05 5C */	stw r0, 0x55c(r25)
/* 8099F218  48 00 00 B4 */	b lbl_8099F2CC
lbl_8099F21C:
/* 8099F21C  88 19 1D C4 */	lbz r0, 0x1dc4(r25)
/* 8099F220  28 00 00 00 */	cmplwi r0, 0
/* 8099F224  41 82 00 6C */	beq lbl_8099F290
/* 8099F228  2C 1B 00 02 */	cmpwi r27, 2
/* 8099F22C  41 82 00 38 */	beq lbl_8099F264
/* 8099F230  40 80 00 14 */	bge lbl_8099F244
/* 8099F234  2C 1B 00 00 */	cmpwi r27, 0
/* 8099F238  41 82 00 18 */	beq lbl_8099F250
/* 8099F23C  40 80 00 1C */	bge lbl_8099F258
/* 8099F240  48 00 00 40 */	b lbl_8099F280
lbl_8099F244:
/* 8099F244  2C 1B 00 05 */	cmpwi r27, 5
/* 8099F248  40 80 00 38 */	bge lbl_8099F280
/* 8099F24C  48 00 00 28 */	b lbl_8099F274
lbl_8099F250:
/* 8099F250  3B 60 00 04 */	li r27, 4
/* 8099F254  48 00 00 2C */	b lbl_8099F280
lbl_8099F258:
/* 8099F258  3B 60 00 05 */	li r27, 5
/* 8099F25C  C3 DE 01 84 */	lfs f30, 0x184(r30)
/* 8099F260  48 00 00 20 */	b lbl_8099F280
lbl_8099F264:
/* 8099F264  3B 60 00 07 */	li r27, 7
/* 8099F268  C3 FE 01 88 */	lfs f31, 0x188(r30)
/* 8099F26C  C3 DE 01 84 */	lfs f30, 0x184(r30)
/* 8099F270  48 00 00 10 */	b lbl_8099F280
lbl_8099F274:
/* 8099F274  3B 60 00 0A */	li r27, 0xa
/* 8099F278  C3 FE 01 8C */	lfs f31, 0x18c(r30)
/* 8099F27C  C3 DE 01 84 */	lfs f30, 0x184(r30)
lbl_8099F280:
/* 8099F280  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8099F284  7C 1D 03 78 */	mr r29, r0
/* 8099F288  7C 1C 03 78 */	mr r28, r0
/* 8099F28C  48 00 00 40 */	b lbl_8099F2CC
lbl_8099F290:
/* 8099F290  2C 1B 00 01 */	cmpwi r27, 1
/* 8099F294  40 82 00 24 */	bne lbl_8099F2B8
/* 8099F298  3B 60 00 05 */	li r27, 5
/* 8099F29C  38 00 00 01 */	li r0, 1
/* 8099F2A0  98 19 1D C4 */	stb r0, 0x1dc4(r25)
/* 8099F2A4  7C 7D 1B 78 */	mr r29, r3
/* 8099F2A8  3B 80 00 00 */	li r28, 0
/* 8099F2AC  38 00 01 01 */	li r0, 0x101
/* 8099F2B0  90 19 05 5C */	stw r0, 0x55c(r25)
/* 8099F2B4  48 00 00 18 */	b lbl_8099F2CC
lbl_8099F2B8:
/* 8099F2B8  3B 60 00 02 */	li r27, 2
/* 8099F2BC  3B A0 00 00 */	li r29, 0
/* 8099F2C0  3B 80 00 00 */	li r28, 0
/* 8099F2C4  38 00 00 00 */	li r0, 0
/* 8099F2C8  90 19 05 5C */	stw r0, 0x55c(r25)
lbl_8099F2CC:
/* 8099F2CC  80 79 15 D0 */	lwz r3, 0x15d0(r25)
/* 8099F2D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8099F2D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8099F2D8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8099F2DC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8099F2E0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8099F2E4  4B 9A 71 CC */	b PSMTXCopy
/* 8099F2E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099F2EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099F2F0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8099F2F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8099F2F8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8099F2FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8099F300  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8099F304  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8099F308  3B 40 00 02 */	li r26, 2
/* 8099F30C  3B 00 00 04 */	li r24, 4
/* 8099F310  3A E0 00 08 */	li r23, 8
/* 8099F314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099F318  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8099F31C  48 00 00 88 */	b lbl_8099F3A4
lbl_8099F320:
/* 8099F320  3A D7 1B C8 */	addi r22, r23, 0x1bc8
/* 8099F324  7C 19 B0 2E */	lwzx r0, r25, r22
/* 8099F328  28 00 00 00 */	cmplwi r0, 0
/* 8099F32C  40 82 00 6C */	bne lbl_8099F398
/* 8099F330  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8099F334  38 80 00 00 */	li r4, 0
/* 8099F338  90 81 00 08 */	stw r4, 8(r1)
/* 8099F33C  38 00 FF FF */	li r0, -1
/* 8099F340  90 01 00 0C */	stw r0, 0xc(r1)
/* 8099F344  90 81 00 10 */	stw r4, 0x10(r1)
/* 8099F348  90 81 00 14 */	stw r4, 0x14(r1)
/* 8099F34C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8099F350  38 80 00 00 */	li r4, 0
/* 8099F354  3C A0 80 9A */	lis r5, data_809A5018@ha
/* 8099F358  38 A5 50 18 */	addi r5, r5, data_809A5018@l
/* 8099F35C  7C A5 C2 2E */	lhzx r5, r5, r24
/* 8099F360  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8099F364  38 E0 00 00 */	li r7, 0
/* 8099F368  39 19 1D 6A */	addi r8, r25, 0x1d6a
/* 8099F36C  39 20 00 00 */	li r9, 0
/* 8099F370  39 40 00 FF */	li r10, 0xff
/* 8099F374  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8099F378  4B 6A D7 18 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8099F37C  7C 79 B1 2E */	stwx r3, r25, r22
/* 8099F380  7C 79 B0 2E */	lwzx r3, r25, r22
/* 8099F384  28 03 00 00 */	cmplwi r3, 0
/* 8099F388  41 82 00 10 */	beq lbl_8099F398
/* 8099F38C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8099F390  60 00 00 40 */	ori r0, r0, 0x40
/* 8099F394  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8099F398:
/* 8099F398  3B 5A 00 01 */	addi r26, r26, 1
/* 8099F39C  3B 18 00 02 */	addi r24, r24, 2
/* 8099F3A0  3A F7 00 04 */	addi r23, r23, 4
lbl_8099F3A4:
/* 8099F3A4  7C 1A D8 00 */	cmpw r26, r27
/* 8099F3A8  41 80 FF 78 */	blt lbl_8099F320
/* 8099F3AC  38 A0 00 01 */	li r5, 1
/* 8099F3B0  38 80 00 00 */	li r4, 0
/* 8099F3B4  57 63 10 3A */	slwi r3, r27, 2
/* 8099F3B8  20 1B 00 0A */	subfic r0, r27, 0xa
/* 8099F3BC  7C 09 03 A6 */	mtctr r0
/* 8099F3C0  2C 1B 00 0A */	cmpwi r27, 0xa
/* 8099F3C4  40 80 00 30 */	bge lbl_8099F3F4
lbl_8099F3C8:
/* 8099F3C8  38 E3 1B C8 */	addi r7, r3, 0x1bc8
/* 8099F3CC  7C D9 38 2E */	lwzx r6, r25, r7
/* 8099F3D0  28 06 00 00 */	cmplwi r6, 0
/* 8099F3D4  41 82 00 18 */	beq lbl_8099F3EC
/* 8099F3D8  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 8099F3DC  60 00 00 01 */	ori r0, r0, 1
/* 8099F3E0  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 8099F3E4  90 A6 00 24 */	stw r5, 0x24(r6)
/* 8099F3E8  7C 99 39 2E */	stwx r4, r25, r7
lbl_8099F3EC:
/* 8099F3EC  38 63 00 04 */	addi r3, r3, 4
/* 8099F3F0  42 00 FF D8 */	bdnz lbl_8099F3C8
lbl_8099F3F4:
/* 8099F3F4  3A C0 00 00 */	li r22, 0
/* 8099F3F8  3B 40 00 00 */	li r26, 0
lbl_8099F3FC:
/* 8099F3FC  38 1A 1B C8 */	addi r0, r26, 0x1bc8
/* 8099F400  7C B9 00 2E */	lwzx r5, r25, r0
/* 8099F404  28 05 00 00 */	cmplwi r5, 0
/* 8099F408  41 82 00 20 */	beq lbl_8099F428
/* 8099F40C  80 79 15 D0 */	lwz r3, 0x15d0(r25)
/* 8099F410  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8099F414  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8099F418  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8099F41C  38 85 00 68 */	addi r4, r5, 0x68
/* 8099F420  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 8099F424  4B 8E 13 BC */	b func_802807E0
lbl_8099F428:
/* 8099F428  3A D6 00 01 */	addi r22, r22, 1
/* 8099F42C  2C 16 00 0A */	cmpwi r22, 0xa
/* 8099F430  3B 5A 00 04 */	addi r26, r26, 4
/* 8099F434  41 80 FF C8 */	blt lbl_8099F3FC
/* 8099F438  38 61 00 20 */	addi r3, r1, 0x20
/* 8099F43C  38 99 1B 98 */	addi r4, r25, 0x1b98
/* 8099F440  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 8099F444  4B 8C 77 40 */	b __ml__4cXyzCFf
/* 8099F448  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8099F44C  D0 19 1B A4 */	stfs f0, 0x1ba4(r25)
/* 8099F450  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8099F454  D0 19 1B A8 */	stfs f0, 0x1ba8(r25)
/* 8099F458  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8099F45C  D0 19 1B AC */	stfs f0, 0x1bac(r25)
/* 8099F460  80 79 1B C8 */	lwz r3, 0x1bc8(r25)
/* 8099F464  9B A3 00 BB */	stb r29, 0xbb(r3)
/* 8099F468  80 79 1B C8 */	lwz r3, 0x1bc8(r25)
/* 8099F46C  D3 E3 00 28 */	stfs f31, 0x28(r3)
/* 8099F470  38 19 1B A4 */	addi r0, r25, 0x1ba4
/* 8099F474  80 79 1B C8 */	lwz r3, 0x1bc8(r25)
/* 8099F478  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8099F47C  80 79 1B CC */	lwz r3, 0x1bcc(r25)
/* 8099F480  9B 83 00 BB */	stb r28, 0xbb(r3)
/* 8099F484  80 79 1B CC */	lwz r3, 0x1bcc(r25)
/* 8099F488  D3 C3 00 28 */	stfs f30, 0x28(r3)
/* 8099F48C  80 79 1B CC */	lwz r3, 0x1bcc(r25)
/* 8099F490  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8099F494  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8099F498  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8099F49C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8099F4A0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8099F4A4  39 61 00 60 */	addi r11, r1, 0x60
/* 8099F4A8  4B 9C 2D 64 */	b _restgpr_22
/* 8099F4AC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8099F4B0  7C 08 03 A6 */	mtlr r0
/* 8099F4B4  38 21 00 80 */	addi r1, r1, 0x80
/* 8099F4B8  4E 80 00 20 */	blr 
