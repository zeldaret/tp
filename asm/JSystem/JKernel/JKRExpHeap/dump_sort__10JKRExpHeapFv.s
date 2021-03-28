lbl_802D05CC:
/* 802D05CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802D05D0  7C 08 02 A6 */	mflr r0
/* 802D05D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802D05D8  39 61 00 40 */	addi r11, r1, 0x40
/* 802D05DC  48 09 1B F1 */	bl _savegpr_25
/* 802D05E0  7C 79 1B 78 */	mr r25, r3
/* 802D05E4  38 79 00 18 */	addi r3, r25, 0x18
/* 802D05E8  48 06 EA 59 */	bl OSLockMutex
/* 802D05EC  7F 23 CB 78 */	mr r3, r25
/* 802D05F0  81 99 00 00 */	lwz r12, 0(r25)
/* 802D05F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D05F8  7D 89 03 A6 */	mtctr r12
/* 802D05FC  4E 80 04 21 */	bctrl 
/* 802D0600  7C 7E 1B 78 */	mr r30, r3
/* 802D0604  3B A0 00 00 */	li r29, 0
/* 802D0608  3B 80 00 00 */	li r28, 0
/* 802D060C  3B 60 00 00 */	li r27, 0
/* 802D0610  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D0614  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l
/* 802D0618  38 63 01 9D */	addi r3, r3, 0x19d
/* 802D061C  48 01 80 2D */	bl JUTReportConsole
/* 802D0620  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D0624  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l
/* 802D0628  38 63 01 D4 */	addi r3, r3, 0x1d4
/* 802D062C  48 01 80 1D */	bl JUTReportConsole
/* 802D0630  80 19 00 80 */	lwz r0, 0x80(r25)
/* 802D0634  28 00 00 00 */	cmplwi r0, 0
/* 802D0638  40 82 00 18 */	bne lbl_802D0650
/* 802D063C  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D0640  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l
/* 802D0644  38 63 01 E3 */	addi r3, r3, 0x1e3
/* 802D0648  48 01 80 01 */	bl JUTReportConsole
/* 802D064C  48 00 00 D0 */	b lbl_802D071C
lbl_802D0650:
/* 802D0650  38 80 00 00 */	li r4, 0
/* 802D0654  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D0658  3B E3 CA F0 */	addi r31, r3, JKRExpHeap__stringBase0@l
lbl_802D065C:
/* 802D065C  3B 40 FF FF */	li r26, -1
/* 802D0660  80 79 00 80 */	lwz r3, 0x80(r25)
/* 802D0664  48 00 00 1C */	b lbl_802D0680
lbl_802D0668:
/* 802D0668  7C 04 18 40 */	cmplw r4, r3
/* 802D066C  40 80 00 10 */	bge lbl_802D067C
/* 802D0670  7C 03 D0 40 */	cmplw r3, r26
/* 802D0674  40 80 00 08 */	bge lbl_802D067C
/* 802D0678  7C 7A 1B 78 */	mr r26, r3
lbl_802D067C:
/* 802D067C  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802D0680:
/* 802D0680  28 03 00 00 */	cmplwi r3, 0
/* 802D0684  40 82 FF E4 */	bne lbl_802D0668
/* 802D0688  3C 1A 00 01 */	addis r0, r26, 1
/* 802D068C  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D0690  41 82 00 8C */	beq lbl_802D071C
/* 802D0694  A0 1A 00 00 */	lhz r0, 0(r26)
/* 802D0698  28 00 48 4D */	cmplwi r0, 0x484d
/* 802D069C  41 82 00 1C */	beq lbl_802D06B8
/* 802D06A0  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D06A4  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l
/* 802D06A8  38 63 01 EA */	addi r3, r3, 0x1ea
/* 802D06AC  4C C6 31 82 */	crclr 6
/* 802D06B0  48 01 7F 19 */	bl JUTReportConsole_f
/* 802D06B4  48 00 00 68 */	b lbl_802D071C
lbl_802D06B8:
/* 802D06B8  88 1A 00 02 */	lbz r0, 2(r26)
/* 802D06BC  54 08 06 7E */	clrlwi r8, r0, 0x19
/* 802D06C0  38 BA 00 10 */	addi r5, r26, 0x10
/* 802D06C4  38 7F 02 24 */	addi r3, r31, 0x224
/* 802D06C8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802D06CC  38 9F 02 4F */	addi r4, r31, 0x24f
/* 802D06D0  41 82 00 10 */	beq lbl_802D06E0
/* 802D06D4  3C 80 80 3A */	lis r4, JKRExpHeap__stringBase0@ha
/* 802D06D8  38 84 CA F0 */	addi r4, r4, JKRExpHeap__stringBase0@l
/* 802D06DC  38 84 02 49 */	addi r4, r4, 0x249
lbl_802D06E0:
/* 802D06E0  80 DA 00 04 */	lwz r6, 4(r26)
/* 802D06E4  88 FA 00 03 */	lbz r7, 3(r26)
/* 802D06E8  81 3A 00 08 */	lwz r9, 8(r26)
/* 802D06EC  81 5A 00 0C */	lwz r10, 0xc(r26)
/* 802D06F0  4C C6 31 82 */	crclr 6
/* 802D06F4  48 01 7E D5 */	bl JUTReportConsole_f
/* 802D06F8  80 7A 00 04 */	lwz r3, 4(r26)
/* 802D06FC  88 1A 00 02 */	lbz r0, 2(r26)
/* 802D0700  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802D0704  7C 03 02 14 */	add r0, r3, r0
/* 802D0708  7F A0 EA 14 */	add r29, r0, r29
/* 802D070C  7F 44 D3 78 */	mr r4, r26
/* 802D0710  3B BD 00 10 */	addi r29, r29, 0x10
/* 802D0714  3B 9C 00 01 */	addi r28, r28, 1
/* 802D0718  4B FF FF 44 */	b lbl_802D065C
lbl_802D071C:
/* 802D071C  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D0720  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l
/* 802D0724  38 63 02 55 */	addi r3, r3, 0x255
/* 802D0728  48 01 7F 21 */	bl JUTReportConsole
/* 802D072C  80 19 00 78 */	lwz r0, 0x78(r25)
/* 802D0730  28 00 00 00 */	cmplwi r0, 0
/* 802D0734  40 82 00 14 */	bne lbl_802D0748
/* 802D0738  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D073C  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l
/* 802D0740  38 63 01 E3 */	addi r3, r3, 0x1e3
/* 802D0744  48 01 7F 05 */	bl JUTReportConsole
lbl_802D0748:
/* 802D0748  83 F9 00 78 */	lwz r31, 0x78(r25)
/* 802D074C  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D0750  3B 43 CA F0 */	addi r26, r3, JKRExpHeap__stringBase0@l
/* 802D0754  48 00 00 38 */	b lbl_802D078C
lbl_802D0758:
/* 802D0758  38 7A 02 24 */	addi r3, r26, 0x224
/* 802D075C  38 9A 02 64 */	addi r4, r26, 0x264
/* 802D0760  38 BF 00 10 */	addi r5, r31, 0x10
/* 802D0764  80 DF 00 04 */	lwz r6, 4(r31)
/* 802D0768  88 FF 00 03 */	lbz r7, 3(r31)
/* 802D076C  88 1F 00 02 */	lbz r0, 2(r31)
/* 802D0770  54 08 06 7E */	clrlwi r8, r0, 0x19
/* 802D0774  81 3F 00 08 */	lwz r9, 8(r31)
/* 802D0778  81 5F 00 0C */	lwz r10, 0xc(r31)
/* 802D077C  4C C6 31 82 */	crclr 6
/* 802D0780  48 01 7E 49 */	bl JUTReportConsole_f
/* 802D0784  83 FF 00 0C */	lwz r31, 0xc(r31)
/* 802D0788  3B 7B 00 01 */	addi r27, r27, 1
lbl_802D078C:
/* 802D078C  28 1F 00 00 */	cmplwi r31, 0
/* 802D0790  40 82 FF C8 */	bne lbl_802D0758
/* 802D0794  80 B9 00 38 */	lwz r5, 0x38(r25)
/* 802D0798  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha
/* 802D079C  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l
/* 802D07A0  38 63 02 6A */	addi r3, r3, 0x26a
/* 802D07A4  7F A4 EB 78 */	mr r4, r29
/* 802D07A8  C0 62 C5 98 */	lfs f3, lit_1121(r2)
/* 802D07AC  C8 42 C5 A0 */	lfd f2, lit_1123(r2)
/* 802D07B0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802D07B4  3C 00 43 30 */	lis r0, 0x4330
/* 802D07B8  90 01 00 08 */	stw r0, 8(r1)
/* 802D07BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 802D07C0  EC 20 10 28 */	fsubs f1, f0, f2
/* 802D07C4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802D07C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D07CC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802D07D0  EC 00 10 28 */	fsubs f0, f0, f2
/* 802D07D4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802D07D8  EC 23 00 32 */	fmuls f1, f3, f0
/* 802D07DC  7F 86 E3 78 */	mr r6, r28
/* 802D07E0  7F 67 DB 78 */	mr r7, r27
/* 802D07E4  4C C6 32 42 */	crset 6
/* 802D07E8  48 01 7D E1 */	bl JUTReportConsole_f
/* 802D07EC  38 79 00 18 */	addi r3, r25, 0x18
/* 802D07F0  48 06 E9 2D */	bl OSUnlockMutex
/* 802D07F4  7F C3 F3 78 */	mr r3, r30
/* 802D07F8  39 61 00 40 */	addi r11, r1, 0x40
/* 802D07FC  48 09 1A 1D */	bl _restgpr_25
/* 802D0800  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802D0804  7C 08 03 A6 */	mtlr r0
/* 802D0808  38 21 00 40 */	addi r1, r1, 0x40
/* 802D080C  4E 80 00 20 */	blr 
