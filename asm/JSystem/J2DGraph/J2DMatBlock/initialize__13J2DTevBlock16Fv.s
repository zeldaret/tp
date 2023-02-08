lbl_802F03EC:
/* 802F03EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F03F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802F03F4  38 80 00 00 */	li r4, 0
/* 802F03F8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 802F03FC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 802F0400  38 00 00 08 */	li r0, 8
/* 802F0404  7C 09 03 A6 */	mtctr r0
lbl_802F0408:
/* 802F0408  38 04 00 04 */	addi r0, r4, 4
/* 802F040C  7C A3 03 2E */	sthx r5, r3, r0
/* 802F0410  38 84 00 02 */	addi r4, r4, 2
/* 802F0414  42 00 FF F4 */	bdnz lbl_802F0408
/* 802F0418  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802F041C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802F0420  B0 03 00 14 */	sth r0, 0x14(r3)
/* 802F0424  38 80 00 00 */	li r4, 0
/* 802F0428  38 A2 C7 80 */	la r5, j2dDefaultTevOrderInfoNull(r2) /* 80456180-_SDA2_BASE_ */
/* 802F042C  38 00 00 10 */	li r0, 0x10
/* 802F0430  7C 09 03 A6 */	mtctr r0
lbl_802F0434:
/* 802F0434  88 02 C7 80 */	lbz r0, j2dDefaultTevOrderInfoNull(r2)
/* 802F0438  7C C3 22 14 */	add r6, r3, r4
/* 802F043C  98 06 00 16 */	stb r0, 0x16(r6)
/* 802F0440  88 05 00 01 */	lbz r0, 1(r5)
/* 802F0444  98 06 00 17 */	stb r0, 0x17(r6)
/* 802F0448  88 05 00 02 */	lbz r0, 2(r5)
/* 802F044C  98 06 00 18 */	stb r0, 0x18(r6)
/* 802F0450  38 84 00 04 */	addi r4, r4, 4
/* 802F0454  42 00 FF E0 */	bdnz lbl_802F0434
/* 802F0458  38 80 00 00 */	li r4, 0
/* 802F045C  38 A2 C7 88 */	la r5, j2dDefaultTevColor(r2) /* 80456188-_SDA2_BASE_ */
/* 802F0460  A9 02 C7 88 */	lha r8, j2dDefaultTevColor(r2)
/* 802F0464  A8 E5 00 02 */	lha r7, 2(r5)
/* 802F0468  A8 C5 00 04 */	lha r6, 4(r5)
/* 802F046C  A8 A5 00 06 */	lha r5, 6(r5)
/* 802F0470  38 00 00 04 */	li r0, 4
/* 802F0474  7C 09 03 A6 */	mtctr r0
lbl_802F0478:
/* 802F0478  7D 23 22 14 */	add r9, r3, r4
/* 802F047C  B1 09 00 56 */	sth r8, 0x56(r9)
/* 802F0480  B0 E9 00 58 */	sth r7, 0x58(r9)
/* 802F0484  B0 C9 00 5A */	sth r6, 0x5a(r9)
/* 802F0488  B0 A9 00 5C */	sth r5, 0x5c(r9)
/* 802F048C  38 84 00 08 */	addi r4, r4, 8
/* 802F0490  42 00 FF E8 */	bdnz lbl_802F0478
/* 802F0494  38 00 00 01 */	li r0, 1
/* 802F0498  98 03 00 76 */	stb r0, 0x76(r3)
/* 802F049C  38 80 00 00 */	li r4, 0
/* 802F04A0  38 A0 00 00 */	li r5, 0
/* 802F04A4  38 00 00 10 */	li r0, 0x10
/* 802F04A8  7C 09 03 A6 */	mtctr r0
lbl_802F04AC:
/* 802F04AC  38 05 00 C0 */	addi r0, r5, 0xc0
/* 802F04B0  7C C3 22 14 */	add r6, r3, r4
/* 802F04B4  98 06 00 77 */	stb r0, 0x77(r6)
/* 802F04B8  38 05 00 C1 */	addi r0, r5, 0xc1
/* 802F04BC  98 06 00 7B */	stb r0, 0x7b(r6)
/* 802F04C0  38 84 00 08 */	addi r4, r4, 8
/* 802F04C4  38 A5 00 02 */	addi r5, r5, 2
/* 802F04C8  42 00 FF E4 */	bdnz lbl_802F04AC
/* 802F04CC  38 80 00 00 */	li r4, 0
/* 802F04D0  81 02 C7 94 */	lwz r8, j2dDefaultTevKColor(r2)
/* 802F04D4  38 00 00 04 */	li r0, 4
/* 802F04D8  7C 09 03 A6 */	mtctr r0
lbl_802F04DC:
/* 802F04DC  91 01 00 08 */	stw r8, 8(r1)
/* 802F04E0  88 E1 00 08 */	lbz r7, 8(r1)
/* 802F04E4  98 E1 00 0C */	stb r7, 0xc(r1)
/* 802F04E8  88 C1 00 09 */	lbz r6, 9(r1)
/* 802F04EC  98 C1 00 0D */	stb r6, 0xd(r1)
/* 802F04F0  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 802F04F4  98 A1 00 0E */	stb r5, 0xe(r1)
/* 802F04F8  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F04FC  98 01 00 0F */	stb r0, 0xf(r1)
/* 802F0500  7D 23 22 14 */	add r9, r3, r4
/* 802F0504  98 E9 00 F8 */	stb r7, 0xf8(r9)
/* 802F0508  98 C9 00 F9 */	stb r6, 0xf9(r9)
/* 802F050C  98 A9 00 FA */	stb r5, 0xfa(r9)
/* 802F0510  98 09 00 FB */	stb r0, 0xfb(r9)
/* 802F0514  38 84 00 04 */	addi r4, r4, 4
/* 802F0518  42 00 FF C4 */	bdnz lbl_802F04DC
/* 802F051C  38 C0 00 00 */	li r6, 0
/* 802F0520  38 80 00 FF */	li r4, 0xff
/* 802F0524  38 00 00 10 */	li r0, 0x10
/* 802F0528  7C 09 03 A6 */	mtctr r0
lbl_802F052C:
/* 802F052C  7C A3 32 14 */	add r5, r3, r6
/* 802F0530  98 85 01 08 */	stb r4, 0x108(r5)
/* 802F0534  98 85 01 18 */	stb r4, 0x118(r5)
/* 802F0538  38 C6 00 01 */	addi r6, r6, 1
/* 802F053C  42 00 FF F0 */	bdnz lbl_802F052C
/* 802F0540  39 20 00 00 */	li r9, 0
/* 802F0544  39 02 C7 9C */	la r8, j2dDefaultTevSwapModeTable(r2) /* 8045619C-_SDA2_BASE_ */
/* 802F0548  38 00 00 04 */	li r0, 4
/* 802F054C  7C 09 03 A6 */	mtctr r0
lbl_802F0550:
/* 802F0550  88 E8 00 01 */	lbz r7, 1(r8)
/* 802F0554  88 C8 00 03 */	lbz r6, 3(r8)
/* 802F0558  88 08 00 02 */	lbz r0, 2(r8)
/* 802F055C  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 802F0560  88 02 C7 9C */	lbz r0, j2dDefaultTevSwapModeTable(r2)
/* 802F0564  54 04 34 B2 */	rlwinm r4, r0, 6, 0x12, 0x19
/* 802F0568  54 E0 20 36 */	slwi r0, r7, 4
/* 802F056C  7C 00 2A 14 */	add r0, r0, r5
/* 802F0570  7C 00 32 14 */	add r0, r0, r6
/* 802F0574  7C 84 02 14 */	add r4, r4, r0
/* 802F0578  38 09 01 28 */	addi r0, r9, 0x128
/* 802F057C  7C 83 01 AE */	stbx r4, r3, r0
/* 802F0580  39 29 00 01 */	addi r9, r9, 1
/* 802F0584  42 00 FF CC */	bdnz lbl_802F0550
/* 802F0588  38 A0 00 00 */	li r5, 0
/* 802F058C  3C 80 80 3A */	lis r4, j2dDefaultIndTevStageInfo@ha /* 0x803A1BF4@ha */
/* 802F0590  38 84 1B F4 */	addi r4, r4, j2dDefaultIndTevStageInfo@l /* 0x803A1BF4@l */
/* 802F0594  38 00 00 10 */	li r0, 0x10
/* 802F0598  7C 09 03 A6 */	mtctr r0
lbl_802F059C:
/* 802F059C  80 C4 00 00 */	lwz r6, 0(r4)
/* 802F05A0  80 04 00 04 */	lwz r0, 4(r4)
/* 802F05A4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802F05A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F05AC  80 04 00 08 */	lwz r0, 8(r4)
/* 802F05B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802F05B4  8B E1 00 10 */	lbz r31, 0x10(r1)
/* 802F05B8  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802F05BC  54 0C 10 3A */	slwi r12, r0, 2
/* 802F05C0  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802F05C4  54 0B 20 36 */	slwi r11, r0, 4
/* 802F05C8  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802F05CC  54 0A 40 2E */	slwi r10, r0, 8
/* 802F05D0  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802F05D4  54 09 58 28 */	slwi r9, r0, 0xb
/* 802F05D8  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802F05DC  54 08 80 1E */	slwi r8, r0, 0x10
/* 802F05E0  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802F05E4  54 07 A0 16 */	slwi r7, r0, 0x14
/* 802F05E8  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802F05EC  54 06 B0 12 */	slwi r6, r0, 0x16
/* 802F05F0  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802F05F4  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802F05F8  7C C0 03 78 */	or r0, r6, r0
/* 802F05FC  7C E0 03 78 */	or r0, r7, r0
/* 802F0600  7D 00 03 78 */	or r0, r8, r0
/* 802F0604  7D 20 03 78 */	or r0, r9, r0
/* 802F0608  7D 40 03 78 */	or r0, r10, r0
/* 802F060C  7D 60 03 78 */	or r0, r11, r0
/* 802F0610  7D 80 03 78 */	or r0, r12, r0
/* 802F0614  7F E6 03 78 */	or r6, r31, r0
/* 802F0618  38 05 01 2C */	addi r0, r5, 0x12c
/* 802F061C  7C C3 01 2E */	stwx r6, r3, r0
/* 802F0620  38 A5 00 04 */	addi r5, r5, 4
/* 802F0624  42 00 FF 78 */	bdnz lbl_802F059C
/* 802F0628  38 80 00 00 */	li r4, 0
/* 802F062C  38 A0 00 00 */	li r5, 0
/* 802F0630  38 00 00 08 */	li r0, 8
/* 802F0634  7C 09 03 A6 */	mtctr r0
lbl_802F0638:
/* 802F0638  38 04 01 8C */	addi r0, r4, 0x18c
/* 802F063C  7C A3 01 2E */	stwx r5, r3, r0
/* 802F0640  38 84 00 04 */	addi r4, r4, 4
/* 802F0644  42 00 FF F4 */	bdnz lbl_802F0638
/* 802F0648  38 00 00 00 */	li r0, 0
/* 802F064C  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 802F0650  98 03 01 B1 */	stb r0, 0x1b1(r3)
/* 802F0654  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802F0658  38 21 00 30 */	addi r1, r1, 0x30
/* 802F065C  4E 80 00 20 */	blr 
