lbl_802F5410:
/* 802F5410  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802F5414  7C 08 02 A6 */	mflr r0
/* 802F5418  90 01 00 54 */	stw r0, 0x54(r1)
/* 802F541C  39 61 00 50 */	addi r11, r1, 0x50
/* 802F5420  48 06 CD B1 */	bl _savegpr_26
/* 802F5424  7C 7A 1B 78 */	mr r26, r3
/* 802F5428  7C 9B 23 78 */	mr r27, r4
/* 802F542C  7C BC 2B 78 */	mr r28, r5
/* 802F5430  83 E4 00 00 */	lwz r31, 0(r4)
/* 802F5434  3B C0 00 00 */	li r30, 0
/* 802F5438  3B A0 00 00 */	li r29, 0
lbl_802F543C:
/* 802F543C  80 7A 00 04 */	lwz r3, 4(r26)
/* 802F5440  80 9B 00 00 */	lwz r4, 0(r27)
/* 802F5444  88 84 00 00 */	lbz r4, 0(r4)
/* 802F5448  81 83 00 00 */	lwz r12, 0(r3)
/* 802F544C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802F5450  7D 89 03 A6 */	mtctr r12
/* 802F5454  4E 80 04 21 */	bctrl 
/* 802F5458  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F545C  41 82 00 24 */	beq lbl_802F5480
/* 802F5460  80 9B 00 00 */	lwz r4, 0(r27)
/* 802F5464  88 64 00 00 */	lbz r3, 0(r4)
/* 802F5468  88 04 00 01 */	lbz r0, 1(r4)
/* 802F546C  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 802F5470  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802F5474  38 04 00 02 */	addi r0, r4, 2
/* 802F5478  90 1B 00 00 */	stw r0, 0(r27)
/* 802F547C  48 00 00 14 */	b lbl_802F5490
lbl_802F5480:
/* 802F5480  80 7B 00 00 */	lwz r3, 0(r27)
/* 802F5484  88 A3 00 00 */	lbz r5, 0(r3)
/* 802F5488  38 03 00 01 */	addi r0, r3, 1
/* 802F548C  90 1B 00 00 */	stw r0, 0(r27)
lbl_802F5490:
/* 802F5490  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 802F5494  28 00 00 80 */	cmplwi r0, 0x80
/* 802F5498  40 80 00 0C */	bge lbl_802F54A4
/* 802F549C  28 00 00 20 */	cmplwi r0, 0x20
/* 802F54A0  40 80 00 10 */	bge lbl_802F54B0
lbl_802F54A4:
/* 802F54A4  93 FB 00 00 */	stw r31, 0(r27)
/* 802F54A8  38 60 00 00 */	li r3, 0
/* 802F54AC  48 00 04 88 */	b lbl_802F5934
lbl_802F54B0:
/* 802F54B0  57 C0 42 2E */	rlwinm r0, r30, 8, 8, 0x17
/* 802F54B4  7C 00 2B 78 */	or r0, r0, r5
/* 802F54B8  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 802F54BC  3B BD 00 01 */	addi r29, r29, 1
/* 802F54C0  2C 1D 00 02 */	cmpwi r29, 2
/* 802F54C4  41 80 FF 78 */	blt lbl_802F543C
/* 802F54C8  80 1A 00 08 */	lwz r0, 8(r26)
/* 802F54CC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F54D0  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 802F54D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 802F54D8  2C 1E 47 4D */	cmpwi r30, 0x474d
/* 802F54DC  41 82 03 BC */	beq lbl_802F5898
/* 802F54E0  40 80 00 64 */	bge lbl_802F5544
/* 802F54E4  2C 1E 43 55 */	cmpwi r30, 0x4355
/* 802F54E8  41 82 00 B0 */	beq lbl_802F5598
/* 802F54EC  40 80 00 34 */	bge lbl_802F5520
/* 802F54F0  2C 1E 43 4C */	cmpwi r30, 0x434c
/* 802F54F4  41 82 00 F4 */	beq lbl_802F55E8
/* 802F54F8  40 80 00 1C */	bge lbl_802F5514
/* 802F54FC  2C 1E 43 44 */	cmpwi r30, 0x4344
/* 802F5500  41 82 00 C0 */	beq lbl_802F55C0
/* 802F5504  40 80 04 24 */	bge lbl_802F5928
/* 802F5508  2C 1E 43 43 */	cmpwi r30, 0x4343
/* 802F550C  40 80 01 7C */	bge lbl_802F5688
/* 802F5510  48 00 04 18 */	b lbl_802F5928
lbl_802F5514:
/* 802F5514  2C 1E 43 52 */	cmpwi r30, 0x4352
/* 802F5518  41 82 00 F8 */	beq lbl_802F5610
/* 802F551C  48 00 04 0C */	b lbl_802F5928
lbl_802F5520:
/* 802F5520  2C 1E 46 59 */	cmpwi r30, 0x4659
/* 802F5524  41 82 03 04 */	beq lbl_802F5828
/* 802F5528  40 80 00 10 */	bge lbl_802F5538
/* 802F552C  2C 1E 46 58 */	cmpwi r30, 0x4658
/* 802F5530  40 80 02 C8 */	bge lbl_802F57F8
/* 802F5534  48 00 03 F4 */	b lbl_802F5928
lbl_802F5538:
/* 802F5538  2C 1E 47 43 */	cmpwi r30, 0x4743
/* 802F553C  41 82 02 04 */	beq lbl_802F5740
/* 802F5540  48 00 03 E8 */	b lbl_802F5928
lbl_802F5544:
/* 802F5544  2C 1E 53 48 */	cmpwi r30, 0x5348
/* 802F5548  41 82 03 10 */	beq lbl_802F5858
/* 802F554C  40 80 00 28 */	bge lbl_802F5574
/* 802F5550  2C 1E 4C 44 */	cmpwi r30, 0x4c44
/* 802F5554  41 82 00 F8 */	beq lbl_802F564C
/* 802F5558  40 80 00 10 */	bge lbl_802F5568
/* 802F555C  2C 1E 48 4D */	cmpwi r30, 0x484d
/* 802F5560  41 82 03 D0 */	beq lbl_802F5930
/* 802F5564  48 00 03 C4 */	b lbl_802F5928
lbl_802F5568:
/* 802F5568  2C 1E 4C 55 */	cmpwi r30, 0x4c55
/* 802F556C  41 82 00 CC */	beq lbl_802F5638
/* 802F5570  48 00 03 B8 */	b lbl_802F5928
lbl_802F5574:
/* 802F5574  2C 1E 53 55 */	cmpwi r30, 0x5355
/* 802F5578  41 82 03 B0 */	beq lbl_802F5928
/* 802F557C  40 80 00 10 */	bge lbl_802F558C
/* 802F5580  2C 1E 53 54 */	cmpwi r30, 0x5354
/* 802F5584  40 80 00 DC */	bge lbl_802F5660
/* 802F5588  48 00 03 A0 */	b lbl_802F5928
lbl_802F558C:
/* 802F558C  2C 1E 53 57 */	cmpwi r30, 0x5357
/* 802F5590  40 80 03 98 */	bge lbl_802F5928
/* 802F5594  48 00 02 E4 */	b lbl_802F5878
lbl_802F5598:
/* 802F5598  7F 43 D3 78 */	mr r3, r26
/* 802F559C  7F 64 DB 78 */	mr r4, r27
/* 802F55A0  C0 22 C7 EC */	lfs f1, lit_937(r2)
/* 802F55A4  C0 42 C7 C8 */	lfs f2, lit_418(r2)
/* 802F55A8  38 A0 00 0A */	li r5, 0xa
/* 802F55AC  48 00 05 19 */	bl getNumberF32__8J2DPrintFPPCUcffi
/* 802F55B0  C0 1A 00 30 */	lfs f0, 0x30(r26)
/* 802F55B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F55B8  D0 1A 00 30 */	stfs f0, 0x30(r26)
/* 802F55BC  48 00 03 74 */	b lbl_802F5930
lbl_802F55C0:
/* 802F55C0  7F 43 D3 78 */	mr r3, r26
/* 802F55C4  7F 64 DB 78 */	mr r4, r27
/* 802F55C8  C0 22 C7 EC */	lfs f1, lit_937(r2)
/* 802F55CC  C0 42 C7 C8 */	lfs f2, lit_418(r2)
/* 802F55D0  38 A0 00 0A */	li r5, 0xa
/* 802F55D4  48 00 04 F1 */	bl getNumberF32__8J2DPrintFPPCUcffi
/* 802F55D8  C0 1A 00 30 */	lfs f0, 0x30(r26)
/* 802F55DC  EC 00 08 2A */	fadds f0, f0, f1
/* 802F55E0  D0 1A 00 30 */	stfs f0, 0x30(r26)
/* 802F55E4  48 00 03 4C */	b lbl_802F5930
lbl_802F55E8:
/* 802F55E8  7F 43 D3 78 */	mr r3, r26
/* 802F55EC  7F 64 DB 78 */	mr r4, r27
/* 802F55F0  C0 22 C7 EC */	lfs f1, lit_937(r2)
/* 802F55F4  C0 42 C7 C8 */	lfs f2, lit_418(r2)
/* 802F55F8  38 A0 00 0A */	li r5, 0xa
/* 802F55FC  48 00 04 C9 */	bl getNumberF32__8J2DPrintFPPCUcffi
/* 802F5600  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 802F5604  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F5608  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 802F560C  48 00 03 24 */	b lbl_802F5930
lbl_802F5610:
/* 802F5610  7F 43 D3 78 */	mr r3, r26
/* 802F5614  7F 64 DB 78 */	mr r4, r27
/* 802F5618  C0 22 C7 EC */	lfs f1, lit_937(r2)
/* 802F561C  C0 42 C7 C8 */	lfs f2, lit_418(r2)
/* 802F5620  38 A0 00 0A */	li r5, 0xa
/* 802F5624  48 00 04 A1 */	bl getNumberF32__8J2DPrintFPPCUcffi
/* 802F5628  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 802F562C  EC 00 08 2A */	fadds f0, f0, f1
/* 802F5630  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 802F5634  48 00 02 FC */	b lbl_802F5930
lbl_802F5638:
/* 802F5638  C0 3A 00 30 */	lfs f1, 0x30(r26)
/* 802F563C  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 802F5640  EC 01 00 28 */	fsubs f0, f1, f0
/* 802F5644  D0 1A 00 30 */	stfs f0, 0x30(r26)
/* 802F5648  48 00 02 E8 */	b lbl_802F5930
lbl_802F564C:
/* 802F564C  C0 3A 00 30 */	lfs f1, 0x30(r26)
/* 802F5650  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 802F5654  EC 01 00 2A */	fadds f0, f1, f0
/* 802F5658  D0 1A 00 30 */	stfs f0, 0x30(r26)
/* 802F565C  48 00 02 D4 */	b lbl_802F5930
lbl_802F5660:
/* 802F5660  A8 BA 00 20 */	lha r5, 0x20(r26)
/* 802F5664  7F 43 D3 78 */	mr r3, r26
/* 802F5668  7F 64 DB 78 */	mr r4, r27
/* 802F566C  7C A6 2B 78 */	mr r6, r5
/* 802F5670  38 E0 00 0A */	li r7, 0xa
/* 802F5674  48 00 03 4D */	bl getNumberS32__8J2DPrintFPPCUclli
/* 802F5678  2C 03 00 00 */	cmpwi r3, 0
/* 802F567C  40 81 02 B4 */	ble lbl_802F5930
/* 802F5680  B0 7A 00 20 */	sth r3, 0x20(r26)
/* 802F5684  48 00 02 AC */	b lbl_802F5930
lbl_802F5688:
/* 802F5688  7F 43 D3 78 */	mr r3, r26
/* 802F568C  7F 64 DB 78 */	mr r4, r27
/* 802F5690  80 BA 00 40 */	lwz r5, 0x40(r26)
/* 802F5694  80 DA 00 08 */	lwz r6, 8(r26)
/* 802F5698  38 E0 00 10 */	li r7, 0x10
/* 802F569C  48 00 03 25 */	bl getNumberS32__8J2DPrintFPPCUclli
/* 802F56A0  90 61 00 24 */	stw r3, 0x24(r1)
/* 802F56A4  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802F56A8  98 1A 00 08 */	stb r0, 8(r26)
/* 802F56AC  88 01 00 25 */	lbz r0, 0x25(r1)
/* 802F56B0  98 1A 00 09 */	stb r0, 9(r26)
/* 802F56B4  88 01 00 26 */	lbz r0, 0x26(r1)
/* 802F56B8  98 1A 00 0A */	stb r0, 0xa(r26)
/* 802F56BC  88 01 00 27 */	lbz r0, 0x27(r1)
/* 802F56C0  98 1A 00 0B */	stb r0, 0xb(r26)
/* 802F56C4  88 1A 00 08 */	lbz r0, 8(r26)
/* 802F56C8  98 01 00 2C */	stb r0, 0x2c(r1)
/* 802F56CC  88 1A 00 09 */	lbz r0, 9(r26)
/* 802F56D0  98 01 00 2D */	stb r0, 0x2d(r1)
/* 802F56D4  88 1A 00 0A */	lbz r0, 0xa(r26)
/* 802F56D8  98 01 00 2E */	stb r0, 0x2e(r1)
/* 802F56DC  88 1A 00 0B */	lbz r0, 0xb(r26)
/* 802F56E0  98 01 00 2F */	stb r0, 0x2f(r1)
/* 802F56E4  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 802F56E8  7C 00 21 D6 */	mullw r0, r0, r4
/* 802F56EC  38 60 00 FF */	li r3, 0xff
/* 802F56F0  7C 00 1B D6 */	divw r0, r0, r3
/* 802F56F4  98 01 00 2F */	stb r0, 0x2f(r1)
/* 802F56F8  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 802F56FC  7C 00 21 D6 */	mullw r0, r0, r4
/* 802F5700  7C 00 1B D6 */	divw r0, r0, r3
/* 802F5704  98 01 00 2B */	stb r0, 0x2b(r1)
/* 802F5708  88 1A 00 22 */	lbz r0, 0x22(r26)
/* 802F570C  28 00 00 00 */	cmplwi r0, 0
/* 802F5710  38 61 00 2C */	addi r3, r1, 0x2c
/* 802F5714  41 82 00 08 */	beq lbl_802F571C
/* 802F5718  38 61 00 28 */	addi r3, r1, 0x28
lbl_802F571C:
/* 802F571C  80 03 00 00 */	lwz r0, 0(r3)
/* 802F5720  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802F5724  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802F5728  90 01 00 20 */	stw r0, 0x20(r1)
/* 802F572C  80 7A 00 04 */	lwz r3, 4(r26)
/* 802F5730  38 81 00 20 */	addi r4, r1, 0x20
/* 802F5734  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802F5738  4B FE 96 8D */	bl setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
/* 802F573C  48 00 01 F4 */	b lbl_802F5930
lbl_802F5740:
/* 802F5740  7F 43 D3 78 */	mr r3, r26
/* 802F5744  7F 64 DB 78 */	mr r4, r27
/* 802F5748  80 BA 00 44 */	lwz r5, 0x44(r26)
/* 802F574C  80 DA 00 0C */	lwz r6, 0xc(r26)
/* 802F5750  38 E0 00 10 */	li r7, 0x10
/* 802F5754  48 00 02 6D */	bl getNumberS32__8J2DPrintFPPCUclli
/* 802F5758  90 61 00 18 */	stw r3, 0x18(r1)
/* 802F575C  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802F5760  98 1A 00 0C */	stb r0, 0xc(r26)
/* 802F5764  88 01 00 19 */	lbz r0, 0x19(r1)
/* 802F5768  98 1A 00 0D */	stb r0, 0xd(r26)
/* 802F576C  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 802F5770  98 1A 00 0E */	stb r0, 0xe(r26)
/* 802F5774  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 802F5778  98 1A 00 0F */	stb r0, 0xf(r26)
/* 802F577C  88 1A 00 0C */	lbz r0, 0xc(r26)
/* 802F5780  98 01 00 28 */	stb r0, 0x28(r1)
/* 802F5784  88 1A 00 0D */	lbz r0, 0xd(r26)
/* 802F5788  98 01 00 29 */	stb r0, 0x29(r1)
/* 802F578C  88 1A 00 0E */	lbz r0, 0xe(r26)
/* 802F5790  98 01 00 2A */	stb r0, 0x2a(r1)
/* 802F5794  88 9A 00 0F */	lbz r4, 0xf(r26)
/* 802F5798  98 81 00 2B */	stb r4, 0x2b(r1)
/* 802F579C  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 802F57A0  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 802F57A4  7C 00 29 D6 */	mullw r0, r0, r5
/* 802F57A8  38 60 00 FF */	li r3, 0xff
/* 802F57AC  7C 00 1B D6 */	divw r0, r0, r3
/* 802F57B0  98 01 00 2F */	stb r0, 0x2f(r1)
/* 802F57B4  7C 04 29 D6 */	mullw r0, r4, r5
/* 802F57B8  7C 00 1B D6 */	divw r0, r0, r3
/* 802F57BC  98 01 00 2B */	stb r0, 0x2b(r1)
/* 802F57C0  88 1A 00 22 */	lbz r0, 0x22(r26)
/* 802F57C4  28 00 00 00 */	cmplwi r0, 0
/* 802F57C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 802F57CC  41 82 00 08 */	beq lbl_802F57D4
/* 802F57D0  38 61 00 28 */	addi r3, r1, 0x28
lbl_802F57D4:
/* 802F57D4  80 03 00 00 */	lwz r0, 0(r3)
/* 802F57D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F57DC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802F57E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F57E4  80 7A 00 04 */	lwz r3, 4(r26)
/* 802F57E8  38 81 00 14 */	addi r4, r1, 0x14
/* 802F57EC  38 A1 00 10 */	addi r5, r1, 0x10
/* 802F57F0  4B FE 95 D5 */	bl setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
/* 802F57F4  48 00 01 3C */	b lbl_802F5930
lbl_802F57F8:
/* 802F57F8  7F 43 D3 78 */	mr r3, r26
/* 802F57FC  7F 64 DB 78 */	mr r4, r27
/* 802F5800  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 802F5804  C0 5A 00 18 */	lfs f2, 0x18(r26)
/* 802F5808  38 A0 00 0A */	li r5, 0xa
/* 802F580C  48 00 02 B9 */	bl getNumberF32__8J2DPrintFPPCUcffi
/* 802F5810  C0 02 C7 C8 */	lfs f0, lit_418(r2)
/* 802F5814  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F5818  4C 41 13 82 */	cror 2, 1, 2
/* 802F581C  40 82 01 14 */	bne lbl_802F5930
/* 802F5820  D0 3A 00 18 */	stfs f1, 0x18(r26)
/* 802F5824  48 00 01 0C */	b lbl_802F5930
lbl_802F5828:
/* 802F5828  7F 43 D3 78 */	mr r3, r26
/* 802F582C  7F 64 DB 78 */	mr r4, r27
/* 802F5830  C0 3A 00 54 */	lfs f1, 0x54(r26)
/* 802F5834  C0 5A 00 1C */	lfs f2, 0x1c(r26)
/* 802F5838  38 A0 00 0A */	li r5, 0xa
/* 802F583C  48 00 02 89 */	bl getNumberF32__8J2DPrintFPPCUcffi
/* 802F5840  C0 02 C7 C8 */	lfs f0, lit_418(r2)
/* 802F5844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F5848  4C 41 13 82 */	cror 2, 1, 2
/* 802F584C  40 82 00 E4 */	bne lbl_802F5930
/* 802F5850  D0 3A 00 1C */	stfs f1, 0x1c(r26)
/* 802F5854  48 00 00 DC */	b lbl_802F5930
lbl_802F5858:
/* 802F5858  7F 43 D3 78 */	mr r3, r26
/* 802F585C  7F 64 DB 78 */	mr r4, r27
/* 802F5860  C0 3A 00 48 */	lfs f1, 0x48(r26)
/* 802F5864  C0 5A 00 10 */	lfs f2, 0x10(r26)
/* 802F5868  38 A0 00 0A */	li r5, 0xa
/* 802F586C  48 00 02 59 */	bl getNumberF32__8J2DPrintFPPCUcffi
/* 802F5870  D0 3A 00 10 */	stfs f1, 0x10(r26)
/* 802F5874  48 00 00 BC */	b lbl_802F5930
lbl_802F5878:
/* 802F5878  7F 43 D3 78 */	mr r3, r26
/* 802F587C  7F 64 DB 78 */	mr r4, r27
/* 802F5880  C0 3A 00 4C */	lfs f1, 0x4c(r26)
/* 802F5884  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 802F5888  38 A0 00 0A */	li r5, 0xa
/* 802F588C  48 00 02 39 */	bl getNumberF32__8J2DPrintFPPCUcffi
/* 802F5890  D0 3A 00 14 */	stfs f1, 0x14(r26)
/* 802F5894  48 00 00 9C */	b lbl_802F5930
lbl_802F5898:
/* 802F5898  88 DA 00 22 */	lbz r6, 0x22(r26)
/* 802F589C  7F 43 D3 78 */	mr r3, r26
/* 802F58A0  7F 64 DB 78 */	mr r4, r27
/* 802F58A4  7C C0 00 34 */	cntlzw r0, r6
/* 802F58A8  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 802F58AC  38 E0 00 0A */	li r7, 0xa
/* 802F58B0  48 00 01 11 */	bl getNumberS32__8J2DPrintFPPCUclli
/* 802F58B4  7C 60 00 34 */	cntlzw r0, r3
/* 802F58B8  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 802F58BC  7C 00 00 34 */	cntlzw r0, r0
/* 802F58C0  54 00 D9 7E */	srwi r0, r0, 5
/* 802F58C4  98 1A 00 22 */	stb r0, 0x22(r26)
/* 802F58C8  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 802F58CC  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 802F58D0  7C 00 21 D6 */	mullw r0, r0, r4
/* 802F58D4  38 60 00 FF */	li r3, 0xff
/* 802F58D8  7C 00 1B D6 */	divw r0, r0, r3
/* 802F58DC  98 01 00 2F */	stb r0, 0x2f(r1)
/* 802F58E0  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 802F58E4  7C 00 21 D6 */	mullw r0, r0, r4
/* 802F58E8  7C 00 1B D6 */	divw r0, r0, r3
/* 802F58EC  98 01 00 2B */	stb r0, 0x2b(r1)
/* 802F58F0  88 1A 00 22 */	lbz r0, 0x22(r26)
/* 802F58F4  28 00 00 00 */	cmplwi r0, 0
/* 802F58F8  38 61 00 2C */	addi r3, r1, 0x2c
/* 802F58FC  41 82 00 08 */	beq lbl_802F5904
/* 802F5900  38 61 00 28 */	addi r3, r1, 0x28
lbl_802F5904:
/* 802F5904  80 03 00 00 */	lwz r0, 0(r3)
/* 802F5908  90 01 00 08 */	stw r0, 8(r1)
/* 802F590C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802F5910  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F5914  80 7A 00 04 */	lwz r3, 4(r26)
/* 802F5918  38 81 00 0C */	addi r4, r1, 0xc
/* 802F591C  38 A1 00 08 */	addi r5, r1, 8
/* 802F5920  4B FE 94 A5 */	bl setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
/* 802F5924  48 00 00 0C */	b lbl_802F5930
lbl_802F5928:
/* 802F5928  93 FB 00 00 */	stw r31, 0(r27)
/* 802F592C  3B C0 00 00 */	li r30, 0
lbl_802F5930:
/* 802F5930  7F C3 F3 78 */	mr r3, r30
lbl_802F5934:
/* 802F5934  39 61 00 50 */	addi r11, r1, 0x50
/* 802F5938  48 06 C8 E5 */	bl _restgpr_26
/* 802F593C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802F5940  7C 08 03 A6 */	mtlr r0
/* 802F5944  38 21 00 50 */	addi r1, r1, 0x50
/* 802F5948  4E 80 00 20 */	blr 
