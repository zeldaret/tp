lbl_801BB634:
/* 801BB634  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801BB638  7C 08 02 A6 */	mflr r0
/* 801BB63C  90 01 00 94 */	stw r0, 0x94(r1)
/* 801BB640  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801BB644  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 801BB648  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801BB64C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 801BB650  39 61 00 70 */	addi r11, r1, 0x70
/* 801BB654  48 1A 6B 75 */	bl _savegpr_24
/* 801BB658  7C 7F 1B 78 */	mr r31, r3
/* 801BB65C  3C 60 80 39 */	lis r3, cont_at_4145@ha
/* 801BB660  3B C3 55 18 */	addi r30, r3, cont_at_4145@l
/* 801BB664  38 60 00 6C */	li r3, 0x6c
/* 801BB668  48 11 35 E5 */	bl __nw__FUl
/* 801BB66C  7C 60 1B 79 */	or. r0, r3, r3
/* 801BB670  41 82 00 2C */	beq lbl_801BB69C
/* 801BB674  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BB678  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BB67C  3C A0 5F 73 */	lis r5, 0x5F73 /* 0x5F735F6E@ha */
/* 801BB680  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F735F6E@l */
/* 801BB684  3C A0 66 6C */	lis r5, 0x666C /* 0x666C6F6F@ha */
/* 801BB688  38 A5 6F 6F */	addi r5, r5, 0x6F6F /* 0x666C6F6F@l */
/* 801BB68C  38 E0 00 00 */	li r7, 0
/* 801BB690  39 00 00 00 */	li r8, 0
/* 801BB694  48 09 82 F1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BB698  7C 60 1B 78 */	mr r0, r3
lbl_801BB69C:
/* 801BB69C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801BB6A0  3B 80 00 00 */	li r28, 0
/* 801BB6A4  3B 20 00 00 */	li r25, 0
/* 801BB6A8  3B 40 00 00 */	li r26, 0
/* 801BB6AC  C3 C2 A5 E8 */	lfs f30, lit_3962(r2)
lbl_801BB6B0:
/* 801BB6B0  7F BF D2 14 */	add r29, r31, r26
/* 801BB6B4  D3 DD 01 14 */	stfs f30, 0x114(r29)
/* 801BB6B8  38 60 00 6C */	li r3, 0x6c
/* 801BB6BC  48 11 35 91 */	bl __nw__FUl
/* 801BB6C0  7C 60 1B 79 */	or. r0, r3, r3
/* 801BB6C4  41 82 00 2C */	beq lbl_801BB6F0
/* 801BB6C8  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BB6CC  80 84 0C BC */	lwz r4, 0xcbc(r4)
/* 801BB6D0  38 1E 01 30 */	addi r0, r30, 0x130
/* 801BB6D4  7C C0 CA 14 */	add r6, r0, r25
/* 801BB6D8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801BB6DC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801BB6E0  38 E0 00 03 */	li r7, 3
/* 801BB6E4  39 00 00 00 */	li r8, 0
/* 801BB6E8  48 09 82 9D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BB6EC  7C 60 1B 78 */	mr r0, r3
lbl_801BB6F0:
/* 801BB6F0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 801BB6F4  38 60 00 6C */	li r3, 0x6c
/* 801BB6F8  48 11 35 55 */	bl __nw__FUl
/* 801BB6FC  7C 60 1B 79 */	or. r0, r3, r3
/* 801BB700  41 82 00 2C */	beq lbl_801BB72C
/* 801BB704  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BB708  80 84 0C BC */	lwz r4, 0xcbc(r4)
/* 801BB70C  38 1E 01 70 */	addi r0, r30, 0x170
/* 801BB710  7C C0 CA 14 */	add r6, r0, r25
/* 801BB714  80 A6 00 00 */	lwz r5, 0(r6)
/* 801BB718  80 C6 00 04 */	lwz r6, 4(r6)
/* 801BB71C  38 E0 00 00 */	li r7, 0
/* 801BB720  39 00 00 00 */	li r8, 0
/* 801BB724  48 09 82 61 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BB728  7C 60 1B 78 */	mr r0, r3
lbl_801BB72C:
/* 801BB72C  90 1D 00 34 */	stw r0, 0x34(r29)
/* 801BB730  38 60 00 6C */	li r3, 0x6c
/* 801BB734  48 11 35 19 */	bl __nw__FUl
/* 801BB738  7C 60 1B 79 */	or. r0, r3, r3
/* 801BB73C  41 82 00 2C */	beq lbl_801BB768
/* 801BB740  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BB744  80 84 0C BC */	lwz r4, 0xcbc(r4)
/* 801BB748  38 1E 01 B0 */	addi r0, r30, 0x1b0
/* 801BB74C  7C C0 CA 14 */	add r6, r0, r25
/* 801BB750  80 A6 00 00 */	lwz r5, 0(r6)
/* 801BB754  80 C6 00 04 */	lwz r6, 4(r6)
/* 801BB758  38 E0 00 00 */	li r7, 0
/* 801BB75C  39 00 00 00 */	li r8, 0
/* 801BB760  48 09 82 25 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BB764  7C 60 1B 78 */	mr r0, r3
lbl_801BB768:
/* 801BB768  90 1D 00 54 */	stw r0, 0x54(r29)
/* 801BB76C  3B 9C 00 01 */	addi r28, r28, 1
/* 801BB770  2C 1C 00 08 */	cmpwi r28, 8
/* 801BB774  3B 39 00 08 */	addi r25, r25, 8
/* 801BB778  3B 5A 00 04 */	addi r26, r26, 4
/* 801BB77C  41 80 FF 34 */	blt lbl_801BB6B0
/* 801BB780  3B 80 00 00 */	li r28, 0
/* 801BB784  3B 40 00 00 */	li r26, 0
/* 801BB788  3B 60 00 00 */	li r27, 0
/* 801BB78C  3B 20 00 00 */	li r25, 0
/* 801BB790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BB794  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
lbl_801BB798:
/* 801BB798  38 60 00 6C */	li r3, 0x6c
/* 801BB79C  48 11 34 B1 */	bl __nw__FUl
/* 801BB7A0  7C 60 1B 79 */	or. r0, r3, r3
/* 801BB7A4  41 82 00 2C */	beq lbl_801BB7D0
/* 801BB7A8  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BB7AC  80 84 0C BC */	lwz r4, 0xcbc(r4)
/* 801BB7B0  38 1E 01 F0 */	addi r0, r30, 0x1f0
/* 801BB7B4  7C C0 CA 14 */	add r6, r0, r25
/* 801BB7B8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801BB7BC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801BB7C0  38 E0 00 00 */	li r7, 0
/* 801BB7C4  39 00 00 00 */	li r8, 0
/* 801BB7C8  48 09 81 BD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BB7CC  7C 60 1B 78 */	mr r0, r3
lbl_801BB7D0:
/* 801BB7D0  3B 1B 00 74 */	addi r24, r27, 0x74
/* 801BB7D4  7C 1F C1 2E */	stwx r0, r31, r24
/* 801BB7D8  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801BB7DC  48 09 9E 2D */	bl hide__13CPaneMgrAlphaFv
/* 801BB7E0  7C 9F C0 2E */	lwzx r4, r31, r24
/* 801BB7E4  38 61 00 24 */	addi r3, r1, 0x24
/* 801BB7E8  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BB7EC  38 C0 00 00 */	li r6, 0
/* 801BB7F0  38 E0 00 00 */	li r7, 0
/* 801BB7F4  48 09 96 C9 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BB7F8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801BB7FC  7C 7F D2 14 */	add r3, r31, r26
/* 801BB800  D0 03 01 4C */	stfs f0, 0x14c(r3)
/* 801BB804  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801BB808  D0 03 01 50 */	stfs f0, 0x150(r3)
/* 801BB80C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801BB810  D0 03 01 54 */	stfs f0, 0x154(r3)
/* 801BB814  2C 1C 00 00 */	cmpwi r28, 0
/* 801BB818  40 82 01 5C */	bne lbl_801BB974
/* 801BB81C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BB820  80 63 0C BC */	lwz r3, 0xcbc(r3)
/* 801BB824  3C 80 72 69 */	lis r4, 0x7269 /* 0x72696E6B@ha */
/* 801BB828  38 C4 6E 6B */	addi r6, r4, 0x6E6B /* 0x72696E6B@l */
/* 801BB82C  38 A0 00 00 */	li r5, 0
/* 801BB830  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB834  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BB838  7D 89 03 A6 */	mtctr r12
/* 801BB83C  4E 80 04 21 */	bctrl 
/* 801BB840  48 13 B8 C1 */	bl getBounds__7J2DPaneFv
/* 801BB844  C3 C3 00 04 */	lfs f30, 4(r3)
/* 801BB848  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BB84C  80 63 0C BC */	lwz r3, 0xcbc(r3)
/* 801BB850  3C 80 72 69 */	lis r4, 0x7269 /* 0x72696E6B@ha */
/* 801BB854  38 C4 6E 6B */	addi r6, r4, 0x6E6B /* 0x72696E6B@l */
/* 801BB858  38 A0 00 00 */	li r5, 0
/* 801BB85C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB860  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BB864  7D 89 03 A6 */	mtctr r12
/* 801BB868  4E 80 04 21 */	bctrl 
/* 801BB86C  48 13 B8 95 */	bl getBounds__7J2DPaneFv
/* 801BB870  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801BB874  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BB878  80 63 0C BC */	lwz r3, 0xcbc(r3)
/* 801BB87C  3C 80 77 6F */	lis r4, 0x776F /* 0x776F6C66@ha */
/* 801BB880  38 C4 6C 66 */	addi r6, r4, 0x6C66 /* 0x776F6C66@l */
/* 801BB884  38 A0 00 00 */	li r5, 0
/* 801BB888  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB88C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BB890  7D 89 03 A6 */	mtctr r12
/* 801BB894  4E 80 04 21 */	bctrl 
/* 801BB898  FC 20 F8 90 */	fmr f1, f31
/* 801BB89C  FC 40 F0 90 */	fmr f2, f30
/* 801BB8A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB8A4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801BB8A8  7D 89 03 A6 */	mtctr r12
/* 801BB8AC  4E 80 04 21 */	bctrl 
/* 801BB8B0  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 801BB8B4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 801BB8B8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801BB8BC  41 82 00 60 */	beq lbl_801BB91C
/* 801BB8C0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BB8C4  80 63 0C BC */	lwz r3, 0xcbc(r3)
/* 801BB8C8  3C 80 77 6F */	lis r4, 0x776F /* 0x776F6C66@ha */
/* 801BB8CC  38 C4 6C 66 */	addi r6, r4, 0x6C66 /* 0x776F6C66@l */
/* 801BB8D0  38 A0 00 00 */	li r5, 0
/* 801BB8D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB8D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BB8DC  7D 89 03 A6 */	mtctr r12
/* 801BB8E0  4E 80 04 21 */	bctrl 
/* 801BB8E4  38 00 00 01 */	li r0, 1
/* 801BB8E8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BB8EC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BB8F0  80 63 0C BC */	lwz r3, 0xcbc(r3)
/* 801BB8F4  3C 80 72 69 */	lis r4, 0x7269 /* 0x72696E6B@ha */
/* 801BB8F8  38 C4 6E 6B */	addi r6, r4, 0x6E6B /* 0x72696E6B@l */
/* 801BB8FC  38 A0 00 00 */	li r5, 0
/* 801BB900  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB904  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BB908  7D 89 03 A6 */	mtctr r12
/* 801BB90C  4E 80 04 21 */	bctrl 
/* 801BB910  38 00 00 00 */	li r0, 0
/* 801BB914  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BB918  48 00 00 5C */	b lbl_801BB974
lbl_801BB91C:
/* 801BB91C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BB920  80 63 0C BC */	lwz r3, 0xcbc(r3)
/* 801BB924  3C 80 77 6F */	lis r4, 0x776F /* 0x776F6C66@ha */
/* 801BB928  38 C4 6C 66 */	addi r6, r4, 0x6C66 /* 0x776F6C66@l */
/* 801BB92C  38 A0 00 00 */	li r5, 0
/* 801BB930  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB934  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BB938  7D 89 03 A6 */	mtctr r12
/* 801BB93C  4E 80 04 21 */	bctrl 
/* 801BB940  38 00 00 00 */	li r0, 0
/* 801BB944  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BB948  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BB94C  80 63 0C BC */	lwz r3, 0xcbc(r3)
/* 801BB950  3C 80 72 69 */	lis r4, 0x7269 /* 0x72696E6B@ha */
/* 801BB954  38 C4 6E 6B */	addi r6, r4, 0x6E6B /* 0x72696E6B@l */
/* 801BB958  38 A0 00 00 */	li r5, 0
/* 801BB95C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB960  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BB964  7D 89 03 A6 */	mtctr r12
/* 801BB968  4E 80 04 21 */	bctrl 
/* 801BB96C  38 00 00 01 */	li r0, 1
/* 801BB970  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801BB974:
/* 801BB974  3B 9C 00 01 */	addi r28, r28, 1
/* 801BB978  2C 1C 00 02 */	cmpwi r28, 2
/* 801BB97C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 801BB980  3B 7B 00 04 */	addi r27, r27, 4
/* 801BB984  3B 39 00 08 */	addi r25, r25, 8
/* 801BB988  41 80 FE 10 */	blt lbl_801BB798
/* 801BB98C  3B 80 00 00 */	li r28, 0
/* 801BB990  3B 40 00 00 */	li r26, 0
lbl_801BB994:
/* 801BB994  88 1F 01 71 */	lbz r0, 0x171(r31)
/* 801BB998  7C 03 07 74 */	extsb r3, r0
/* 801BB99C  88 1F 01 70 */	lbz r0, 0x170(r31)
/* 801BB9A0  7C 00 07 74 */	extsb r0, r0
/* 801BB9A4  7C 63 00 50 */	subf r3, r3, r0
/* 801BB9A8  38 03 00 01 */	addi r0, r3, 1
/* 801BB9AC  7C 1C 00 00 */	cmpw r28, r0
/* 801BB9B0  41 80 00 14 */	blt lbl_801BB9C4
/* 801BB9B4  38 1A 00 14 */	addi r0, r26, 0x14
/* 801BB9B8  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801BB9BC  48 09 9C 4D */	bl hide__13CPaneMgrAlphaFv
/* 801BB9C0  48 00 00 9C */	b lbl_801BBA5C
lbl_801BB9C4:
/* 801BB9C4  7F E3 FB 78 */	mr r3, r31
/* 801BB9C8  48 00 18 0D */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BB9CC  7C 60 07 74 */	extsb r0, r3
/* 801BB9D0  7C 1C 00 00 */	cmpw r28, r0
/* 801BB9D4  40 82 00 48 */	bne lbl_801BBA1C
/* 801BB9D8  3B 1A 00 14 */	addi r24, r26, 0x14
/* 801BB9DC  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801BB9E0  80 63 00 04 */	lwz r3, 4(r3)
/* 801BB9E4  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BB9E8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801BB9EC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801BB9F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801BB9F4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BB9F8  7D 89 03 A6 */	mtctr r12
/* 801BB9FC  4E 80 04 21 */	bctrl 
/* 801BBA00  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801BBA04  38 80 00 FF */	li r4, 0xff
/* 801BBA08  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBA0C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BBA10  7D 89 03 A6 */	mtctr r12
/* 801BBA14  4E 80 04 21 */	bctrl 
/* 801BBA18  48 00 00 44 */	b lbl_801BBA5C
lbl_801BBA1C:
/* 801BBA1C  3B 1A 00 14 */	addi r24, r26, 0x14
/* 801BBA20  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801BBA24  80 63 00 04 */	lwz r3, 4(r3)
/* 801BBA28  C0 02 A6 14 */	lfs f0, lit_4313(r2)
/* 801BBA2C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801BBA30  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801BBA34  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBA38  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BBA3C  7D 89 03 A6 */	mtctr r12
/* 801BBA40  4E 80 04 21 */	bctrl 
/* 801BBA44  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801BBA48  38 80 00 80 */	li r4, 0x80
/* 801BBA4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBA50  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BBA54  7D 89 03 A6 */	mtctr r12
/* 801BBA58  4E 80 04 21 */	bctrl 
lbl_801BBA5C:
/* 801BBA5C  3B 9C 00 01 */	addi r28, r28, 1
/* 801BBA60  2C 1C 00 08 */	cmpwi r28, 8
/* 801BBA64  3B 5A 00 04 */	addi r26, r26, 4
/* 801BBA68  41 80 FF 2C */	blt lbl_801BB994
/* 801BBA6C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BBA70  80 63 0C BC */	lwz r3, 0xcbc(r3)
/* 801BBA74  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 801BBA78  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 801BBA7C  3C 80 00 73 */	lis r4, 0x0073 /* 0x00735F6E@ha */
/* 801BBA80  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00735F6E@l */
/* 801BBA84  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBA88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BBA8C  7D 89 03 A6 */	mtctr r12
/* 801BBA90  4E 80 04 21 */	bctrl 
/* 801BBA94  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801BBA98  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801BBA9C  EC A1 00 28 */	fsubs f5, f1, f0
/* 801BBAA0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801BBAA4  80 63 00 04 */	lwz r3, 4(r3)
/* 801BBAA8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801BBAAC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801BBAB0  EC C1 00 28 */	fsubs f6, f1, f0
/* 801BBAB4  88 1F 01 71 */	lbz r0, 0x171(r31)
/* 801BBAB8  7C 03 07 74 */	extsb r3, r0
/* 801BBABC  88 1F 01 70 */	lbz r0, 0x170(r31)
/* 801BBAC0  7C 00 07 74 */	extsb r0, r0
/* 801BBAC4  7C 63 00 50 */	subf r3, r3, r0
/* 801BBAC8  38 03 00 01 */	addi r0, r3, 1
/* 801BBACC  C8 22 A5 F8 */	lfd f1, lit_4108(r2)
/* 801BBAD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BBAD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BBAD8  3C 00 43 30 */	lis r0, 0x4330
/* 801BBADC  90 01 00 40 */	stw r0, 0x40(r1)
/* 801BBAE0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801BBAE4  EC 20 08 28 */	fsubs f1, f0, f1
/* 801BBAE8  C0 82 A6 0C */	lfs f4, lit_4249(r2)
/* 801BBAEC  EC 66 01 32 */	fmuls f3, f6, f4
/* 801BBAF0  EC 41 01 B2 */	fmuls f2, f1, f6
/* 801BBAF4  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BBAF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801BBAFC  C0 22 A6 4C */	lfs f1, lit_5277(r2)
/* 801BBB00  EC 00 00 72 */	fmuls f0, f0, f1
/* 801BBB04  EC 02 00 2A */	fadds f0, f2, f0
/* 801BBB08  EC 05 00 28 */	fsubs f0, f5, f0
/* 801BBB0C  EC 00 01 32 */	fmuls f0, f0, f4
/* 801BBB10  EF C3 00 2A */	fadds f30, f3, f0
/* 801BBB14  EC 05 01 32 */	fmuls f0, f5, f4
/* 801BBB18  EF DE 00 28 */	fsubs f30, f30, f0
/* 801BBB1C  7C 78 1B 78 */	mr r24, r3
/* 801BBB20  EF E6 08 2A */	fadds f31, f6, f1
/* 801BBB24  54 7A 10 3A */	slwi r26, r3, 2
/* 801BBB28  48 00 00 30 */	b lbl_801BBB58
lbl_801BBB2C:
/* 801BBB2C  38 1A 00 14 */	addi r0, r26, 0x14
/* 801BBB30  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801BBB34  80 63 00 04 */	lwz r3, 4(r3)
/* 801BBB38  D3 C3 00 D8 */	stfs f30, 0xd8(r3)
/* 801BBB3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBB40  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BBB44  7D 89 03 A6 */	mtctr r12
/* 801BBB48  4E 80 04 21 */	bctrl 
/* 801BBB4C  EF DE F8 2A */	fadds f30, f30, f31
/* 801BBB50  3B 18 FF FF */	addi r24, r24, -1
/* 801BBB54  3B 5A FF FC */	addi r26, r26, -4
lbl_801BBB58:
/* 801BBB58  2C 18 00 00 */	cmpwi r24, 0
/* 801BBB5C  40 80 FF D0 */	bge lbl_801BBB2C
/* 801BBB60  7F E3 FB 78 */	mr r3, r31
/* 801BBB64  48 00 16 71 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BBB68  7C 60 07 74 */	extsb r0, r3
/* 801BBB6C  54 00 10 3A */	slwi r0, r0, 2
/* 801BBB70  7C 7F 02 14 */	add r3, r31, r0
/* 801BBB74  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BBB78  80 63 00 04 */	lwz r3, 4(r3)
/* 801BBB7C  C3 C3 00 D8 */	lfs f30, 0xd8(r3)
/* 801BBB80  7F E3 FB 78 */	mr r3, r31
/* 801BBB84  48 00 16 51 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BBB88  7C 60 07 74 */	extsb r0, r3
/* 801BBB8C  54 00 10 3A */	slwi r0, r0, 2
/* 801BBB90  7C 7F 02 14 */	add r3, r31, r0
/* 801BBB94  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BBB98  80 63 00 04 */	lwz r3, 4(r3)
/* 801BBB9C  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 801BBBA0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801BBBA4  80 63 00 04 */	lwz r3, 4(r3)
/* 801BBBA8  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 801BBBAC  D3 C3 00 D8 */	stfs f30, 0xd8(r3)
/* 801BBBB0  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBBB4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BBBB8  7D 89 03 A6 */	mtctr r12
/* 801BBBBC  4E 80 04 21 */	bctrl 
/* 801BBBC0  7F E3 FB 78 */	mr r3, r31
/* 801BBBC4  48 00 16 45 */	bl iconMoveCalc__12dMenu_Dmap_cFv
/* 801BBBC8  7F E3 FB 78 */	mr r3, r31
/* 801BBBCC  48 00 16 1D */	bl getDefaultCurFloorPos__12dMenu_Dmap_cFv
/* 801BBBD0  7C 60 07 74 */	extsb r0, r3
/* 801BBBD4  54 00 10 3A */	slwi r0, r0, 2
/* 801BBBD8  7C 7F 02 14 */	add r3, r31, r0
/* 801BBBDC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801BBBE0  38 61 00 18 */	addi r3, r1, 0x18
/* 801BBBE4  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BBBE8  38 C0 00 00 */	li r6, 0
/* 801BBBEC  38 E0 00 00 */	li r7, 0
/* 801BBBF0  48 09 92 CD */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BBBF4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801BBBF8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801BBBFC  90 61 00 30 */	stw r3, 0x30(r1)
/* 801BBC00  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BBC04  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801BBC08  90 01 00 38 */	stw r0, 0x38(r1)
/* 801BBC0C  7F E3 FB 78 */	mr r3, r31
/* 801BBC10  48 00 15 D9 */	bl getDefaultCurFloorPos__12dMenu_Dmap_cFv
/* 801BBC14  7C 60 07 74 */	extsb r0, r3
/* 801BBC18  54 00 10 3A */	slwi r0, r0, 2
/* 801BBC1C  7C 7F 02 14 */	add r3, r31, r0
/* 801BBC20  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BBC24  80 83 00 04 */	lwz r4, 4(r3)
/* 801BBC28  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BBC2C  80 63 0C C0 */	lwz r3, 0xcc0(r3)
/* 801BBC30  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801BBC34  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 801BBC38  EC 21 00 2A */	fadds f1, f1, f0
/* 801BBC3C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 801BBC40  38 A0 00 01 */	li r5, 1
/* 801BBC44  4B FD 94 B1 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801BBC48  38 60 00 6C */	li r3, 0x6c
/* 801BBC4C  48 11 30 01 */	bl __nw__FUl
/* 801BBC50  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBC54  41 82 00 2C */	beq lbl_801BBC80
/* 801BBC58  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBC5C  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBC60  3C A0 5F 73 */	lis r5, 0x5F73 /* 0x5F735F6E@ha */
/* 801BBC64  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F735F6E@l */
/* 801BBC68  3C A0 69 74 */	lis r5, 0x6974 /* 0x6974656D@ha */
/* 801BBC6C  38 A5 65 6D */	addi r5, r5, 0x656D /* 0x6974656D@l */
/* 801BBC70  38 E0 00 00 */	li r7, 0
/* 801BBC74  39 00 00 00 */	li r8, 0
/* 801BBC78  48 09 7D 0D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBC7C  7C 60 1B 78 */	mr r0, r3
lbl_801BBC80:
/* 801BBC80  90 1F 00 94 */	stw r0, 0x94(r31)
/* 801BBC84  38 60 00 6C */	li r3, 0x6c
/* 801BBC88  48 11 2F C5 */	bl __nw__FUl
/* 801BBC8C  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBC90  41 82 00 28 */	beq lbl_801BBCB8
/* 801BBC94  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBC98  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBC9C  3C A0 61 70 */	lis r5, 0x6170 /* 0x61705F6E@ha */
/* 801BBCA0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x61705F6E@l */
/* 801BBCA4  38 A0 00 6D */	li r5, 0x6d
/* 801BBCA8  38 E0 00 03 */	li r7, 3
/* 801BBCAC  39 00 00 00 */	li r8, 0
/* 801BBCB0  48 09 7C D5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBCB4  7C 60 1B 78 */	mr r0, r3
lbl_801BBCB8:
/* 801BBCB8  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 801BBCBC  38 60 00 6C */	li r3, 0x6c
/* 801BBCC0  48 11 2F 8D */	bl __nw__FUl
/* 801BBCC4  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBCC8  41 82 00 28 */	beq lbl_801BBCF0
/* 801BBCCC  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBCD0  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBCD4  3C A0 6F 6E */	lis r5, 0x6F6E /* 0x6F6E5F6E@ha */
/* 801BBCD8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6F6E5F6E@l */
/* 801BBCDC  38 A0 00 63 */	li r5, 0x63
/* 801BBCE0  38 E0 00 03 */	li r7, 3
/* 801BBCE4  39 00 00 00 */	li r8, 0
/* 801BBCE8  48 09 7C 9D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBCEC  7C 60 1B 78 */	mr r0, r3
lbl_801BBCF0:
/* 801BBCF0  90 1F 00 80 */	stw r0, 0x80(r31)
/* 801BBCF4  38 60 00 6C */	li r3, 0x6c
/* 801BBCF8  48 11 2F 55 */	bl __nw__FUl
/* 801BBCFC  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBD00  41 82 00 28 */	beq lbl_801BBD28
/* 801BBD04  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBD08  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBD0C  3C A0 65 79 */	lis r5, 0x6579 /* 0x65795F6E@ha */
/* 801BBD10  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65795F6E@l */
/* 801BBD14  38 A0 00 6B */	li r5, 0x6b
/* 801BBD18  38 E0 00 03 */	li r7, 3
/* 801BBD1C  39 00 00 00 */	li r8, 0
/* 801BBD20  48 09 7C 65 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBD24  7C 60 1B 78 */	mr r0, r3
lbl_801BBD28:
/* 801BBD28  90 1F 00 84 */	stw r0, 0x84(r31)
/* 801BBD2C  38 60 00 6C */	li r3, 0x6c
/* 801BBD30  48 11 2F 1D */	bl __nw__FUl
/* 801BBD34  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBD38  41 82 00 28 */	beq lbl_801BBD60
/* 801BBD3C  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBD40  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBD44  3C A0 70 30 */	lis r5, 0x7030 /* 0x70303030@ha */
/* 801BBD48  38 C5 30 30 */	addi r6, r5, 0x3030 /* 0x70303030@l */
/* 801BBD4C  38 A0 6D 61 */	li r5, 0x6d61
/* 801BBD50  38 E0 00 03 */	li r7, 3
/* 801BBD54  39 00 00 00 */	li r8, 0
/* 801BBD58  48 09 7C 2D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBD5C  7C 60 1B 78 */	mr r0, r3
lbl_801BBD60:
/* 801BBD60  90 1F 00 88 */	stw r0, 0x88(r31)
/* 801BBD64  38 60 00 6C */	li r3, 0x6c
/* 801BBD68  48 11 2E E5 */	bl __nw__FUl
/* 801BBD6C  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBD70  41 82 00 28 */	beq lbl_801BBD98
/* 801BBD74  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBD78  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBD7C  3C A0 6E 30 */	lis r5, 0x6E30 /* 0x6E303030@ha */
/* 801BBD80  38 C5 30 30 */	addi r6, r5, 0x3030 /* 0x6E303030@l */
/* 801BBD84  38 A0 63 6F */	li r5, 0x636f
/* 801BBD88  38 E0 00 03 */	li r7, 3
/* 801BBD8C  39 00 00 00 */	li r8, 0
/* 801BBD90  48 09 7B F5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBD94  7C 60 1B 78 */	mr r0, r3
lbl_801BBD98:
/* 801BBD98  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 801BBD9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BBDA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801BBDA4  3B A3 4E 20 */	addi r29, r3, 0x4e20
/* 801BBDA8  7F A3 EB 78 */	mr r3, r29
/* 801BBDAC  81 9D 00 00 */	lwz r12, 0(r29)
/* 801BBDB0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801BBDB4  7D 89 03 A6 */	mtctr r12
/* 801BBDB8  4E 80 04 21 */	bctrl 
/* 801BBDBC  88 03 00 09 */	lbz r0, 9(r3)
/* 801BBDC0  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801BBDC4  2C 00 00 11 */	cmpwi r0, 0x11
/* 801BBDC8  40 82 00 44 */	bne lbl_801BBE0C
/* 801BBDCC  38 60 00 6C */	li r3, 0x6c
/* 801BBDD0  48 11 2E 7D */	bl __nw__FUl
/* 801BBDD4  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBDD8  41 82 00 2C */	beq lbl_801BBE04
/* 801BBDDC  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBDE0  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBDE4  3C A0 65 79 */	lis r5, 0x6579 /* 0x65795F6E@ha */
/* 801BBDE8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65795F6E@l */
/* 801BBDEC  3C A0 00 69 */	lis r5, 0x0069 /* 0x00695F6B@ha */
/* 801BBDF0  38 A5 5F 6B */	addi r5, r5, 0x5F6B /* 0x00695F6B@l */
/* 801BBDF4  38 E0 00 03 */	li r7, 3
/* 801BBDF8  39 00 00 00 */	li r8, 0
/* 801BBDFC  48 09 7B 89 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBE00  7C 60 1B 78 */	mr r0, r3
lbl_801BBE04:
/* 801BBE04  90 1F 00 90 */	stw r0, 0x90(r31)
/* 801BBE08  48 00 00 A4 */	b lbl_801BBEAC
lbl_801BBE0C:
/* 801BBE0C  7F A3 EB 78 */	mr r3, r29
/* 801BBE10  81 9D 00 00 */	lwz r12, 0(r29)
/* 801BBE14  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801BBE18  7D 89 03 A6 */	mtctr r12
/* 801BBE1C  4E 80 04 21 */	bctrl 
/* 801BBE20  88 03 00 09 */	lbz r0, 9(r3)
/* 801BBE24  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801BBE28  2C 00 00 14 */	cmpwi r0, 0x14
/* 801BBE2C  40 82 00 44 */	bne lbl_801BBE70
/* 801BBE30  38 60 00 6C */	li r3, 0x6c
/* 801BBE34  48 11 2E 19 */	bl __nw__FUl
/* 801BBE38  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBE3C  41 82 00 2C */	beq lbl_801BBE68
/* 801BBE40  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBE44  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBE48  3C A0 5F 6B */	lis r5, 0x5F6B /* 0x5F6B5F6E@ha */
/* 801BBE4C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F6B5F6E@l */
/* 801BBE50  3C A0 00 6C */	lis r5, 0x006C /* 0x006C7635@ha */
/* 801BBE54  38 A5 76 35 */	addi r5, r5, 0x7635 /* 0x006C7635@l */
/* 801BBE58  38 E0 00 03 */	li r7, 3
/* 801BBE5C  39 00 00 00 */	li r8, 0
/* 801BBE60  48 09 7B 25 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBE64  7C 60 1B 78 */	mr r0, r3
lbl_801BBE68:
/* 801BBE68  90 1F 00 90 */	stw r0, 0x90(r31)
/* 801BBE6C  48 00 00 40 */	b lbl_801BBEAC
lbl_801BBE70:
/* 801BBE70  38 60 00 6C */	li r3, 0x6c
/* 801BBE74  48 11 2D D9 */	bl __nw__FUl
/* 801BBE78  7C 60 1B 79 */	or. r0, r3, r3
/* 801BBE7C  41 82 00 2C */	beq lbl_801BBEA8
/* 801BBE80  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BBE84  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BBE88  3C A0 5F 6B */	lis r5, 0x5F6B /* 0x5F6B5F6E@ha */
/* 801BBE8C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F6B5F6E@l */
/* 801BBE90  3C A0 00 6E */	lis r5, 0x006E /* 0x006E6F72@ha */
/* 801BBE94  38 A5 6F 72 */	addi r5, r5, 0x6F72 /* 0x006E6F72@l */
/* 801BBE98  38 E0 00 03 */	li r7, 3
/* 801BBE9C  39 00 00 00 */	li r8, 0
/* 801BBEA0  48 09 7A E5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BBEA4  7C 60 1B 78 */	mr r0, r3
lbl_801BBEA8:
/* 801BBEA8  90 1F 00 90 */	stw r0, 0x90(r31)
lbl_801BBEAC:
/* 801BBEAC  3B 00 00 00 */	li r24, 0
/* 801BBEB0  3B 40 00 00 */	li r26, 0
/* 801BBEB4  C3 E2 A6 14 */	lfs f31, lit_4313(r2)
lbl_801BBEB8:
/* 801BBEB8  38 1A 00 88 */	addi r0, r26, 0x88
/* 801BBEBC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801BBEC0  80 63 00 04 */	lwz r3, 4(r3)
/* 801BBEC4  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801BBEC8  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801BBECC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBED0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BBED4  7D 89 03 A6 */	mtctr r12
/* 801BBED8  4E 80 04 21 */	bctrl 
/* 801BBEDC  3B 18 00 01 */	addi r24, r24, 1
/* 801BBEE0  2C 18 00 03 */	cmpwi r24, 3
/* 801BBEE4  3B 5A 00 04 */	addi r26, r26, 4
/* 801BBEE8  41 80 FF D0 */	blt lbl_801BBEB8
/* 801BBEEC  7F A3 EB 78 */	mr r3, r29
/* 801BBEF0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801BBEF4  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801BBEF8  7D 89 03 A6 */	mtctr r12
/* 801BBEFC  4E 80 04 21 */	bctrl 
/* 801BBF00  88 03 00 09 */	lbz r0, 9(r3)
/* 801BBF04  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801BBF08  2C 00 00 11 */	cmpwi r0, 0x11
/* 801BBF0C  40 82 03 1C */	bne lbl_801BC228
/* 801BBF10  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BBF14  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BBF18  3C 80 5F 6B */	lis r4, 0x5F6B /* 0x5F6B5F6E@ha */
/* 801BBF1C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6B5F6E@l */
/* 801BBF20  3C 80 00 6C */	lis r4, 0x006C /* 0x006C7635@ha */
/* 801BBF24  38 A4 76 35 */	addi r5, r4, 0x7635 /* 0x006C7635@l */
/* 801BBF28  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBF2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BBF30  7D 89 03 A6 */	mtctr r12
/* 801BBF34  4E 80 04 21 */	bctrl 
/* 801BBF38  38 00 00 00 */	li r0, 0
/* 801BBF3C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BBF40  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BBF44  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BBF48  3C 80 5F 6B */	lis r4, 0x5F6B /* 0x5F6B5F6E@ha */
/* 801BBF4C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6B5F6E@l */
/* 801BBF50  3C 80 00 6E */	lis r4, 0x006E /* 0x006E6F72@ha */
/* 801BBF54  38 A4 6F 72 */	addi r5, r4, 0x6F72 /* 0x006E6F72@l */
/* 801BBF58  81 83 00 00 */	lwz r12, 0(r3)
/* 801BBF5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BBF60  7D 89 03 A6 */	mtctr r12
/* 801BBF64  4E 80 04 21 */	bctrl 
/* 801BBF68  38 00 00 00 */	li r0, 0
/* 801BBF6C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BBF70  3B 00 00 00 */	li r24, 0
/* 801BBF74  38 60 00 F9 */	li r3, 0xf9
/* 801BBF78  38 80 00 01 */	li r4, 1
/* 801BBF7C  4B ED BF 65 */	bl checkItemGet__FUci
/* 801BBF80  2C 03 00 00 */	cmpwi r3, 0
/* 801BBF84  41 82 00 08 */	beq lbl_801BBF8C
/* 801BBF88  3B 00 00 01 */	li r24, 1
lbl_801BBF8C:
/* 801BBF8C  38 60 00 FA */	li r3, 0xfa
/* 801BBF90  38 80 00 01 */	li r4, 1
/* 801BBF94  4B ED BF 4D */	bl checkItemGet__FUci
/* 801BBF98  2C 03 00 00 */	cmpwi r3, 0
/* 801BBF9C  41 82 00 10 */	beq lbl_801BBFAC
/* 801BBFA0  57 03 06 3E */	clrlwi r3, r24, 0x18
/* 801BBFA4  38 03 00 01 */	addi r0, r3, 1
/* 801BBFA8  54 18 06 3E */	clrlwi r24, r0, 0x18
lbl_801BBFAC:
/* 801BBFAC  38 60 00 FB */	li r3, 0xfb
/* 801BBFB0  38 80 00 01 */	li r4, 1
/* 801BBFB4  4B ED BF 2D */	bl checkItemGet__FUci
/* 801BBFB8  2C 03 00 00 */	cmpwi r3, 0
/* 801BBFBC  41 82 00 10 */	beq lbl_801BBFCC
/* 801BBFC0  57 03 06 3E */	clrlwi r3, r24, 0x18
/* 801BBFC4  38 03 00 01 */	addi r0, r3, 1
/* 801BBFC8  54 18 06 3E */	clrlwi r24, r0, 0x18
lbl_801BBFCC:
/* 801BBFCC  3B 60 00 00 */	li r27, 0
/* 801BBFD0  3B 40 00 00 */	li r26, 0
/* 801BBFD4  57 1D 06 3E */	clrlwi r29, r24, 0x18
/* 801BBFD8  3B 3D FF FF */	addi r25, r29, -1
lbl_801BBFDC:
/* 801BBFDC  7C 1B C8 00 */	cmpw r27, r25
/* 801BBFE0  40 82 00 38 */	bne lbl_801BC018
/* 801BBFE4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BBFE8  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BBFEC  38 1E 02 18 */	addi r0, r30, 0x218
/* 801BBFF0  7C C0 D2 14 */	add r6, r0, r26
/* 801BBFF4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801BBFF8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801BBFFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC000  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC004  7D 89 03 A6 */	mtctr r12
/* 801BC008  4E 80 04 21 */	bctrl 
/* 801BC00C  38 00 00 01 */	li r0, 1
/* 801BC010  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC014  48 00 00 34 */	b lbl_801BC048
lbl_801BC018:
/* 801BC018  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC01C  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC020  38 1E 02 18 */	addi r0, r30, 0x218
/* 801BC024  7C C0 D2 14 */	add r6, r0, r26
/* 801BC028  80 A6 00 00 */	lwz r5, 0(r6)
/* 801BC02C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801BC030  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC034  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC038  7D 89 03 A6 */	mtctr r12
/* 801BC03C  4E 80 04 21 */	bctrl 
/* 801BC040  38 00 00 00 */	li r0, 0
/* 801BC044  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801BC048:
/* 801BC048  3B 7B 00 01 */	addi r27, r27, 1
/* 801BC04C  2C 1B 00 03 */	cmpwi r27, 3
/* 801BC050  3B 5A 00 08 */	addi r26, r26, 8
/* 801BC054  41 80 FF 88 */	blt lbl_801BBFDC
/* 801BC058  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801BC05C  41 82 00 10 */	beq lbl_801BC06C
/* 801BC060  38 00 00 26 */	li r0, 0x26
/* 801BC064  98 1F 01 76 */	stb r0, 0x176(r31)
/* 801BC068  48 00 00 0C */	b lbl_801BC074
lbl_801BC06C:
/* 801BC06C  38 00 00 00 */	li r0, 0
/* 801BC070  98 1F 01 76 */	stb r0, 0x176(r31)
lbl_801BC074:
/* 801BC074  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801BC078  41 82 00 18 */	beq lbl_801BC090
/* 801BC07C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801BC080  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801BC084  80 03 00 90 */	lwz r0, 0x90(r3)
/* 801BC088  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801BC08C  41 82 00 38 */	beq lbl_801BC0C4
lbl_801BC090:
/* 801BC090  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC094  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC098  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F6E@ha */
/* 801BC09C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6E5F6E@l */
/* 801BC0A0  3C 80 00 6B */	lis r4, 0x006B /* 0x006B6579@ha */
/* 801BC0A4  38 A4 65 79 */	addi r5, r4, 0x6579 /* 0x006B6579@l */
/* 801BC0A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC0AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC0B0  7D 89 03 A6 */	mtctr r12
/* 801BC0B4  4E 80 04 21 */	bctrl 
/* 801BC0B8  38 00 00 00 */	li r0, 0
/* 801BC0BC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC0C0  48 00 04 50 */	b lbl_801BC510
lbl_801BC0C4:
/* 801BC0C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BC0C8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 801BC0CC  83 59 5D 30 */	lwz r26, 0x5d30(r25)
/* 801BC0D0  7F A3 EB 78 */	mr r3, r29
/* 801BC0D4  48 06 21 F5 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801BC0D8  7C 65 1B 78 */	mr r5, r3
/* 801BC0DC  7F 43 D3 78 */	mr r3, r26
/* 801BC0E0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801BC0E4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801BC0E8  81 9A 00 00 */	lwz r12, 0(r26)
/* 801BC0EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801BC0F0  7D 89 03 A6 */	mtctr r12
/* 801BC0F4  4E 80 04 21 */	bctrl 
/* 801BC0F8  7C 78 1B 78 */	mr r24, r3
/* 801BC0FC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC100  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC104  3C 80 5F 32 */	lis r4, 0x5F32 /* 0x5F325F73@ha */
/* 801BC108  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F325F73@l */
/* 801BC10C  3C 80 00 63 */	lis r4, 0x0063 /* 0x00635F6E@ha */
/* 801BC110  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00635F6E@l */
/* 801BC114  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC118  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC11C  7D 89 03 A6 */	mtctr r12
/* 801BC120  4E 80 04 21 */	bctrl 
/* 801BC124  7F 04 C3 78 */	mr r4, r24
/* 801BC128  38 A0 00 00 */	li r5, 0
/* 801BC12C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC130  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801BC134  7D 89 03 A6 */	mtctr r12
/* 801BC138  4E 80 04 21 */	bctrl 
/* 801BC13C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC140  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC144  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F32@ha */
/* 801BC148  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x5F6E5F32@l */
/* 801BC14C  38 A0 00 63 */	li r5, 0x63
/* 801BC150  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC154  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC158  7D 89 03 A6 */	mtctr r12
/* 801BC15C  4E 80 04 21 */	bctrl 
/* 801BC160  7F 04 C3 78 */	mr r4, r24
/* 801BC164  38 A0 00 00 */	li r5, 0
/* 801BC168  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC16C  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801BC170  7D 89 03 A6 */	mtctr r12
/* 801BC174  4E 80 04 21 */	bctrl 
/* 801BC178  83 39 5D 30 */	lwz r25, 0x5d30(r25)
/* 801BC17C  38 60 00 03 */	li r3, 3
/* 801BC180  48 06 21 49 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801BC184  7C 65 1B 78 */	mr r5, r3
/* 801BC188  7F 23 CB 78 */	mr r3, r25
/* 801BC18C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801BC190  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801BC194  81 99 00 00 */	lwz r12, 0(r25)
/* 801BC198  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801BC19C  7D 89 03 A6 */	mtctr r12
/* 801BC1A0  4E 80 04 21 */	bctrl 
/* 801BC1A4  7C 78 1B 78 */	mr r24, r3
/* 801BC1A8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC1AC  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC1B0  3C 80 5F 31 */	lis r4, 0x5F31 /* 0x5F315F73@ha */
/* 801BC1B4  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F315F73@l */
/* 801BC1B8  3C 80 00 63 */	lis r4, 0x0063 /* 0x00635F6E@ha */
/* 801BC1BC  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00635F6E@l */
/* 801BC1C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC1C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC1C8  7D 89 03 A6 */	mtctr r12
/* 801BC1CC  4E 80 04 21 */	bctrl 
/* 801BC1D0  7F 04 C3 78 */	mr r4, r24
/* 801BC1D4  38 A0 00 00 */	li r5, 0
/* 801BC1D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC1DC  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801BC1E0  7D 89 03 A6 */	mtctr r12
/* 801BC1E4  4E 80 04 21 */	bctrl 
/* 801BC1E8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC1EC  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC1F0  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F31@ha */
/* 801BC1F4  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x5F6E5F31@l */
/* 801BC1F8  38 A0 00 63 */	li r5, 0x63
/* 801BC1FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC200  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC204  7D 89 03 A6 */	mtctr r12
/* 801BC208  4E 80 04 21 */	bctrl 
/* 801BC20C  7F 04 C3 78 */	mr r4, r24
/* 801BC210  38 A0 00 00 */	li r5, 0
/* 801BC214  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC218  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801BC21C  7D 89 03 A6 */	mtctr r12
/* 801BC220  4E 80 04 21 */	bctrl 
/* 801BC224  48 00 02 EC */	b lbl_801BC510
lbl_801BC228:
/* 801BC228  7F A3 EB 78 */	mr r3, r29
/* 801BC22C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801BC230  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801BC234  7D 89 03 A6 */	mtctr r12
/* 801BC238  4E 80 04 21 */	bctrl 
/* 801BC23C  88 03 00 09 */	lbz r0, 9(r3)
/* 801BC240  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801BC244  2C 00 00 14 */	cmpwi r0, 0x14
/* 801BC248  40 82 02 0C */	bne lbl_801BC454
/* 801BC24C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC250  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC254  3C 80 65 79 */	lis r4, 0x6579 /* 0x65795F6E@ha */
/* 801BC258  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65795F6E@l */
/* 801BC25C  3C 80 00 69 */	lis r4, 0x0069 /* 0x00695F6B@ha */
/* 801BC260  38 A4 5F 6B */	addi r5, r4, 0x5F6B /* 0x00695F6B@l */
/* 801BC264  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC268  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC26C  7D 89 03 A6 */	mtctr r12
/* 801BC270  4E 80 04 21 */	bctrl 
/* 801BC274  38 00 00 00 */	li r0, 0
/* 801BC278  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC27C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC280  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC284  3C 80 5F 6B */	lis r4, 0x5F6B /* 0x5F6B5F6E@ha */
/* 801BC288  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6B5F6E@l */
/* 801BC28C  3C 80 00 6E */	lis r4, 0x006E /* 0x006E6F72@ha */
/* 801BC290  38 A4 6F 72 */	addi r5, r4, 0x6F72 /* 0x006E6F72@l */
/* 801BC294  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC298  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC29C  7D 89 03 A6 */	mtctr r12
/* 801BC2A0  4E 80 04 21 */	bctrl 
/* 801BC2A4  38 00 00 00 */	li r0, 0
/* 801BC2A8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC2AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC2B0  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC2B4  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F6E@ha */
/* 801BC2B8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6E5F6E@l */
/* 801BC2BC  3C 80 00 6B */	lis r4, 0x006B /* 0x006B6579@ha */
/* 801BC2C0  38 A4 65 79 */	addi r5, r4, 0x6579 /* 0x006B6579@l */
/* 801BC2C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC2C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC2CC  7D 89 03 A6 */	mtctr r12
/* 801BC2D0  4E 80 04 21 */	bctrl 
/* 801BC2D4  38 00 00 00 */	li r0, 0
/* 801BC2D8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC2DC  3B 80 00 FF */	li r28, 0xff
/* 801BC2E0  98 1F 01 76 */	stb r0, 0x176(r31)
/* 801BC2E4  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801BC2E8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801BC2EC  88 03 04 8A */	lbz r0, 0x48a(r3)
/* 801BC2F0  28 00 00 00 */	cmplwi r0, 0
/* 801BC2F4  41 82 00 18 */	beq lbl_801BC30C
/* 801BC2F8  8B 83 04 8B */	lbz r28, 0x48b(r3)
/* 801BC2FC  28 1C 00 FF */	cmplwi r28, 0xff
/* 801BC300  41 82 00 D4 */	beq lbl_801BC3D4
/* 801BC304  9B 9F 01 76 */	stb r28, 0x176(r31)
/* 801BC308  48 00 00 CC */	b lbl_801BC3D4
lbl_801BC30C:
/* 801BC30C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BC310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801BC314  3B 03 09 58 */	addi r24, r3, 0x958
/* 801BC318  7F 03 C3 78 */	mr r3, r24
/* 801BC31C  38 80 00 02 */	li r4, 2
/* 801BC320  4B E7 86 15 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801BC324  2C 03 00 00 */	cmpwi r3, 0
/* 801BC328  41 82 00 30 */	beq lbl_801BC358
/* 801BC32C  3B 80 00 F6 */	li r28, 0xf6
/* 801BC330  7F 03 C3 78 */	mr r3, r24
/* 801BC334  38 80 00 02 */	li r4, 2
/* 801BC338  4B E7 85 FD */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801BC33C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801BC340  20 00 00 00 */	subfic r0, r0, 0
/* 801BC344  7C 60 01 10 */	subfe r3, r0, r0
/* 801BC348  38 00 00 F6 */	li r0, 0xf6
/* 801BC34C  7C 00 18 38 */	and r0, r0, r3
/* 801BC350  98 1F 01 76 */	stb r0, 0x176(r31)
/* 801BC354  48 00 00 80 */	b lbl_801BC3D4
lbl_801BC358:
/* 801BC358  38 60 00 F4 */	li r3, 0xf4
/* 801BC35C  38 80 00 01 */	li r4, 1
/* 801BC360  4B ED BB 81 */	bl checkItemGet__FUci
/* 801BC364  2C 03 00 00 */	cmpwi r3, 0
/* 801BC368  41 82 00 30 */	beq lbl_801BC398
/* 801BC36C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BC370  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801BC374  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801BC378  38 80 00 02 */	li r4, 2
/* 801BC37C  4B E7 86 41 */	bl isEventBit__11dSv_event_cCFUs
/* 801BC380  2C 03 00 00 */	cmpwi r3, 0
/* 801BC384  40 82 00 14 */	bne lbl_801BC398
/* 801BC388  3B 80 00 F4 */	li r28, 0xf4
/* 801BC38C  38 00 00 F4 */	li r0, 0xf4
/* 801BC390  98 1F 01 76 */	stb r0, 0x176(r31)
/* 801BC394  48 00 00 40 */	b lbl_801BC3D4
lbl_801BC398:
/* 801BC398  38 60 00 F5 */	li r3, 0xf5
/* 801BC39C  38 80 00 01 */	li r4, 1
/* 801BC3A0  4B ED BB 41 */	bl checkItemGet__FUci
/* 801BC3A4  2C 03 00 00 */	cmpwi r3, 0
/* 801BC3A8  41 82 00 2C */	beq lbl_801BC3D4
/* 801BC3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BC3B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801BC3B4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801BC3B8  38 80 00 01 */	li r4, 1
/* 801BC3BC  4B E7 86 01 */	bl isEventBit__11dSv_event_cCFUs
/* 801BC3C0  2C 03 00 00 */	cmpwi r3, 0
/* 801BC3C4  40 82 00 10 */	bne lbl_801BC3D4
/* 801BC3C8  3B 80 00 F5 */	li r28, 0xf5
/* 801BC3CC  38 00 00 F5 */	li r0, 0xf5
/* 801BC3D0  98 1F 01 76 */	stb r0, 0x176(r31)
lbl_801BC3D4:
/* 801BC3D4  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801BC3D8  2C 00 00 F6 */	cmpwi r0, 0xf6
/* 801BC3DC  40 80 01 34 */	bge lbl_801BC510
/* 801BC3E0  2C 00 00 F4 */	cmpwi r0, 0xf4
/* 801BC3E4  40 80 00 08 */	bge lbl_801BC3EC
/* 801BC3E8  48 00 01 28 */	b lbl_801BC510
lbl_801BC3EC:
/* 801BC3EC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC3F0  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC3F4  3C 80 62 6F */	lis r4, 0x626F /* 0x626F7373@ha */
/* 801BC3F8  38 C4 73 73 */	addi r6, r4, 0x7373 /* 0x626F7373@l */
/* 801BC3FC  3C 80 6C 76 */	lis r4, 0x6C76 /* 0x6C76355F@ha */
/* 801BC400  38 A4 35 5F */	addi r5, r4, 0x355F /* 0x6C76355F@l */
/* 801BC404  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC408  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC40C  7D 89 03 A6 */	mtctr r12
/* 801BC410  4E 80 04 21 */	bctrl 
/* 801BC414  7C 66 1B 78 */	mr r6, r3
/* 801BC418  38 00 00 00 */	li r0, 0
/* 801BC41C  90 01 00 08 */	stw r0, 8(r1)
/* 801BC420  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BC424  38 00 FF FF */	li r0, -1
/* 801BC428  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BC42C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801BC430  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801BC434  7F 84 E3 78 */	mr r4, r28
/* 801BC438  80 BF 00 FC */	lwz r5, 0xfc(r31)
/* 801BC43C  38 E0 00 00 */	li r7, 0
/* 801BC440  39 00 00 00 */	li r8, 0
/* 801BC444  39 20 00 00 */	li r9, 0
/* 801BC448  39 40 00 00 */	li r10, 0
/* 801BC44C  48 06 0A BD */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 801BC450  48 00 00 C0 */	b lbl_801BC510
lbl_801BC454:
/* 801BC454  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC458  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC45C  3C 80 65 79 */	lis r4, 0x6579 /* 0x65795F6E@ha */
/* 801BC460  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65795F6E@l */
/* 801BC464  3C 80 00 69 */	lis r4, 0x0069 /* 0x00695F6B@ha */
/* 801BC468  38 A4 5F 6B */	addi r5, r4, 0x5F6B /* 0x00695F6B@l */
/* 801BC46C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC470  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC474  7D 89 03 A6 */	mtctr r12
/* 801BC478  4E 80 04 21 */	bctrl 
/* 801BC47C  38 00 00 00 */	li r0, 0
/* 801BC480  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC484  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC488  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC48C  3C 80 5F 6B */	lis r4, 0x5F6B /* 0x5F6B5F6E@ha */
/* 801BC490  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6B5F6E@l */
/* 801BC494  3C 80 00 6C */	lis r4, 0x006C /* 0x006C7635@ha */
/* 801BC498  38 A4 76 35 */	addi r5, r4, 0x7635 /* 0x006C7635@l */
/* 801BC49C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC4A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC4A4  7D 89 03 A6 */	mtctr r12
/* 801BC4A8  4E 80 04 21 */	bctrl 
/* 801BC4AC  38 00 00 00 */	li r0, 0
/* 801BC4B0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC4B4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC4B8  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC4BC  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F6E@ha */
/* 801BC4C0  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6E5F6E@l */
/* 801BC4C4  3C 80 00 6B */	lis r4, 0x006B /* 0x006B6579@ha */
/* 801BC4C8  38 A4 65 79 */	addi r5, r4, 0x6579 /* 0x006B6579@l */
/* 801BC4CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC4D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC4D4  7D 89 03 A6 */	mtctr r12
/* 801BC4D8  4E 80 04 21 */	bctrl 
/* 801BC4DC  38 00 00 00 */	li r0, 0
/* 801BC4E0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC4E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BC4E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801BC4EC  38 63 09 58 */	addi r3, r3, 0x958
/* 801BC4F0  38 80 00 02 */	li r4, 2
/* 801BC4F4  4B E7 84 41 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801BC4F8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801BC4FC  20 00 00 00 */	subfic r0, r0, 0
/* 801BC500  7C 60 01 10 */	subfe r3, r0, r0
/* 801BC504  38 00 00 26 */	li r0, 0x26
/* 801BC508  7C 00 18 38 */	and r0, r0, r3
/* 801BC50C  98 1F 01 76 */	stb r0, 0x176(r31)
lbl_801BC510:
/* 801BC510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801BC514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801BC518  3B 03 09 58 */	addi r24, r3, 0x958
/* 801BC51C  7F 03 C3 78 */	mr r3, r24
/* 801BC520  38 80 00 00 */	li r4, 0
/* 801BC524  4B E7 84 11 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801BC528  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801BC52C  20 00 00 00 */	subfic r0, r0, 0
/* 801BC530  7C 60 01 10 */	subfe r3, r0, r0
/* 801BC534  38 00 00 23 */	li r0, 0x23
/* 801BC538  7C 00 18 38 */	and r0, r0, r3
/* 801BC53C  98 1F 01 74 */	stb r0, 0x174(r31)
/* 801BC540  7F 03 C3 78 */	mr r3, r24
/* 801BC544  38 80 00 01 */	li r4, 1
/* 801BC548  4B E7 83 ED */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801BC54C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801BC550  20 00 00 00 */	subfic r0, r0, 0
/* 801BC554  7C 60 01 10 */	subfe r3, r0, r0
/* 801BC558  38 00 00 24 */	li r0, 0x24
/* 801BC55C  7C 00 18 38 */	and r0, r0, r3
/* 801BC560  98 1F 01 75 */	stb r0, 0x175(r31)
/* 801BC564  38 00 00 00 */	li r0, 0
/* 801BC568  98 1F 01 77 */	stb r0, 0x177(r31)
/* 801BC56C  3B 80 00 00 */	li r28, 0
/* 801BC570  3B A0 00 00 */	li r29, 0
/* 801BC574  3B 60 00 00 */	li r27, 0
/* 801BC578  3B 40 00 00 */	li r26, 0
lbl_801BC57C:
/* 801BC57C  38 1D 01 74 */	addi r0, r29, 0x174
/* 801BC580  7C 1F 00 AE */	lbzx r0, r31, r0
/* 801BC584  28 00 00 00 */	cmplwi r0, 0
/* 801BC588  41 82 00 40 */	beq lbl_801BC5C8
/* 801BC58C  2C 1C 00 00 */	cmpwi r28, 0
/* 801BC590  40 82 00 0C */	bne lbl_801BC59C
/* 801BC594  9B BF 01 77 */	stb r29, 0x177(r31)
/* 801BC598  3B 80 00 01 */	li r28, 1
lbl_801BC59C:
/* 801BC59C  38 1A 00 88 */	addi r0, r26, 0x88
/* 801BC5A0  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801BC5A4  80 63 00 04 */	lwz r3, 4(r3)
/* 801BC5A8  C0 02 A6 14 */	lfs f0, lit_4313(r2)
/* 801BC5AC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801BC5B0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801BC5B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC5B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BC5BC  7D 89 03 A6 */	mtctr r12
/* 801BC5C0  4E 80 04 21 */	bctrl 
/* 801BC5C4  48 00 00 FC */	b lbl_801BC6C0
lbl_801BC5C8:
/* 801BC5C8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC5CC  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC5D0  38 1E 02 30 */	addi r0, r30, 0x230
/* 801BC5D4  7C C0 DA 14 */	add r6, r0, r27
/* 801BC5D8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801BC5DC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801BC5E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC5E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC5E8  7D 89 03 A6 */	mtctr r12
/* 801BC5EC  4E 80 04 21 */	bctrl 
/* 801BC5F0  38 00 00 00 */	li r0, 0
/* 801BC5F4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC5F8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC5FC  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC600  38 1E 02 00 */	addi r0, r30, 0x200
/* 801BC604  7C C0 DA 14 */	add r6, r0, r27
/* 801BC608  80 A6 00 00 */	lwz r5, 0(r6)
/* 801BC60C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801BC610  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC614  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC618  7D 89 03 A6 */	mtctr r12
/* 801BC61C  4E 80 04 21 */	bctrl 
/* 801BC620  38 00 00 00 */	li r0, 0
/* 801BC624  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC628  2C 1D 00 02 */	cmpwi r29, 2
/* 801BC62C  40 82 00 94 */	bne lbl_801BC6C0
/* 801BC630  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC634  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC638  3C 80 5F 6B */	lis r4, 0x5F6B /* 0x5F6B5F6E@ha */
/* 801BC63C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6B5F6E@l */
/* 801BC640  3C 80 00 6C */	lis r4, 0x006C /* 0x006C7635@ha */
/* 801BC644  38 A4 76 35 */	addi r5, r4, 0x7635 /* 0x006C7635@l */
/* 801BC648  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC64C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC650  7D 89 03 A6 */	mtctr r12
/* 801BC654  4E 80 04 21 */	bctrl 
/* 801BC658  38 00 00 00 */	li r0, 0
/* 801BC65C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC660  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC664  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC668  3C 80 5F 6B */	lis r4, 0x5F6B /* 0x5F6B5F6E@ha */
/* 801BC66C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6B5F6E@l */
/* 801BC670  3C 80 00 6E */	lis r4, 0x006E /* 0x006E6F72@ha */
/* 801BC674  38 A4 6F 72 */	addi r5, r4, 0x6F72 /* 0x006E6F72@l */
/* 801BC678  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC67C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC680  7D 89 03 A6 */	mtctr r12
/* 801BC684  4E 80 04 21 */	bctrl 
/* 801BC688  38 00 00 00 */	li r0, 0
/* 801BC68C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BC690  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BC694  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801BC698  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F6E@ha */
/* 801BC69C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6E5F6E@l */
/* 801BC6A0  3C 80 00 6B */	lis r4, 0x006B /* 0x006B6579@ha */
/* 801BC6A4  38 A4 65 79 */	addi r5, r4, 0x6579 /* 0x006B6579@l */
/* 801BC6A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC6AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BC6B0  7D 89 03 A6 */	mtctr r12
/* 801BC6B4  4E 80 04 21 */	bctrl 
/* 801BC6B8  38 00 00 00 */	li r0, 0
/* 801BC6BC  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801BC6C0:
/* 801BC6C0  3B BD 00 01 */	addi r29, r29, 1
/* 801BC6C4  2C 1D 00 03 */	cmpwi r29, 3
/* 801BC6C8  3B 7B 00 08 */	addi r27, r27, 8
/* 801BC6CC  3B 5A 00 04 */	addi r26, r26, 4
/* 801BC6D0  41 80 FE AC */	blt lbl_801BC57C
/* 801BC6D4  2C 1C 00 01 */	cmpwi r28, 1
/* 801BC6D8  40 82 00 40 */	bne lbl_801BC718
/* 801BC6DC  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BC6E0  54 00 10 3A */	slwi r0, r0, 2
/* 801BC6E4  7C 7F 02 14 */	add r3, r31, r0
/* 801BC6E8  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801BC6EC  80 63 00 04 */	lwz r3, 4(r3)
/* 801BC6F0  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 801BC6F4  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 801BC6F8  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801BC6FC  80 63 00 04 */	lwz r3, 4(r3)
/* 801BC700  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 801BC704  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 801BC708  81 83 00 00 */	lwz r12, 0(r3)
/* 801BC70C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BC710  7D 89 03 A6 */	mtctr r12
/* 801BC714  4E 80 04 21 */	bctrl 
lbl_801BC718:
/* 801BC718  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801BC71C  48 09 8E ED */	bl hide__13CPaneMgrAlphaFv
/* 801BC720  38 60 00 6C */	li r3, 0x6c
/* 801BC724  48 11 25 29 */	bl __nw__FUl
/* 801BC728  7C 60 1B 79 */	or. r0, r3, r3
/* 801BC72C  41 82 00 28 */	beq lbl_801BC754
/* 801BC730  80 9F 00 08 */	lwz r4, 8(r31)
/* 801BC734  80 84 0C A4 */	lwz r4, 0xca4(r4)
/* 801BC738  3C A0 5F 73 */	lis r5, 0x5F73 /* 0x5F735F6E@ha */
/* 801BC73C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F735F6E@l */
/* 801BC740  38 A0 73 6F */	li r5, 0x736f
/* 801BC744  38 E0 00 00 */	li r7, 0
/* 801BC748  39 00 00 00 */	li r8, 0
/* 801BC74C  48 09 72 39 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801BC750  7C 60 1B 78 */	mr r0, r3
lbl_801BC754:
/* 801BC754  90 1F 00 98 */	stw r0, 0x98(r31)
/* 801BC758  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 801BC75C  48 09 8E AD */	bl hide__13CPaneMgrAlphaFv
/* 801BC760  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 801BC764  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801BC768  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 801BC76C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801BC770  39 61 00 70 */	addi r11, r1, 0x70
/* 801BC774  48 1A 5A A1 */	bl _restgpr_24
/* 801BC778  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801BC77C  7C 08 03 A6 */	mtlr r0
/* 801BC780  38 21 00 90 */	addi r1, r1, 0x90
/* 801BC784  4E 80 00 20 */	blr 
