lbl_801E5678:
/* 801E5678  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801E567C  7C 08 02 A6 */	mflr r0
/* 801E5680  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801E5684  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801E5688  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 801E568C  39 61 00 90 */	addi r11, r1, 0x90
/* 801E5690  48 17 CB 29 */	bl _savegpr_20
/* 801E5694  7C 7F 1B 78 */	mr r31, r3
/* 801E5698  3C 60 80 39 */	lis r3, dMo_soundMode@ha
/* 801E569C  3B C3 6E A8 */	addi r30, r3, dMo_soundMode@l
/* 801E56A0  38 60 00 6C */	li r3, 0x6c
/* 801E56A4  48 0E 95 A9 */	bl __nw__FUl
/* 801E56A8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E56AC  41 82 00 28 */	beq lbl_801E56D4
/* 801E56B0  80 9F 00 04 */	lwz r4, 4(r31)
/* 801E56B4  3C A0 6C 65 */	lis r5, 0x6C65 /* 0x6C655F6E@ha */
/* 801E56B8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6C655F6E@l */
/* 801E56BC  3C A0 00 74 */	lis r5, 0x0074 /* 0x00746974@ha */
/* 801E56C0  38 A5 69 74 */	addi r5, r5, 0x6974 /* 0x00746974@l */
/* 801E56C4  38 E0 00 00 */	li r7, 0
/* 801E56C8  39 00 00 00 */	li r8, 0
/* 801E56CC  48 06 E2 B9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E56D0  7C 60 1B 78 */	mr r0, r3
lbl_801E56D4:
/* 801E56D4  90 1F 00 70 */	stw r0, 0x70(r31)
/* 801E56D8  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 801E56DC  38 61 00 34 */	addi r3, r1, 0x34
/* 801E56E0  80 A4 00 04 */	lwz r5, 4(r4)
/* 801E56E4  38 C0 00 00 */	li r6, 0
/* 801E56E8  38 E0 00 00 */	li r7, 0
/* 801E56EC  48 06 F7 D1 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801E56F0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 801E56F4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801E56F8  90 61 00 4C */	stw r3, 0x4c(r1)
/* 801E56FC  90 01 00 50 */	stw r0, 0x50(r1)
/* 801E5700  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801E5704  90 01 00 54 */	stw r0, 0x54(r1)
/* 801E5708  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 801E570C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801E5710  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801E5714  C0 03 07 14 */	lfs f0, 0x714(r3)
/* 801E5718  EC 01 00 2A */	fadds f0, f1, f0
/* 801E571C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801E5720  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 801E5724  3B 20 00 00 */	li r25, 0
/* 801E5728  3A 80 00 00 */	li r20, 0
/* 801E572C  3A A0 00 00 */	li r21, 0
/* 801E5730  3A FE 00 B0 */	addi r23, r30, 0xb0
/* 801E5734  3A DE 00 E0 */	addi r22, r30, 0xe0
lbl_801E5738:
/* 801E5738  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E573C  7C D7 AA 14 */	add r6, r23, r21
/* 801E5740  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5744  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5748  81 83 00 00 */	lwz r12, 0(r3)
/* 801E574C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5750  7D 89 03 A6 */	mtctr r12
/* 801E5754  4E 80 04 21 */	bctrl 
/* 801E5758  7F 1F A2 14 */	add r24, r31, r20
/* 801E575C  90 78 02 80 */	stw r3, 0x280(r24)
/* 801E5760  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E5764  7C D6 AA 14 */	add r6, r22, r21
/* 801E5768  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E576C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5770  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5774  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5778  7D 89 03 A6 */	mtctr r12
/* 801E577C  4E 80 04 21 */	bctrl 
/* 801E5780  90 78 02 98 */	stw r3, 0x298(r24)
/* 801E5784  3B 39 00 01 */	addi r25, r25, 1
/* 801E5788  2C 19 00 06 */	cmpwi r25, 6
/* 801E578C  3A 94 00 04 */	addi r20, r20, 4
/* 801E5790  3A B5 00 08 */	addi r21, r21, 8
/* 801E5794  41 80 FF A4 */	blt lbl_801E5738
/* 801E5798  38 61 00 24 */	addi r3, r1, 0x24
/* 801E579C  80 9F 02 84 */	lwz r4, 0x284(r31)
/* 801E57A0  81 84 00 00 */	lwz r12, 0(r4)
/* 801E57A4  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 801E57A8  7D 89 03 A6 */	mtctr r12
/* 801E57AC  4E 80 04 21 */	bctrl 
/* 801E57B0  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801E57B4  98 1F 02 B0 */	stb r0, 0x2b0(r31)
/* 801E57B8  88 01 00 25 */	lbz r0, 0x25(r1)
/* 801E57BC  98 1F 02 B1 */	stb r0, 0x2b1(r31)
/* 801E57C0  88 01 00 26 */	lbz r0, 0x26(r1)
/* 801E57C4  98 1F 02 B2 */	stb r0, 0x2b2(r31)
/* 801E57C8  88 01 00 27 */	lbz r0, 0x27(r1)
/* 801E57CC  98 1F 02 B3 */	stb r0, 0x2b3(r31)
/* 801E57D0  38 61 00 20 */	addi r3, r1, 0x20
/* 801E57D4  80 9F 02 84 */	lwz r4, 0x284(r31)
/* 801E57D8  81 84 00 00 */	lwz r12, 0(r4)
/* 801E57DC  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 801E57E0  7D 89 03 A6 */	mtctr r12
/* 801E57E4  4E 80 04 21 */	bctrl 
/* 801E57E8  88 01 00 20 */	lbz r0, 0x20(r1)
/* 801E57EC  98 1F 02 C0 */	stb r0, 0x2c0(r31)
/* 801E57F0  88 01 00 21 */	lbz r0, 0x21(r1)
/* 801E57F4  98 1F 02 C1 */	stb r0, 0x2c1(r31)
/* 801E57F8  88 01 00 22 */	lbz r0, 0x22(r1)
/* 801E57FC  98 1F 02 C2 */	stb r0, 0x2c2(r31)
/* 801E5800  88 01 00 23 */	lbz r0, 0x23(r1)
/* 801E5804  98 1F 02 C3 */	stb r0, 0x2c3(r31)
/* 801E5808  38 61 00 1C */	addi r3, r1, 0x1c
/* 801E580C  80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 801E5810  81 84 00 00 */	lwz r12, 0(r4)
/* 801E5814  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 801E5818  7D 89 03 A6 */	mtctr r12
/* 801E581C  4E 80 04 21 */	bctrl 
/* 801E5820  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 801E5824  98 1F 02 B4 */	stb r0, 0x2b4(r31)
/* 801E5828  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 801E582C  98 1F 02 B5 */	stb r0, 0x2b5(r31)
/* 801E5830  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 801E5834  98 1F 02 B6 */	stb r0, 0x2b6(r31)
/* 801E5838  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 801E583C  98 1F 02 B7 */	stb r0, 0x2b7(r31)
/* 801E5840  38 61 00 18 */	addi r3, r1, 0x18
/* 801E5844  80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 801E5848  81 84 00 00 */	lwz r12, 0(r4)
/* 801E584C  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801E5850  7D 89 03 A6 */	mtctr r12
/* 801E5854  4E 80 04 21 */	bctrl 
/* 801E5858  88 01 00 18 */	lbz r0, 0x18(r1)
/* 801E585C  98 1F 02 C4 */	stb r0, 0x2c4(r31)
/* 801E5860  88 01 00 19 */	lbz r0, 0x19(r1)
/* 801E5864  98 1F 02 C5 */	stb r0, 0x2c5(r31)
/* 801E5868  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 801E586C  98 1F 02 C6 */	stb r0, 0x2c6(r31)
/* 801E5870  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 801E5874  98 1F 02 C7 */	stb r0, 0x2c7(r31)
/* 801E5878  38 61 00 14 */	addi r3, r1, 0x14
/* 801E587C  80 9F 02 80 */	lwz r4, 0x280(r31)
/* 801E5880  81 84 00 00 */	lwz r12, 0(r4)
/* 801E5884  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 801E5888  7D 89 03 A6 */	mtctr r12
/* 801E588C  4E 80 04 21 */	bctrl 
/* 801E5890  88 01 00 14 */	lbz r0, 0x14(r1)
/* 801E5894  98 1F 02 B8 */	stb r0, 0x2b8(r31)
/* 801E5898  88 01 00 15 */	lbz r0, 0x15(r1)
/* 801E589C  98 1F 02 B9 */	stb r0, 0x2b9(r31)
/* 801E58A0  88 01 00 16 */	lbz r0, 0x16(r1)
/* 801E58A4  98 1F 02 BA */	stb r0, 0x2ba(r31)
/* 801E58A8  88 01 00 17 */	lbz r0, 0x17(r1)
/* 801E58AC  98 1F 02 BB */	stb r0, 0x2bb(r31)
/* 801E58B0  38 61 00 10 */	addi r3, r1, 0x10
/* 801E58B4  80 9F 02 80 */	lwz r4, 0x280(r31)
/* 801E58B8  81 84 00 00 */	lwz r12, 0(r4)
/* 801E58BC  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 801E58C0  7D 89 03 A6 */	mtctr r12
/* 801E58C4  4E 80 04 21 */	bctrl 
/* 801E58C8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801E58CC  98 1F 02 C8 */	stb r0, 0x2c8(r31)
/* 801E58D0  88 01 00 11 */	lbz r0, 0x11(r1)
/* 801E58D4  98 1F 02 C9 */	stb r0, 0x2c9(r31)
/* 801E58D8  88 01 00 12 */	lbz r0, 0x12(r1)
/* 801E58DC  98 1F 02 CA */	stb r0, 0x2ca(r31)
/* 801E58E0  88 01 00 13 */	lbz r0, 0x13(r1)
/* 801E58E4  98 1F 02 CB */	stb r0, 0x2cb(r31)
/* 801E58E8  38 61 00 0C */	addi r3, r1, 0xc
/* 801E58EC  80 9F 02 98 */	lwz r4, 0x298(r31)
/* 801E58F0  81 84 00 00 */	lwz r12, 0(r4)
/* 801E58F4  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 801E58F8  7D 89 03 A6 */	mtctr r12
/* 801E58FC  4E 80 04 21 */	bctrl 
/* 801E5900  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801E5904  98 1F 02 BC */	stb r0, 0x2bc(r31)
/* 801E5908  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801E590C  98 1F 02 BD */	stb r0, 0x2bd(r31)
/* 801E5910  88 01 00 0E */	lbz r0, 0xe(r1)
/* 801E5914  98 1F 02 BE */	stb r0, 0x2be(r31)
/* 801E5918  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801E591C  98 1F 02 BF */	stb r0, 0x2bf(r31)
/* 801E5920  38 61 00 08 */	addi r3, r1, 8
/* 801E5924  80 9F 02 98 */	lwz r4, 0x298(r31)
/* 801E5928  81 84 00 00 */	lwz r12, 0(r4)
/* 801E592C  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801E5930  7D 89 03 A6 */	mtctr r12
/* 801E5934  4E 80 04 21 */	bctrl 
/* 801E5938  88 01 00 08 */	lbz r0, 8(r1)
/* 801E593C  98 1F 02 CC */	stb r0, 0x2cc(r31)
/* 801E5940  88 01 00 09 */	lbz r0, 9(r1)
/* 801E5944  98 1F 02 CD */	stb r0, 0x2cd(r31)
/* 801E5948  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801E594C  98 1F 02 CE */	stb r0, 0x2ce(r31)
/* 801E5950  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801E5954  98 1F 02 CF */	stb r0, 0x2cf(r31)
/* 801E5958  38 00 00 FF */	li r0, 0xff
/* 801E595C  98 1F 02 BB */	stb r0, 0x2bb(r31)
/* 801E5960  98 1F 02 B3 */	stb r0, 0x2b3(r31)
/* 801E5964  38 60 00 B8 */	li r3, 0xb8
/* 801E5968  48 0E 92 E5 */	bl __nw__FUl
/* 801E596C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5970  41 82 00 18 */	beq lbl_801E5988
/* 801E5974  38 80 00 02 */	li r4, 2
/* 801E5978  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E597C  38 A0 00 00 */	li r5, 0
/* 801E5980  4B FA E8 A1 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801E5984  7C 60 1B 78 */	mr r0, r3
lbl_801E5988:
/* 801E5988  90 1F 00 44 */	stw r0, 0x44(r31)
/* 801E598C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E5990  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E5994  4B FA F9 0D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801E5998  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E599C  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E59A0  4B FA F8 29 */	bl setScale__16dSelect_cursor_cFf
/* 801E59A4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E59A8  C0 22 A9 6C */	lfs f1, lit_5026(r2)
/* 801E59AC  C0 42 A9 70 */	lfs f2, lit_5027(r2)
/* 801E59B0  C0 62 A9 74 */	lfs f3, lit_5028(r2)
/* 801E59B4  C0 82 A9 50 */	lfs f4, lit_4471(r2)
/* 801E59B8  FC A0 20 90 */	fmr f5, f4
/* 801E59BC  4B FA F7 F5 */	bl setParam__16dSelect_cursor_cFfffff
/* 801E59C0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E59C4  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801E59C8  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 801E59CC  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801E59D0  38 60 00 6C */	li r3, 0x6c
/* 801E59D4  48 0E 92 79 */	bl __nw__FUl
/* 801E59D8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E59DC  41 82 00 24 */	beq lbl_801E5A00
/* 801E59E0  80 9F 00 08 */	lwz r4, 8(r31)
/* 801E59E4  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801E59E8  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801E59EC  38 A0 00 6E */	li r5, 0x6e
/* 801E59F0  38 E0 00 02 */	li r7, 2
/* 801E59F4  39 00 00 00 */	li r8, 0
/* 801E59F8  48 06 DF 8D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E59FC  7C 60 1B 78 */	mr r0, r3
lbl_801E5A00:
/* 801E5A00  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 801E5A04  38 60 00 6C */	li r3, 0x6c
/* 801E5A08  48 0E 92 45 */	bl __nw__FUl
/* 801E5A0C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5A10  41 82 00 24 */	beq lbl_801E5A34
/* 801E5A14  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E5A18  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801E5A1C  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801E5A20  38 A0 00 6E */	li r5, 0x6e
/* 801E5A24  38 E0 00 02 */	li r7, 2
/* 801E5A28  39 00 00 00 */	li r8, 0
/* 801E5A2C  48 06 DF 59 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5A30  7C 60 1B 78 */	mr r0, r3
lbl_801E5A34:
/* 801E5A34  90 1F 00 60 */	stw r0, 0x60(r31)
/* 801E5A38  38 60 00 6C */	li r3, 0x6c
/* 801E5A3C  48 0E 92 11 */	bl __nw__FUl
/* 801E5A40  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5A44  41 82 00 24 */	beq lbl_801E5A68
/* 801E5A48  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 801E5A4C  3C A0 6E 61 */	lis r5, 0x6E61 /* 0x6E616C6C@ha */
/* 801E5A50  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E616C6C@l */
/* 801E5A54  38 A0 00 00 */	li r5, 0
/* 801E5A58  38 E0 00 02 */	li r7, 2
/* 801E5A5C  39 00 00 00 */	li r8, 0
/* 801E5A60  48 06 DF 25 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5A64  7C 60 1B 78 */	mr r0, r3
lbl_801E5A68:
/* 801E5A68  90 1F 00 64 */	stw r0, 0x64(r31)
/* 801E5A6C  38 60 00 6C */	li r3, 0x6c
/* 801E5A70  48 0E 91 DD */	bl __nw__FUl
/* 801E5A74  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5A78  41 82 00 24 */	beq lbl_801E5A9C
/* 801E5A7C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801E5A80  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801E5A84  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801E5A88  38 A0 00 6E */	li r5, 0x6e
/* 801E5A8C  38 E0 00 02 */	li r7, 2
/* 801E5A90  39 00 00 00 */	li r8, 0
/* 801E5A94  48 06 DE F1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5A98  7C 60 1B 78 */	mr r0, r3
lbl_801E5A9C:
/* 801E5A9C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 801E5AA0  38 60 00 6C */	li r3, 0x6c
/* 801E5AA4  48 0E 91 A9 */	bl __nw__FUl
/* 801E5AA8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5AAC  41 82 00 24 */	beq lbl_801E5AD0
/* 801E5AB0  80 9F 00 04 */	lwz r4, 4(r31)
/* 801E5AB4  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801E5AB8  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801E5ABC  38 A0 00 6E */	li r5, 0x6e
/* 801E5AC0  38 E0 00 02 */	li r7, 2
/* 801E5AC4  39 00 00 00 */	li r8, 0
/* 801E5AC8  48 06 DE BD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5ACC  7C 60 1B 78 */	mr r0, r3
lbl_801E5AD0:
/* 801E5AD0  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 801E5AD4  3B A0 00 00 */	li r29, 0
/* 801E5AD8  3B 80 00 00 */	li r28, 0
/* 801E5ADC  3B 60 00 00 */	li r27, 0
/* 801E5AE0  3B 40 00 00 */	li r26, 0
/* 801E5AE4  3A DE 01 D0 */	addi r22, r30, 0x1d0
/* 801E5AE8  3A FE 02 00 */	addi r23, r30, 0x200
/* 801E5AEC  3B 1E 02 30 */	addi r24, r30, 0x230
/* 801E5AF0  3B 3E 02 60 */	addi r25, r30, 0x260
lbl_801E5AF4:
/* 801E5AF4  38 60 00 6C */	li r3, 0x6c
/* 801E5AF8  48 0E 91 55 */	bl __nw__FUl
/* 801E5AFC  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5B00  41 82 00 28 */	beq lbl_801E5B28
/* 801E5B04  80 9F 00 08 */	lwz r4, 8(r31)
/* 801E5B08  38 1E 01 10 */	addi r0, r30, 0x110
/* 801E5B0C  7C C0 D2 14 */	add r6, r0, r26
/* 801E5B10  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5B14  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5B18  38 E0 00 00 */	li r7, 0
/* 801E5B1C  39 00 00 00 */	li r8, 0
/* 801E5B20  48 06 DE 65 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5B24  7C 60 1B 78 */	mr r0, r3
lbl_801E5B28:
/* 801E5B28  7E BF DA 14 */	add r21, r31, r27
/* 801E5B2C  90 15 00 74 */	stw r0, 0x74(r21)
/* 801E5B30  38 60 00 6C */	li r3, 0x6c
/* 801E5B34  48 0E 91 19 */	bl __nw__FUl
/* 801E5B38  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5B3C  41 82 00 28 */	beq lbl_801E5B64
/* 801E5B40  80 9F 00 08 */	lwz r4, 8(r31)
/* 801E5B44  38 1E 01 70 */	addi r0, r30, 0x170
/* 801E5B48  7C C0 D2 14 */	add r6, r0, r26
/* 801E5B4C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5B50  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5B54  38 E0 00 00 */	li r7, 0
/* 801E5B58  39 00 00 00 */	li r8, 0
/* 801E5B5C  48 06 DE 29 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5B60  7C 60 1B 78 */	mr r0, r3
lbl_801E5B64:
/* 801E5B64  90 15 00 8C */	stw r0, 0x8c(r21)
/* 801E5B68  3A 9E 01 A0 */	addi r20, r30, 0x1a0
/* 801E5B6C  7E 94 D2 14 */	add r20, r20, r26
/* 801E5B70  80 14 00 00 */	lwz r0, 0(r20)
/* 801E5B74  80 74 00 04 */	lwz r3, 4(r20)
/* 801E5B78  38 80 00 00 */	li r4, 0
/* 801E5B7C  7C 63 22 78 */	xor r3, r3, r4
/* 801E5B80  7C 00 22 78 */	xor r0, r0, r4
/* 801E5B84  7C 60 03 79 */	or. r0, r3, r0
/* 801E5B88  41 82 00 78 */	beq lbl_801E5C00
/* 801E5B8C  38 60 00 6C */	li r3, 0x6c
/* 801E5B90  48 0E 90 BD */	bl __nw__FUl
/* 801E5B94  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5B98  41 82 00 20 */	beq lbl_801E5BB8
/* 801E5B9C  80 9F 00 08 */	lwz r4, 8(r31)
/* 801E5BA0  80 B4 00 00 */	lwz r5, 0(r20)
/* 801E5BA4  80 D4 00 04 */	lwz r6, 4(r20)
/* 801E5BA8  38 E0 00 00 */	li r7, 0
/* 801E5BAC  39 00 00 00 */	li r8, 0
/* 801E5BB0  48 06 DD D5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5BB4  7C 60 1B 78 */	mr r0, r3
lbl_801E5BB8:
/* 801E5BB8  90 15 00 A4 */	stw r0, 0xa4(r21)
/* 801E5BBC  80 95 00 A4 */	lwz r4, 0xa4(r21)
/* 801E5BC0  38 61 00 28 */	addi r3, r1, 0x28
/* 801E5BC4  80 A4 00 04 */	lwz r5, 4(r4)
/* 801E5BC8  38 C0 00 00 */	li r6, 0
/* 801E5BCC  38 E0 00 00 */	li r7, 0
/* 801E5BD0  48 06 F2 ED */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801E5BD4  80 61 00 28 */	lwz r3, 0x28(r1)
/* 801E5BD8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801E5BDC  90 61 00 40 */	stw r3, 0x40(r1)
/* 801E5BE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E5BE4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801E5BE8  90 01 00 48 */	stw r0, 0x48(r1)
/* 801E5BEC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801E5BF0  D0 15 03 44 */	stfs f0, 0x344(r21)
/* 801E5BF4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801E5BF8  D0 15 03 5C */	stfs f0, 0x35c(r21)
/* 801E5BFC  48 00 00 14 */	b lbl_801E5C10
lbl_801E5C00:
/* 801E5C00  90 95 00 A4 */	stw r4, 0xa4(r21)
/* 801E5C04  C0 02 A9 2C */	lfs f0, lit_4068(r2)
/* 801E5C08  D0 15 03 44 */	stfs f0, 0x344(r21)
/* 801E5C0C  D0 15 03 5C */	stfs f0, 0x35c(r21)
lbl_801E5C10:
/* 801E5C10  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E5C14  7C D6 D2 14 */	add r6, r22, r26
/* 801E5C18  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5C1C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5C20  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5C24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5C28  7D 89 03 A6 */	mtctr r12
/* 801E5C2C  4E 80 04 21 */	bctrl 
/* 801E5C30  7E 9F E2 14 */	add r20, r31, r28
/* 801E5C34  90 74 02 D0 */	stw r3, 0x2d0(r20)
/* 801E5C38  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E5C3C  7C D7 D2 14 */	add r6, r23, r26
/* 801E5C40  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5C44  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5C48  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5C4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5C50  7D 89 03 A6 */	mtctr r12
/* 801E5C54  4E 80 04 21 */	bctrl 
/* 801E5C58  90 74 02 D4 */	stw r3, 0x2d4(r20)
/* 801E5C5C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E5C60  7C D8 D2 14 */	add r6, r24, r26
/* 801E5C64  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5C68  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5C6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5C70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5C74  7D 89 03 A6 */	mtctr r12
/* 801E5C78  4E 80 04 21 */	bctrl 
/* 801E5C7C  90 74 02 D8 */	stw r3, 0x2d8(r20)
/* 801E5C80  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E5C84  7C D9 D2 14 */	add r6, r25, r26
/* 801E5C88  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5C8C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5C90  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5C94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5C98  7D 89 03 A6 */	mtctr r12
/* 801E5C9C  4E 80 04 21 */	bctrl 
/* 801E5CA0  90 74 02 DC */	stw r3, 0x2dc(r20)
/* 801E5CA4  3B BD 00 01 */	addi r29, r29, 1
/* 801E5CA8  2C 1D 00 06 */	cmpwi r29, 6
/* 801E5CAC  3B 9C 00 10 */	addi r28, r28, 0x10
/* 801E5CB0  3B 7B 00 04 */	addi r27, r27, 4
/* 801E5CB4  3B 5A 00 08 */	addi r26, r26, 8
/* 801E5CB8  41 80 FE 3C */	blt lbl_801E5AF4
/* 801E5CBC  38 E0 00 00 */	li r7, 0
/* 801E5CC0  38 60 00 00 */	li r3, 0
/* 801E5CC4  38 00 00 04 */	li r0, 4
/* 801E5CC8  7C 09 03 A6 */	mtctr r0
lbl_801E5CCC:
/* 801E5CCC  7C BF 1A 14 */	add r5, r31, r3
/* 801E5CD0  80 85 02 E0 */	lwz r4, 0x2e0(r5)
/* 801E5CD4  88 04 00 B2 */	lbz r0, 0xb2(r4)
/* 801E5CD8  7C DF 3A 14 */	add r6, r31, r7
/* 801E5CDC  98 06 04 04 */	stb r0, 0x404(r6)
/* 801E5CE0  80 85 02 D0 */	lwz r4, 0x2d0(r5)
/* 801E5CE4  88 04 00 B2 */	lbz r0, 0xb2(r4)
/* 801E5CE8  98 06 04 08 */	stb r0, 0x408(r6)
/* 801E5CEC  38 E7 00 01 */	addi r7, r7, 1
/* 801E5CF0  38 63 00 04 */	addi r3, r3, 4
/* 801E5CF4  42 00 FF D8 */	bdnz lbl_801E5CCC
/* 801E5CF8  3A E0 00 00 */	li r23, 0
/* 801E5CFC  3A 80 00 00 */	li r20, 0
/* 801E5D00  3A A0 00 00 */	li r21, 0
lbl_801E5D04:
/* 801E5D04  38 60 00 6C */	li r3, 0x6c
/* 801E5D08  48 0E 8F 45 */	bl __nw__FUl
/* 801E5D0C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5D10  41 82 00 28 */	beq lbl_801E5D38
/* 801E5D14  80 9F 00 08 */	lwz r4, 8(r31)
/* 801E5D18  38 1E 02 90 */	addi r0, r30, 0x290
/* 801E5D1C  7C C0 AA 14 */	add r6, r0, r21
/* 801E5D20  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5D24  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5D28  38 E0 00 00 */	li r7, 0
/* 801E5D2C  39 00 00 00 */	li r8, 0
/* 801E5D30  48 06 DC 55 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5D34  7C 60 1B 78 */	mr r0, r3
lbl_801E5D38:
/* 801E5D38  7E DF A2 14 */	add r22, r31, r20
/* 801E5D3C  90 16 01 94 */	stw r0, 0x194(r22)
/* 801E5D40  38 60 00 6C */	li r3, 0x6c
/* 801E5D44  48 0E 8F 09 */	bl __nw__FUl
/* 801E5D48  7C 60 1B 79 */	or. r0, r3, r3
/* 801E5D4C  41 82 00 28 */	beq lbl_801E5D74
/* 801E5D50  80 9F 00 08 */	lwz r4, 8(r31)
/* 801E5D54  38 1E 02 B8 */	addi r0, r30, 0x2b8
/* 801E5D58  7C C0 AA 14 */	add r6, r0, r21
/* 801E5D5C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E5D60  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E5D64  38 E0 00 00 */	li r7, 0
/* 801E5D68  39 00 00 00 */	li r8, 0
/* 801E5D6C  48 06 DC 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5D70  7C 60 1B 78 */	mr r0, r3
lbl_801E5D74:
/* 801E5D74  90 16 01 A8 */	stw r0, 0x1a8(r22)
/* 801E5D78  3A F7 00 01 */	addi r23, r23, 1
/* 801E5D7C  2C 17 00 05 */	cmpwi r23, 5
/* 801E5D80  3A 94 00 04 */	addi r20, r20, 4
/* 801E5D84  3A B5 00 08 */	addi r21, r21, 8
/* 801E5D88  41 80 FF 7C */	blt lbl_801E5D04
/* 801E5D8C  3A E0 00 00 */	li r23, 0
/* 801E5D90  3A 80 00 00 */	li r20, 0
/* 801E5D94  3A A0 00 00 */	li r21, 0
lbl_801E5D98:
/* 801E5D98  3A DE 01 40 */	addi r22, r30, 0x140
/* 801E5D9C  7E D6 AA 14 */	add r22, r22, r21
/* 801E5DA0  80 16 00 00 */	lwz r0, 0(r22)
/* 801E5DA4  80 76 00 04 */	lwz r3, 4(r22)
/* 801E5DA8  38 80 00 00 */	li r4, 0
/* 801E5DAC  7C 63 22 78 */	xor r3, r3, r4
/* 801E5DB0  7C 00 22 78 */	xor r0, r0, r4
/* 801E5DB4  7C 60 03 79 */	or. r0, r3, r0
/* 801E5DB8  41 82 00 3C */	beq lbl_801E5DF4
/* 801E5DBC  38 60 00 6C */	li r3, 0x6c
/* 801E5DC0  48 0E 8E 8D */	bl __nw__FUl
/* 801E5DC4  7C 64 1B 79 */	or. r4, r3, r3
/* 801E5DC8  41 82 00 20 */	beq lbl_801E5DE8
/* 801E5DCC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 801E5DD0  80 B6 00 00 */	lwz r5, 0(r22)
/* 801E5DD4  80 D6 00 04 */	lwz r6, 4(r22)
/* 801E5DD8  38 E0 00 00 */	li r7, 0
/* 801E5DDC  39 00 00 00 */	li r8, 0
/* 801E5DE0  48 06 DB A5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5DE4  7C 64 1B 78 */	mr r4, r3
lbl_801E5DE8:
/* 801E5DE8  38 14 00 BC */	addi r0, r20, 0xbc
/* 801E5DEC  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E5DF0  48 00 00 0C */	b lbl_801E5DFC
lbl_801E5DF4:
/* 801E5DF4  38 14 00 BC */	addi r0, r20, 0xbc
/* 801E5DF8  7C 9F 01 2E */	stwx r4, r31, r0
lbl_801E5DFC:
/* 801E5DFC  3A F7 00 01 */	addi r23, r23, 1
/* 801E5E00  2C 17 00 06 */	cmpwi r23, 6
/* 801E5E04  3A 94 00 04 */	addi r20, r20, 4
/* 801E5E08  3A B5 00 08 */	addi r21, r21, 8
/* 801E5E0C  41 80 FF 8C */	blt lbl_801E5D98
/* 801E5E10  3A 80 00 00 */	li r20, 0
/* 801E5E14  3A A0 00 00 */	li r21, 0
/* 801E5E18  3A C0 00 00 */	li r22, 0
lbl_801E5E1C:
/* 801E5E1C  3A FE 01 40 */	addi r23, r30, 0x140
/* 801E5E20  7E F7 B2 14 */	add r23, r23, r22
/* 801E5E24  80 17 00 00 */	lwz r0, 0(r23)
/* 801E5E28  80 77 00 04 */	lwz r3, 4(r23)
/* 801E5E2C  38 80 00 00 */	li r4, 0
/* 801E5E30  7C 63 22 78 */	xor r3, r3, r4
/* 801E5E34  7C 00 22 78 */	xor r0, r0, r4
/* 801E5E38  7C 60 03 79 */	or. r0, r3, r0
/* 801E5E3C  41 82 00 3C */	beq lbl_801E5E78
/* 801E5E40  38 60 00 6C */	li r3, 0x6c
/* 801E5E44  48 0E 8E 09 */	bl __nw__FUl
/* 801E5E48  7C 64 1B 79 */	or. r4, r3, r3
/* 801E5E4C  41 82 00 20 */	beq lbl_801E5E6C
/* 801E5E50  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E5E54  80 B7 00 00 */	lwz r5, 0(r23)
/* 801E5E58  80 D7 00 04 */	lwz r6, 4(r23)
/* 801E5E5C  38 E0 00 00 */	li r7, 0
/* 801E5E60  39 00 00 00 */	li r8, 0
/* 801E5E64  48 06 DB 21 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5E68  7C 64 1B 78 */	mr r4, r3
lbl_801E5E6C:
/* 801E5E6C  38 15 00 D4 */	addi r0, r21, 0xd4
/* 801E5E70  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E5E74  48 00 00 0C */	b lbl_801E5E80
lbl_801E5E78:
/* 801E5E78  38 15 00 D4 */	addi r0, r21, 0xd4
/* 801E5E7C  7C 9F 01 2E */	stwx r4, r31, r0
lbl_801E5E80:
/* 801E5E80  3A FE 02 E0 */	addi r23, r30, 0x2e0
/* 801E5E84  7E F7 B2 14 */	add r23, r23, r22
/* 801E5E88  80 17 00 00 */	lwz r0, 0(r23)
/* 801E5E8C  80 77 00 04 */	lwz r3, 4(r23)
/* 801E5E90  38 80 00 00 */	li r4, 0
/* 801E5E94  7C 63 22 78 */	xor r3, r3, r4
/* 801E5E98  7C 00 22 78 */	xor r0, r0, r4
/* 801E5E9C  7C 60 03 79 */	or. r0, r3, r0
/* 801E5EA0  41 82 00 3C */	beq lbl_801E5EDC
/* 801E5EA4  38 60 00 6C */	li r3, 0x6c
/* 801E5EA8  48 0E 8D A5 */	bl __nw__FUl
/* 801E5EAC  7C 64 1B 79 */	or. r4, r3, r3
/* 801E5EB0  41 82 00 20 */	beq lbl_801E5ED0
/* 801E5EB4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E5EB8  80 B7 00 00 */	lwz r5, 0(r23)
/* 801E5EBC  80 D7 00 04 */	lwz r6, 4(r23)
/* 801E5EC0  38 E0 00 00 */	li r7, 0
/* 801E5EC4  39 00 00 00 */	li r8, 0
/* 801E5EC8  48 06 DA BD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E5ECC  7C 64 1B 78 */	mr r4, r3
lbl_801E5ED0:
/* 801E5ED0  38 15 00 EC */	addi r0, r21, 0xec
/* 801E5ED4  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E5ED8  48 00 00 0C */	b lbl_801E5EE4
lbl_801E5EDC:
/* 801E5EDC  38 15 00 EC */	addi r0, r21, 0xec
/* 801E5EE0  7C 9F 01 2E */	stwx r4, r31, r0
lbl_801E5EE4:
/* 801E5EE4  3A 94 00 01 */	addi r20, r20, 1
/* 801E5EE8  2C 14 00 06 */	cmpwi r20, 6
/* 801E5EEC  3A B5 00 04 */	addi r21, r21, 4
/* 801E5EF0  3A D6 00 08 */	addi r22, r22, 8
/* 801E5EF4  41 80 FF 28 */	blt lbl_801E5E1C
/* 801E5EF8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E5EFC  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801E5F00  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801E5F04  38 A0 00 66 */	li r5, 0x66
/* 801E5F08  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5F0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5F10  7D 89 03 A6 */	mtctr r12
/* 801E5F14  4E 80 04 21 */	bctrl 
/* 801E5F18  90 7F 02 70 */	stw r3, 0x270(r31)
/* 801E5F1C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E5F20  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743031@ha */
/* 801E5F24  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x5F743031@l */
/* 801E5F28  38 A0 00 74 */	li r5, 0x74
/* 801E5F2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5F30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5F34  7D 89 03 A6 */	mtctr r12
/* 801E5F38  4E 80 04 21 */	bctrl 
/* 801E5F3C  90 7F 02 74 */	stw r3, 0x274(r31)
/* 801E5F40  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E5F44  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801E5F48  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801E5F4C  38 A0 00 74 */	li r5, 0x74
/* 801E5F50  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5F54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5F58  7D 89 03 A6 */	mtctr r12
/* 801E5F5C  4E 80 04 21 */	bctrl 
/* 801E5F60  38 00 00 00 */	li r0, 0
/* 801E5F64  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E5F68  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E5F6C  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743031@ha */
/* 801E5F70  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x5F743031@l */
/* 801E5F74  38 A0 00 74 */	li r5, 0x74
/* 801E5F78  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5F7C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5F80  7D 89 03 A6 */	mtctr r12
/* 801E5F84  4E 80 04 21 */	bctrl 
/* 801E5F88  38 00 00 00 */	li r0, 0
/* 801E5F8C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E5F90  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E5F94  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801E5F98  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801E5F9C  38 A0 00 66 */	li r5, 0x66
/* 801E5FA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5FA4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5FA8  7D 89 03 A6 */	mtctr r12
/* 801E5FAC  4E 80 04 21 */	bctrl 
/* 801E5FB0  90 7F 02 78 */	stw r3, 0x278(r31)
/* 801E5FB4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E5FB8  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801E5FBC  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801E5FC0  38 A0 00 74 */	li r5, 0x74
/* 801E5FC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E5FC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E5FCC  7D 89 03 A6 */	mtctr r12
/* 801E5FD0  4E 80 04 21 */	bctrl 
/* 801E5FD4  38 00 00 00 */	li r0, 0
/* 801E5FD8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E5FDC  3A E0 00 00 */	li r23, 0
/* 801E5FE0  3A 80 00 00 */	li r20, 0
/* 801E5FE4  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E5FE8  3A A3 75 D8 */	addi r21, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E5FEC:
/* 801E5FEC  4B E2 EB 19 */	bl mDoExt_getRubyFont__Fv
/* 801E5FF0  7C 64 1B 78 */	mr r4, r3
/* 801E5FF4  3A D4 02 70 */	addi r22, r20, 0x270
/* 801E5FF8  7C 7F B0 2E */	lwzx r3, r31, r22
/* 801E5FFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6000  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E6004  7D 89 03 A6 */	mtctr r12
/* 801E6008  4E 80 04 21 */	bctrl 
/* 801E600C  7C 7F B0 2E */	lwzx r3, r31, r22
/* 801E6010  38 80 00 40 */	li r4, 0x40
/* 801E6014  38 B5 00 1D */	addi r5, r21, 0x1d
/* 801E6018  4C C6 31 82 */	crclr 6
/* 801E601C  48 11 A7 31 */	bl setString__10J2DTextBoxFsPCce
/* 801E6020  3A F7 00 01 */	addi r23, r23, 1
/* 801E6024  2C 17 00 03 */	cmpwi r23, 3
/* 801E6028  3A 94 00 04 */	addi r20, r20, 4
/* 801E602C  41 80 FF C0 */	blt lbl_801E5FEC
/* 801E6030  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6034  38 80 05 47 */	li r4, 0x547
/* 801E6038  80 BF 02 70 */	lwz r5, 0x270(r31)
/* 801E603C  38 C0 00 00 */	li r6, 0
/* 801E6040  38 E0 00 00 */	li r7, 0
/* 801E6044  39 00 00 00 */	li r8, 0
/* 801E6048  39 20 00 00 */	li r9, 0
/* 801E604C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6050  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6054  7D 89 03 A6 */	mtctr r12
/* 801E6058  4E 80 04 21 */	bctrl 
/* 801E605C  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6060  38 80 05 47 */	li r4, 0x547
/* 801E6064  80 BF 02 74 */	lwz r5, 0x274(r31)
/* 801E6068  38 C0 00 00 */	li r6, 0
/* 801E606C  38 E0 00 00 */	li r7, 0
/* 801E6070  39 00 00 00 */	li r8, 0
/* 801E6074  39 20 00 00 */	li r9, 0
/* 801E6078  81 83 00 00 */	lwz r12, 0(r3)
/* 801E607C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6080  7D 89 03 A6 */	mtctr r12
/* 801E6084  4E 80 04 21 */	bctrl 
/* 801E6088  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E608C  38 80 05 5C */	li r4, 0x55c
/* 801E6090  80 BF 02 78 */	lwz r5, 0x278(r31)
/* 801E6094  38 C0 00 00 */	li r6, 0
/* 801E6098  38 E0 00 00 */	li r7, 0
/* 801E609C  39 00 00 00 */	li r8, 0
/* 801E60A0  39 20 00 00 */	li r9, 0
/* 801E60A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E60A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E60AC  7D 89 03 A6 */	mtctr r12
/* 801E60B0  4E 80 04 21 */	bctrl 
/* 801E60B4  3B 40 00 00 */	li r26, 0
/* 801E60B8  3A 80 00 00 */	li r20, 0
/* 801E60BC  3A A0 00 00 */	li r21, 0
/* 801E60C0  3B 1E 03 38 */	addi r24, r30, 0x338
/* 801E60C4  3A FE 03 10 */	addi r23, r30, 0x310
/* 801E60C8  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E60CC  3A C3 75 D8 */	addi r22, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E60D0:
/* 801E60D0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E60D4  7C D8 AA 14 */	add r6, r24, r21
/* 801E60D8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E60DC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E60E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E60E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E60E8  7D 89 03 A6 */	mtctr r12
/* 801E60EC  4E 80 04 21 */	bctrl 
/* 801E60F0  3B 34 02 5C */	addi r25, r20, 0x25c
/* 801E60F4  7C 7F C9 2E */	stwx r3, r31, r25
/* 801E60F8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E60FC  7C D7 AA 14 */	add r6, r23, r21
/* 801E6100  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6104  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6108  81 83 00 00 */	lwz r12, 0(r3)
/* 801E610C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6110  7D 89 03 A6 */	mtctr r12
/* 801E6114  4E 80 04 21 */	bctrl 
/* 801E6118  38 00 00 00 */	li r0, 0
/* 801E611C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E6120  4B E2 E8 D1 */	bl mDoExt_getMesgFont__Fv
/* 801E6124  7C 64 1B 78 */	mr r4, r3
/* 801E6128  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E612C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6130  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E6134  7D 89 03 A6 */	mtctr r12
/* 801E6138  4E 80 04 21 */	bctrl 
/* 801E613C  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6140  38 80 00 40 */	li r4, 0x40
/* 801E6144  38 B6 00 1D */	addi r5, r22, 0x1d
/* 801E6148  4C C6 31 82 */	crclr 6
/* 801E614C  48 11 A6 01 */	bl setString__10J2DTextBoxFsPCce
/* 801E6150  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6154  38 80 05 64 */	li r4, 0x564
/* 801E6158  7C BF C8 2E */	lwzx r5, r31, r25
/* 801E615C  38 C0 00 00 */	li r6, 0
/* 801E6160  38 E0 00 00 */	li r7, 0
/* 801E6164  39 00 00 00 */	li r8, 0
/* 801E6168  39 20 00 00 */	li r9, 0
/* 801E616C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6170  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6174  7D 89 03 A6 */	mtctr r12
/* 801E6178  4E 80 04 21 */	bctrl 
/* 801E617C  3B 5A 00 01 */	addi r26, r26, 1
/* 801E6180  2C 1A 00 05 */	cmpwi r26, 5
/* 801E6184  3A 94 00 04 */	addi r20, r20, 4
/* 801E6188  3A B5 00 08 */	addi r21, r21, 8
/* 801E618C  41 80 FF 44 */	blt lbl_801E60D0
/* 801E6190  3B 40 00 00 */	li r26, 0
/* 801E6194  3A 80 00 00 */	li r20, 0
/* 801E6198  3A A0 00 00 */	li r21, 0
/* 801E619C  3B 1E 03 60 */	addi r24, r30, 0x360
/* 801E61A0  3A FE 03 70 */	addi r23, r30, 0x370
/* 801E61A4  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E61A8  3A C3 75 D8 */	addi r22, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E61AC:
/* 801E61AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E61B0  7C D8 AA 14 */	add r6, r24, r21
/* 801E61B4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E61B8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E61BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E61C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E61C4  7D 89 03 A6 */	mtctr r12
/* 801E61C8  4E 80 04 21 */	bctrl 
/* 801E61CC  3B 34 02 1C */	addi r25, r20, 0x21c
/* 801E61D0  7C 7F C9 2E */	stwx r3, r31, r25
/* 801E61D4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E61D8  7C D7 AA 14 */	add r6, r23, r21
/* 801E61DC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E61E0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E61E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E61E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E61EC  7D 89 03 A6 */	mtctr r12
/* 801E61F0  4E 80 04 21 */	bctrl 
/* 801E61F4  38 00 00 00 */	li r0, 0
/* 801E61F8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E61FC  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6200  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E6204  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6208  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E620C  7D 89 03 A6 */	mtctr r12
/* 801E6210  4E 80 04 21 */	bctrl 
/* 801E6214  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6218  38 80 00 40 */	li r4, 0x40
/* 801E621C  38 B6 00 1D */	addi r5, r22, 0x1d
/* 801E6220  4C C6 31 82 */	crclr 6
/* 801E6224  48 11 A5 29 */	bl setString__10J2DTextBoxFsPCce
/* 801E6228  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E622C  38 80 05 48 */	li r4, 0x548
/* 801E6230  7C BF C8 2E */	lwzx r5, r31, r25
/* 801E6234  38 C0 00 00 */	li r6, 0
/* 801E6238  38 E0 00 00 */	li r7, 0
/* 801E623C  39 00 00 00 */	li r8, 0
/* 801E6240  39 20 00 00 */	li r9, 0
/* 801E6244  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6248  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E624C  7D 89 03 A6 */	mtctr r12
/* 801E6250  4E 80 04 21 */	bctrl 
/* 801E6254  3B 5A 00 01 */	addi r26, r26, 1
/* 801E6258  2C 1A 00 02 */	cmpwi r26, 2
/* 801E625C  3A 94 00 04 */	addi r20, r20, 4
/* 801E6260  3A B5 00 08 */	addi r21, r21, 8
/* 801E6264  41 80 FF 48 */	blt lbl_801E61AC
/* 801E6268  3B 40 00 00 */	li r26, 0
/* 801E626C  3A 80 00 00 */	li r20, 0
/* 801E6270  3A A0 00 00 */	li r21, 0
/* 801E6274  3B 1E 03 80 */	addi r24, r30, 0x380
/* 801E6278  3A FE 03 90 */	addi r23, r30, 0x390
/* 801E627C  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E6280  3A C3 75 D8 */	addi r22, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E6284:
/* 801E6284  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E6288  7C D8 AA 14 */	add r6, r24, r21
/* 801E628C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6290  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6294  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6298  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E629C  7D 89 03 A6 */	mtctr r12
/* 801E62A0  4E 80 04 21 */	bctrl 
/* 801E62A4  3B 34 02 24 */	addi r25, r20, 0x224
/* 801E62A8  7C 7F C9 2E */	stwx r3, r31, r25
/* 801E62AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E62B0  7C D7 AA 14 */	add r6, r23, r21
/* 801E62B4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E62B8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E62BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E62C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E62C4  7D 89 03 A6 */	mtctr r12
/* 801E62C8  4E 80 04 21 */	bctrl 
/* 801E62CC  38 00 00 00 */	li r0, 0
/* 801E62D0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E62D4  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E62D8  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E62DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E62E0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E62E4  7D 89 03 A6 */	mtctr r12
/* 801E62E8  4E 80 04 21 */	bctrl 
/* 801E62EC  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E62F0  38 80 00 40 */	li r4, 0x40
/* 801E62F4  38 B6 00 1D */	addi r5, r22, 0x1d
/* 801E62F8  4C C6 31 82 */	crclr 6
/* 801E62FC  48 11 A4 51 */	bl setString__10J2DTextBoxFsPCce
/* 801E6300  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6304  38 80 05 4E */	li r4, 0x54e
/* 801E6308  7C BF C8 2E */	lwzx r5, r31, r25
/* 801E630C  38 C0 00 00 */	li r6, 0
/* 801E6310  38 E0 00 00 */	li r7, 0
/* 801E6314  39 00 00 00 */	li r8, 0
/* 801E6318  39 20 00 00 */	li r9, 0
/* 801E631C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6320  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6324  7D 89 03 A6 */	mtctr r12
/* 801E6328  4E 80 04 21 */	bctrl 
/* 801E632C  3B 5A 00 01 */	addi r26, r26, 1
/* 801E6330  2C 1A 00 02 */	cmpwi r26, 2
/* 801E6334  3A 94 00 04 */	addi r20, r20, 4
/* 801E6338  3A B5 00 08 */	addi r21, r21, 8
/* 801E633C  41 80 FF 48 */	blt lbl_801E6284
/* 801E6340  3B 40 00 00 */	li r26, 0
/* 801E6344  3A 80 00 00 */	li r20, 0
/* 801E6348  3A A0 00 00 */	li r21, 0
/* 801E634C  3B 1E 03 A0 */	addi r24, r30, 0x3a0
/* 801E6350  3A FE 03 B0 */	addi r23, r30, 0x3b0
/* 801E6354  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E6358  3A C3 75 D8 */	addi r22, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E635C:
/* 801E635C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E6360  7C D8 AA 14 */	add r6, r24, r21
/* 801E6364  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6368  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E636C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6370  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6374  7D 89 03 A6 */	mtctr r12
/* 801E6378  4E 80 04 21 */	bctrl 
/* 801E637C  3B 34 02 2C */	addi r25, r20, 0x22c
/* 801E6380  7C 7F C9 2E */	stwx r3, r31, r25
/* 801E6384  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E6388  7C D7 AA 14 */	add r6, r23, r21
/* 801E638C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6390  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6394  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6398  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E639C  7D 89 03 A6 */	mtctr r12
/* 801E63A0  4E 80 04 21 */	bctrl 
/* 801E63A4  38 00 00 00 */	li r0, 0
/* 801E63A8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E63AC  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E63B0  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E63B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E63B8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E63BC  7D 89 03 A6 */	mtctr r12
/* 801E63C0  4E 80 04 21 */	bctrl 
/* 801E63C4  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E63C8  38 80 00 40 */	li r4, 0x40
/* 801E63CC  38 B6 00 1D */	addi r5, r22, 0x1d
/* 801E63D0  4C C6 31 82 */	crclr 6
/* 801E63D4  48 11 A3 79 */	bl setString__10J2DTextBoxFsPCce
/* 801E63D8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E63DC  38 80 05 4F */	li r4, 0x54f
/* 801E63E0  7C BF C8 2E */	lwzx r5, r31, r25
/* 801E63E4  38 C0 00 00 */	li r6, 0
/* 801E63E8  38 E0 00 00 */	li r7, 0
/* 801E63EC  39 00 00 00 */	li r8, 0
/* 801E63F0  39 20 00 00 */	li r9, 0
/* 801E63F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E63F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E63FC  7D 89 03 A6 */	mtctr r12
/* 801E6400  4E 80 04 21 */	bctrl 
/* 801E6404  3B 5A 00 01 */	addi r26, r26, 1
/* 801E6408  2C 1A 00 02 */	cmpwi r26, 2
/* 801E640C  3A 94 00 04 */	addi r20, r20, 4
/* 801E6410  3A B5 00 08 */	addi r21, r21, 8
/* 801E6414  41 80 FF 48 */	blt lbl_801E635C
/* 801E6418  3B 40 00 00 */	li r26, 0
/* 801E641C  3A 80 00 00 */	li r20, 0
/* 801E6420  3A A0 00 00 */	li r21, 0
/* 801E6424  3B 1E 03 C0 */	addi r24, r30, 0x3c0
/* 801E6428  3A FE 03 D0 */	addi r23, r30, 0x3d0
/* 801E642C  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E6430  3A C3 75 D8 */	addi r22, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E6434:
/* 801E6434  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E6438  7C D8 AA 14 */	add r6, r24, r21
/* 801E643C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6440  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6444  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6448  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E644C  7D 89 03 A6 */	mtctr r12
/* 801E6450  4E 80 04 21 */	bctrl 
/* 801E6454  3B 34 02 34 */	addi r25, r20, 0x234
/* 801E6458  7C 7F C9 2E */	stwx r3, r31, r25
/* 801E645C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E6460  7C D7 AA 14 */	add r6, r23, r21
/* 801E6464  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6468  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E646C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6470  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6474  7D 89 03 A6 */	mtctr r12
/* 801E6478  4E 80 04 21 */	bctrl 
/* 801E647C  38 00 00 00 */	li r0, 0
/* 801E6480  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E6484  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6488  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E648C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6490  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E6494  7D 89 03 A6 */	mtctr r12
/* 801E6498  4E 80 04 21 */	bctrl 
/* 801E649C  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E64A0  38 80 00 40 */	li r4, 0x40
/* 801E64A4  38 B6 00 1D */	addi r5, r22, 0x1d
/* 801E64A8  4C C6 31 82 */	crclr 6
/* 801E64AC  48 11 A2 A1 */	bl setString__10J2DTextBoxFsPCce
/* 801E64B0  3B 5A 00 01 */	addi r26, r26, 1
/* 801E64B4  2C 1A 00 02 */	cmpwi r26, 2
/* 801E64B8  3A 94 00 04 */	addi r20, r20, 4
/* 801E64BC  3A B5 00 08 */	addi r21, r21, 8
/* 801E64C0  41 80 FF 74 */	blt lbl_801E6434
/* 801E64C4  3B 40 00 00 */	li r26, 0
/* 801E64C8  3A 80 00 00 */	li r20, 0
/* 801E64CC  3A A0 00 00 */	li r21, 0
/* 801E64D0  3B 1E 03 E0 */	addi r24, r30, 0x3e0
/* 801E64D4  3A FE 03 F0 */	addi r23, r30, 0x3f0
/* 801E64D8  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E64DC  3A C3 75 D8 */	addi r22, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E64E0:
/* 801E64E0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E64E4  7C D8 AA 14 */	add r6, r24, r21
/* 801E64E8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E64EC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E64F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E64F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E64F8  7D 89 03 A6 */	mtctr r12
/* 801E64FC  4E 80 04 21 */	bctrl 
/* 801E6500  3B 34 02 3C */	addi r25, r20, 0x23c
/* 801E6504  7C 7F C9 2E */	stwx r3, r31, r25
/* 801E6508  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E650C  7C D7 AA 14 */	add r6, r23, r21
/* 801E6510  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6514  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6518  81 83 00 00 */	lwz r12, 0(r3)
/* 801E651C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6520  7D 89 03 A6 */	mtctr r12
/* 801E6524  4E 80 04 21 */	bctrl 
/* 801E6528  38 00 00 00 */	li r0, 0
/* 801E652C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E6530  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6534  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E6538  81 83 00 00 */	lwz r12, 0(r3)
/* 801E653C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E6540  7D 89 03 A6 */	mtctr r12
/* 801E6544  4E 80 04 21 */	bctrl 
/* 801E6548  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E654C  38 80 00 40 */	li r4, 0x40
/* 801E6550  38 B6 00 1D */	addi r5, r22, 0x1d
/* 801E6554  4C C6 31 82 */	crclr 6
/* 801E6558  48 11 A1 F5 */	bl setString__10J2DTextBoxFsPCce
/* 801E655C  3B 5A 00 01 */	addi r26, r26, 1
/* 801E6560  2C 1A 00 02 */	cmpwi r26, 2
/* 801E6564  3A 94 00 04 */	addi r20, r20, 4
/* 801E6568  3A B5 00 08 */	addi r21, r21, 8
/* 801E656C  41 80 FF 74 */	blt lbl_801E64E0
/* 801E6570  3B 40 00 00 */	li r26, 0
/* 801E6574  3A 80 00 00 */	li r20, 0
/* 801E6578  3A A0 00 00 */	li r21, 0
/* 801E657C  3B 1E 04 00 */	addi r24, r30, 0x400
/* 801E6580  3A FE 04 10 */	addi r23, r30, 0x410
/* 801E6584  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E6588  3A C3 75 D8 */	addi r22, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E658C:
/* 801E658C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E6590  7C D8 AA 14 */	add r6, r24, r21
/* 801E6594  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6598  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E659C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E65A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E65A4  7D 89 03 A6 */	mtctr r12
/* 801E65A8  4E 80 04 21 */	bctrl 
/* 801E65AC  3B 34 02 44 */	addi r25, r20, 0x244
/* 801E65B0  7C 7F C9 2E */	stwx r3, r31, r25
/* 801E65B4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E65B8  7C D7 AA 14 */	add r6, r23, r21
/* 801E65BC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E65C0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E65C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E65C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E65CC  7D 89 03 A6 */	mtctr r12
/* 801E65D0  4E 80 04 21 */	bctrl 
/* 801E65D4  38 00 00 00 */	li r0, 0
/* 801E65D8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E65DC  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E65E0  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E65E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E65E8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E65EC  7D 89 03 A6 */	mtctr r12
/* 801E65F0  4E 80 04 21 */	bctrl 
/* 801E65F4  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E65F8  38 80 00 40 */	li r4, 0x40
/* 801E65FC  38 B6 00 1D */	addi r5, r22, 0x1d
/* 801E6600  4C C6 31 82 */	crclr 6
/* 801E6604  48 11 A1 49 */	bl setString__10J2DTextBoxFsPCce
/* 801E6608  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E660C  38 80 05 54 */	li r4, 0x554
/* 801E6610  7C BF C8 2E */	lwzx r5, r31, r25
/* 801E6614  38 C0 00 00 */	li r6, 0
/* 801E6618  38 E0 00 00 */	li r7, 0
/* 801E661C  39 00 00 00 */	li r8, 0
/* 801E6620  39 20 00 00 */	li r9, 0
/* 801E6624  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6628  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E662C  7D 89 03 A6 */	mtctr r12
/* 801E6630  4E 80 04 21 */	bctrl 
/* 801E6634  3B 5A 00 01 */	addi r26, r26, 1
/* 801E6638  2C 1A 00 02 */	cmpwi r26, 2
/* 801E663C  3A 94 00 04 */	addi r20, r20, 4
/* 801E6640  3A B5 00 08 */	addi r21, r21, 8
/* 801E6644  41 80 FF 48 */	blt lbl_801E658C
/* 801E6648  3A 80 00 00 */	li r20, 0
/* 801E664C  3A A0 00 00 */	li r21, 0
/* 801E6650  3A C0 00 00 */	li r22, 0
/* 801E6654  3B 1E 04 20 */	addi r24, r30, 0x420
/* 801E6658  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E665C  3A E3 75 D8 */	addi r23, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E6660:
/* 801E6660  7F E3 FB 78 */	mr r3, r31
/* 801E6664  3B 3E 04 50 */	addi r25, r30, 0x450
/* 801E6668  7F 39 B2 14 */	add r25, r25, r22
/* 801E666C  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E6670  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6674  48 00 1A 41 */	bl paneResize__14dMenu_Option_cFUx
/* 801E6678  38 60 00 6C */	li r3, 0x6c
/* 801E667C  48 0E 85 D1 */	bl __nw__FUl
/* 801E6680  7C 60 1B 79 */	or. r0, r3, r3
/* 801E6684  41 82 00 20 */	beq lbl_801E66A4
/* 801E6688  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E668C  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E6690  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6694  38 E0 00 00 */	li r7, 0
/* 801E6698  39 00 00 00 */	li r8, 0
/* 801E669C  48 06 D2 E9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E66A0  7C 60 1B 78 */	mr r0, r3
lbl_801E66A4:
/* 801E66A4  3B 35 01 04 */	addi r25, r21, 0x104
/* 801E66A8  7C 1F C9 2E */	stwx r0, r31, r25
/* 801E66AC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E66B0  7C D8 B2 14 */	add r6, r24, r22
/* 801E66B4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E66B8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E66BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E66C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E66C4  7D 89 03 A6 */	mtctr r12
/* 801E66C8  4E 80 04 21 */	bctrl 
/* 801E66CC  38 00 00 00 */	li r0, 0
/* 801E66D0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E66D4  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E66D8  80 63 00 04 */	lwz r3, 4(r3)
/* 801E66DC  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E66E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E66E4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E66E8  7D 89 03 A6 */	mtctr r12
/* 801E66EC  4E 80 04 21 */	bctrl 
/* 801E66F0  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E66F4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E66F8  38 80 00 40 */	li r4, 0x40
/* 801E66FC  38 B7 00 1D */	addi r5, r23, 0x1d
/* 801E6700  4C C6 31 82 */	crclr 6
/* 801E6704  48 11 A0 49 */	bl setString__10J2DTextBoxFsPCce
/* 801E6708  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E670C  80 63 00 04 */	lwz r3, 4(r3)
/* 801E6710  38 80 00 04 */	li r4, 4
/* 801E6714  48 11 0F E5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801E6718  3A 94 00 01 */	addi r20, r20, 1
/* 801E671C  2C 14 00 06 */	cmpwi r20, 6
/* 801E6720  3A B5 00 04 */	addi r21, r21, 4
/* 801E6724  3A D6 00 08 */	addi r22, r22, 8
/* 801E6728  41 80 FF 38 */	blt lbl_801E6660
/* 801E672C  3A 80 00 00 */	li r20, 0
/* 801E6730  3A A0 00 00 */	li r21, 0
/* 801E6734  3A C0 00 00 */	li r22, 0
/* 801E6738  3B 1E 04 80 */	addi r24, r30, 0x480
/* 801E673C  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E6740  3A E3 75 D8 */	addi r23, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E6744:
/* 801E6744  7F E3 FB 78 */	mr r3, r31
/* 801E6748  3B 3E 04 B0 */	addi r25, r30, 0x4b0
/* 801E674C  7F 39 B2 14 */	add r25, r25, r22
/* 801E6750  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E6754  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6758  48 00 19 5D */	bl paneResize__14dMenu_Option_cFUx
/* 801E675C  38 60 00 6C */	li r3, 0x6c
/* 801E6760  48 0E 84 ED */	bl __nw__FUl
/* 801E6764  7C 60 1B 79 */	or. r0, r3, r3
/* 801E6768  41 82 00 20 */	beq lbl_801E6788
/* 801E676C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E6770  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E6774  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6778  38 E0 00 00 */	li r7, 0
/* 801E677C  39 00 00 00 */	li r8, 0
/* 801E6780  48 06 D2 05 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E6784  7C 60 1B 78 */	mr r0, r3
lbl_801E6788:
/* 801E6788  3B 35 01 1C */	addi r25, r21, 0x11c
/* 801E678C  7C 1F C9 2E */	stwx r0, r31, r25
/* 801E6790  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E6794  7C D8 B2 14 */	add r6, r24, r22
/* 801E6798  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E679C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E67A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E67A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E67A8  7D 89 03 A6 */	mtctr r12
/* 801E67AC  4E 80 04 21 */	bctrl 
/* 801E67B0  38 00 00 00 */	li r0, 0
/* 801E67B4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E67B8  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E67BC  48 06 EE 0D */	bl show__13CPaneMgrAlphaFv
/* 801E67C0  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E67C4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E67C8  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E67CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E67D0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E67D4  7D 89 03 A6 */	mtctr r12
/* 801E67D8  4E 80 04 21 */	bctrl 
/* 801E67DC  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E67E0  80 63 00 04 */	lwz r3, 4(r3)
/* 801E67E4  38 80 00 40 */	li r4, 0x40
/* 801E67E8  38 B7 00 1D */	addi r5, r23, 0x1d
/* 801E67EC  4C C6 31 82 */	crclr 6
/* 801E67F0  48 11 9F 5D */	bl setString__10J2DTextBoxFsPCce
/* 801E67F4  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E67F8  80 63 00 04 */	lwz r3, 4(r3)
/* 801E67FC  38 80 00 04 */	li r4, 4
/* 801E6800  48 11 0E F9 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801E6804  3A 94 00 01 */	addi r20, r20, 1
/* 801E6808  2C 14 00 06 */	cmpwi r20, 6
/* 801E680C  3A B5 00 04 */	addi r21, r21, 4
/* 801E6810  3A D6 00 08 */	addi r22, r22, 8
/* 801E6814  41 80 FF 30 */	blt lbl_801E6744
/* 801E6818  3A 80 00 00 */	li r20, 0
/* 801E681C  3A A0 00 00 */	li r21, 0
/* 801E6820  3A C0 00 00 */	li r22, 0
/* 801E6824  3B 1E 04 E0 */	addi r24, r30, 0x4e0
/* 801E6828  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E682C  3A E3 75 D8 */	addi r23, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E6830:
/* 801E6830  7F E3 FB 78 */	mr r3, r31
/* 801E6834  3B 3E 05 10 */	addi r25, r30, 0x510
/* 801E6838  7F 39 B2 14 */	add r25, r25, r22
/* 801E683C  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E6840  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6844  48 00 18 71 */	bl paneResize__14dMenu_Option_cFUx
/* 801E6848  38 60 00 6C */	li r3, 0x6c
/* 801E684C  48 0E 84 01 */	bl __nw__FUl
/* 801E6850  7C 60 1B 79 */	or. r0, r3, r3
/* 801E6854  41 82 00 20 */	beq lbl_801E6874
/* 801E6858  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E685C  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E6860  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6864  38 E0 00 00 */	li r7, 0
/* 801E6868  39 00 00 00 */	li r8, 0
/* 801E686C  48 06 D1 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E6870  7C 60 1B 78 */	mr r0, r3
lbl_801E6874:
/* 801E6874  3B 35 01 34 */	addi r25, r21, 0x134
/* 801E6878  7C 1F C9 2E */	stwx r0, r31, r25
/* 801E687C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E6880  7C D8 B2 14 */	add r6, r24, r22
/* 801E6884  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6888  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E688C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6890  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6894  7D 89 03 A6 */	mtctr r12
/* 801E6898  4E 80 04 21 */	bctrl 
/* 801E689C  38 00 00 00 */	li r0, 0
/* 801E68A0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E68A4  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E68A8  48 06 ED 21 */	bl show__13CPaneMgrAlphaFv
/* 801E68AC  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E68B0  80 63 00 04 */	lwz r3, 4(r3)
/* 801E68B4  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E68B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E68BC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E68C0  7D 89 03 A6 */	mtctr r12
/* 801E68C4  4E 80 04 21 */	bctrl 
/* 801E68C8  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E68CC  80 63 00 04 */	lwz r3, 4(r3)
/* 801E68D0  38 80 00 40 */	li r4, 0x40
/* 801E68D4  38 B7 00 1D */	addi r5, r23, 0x1d
/* 801E68D8  4C C6 31 82 */	crclr 6
/* 801E68DC  48 11 9E 71 */	bl setString__10J2DTextBoxFsPCce
/* 801E68E0  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E68E4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E68E8  38 80 00 04 */	li r4, 4
/* 801E68EC  48 11 0E 0D */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801E68F0  3A 94 00 01 */	addi r20, r20, 1
/* 801E68F4  2C 14 00 06 */	cmpwi r20, 6
/* 801E68F8  3A B5 00 04 */	addi r21, r21, 4
/* 801E68FC  3A D6 00 08 */	addi r22, r22, 8
/* 801E6900  41 80 FF 30 */	blt lbl_801E6830
/* 801E6904  3A 80 00 00 */	li r20, 0
/* 801E6908  3A A0 00 00 */	li r21, 0
/* 801E690C  3A C0 00 00 */	li r22, 0
/* 801E6910  3B 1E 05 40 */	addi r24, r30, 0x540
/* 801E6914  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E6918  3A E3 75 D8 */	addi r23, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E691C:
/* 801E691C  7F E3 FB 78 */	mr r3, r31
/* 801E6920  3B 3E 05 70 */	addi r25, r30, 0x570
/* 801E6924  7F 39 B2 14 */	add r25, r25, r22
/* 801E6928  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E692C  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6930  48 00 17 85 */	bl paneResize__14dMenu_Option_cFUx
/* 801E6934  38 60 00 6C */	li r3, 0x6c
/* 801E6938  48 0E 83 15 */	bl __nw__FUl
/* 801E693C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E6940  41 82 00 20 */	beq lbl_801E6960
/* 801E6944  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E6948  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E694C  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6950  38 E0 00 00 */	li r7, 0
/* 801E6954  39 00 00 00 */	li r8, 0
/* 801E6958  48 06 D0 2D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E695C  7C 60 1B 78 */	mr r0, r3
lbl_801E6960:
/* 801E6960  3B 35 01 4C */	addi r25, r21, 0x14c
/* 801E6964  7C 1F C9 2E */	stwx r0, r31, r25
/* 801E6968  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E696C  7C D8 B2 14 */	add r6, r24, r22
/* 801E6970  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6974  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6978  81 83 00 00 */	lwz r12, 0(r3)
/* 801E697C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6980  7D 89 03 A6 */	mtctr r12
/* 801E6984  4E 80 04 21 */	bctrl 
/* 801E6988  38 00 00 00 */	li r0, 0
/* 801E698C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E6990  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6994  48 06 EC 35 */	bl show__13CPaneMgrAlphaFv
/* 801E6998  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E699C  80 63 00 04 */	lwz r3, 4(r3)
/* 801E69A0  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E69A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E69A8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E69AC  7D 89 03 A6 */	mtctr r12
/* 801E69B0  4E 80 04 21 */	bctrl 
/* 801E69B4  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E69B8  80 63 00 04 */	lwz r3, 4(r3)
/* 801E69BC  38 80 00 40 */	li r4, 0x40
/* 801E69C0  38 B7 00 1D */	addi r5, r23, 0x1d
/* 801E69C4  4C C6 31 82 */	crclr 6
/* 801E69C8  48 11 9D 85 */	bl setString__10J2DTextBoxFsPCce
/* 801E69CC  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E69D0  80 63 00 04 */	lwz r3, 4(r3)
/* 801E69D4  38 80 00 04 */	li r4, 4
/* 801E69D8  48 11 0D 21 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801E69DC  3A 94 00 01 */	addi r20, r20, 1
/* 801E69E0  2C 14 00 06 */	cmpwi r20, 6
/* 801E69E4  3A B5 00 04 */	addi r21, r21, 4
/* 801E69E8  3A D6 00 08 */	addi r22, r22, 8
/* 801E69EC  41 80 FF 30 */	blt lbl_801E691C
/* 801E69F0  3A 80 00 00 */	li r20, 0
/* 801E69F4  3A A0 00 00 */	li r21, 0
/* 801E69F8  3A C0 00 00 */	li r22, 0
/* 801E69FC  3B 1E 05 A0 */	addi r24, r30, 0x5a0
/* 801E6A00  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E6A04  3A E3 75 D8 */	addi r23, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E6A08:
/* 801E6A08  7F E3 FB 78 */	mr r3, r31
/* 801E6A0C  3B 3E 05 D0 */	addi r25, r30, 0x5d0
/* 801E6A10  7F 39 B2 14 */	add r25, r25, r22
/* 801E6A14  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E6A18  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6A1C  48 00 16 99 */	bl paneResize__14dMenu_Option_cFUx
/* 801E6A20  38 60 00 6C */	li r3, 0x6c
/* 801E6A24  48 0E 82 29 */	bl __nw__FUl
/* 801E6A28  7C 60 1B 79 */	or. r0, r3, r3
/* 801E6A2C  41 82 00 20 */	beq lbl_801E6A4C
/* 801E6A30  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E6A34  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E6A38  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E6A3C  38 E0 00 00 */	li r7, 0
/* 801E6A40  39 00 00 00 */	li r8, 0
/* 801E6A44  48 06 CF 41 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E6A48  7C 60 1B 78 */	mr r0, r3
lbl_801E6A4C:
/* 801E6A4C  3B 35 01 64 */	addi r25, r21, 0x164
/* 801E6A50  7C 1F C9 2E */	stwx r0, r31, r25
/* 801E6A54  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E6A58  7C D8 B2 14 */	add r6, r24, r22
/* 801E6A5C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6A60  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6A64  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6A68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6A6C  7D 89 03 A6 */	mtctr r12
/* 801E6A70  4E 80 04 21 */	bctrl 
/* 801E6A74  38 00 00 00 */	li r0, 0
/* 801E6A78  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E6A7C  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6A80  48 06 EB 49 */	bl show__13CPaneMgrAlphaFv
/* 801E6A84  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6A88  80 63 00 04 */	lwz r3, 4(r3)
/* 801E6A8C  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E6A90  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6A94  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E6A98  7D 89 03 A6 */	mtctr r12
/* 801E6A9C  4E 80 04 21 */	bctrl 
/* 801E6AA0  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6AA4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E6AA8  38 80 00 40 */	li r4, 0x40
/* 801E6AAC  38 B7 00 1D */	addi r5, r23, 0x1d
/* 801E6AB0  4C C6 31 82 */	crclr 6
/* 801E6AB4  48 11 9C 99 */	bl setString__10J2DTextBoxFsPCce
/* 801E6AB8  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801E6ABC  80 63 00 04 */	lwz r3, 4(r3)
/* 801E6AC0  38 80 00 04 */	li r4, 4
/* 801E6AC4  48 11 0C 35 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801E6AC8  3A 94 00 01 */	addi r20, r20, 1
/* 801E6ACC  2C 14 00 06 */	cmpwi r20, 6
/* 801E6AD0  3A B5 00 04 */	addi r21, r21, 4
/* 801E6AD4  3A D6 00 08 */	addi r22, r22, 8
/* 801E6AD8  41 80 FF 30 */	blt lbl_801E6A08
/* 801E6ADC  38 60 00 00 */	li r3, 0
/* 801E6AE0  38 80 00 00 */	li r4, 0
/* 801E6AE4  38 00 00 06 */	li r0, 6
/* 801E6AE8  7C 09 03 A6 */	mtctr r0
lbl_801E6AEC:
/* 801E6AEC  38 03 01 7C */	addi r0, r3, 0x17c
/* 801E6AF0  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E6AF4  38 63 00 04 */	addi r3, r3, 4
/* 801E6AF8  42 00 FF F4 */	bdnz lbl_801E6AEC
/* 801E6AFC  3A E0 00 00 */	li r23, 0
/* 801E6B00  3A 80 00 00 */	li r20, 0
lbl_801E6B04:
/* 801E6B04  3B 00 00 02 */	li r24, 2
/* 801E6B08  3A A0 00 08 */	li r21, 8
/* 801E6B0C  7E DF A2 14 */	add r22, r31, r20
lbl_801E6B10:
/* 801E6B10  38 15 01 04 */	addi r0, r21, 0x104
/* 801E6B14  7C 76 00 2E */	lwzx r3, r22, r0
/* 801E6B18  28 03 00 00 */	cmplwi r3, 0
/* 801E6B1C  41 82 00 08 */	beq lbl_801E6B24
/* 801E6B20  48 06 EA E9 */	bl hide__13CPaneMgrAlphaFv
lbl_801E6B24:
/* 801E6B24  3B 18 00 01 */	addi r24, r24, 1
/* 801E6B28  2C 18 00 06 */	cmpwi r24, 6
/* 801E6B2C  3A B5 00 04 */	addi r21, r21, 4
/* 801E6B30  41 80 FF E0 */	blt lbl_801E6B10
/* 801E6B34  3A F7 00 01 */	addi r23, r23, 1
/* 801E6B38  2C 17 00 06 */	cmpwi r23, 6
/* 801E6B3C  3A 94 00 18 */	addi r20, r20, 0x18
/* 801E6B40  41 80 FF C4 */	blt lbl_801E6B04
/* 801E6B44  C0 02 A9 2C */	lfs f0, lit_4068(r2)
/* 801E6B48  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 801E6B4C  7F E3 FB 78 */	mr r3, r31
/* 801E6B50  4B FF E9 45 */	bl menuVisible__14dMenu_Option_cFv
/* 801E6B54  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E6B58  3C 80 70 6E */	lis r4, 0x706E /* 0x706E5F6E@ha */
/* 801E6B5C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x706E5F6E@l */
/* 801E6B60  38 A0 00 6A */	li r5, 0x6a
/* 801E6B64  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6B68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6B6C  7D 89 03 A6 */	mtctr r12
/* 801E6B70  4E 80 04 21 */	bctrl 
/* 801E6B74  38 00 00 00 */	li r0, 0
/* 801E6B78  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E6B7C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E6B80  3C 80 67 6E */	lis r4, 0x676E /* 0x676E5F6E@ha */
/* 801E6B84  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x676E5F6E@l */
/* 801E6B88  3C 80 66 6F */	lis r4, 0x666F /* 0x666F7265@ha */
/* 801E6B8C  38 A4 72 65 */	addi r5, r4, 0x7265 /* 0x666F7265@l */
/* 801E6B90  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6B94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6B98  7D 89 03 A6 */	mtctr r12
/* 801E6B9C  4E 80 04 21 */	bctrl 
/* 801E6BA0  38 00 00 01 */	li r0, 1
/* 801E6BA4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E6BA8  3A E0 00 00 */	li r23, 0
/* 801E6BAC  3A 80 00 00 */	li r20, 0
/* 801E6BB0  3A DE 06 00 */	addi r22, r30, 0x600
/* 801E6BB4  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E6BB8  3A A3 75 D8 */	addi r21, r3, d_menu_d_menu_option__stringBase0@l
lbl_801E6BBC:
/* 801E6BBC  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E6BC0  7C D6 A2 14 */	add r6, r22, r20
/* 801E6BC4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6BC8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6BCC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6BD0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6BD4  7D 89 03 A6 */	mtctr r12
/* 801E6BD8  4E 80 04 21 */	bctrl 
/* 801E6BDC  7C 78 1B 78 */	mr r24, r3
/* 801E6BE0  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E6BE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6BE8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E6BEC  7D 89 03 A6 */	mtctr r12
/* 801E6BF0  4E 80 04 21 */	bctrl 
/* 801E6BF4  7F 03 C3 78 */	mr r3, r24
/* 801E6BF8  38 80 00 80 */	li r4, 0x80
/* 801E6BFC  38 B5 00 1D */	addi r5, r21, 0x1d
/* 801E6C00  4C C6 31 82 */	crclr 6
/* 801E6C04  48 11 9B 49 */	bl setString__10J2DTextBoxFsPCce
/* 801E6C08  2C 17 00 02 */	cmpwi r23, 2
/* 801E6C0C  40 80 00 34 */	bge lbl_801E6C40
/* 801E6C10  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6C14  38 80 05 5D */	li r4, 0x55d
/* 801E6C18  7F 05 C3 78 */	mr r5, r24
/* 801E6C1C  38 C0 00 00 */	li r6, 0
/* 801E6C20  38 E0 00 00 */	li r7, 0
/* 801E6C24  39 00 00 00 */	li r8, 0
/* 801E6C28  39 20 00 00 */	li r9, 0
/* 801E6C2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6C30  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6C34  7D 89 03 A6 */	mtctr r12
/* 801E6C38  4E 80 04 21 */	bctrl 
/* 801E6C3C  48 00 00 68 */	b lbl_801E6CA4
lbl_801E6C40:
/* 801E6C40  2C 17 00 04 */	cmpwi r23, 4
/* 801E6C44  40 80 00 34 */	bge lbl_801E6C78
/* 801E6C48  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6C4C  38 80 05 5E */	li r4, 0x55e
/* 801E6C50  7F 05 C3 78 */	mr r5, r24
/* 801E6C54  38 C0 00 00 */	li r6, 0
/* 801E6C58  38 E0 00 00 */	li r7, 0
/* 801E6C5C  39 00 00 00 */	li r8, 0
/* 801E6C60  39 20 00 00 */	li r9, 0
/* 801E6C64  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6C68  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6C6C  7D 89 03 A6 */	mtctr r12
/* 801E6C70  4E 80 04 21 */	bctrl 
/* 801E6C74  48 00 00 30 */	b lbl_801E6CA4
lbl_801E6C78:
/* 801E6C78  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6C7C  38 80 05 56 */	li r4, 0x556
/* 801E6C80  7F 05 C3 78 */	mr r5, r24
/* 801E6C84  38 C0 00 00 */	li r6, 0
/* 801E6C88  38 E0 00 00 */	li r7, 0
/* 801E6C8C  39 00 00 00 */	li r8, 0
/* 801E6C90  39 20 00 00 */	li r9, 0
/* 801E6C94  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6C98  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6C9C  7D 89 03 A6 */	mtctr r12
/* 801E6CA0  4E 80 04 21 */	bctrl 
lbl_801E6CA4:
/* 801E6CA4  3A F7 00 01 */	addi r23, r23, 1
/* 801E6CA8  2C 17 00 06 */	cmpwi r23, 6
/* 801E6CAC  3A 94 00 08 */	addi r20, r20, 8
/* 801E6CB0  41 80 FF 0C */	blt lbl_801E6BBC
/* 801E6CB4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E6CB8  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801E6CBC  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801E6CC0  3C 80 77 69 */	lis r4, 0x7769 /* 0x77695F62@ha */
/* 801E6CC4  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x77695F62@l */
/* 801E6CC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6CCC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6CD0  7D 89 03 A6 */	mtctr r12
/* 801E6CD4  4E 80 04 21 */	bctrl 
/* 801E6CD8  38 80 00 00 */	li r4, 0
/* 801E6CDC  98 83 00 B0 */	stb r4, 0xb0(r3)
/* 801E6CE0  38 60 00 00 */	li r3, 0
/* 801E6CE4  38 00 00 04 */	li r0, 4
/* 801E6CE8  7C 09 03 A6 */	mtctr r0
lbl_801E6CEC:
/* 801E6CEC  38 03 01 C0 */	addi r0, r3, 0x1c0
/* 801E6CF0  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E6CF4  38 63 00 04 */	addi r3, r3, 4
/* 801E6CF8  42 00 FF F4 */	bdnz lbl_801E6CEC
/* 801E6CFC  3A E0 00 00 */	li r23, 0
/* 801E6D00  3A 80 00 00 */	li r20, 0
/* 801E6D04  3A A0 00 00 */	li r21, 0
lbl_801E6D08:
/* 801E6D08  3A DE 06 50 */	addi r22, r30, 0x650
/* 801E6D0C  7E D6 AA 14 */	add r22, r22, r21
/* 801E6D10  80 16 00 00 */	lwz r0, 0(r22)
/* 801E6D14  80 76 00 04 */	lwz r3, 4(r22)
/* 801E6D18  38 80 00 00 */	li r4, 0
/* 801E6D1C  7C 63 22 78 */	xor r3, r3, r4
/* 801E6D20  7C 00 22 78 */	xor r0, r0, r4
/* 801E6D24  7C 60 03 79 */	or. r0, r3, r0
/* 801E6D28  41 82 00 3C */	beq lbl_801E6D64
/* 801E6D2C  38 60 00 6C */	li r3, 0x6c
/* 801E6D30  48 0E 7F 1D */	bl __nw__FUl
/* 801E6D34  7C 64 1B 79 */	or. r4, r3, r3
/* 801E6D38  41 82 00 20 */	beq lbl_801E6D58
/* 801E6D3C  80 9F 00 04 */	lwz r4, 4(r31)
/* 801E6D40  80 B6 00 00 */	lwz r5, 0(r22)
/* 801E6D44  80 D6 00 04 */	lwz r6, 4(r22)
/* 801E6D48  38 E0 00 02 */	li r7, 2
/* 801E6D4C  39 00 00 00 */	li r8, 0
/* 801E6D50  48 06 CC 35 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E6D54  7C 64 1B 78 */	mr r4, r3
lbl_801E6D58:
/* 801E6D58  38 14 01 D0 */	addi r0, r20, 0x1d0
/* 801E6D5C  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E6D60  48 00 00 0C */	b lbl_801E6D6C
lbl_801E6D64:
/* 801E6D64  38 14 01 D0 */	addi r0, r20, 0x1d0
/* 801E6D68  7C 9F 01 2E */	stwx r4, r31, r0
lbl_801E6D6C:
/* 801E6D6C  3A F7 00 01 */	addi r23, r23, 1
/* 801E6D70  2C 17 00 03 */	cmpwi r23, 3
/* 801E6D74  3A 94 00 04 */	addi r20, r20, 4
/* 801E6D78  3A B5 00 08 */	addi r21, r21, 8
/* 801E6D7C  41 80 FF 8C */	blt lbl_801E6D08
/* 801E6D80  3A C0 00 00 */	li r22, 0
/* 801E6D84  3A 80 00 00 */	li r20, 0
/* 801E6D88  3A BE 06 68 */	addi r21, r30, 0x668
/* 801E6D8C  C3 E2 A9 2C */	lfs f31, lit_4068(r2)
lbl_801E6D90:
/* 801E6D90  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E6D94  7C D5 A2 14 */	add r6, r21, r20
/* 801E6D98  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E6D9C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E6DA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6DA4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E6DA8  7D 89 03 A6 */	mtctr r12
/* 801E6DAC  4E 80 04 21 */	bctrl 
/* 801E6DB0  7C 77 1B 78 */	mr r23, r3
/* 801E6DB4  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 801E6DB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6DBC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E6DC0  7D 89 03 A6 */	mtctr r12
/* 801E6DC4  4E 80 04 21 */	bctrl 
/* 801E6DC8  D3 F7 01 14 */	stfs f31, 0x114(r23)
/* 801E6DCC  2C 16 00 02 */	cmpwi r22, 2
/* 801E6DD0  40 80 00 50 */	bge lbl_801E6E20
/* 801E6DD4  7E E3 BB 78 */	mr r3, r23
/* 801E6DD8  38 80 01 00 */	li r4, 0x100
/* 801E6DDC  3C A0 80 39 */	lis r5, d_menu_d_menu_option__stringBase0@ha
/* 801E6DE0  38 A5 75 D8 */	addi r5, r5, d_menu_d_menu_option__stringBase0@l
/* 801E6DE4  38 A5 00 1D */	addi r5, r5, 0x1d
/* 801E6DE8  4C C6 31 82 */	crclr 6
/* 801E6DEC  48 11 99 61 */	bl setString__10J2DTextBoxFsPCce
/* 801E6DF0  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6DF4  38 80 05 58 */	li r4, 0x558
/* 801E6DF8  7E E5 BB 78 */	mr r5, r23
/* 801E6DFC  38 C0 00 00 */	li r6, 0
/* 801E6E00  38 E0 00 00 */	li r7, 0
/* 801E6E04  39 00 00 00 */	li r8, 0
/* 801E6E08  39 20 00 00 */	li r9, 0
/* 801E6E0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6E10  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6E14  7D 89 03 A6 */	mtctr r12
/* 801E6E18  4E 80 04 21 */	bctrl 
/* 801E6E1C  48 00 01 48 */	b lbl_801E6F64
lbl_801E6E20:
/* 801E6E20  2C 16 00 04 */	cmpwi r22, 4
/* 801E6E24  40 80 00 50 */	bge lbl_801E6E74
/* 801E6E28  7E E3 BB 78 */	mr r3, r23
/* 801E6E2C  38 80 01 00 */	li r4, 0x100
/* 801E6E30  3C A0 80 39 */	lis r5, d_menu_d_menu_option__stringBase0@ha
/* 801E6E34  38 A5 75 D8 */	addi r5, r5, d_menu_d_menu_option__stringBase0@l
/* 801E6E38  38 A5 00 1D */	addi r5, r5, 0x1d
/* 801E6E3C  4C C6 31 82 */	crclr 6
/* 801E6E40  48 11 99 0D */	bl setString__10J2DTextBoxFsPCce
/* 801E6E44  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6E48  38 80 05 57 */	li r4, 0x557
/* 801E6E4C  7E E5 BB 78 */	mr r5, r23
/* 801E6E50  38 C0 00 00 */	li r6, 0
/* 801E6E54  38 E0 00 00 */	li r7, 0
/* 801E6E58  39 00 00 00 */	li r8, 0
/* 801E6E5C  39 20 00 00 */	li r9, 0
/* 801E6E60  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6E64  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6E68  7D 89 03 A6 */	mtctr r12
/* 801E6E6C  4E 80 04 21 */	bctrl 
/* 801E6E70  48 00 00 F4 */	b lbl_801E6F64
lbl_801E6E74:
/* 801E6E74  2C 16 00 06 */	cmpwi r22, 6
/* 801E6E78  40 80 00 50 */	bge lbl_801E6EC8
/* 801E6E7C  7E E3 BB 78 */	mr r3, r23
/* 801E6E80  38 80 01 00 */	li r4, 0x100
/* 801E6E84  3C A0 80 39 */	lis r5, d_menu_d_menu_option__stringBase0@ha
/* 801E6E88  38 A5 75 D8 */	addi r5, r5, d_menu_d_menu_option__stringBase0@l
/* 801E6E8C  38 A5 00 1D */	addi r5, r5, 0x1d
/* 801E6E90  4C C6 31 82 */	crclr 6
/* 801E6E94  48 11 98 B9 */	bl setString__10J2DTextBoxFsPCce
/* 801E6E98  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6E9C  38 80 05 59 */	li r4, 0x559
/* 801E6EA0  7E E5 BB 78 */	mr r5, r23
/* 801E6EA4  38 C0 00 00 */	li r6, 0
/* 801E6EA8  38 E0 00 00 */	li r7, 0
/* 801E6EAC  39 00 00 00 */	li r8, 0
/* 801E6EB0  39 20 00 00 */	li r9, 0
/* 801E6EB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6EB8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6EBC  7D 89 03 A6 */	mtctr r12
/* 801E6EC0  4E 80 04 21 */	bctrl 
/* 801E6EC4  48 00 00 A0 */	b lbl_801E6F64
lbl_801E6EC8:
/* 801E6EC8  2C 16 00 08 */	cmpwi r22, 8
/* 801E6ECC  40 80 00 50 */	bge lbl_801E6F1C
/* 801E6ED0  7E E3 BB 78 */	mr r3, r23
/* 801E6ED4  38 80 01 00 */	li r4, 0x100
/* 801E6ED8  3C A0 80 39 */	lis r5, d_menu_d_menu_option__stringBase0@ha
/* 801E6EDC  38 A5 75 D8 */	addi r5, r5, d_menu_d_menu_option__stringBase0@l
/* 801E6EE0  38 A5 00 1D */	addi r5, r5, 0x1d
/* 801E6EE4  4C C6 31 82 */	crclr 6
/* 801E6EE8  48 11 98 65 */	bl setString__10J2DTextBoxFsPCce
/* 801E6EEC  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6EF0  38 80 05 5A */	li r4, 0x55a
/* 801E6EF4  7E E5 BB 78 */	mr r5, r23
/* 801E6EF8  38 C0 00 00 */	li r6, 0
/* 801E6EFC  38 E0 00 00 */	li r7, 0
/* 801E6F00  39 00 00 00 */	li r8, 0
/* 801E6F04  39 20 00 00 */	li r9, 0
/* 801E6F08  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6F0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6F10  7D 89 03 A6 */	mtctr r12
/* 801E6F14  4E 80 04 21 */	bctrl 
/* 801E6F18  48 00 00 4C */	b lbl_801E6F64
lbl_801E6F1C:
/* 801E6F1C  7E E3 BB 78 */	mr r3, r23
/* 801E6F20  38 80 01 00 */	li r4, 0x100
/* 801E6F24  3C A0 80 39 */	lis r5, d_menu_d_menu_option__stringBase0@ha
/* 801E6F28  38 A5 75 D8 */	addi r5, r5, d_menu_d_menu_option__stringBase0@l
/* 801E6F2C  38 A5 00 1D */	addi r5, r5, 0x1d
/* 801E6F30  4C C6 31 82 */	crclr 6
/* 801E6F34  48 11 98 19 */	bl setString__10J2DTextBoxFsPCce
/* 801E6F38  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801E6F3C  38 80 05 5B */	li r4, 0x55b
/* 801E6F40  7E E5 BB 78 */	mr r5, r23
/* 801E6F44  38 C0 00 00 */	li r6, 0
/* 801E6F48  38 E0 00 00 */	li r7, 0
/* 801E6F4C  39 00 00 00 */	li r8, 0
/* 801E6F50  39 20 00 00 */	li r9, 0
/* 801E6F54  81 83 00 00 */	lwz r12, 0(r3)
/* 801E6F58  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E6F5C  7D 89 03 A6 */	mtctr r12
/* 801E6F60  4E 80 04 21 */	bctrl 
lbl_801E6F64:
/* 801E6F64  3A D6 00 01 */	addi r22, r22, 1
/* 801E6F68  2C 16 00 0A */	cmpwi r22, 0xa
/* 801E6F6C  3A 94 00 08 */	addi r20, r20, 8
/* 801E6F70  41 80 FE 20 */	blt lbl_801E6D90
/* 801E6F74  3A A0 00 00 */	li r21, 0
/* 801E6F78  3A 80 00 00 */	li r20, 0
lbl_801E6F7C:
/* 801E6F7C  38 14 00 5C */	addi r0, r20, 0x5c
/* 801E6F80  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801E6F84  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E6F88  48 06 E8 49 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801E6F8C  3A B5 00 01 */	addi r21, r21, 1
/* 801E6F90  2C 15 00 05 */	cmpwi r21, 5
/* 801E6F94  3A 94 00 04 */	addi r20, r20, 4
/* 801E6F98  41 80 FF E4 */	blt lbl_801E6F7C
/* 801E6F9C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 801E6FA0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801E6FA4  39 61 00 90 */	addi r11, r1, 0x90
/* 801E6FA8  48 17 B2 5D */	bl _restgpr_20
/* 801E6FAC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801E6FB0  7C 08 03 A6 */	mtlr r0
/* 801E6FB4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801E6FB8  4E 80 00 20 */	blr 
