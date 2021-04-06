lbl_80212404:
/* 80212404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80212408  7C 08 02 A6 */	mflr r0
/* 8021240C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80212410  39 61 00 20 */	addi r11, r1, 0x20
/* 80212414  48 14 FD BD */	bl _savegpr_26
/* 80212418  7C 7F 1B 78 */	mr r31, r3
/* 8021241C  3C 60 80 3A */	lis r3, a_tag@ha /* 0x80398258@ha */
/* 80212420  3B C3 82 58 */	addi r30, r3, a_tag@l /* 0x80398258@l */
/* 80212424  38 60 00 6C */	li r3, 0x6c
/* 80212428  48 0B C8 25 */	bl __nw__FUl
/* 8021242C  7C 60 1B 79 */	or. r0, r3, r3
/* 80212430  41 82 00 24 */	beq lbl_80212454
/* 80212434  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212438  3C A0 5F 6B */	lis r5, 0x5F6B /* 0x5F6B5F6E@ha */
/* 8021243C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F6B5F6E@l */
/* 80212440  38 A0 00 72 */	li r5, 0x72
/* 80212444  38 E0 00 02 */	li r7, 2
/* 80212448  39 00 00 00 */	li r8, 0
/* 8021244C  48 04 15 39 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212450  7C 60 1B 78 */	mr r0, r3
lbl_80212454:
/* 80212454  90 1F 02 B0 */	stw r0, 0x2b0(r31)
/* 80212458  C0 02 AE 84 */	lfs f0, lit_4183(r2)
/* 8021245C  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 80212460  3B 60 00 00 */	li r27, 0
/* 80212464  3B 80 00 00 */	li r28, 0
lbl_80212468:
/* 80212468  38 60 00 6C */	li r3, 0x6c
/* 8021246C  48 0B C7 E1 */	bl __nw__FUl
/* 80212470  7C 60 1B 79 */	or. r0, r3, r3
/* 80212474  41 82 00 28 */	beq lbl_8021249C
/* 80212478  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8021247C  38 1E 05 68 */	addi r0, r30, 0x568
/* 80212480  7C C0 E2 14 */	add r6, r0, r28
/* 80212484  80 A6 00 00 */	lwz r5, 0(r6)
/* 80212488  80 C6 00 04 */	lwz r6, 4(r6)
/* 8021248C  38 E0 00 00 */	li r7, 0
/* 80212490  39 00 00 00 */	li r8, 0
/* 80212494  48 04 14 F1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212498  7C 60 1B 78 */	mr r0, r3
lbl_8021249C:
/* 8021249C  7F BF E2 14 */	add r29, r31, r28
/* 802124A0  90 1D 02 C0 */	stw r0, 0x2c0(r29)
/* 802124A4  80 7D 02 C0 */	lwz r3, 0x2c0(r29)
/* 802124A8  80 63 00 04 */	lwz r3, 4(r3)
/* 802124AC  38 80 00 04 */	li r4, 4
/* 802124B0  48 0E 52 49 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 802124B4  38 60 00 6C */	li r3, 0x6c
/* 802124B8  48 0B C7 95 */	bl __nw__FUl
/* 802124BC  7C 60 1B 79 */	or. r0, r3, r3
/* 802124C0  41 82 00 28 */	beq lbl_802124E8
/* 802124C4  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802124C8  38 1E 05 88 */	addi r0, r30, 0x588
/* 802124CC  7C C0 E2 14 */	add r6, r0, r28
/* 802124D0  80 A6 00 00 */	lwz r5, 0(r6)
/* 802124D4  80 C6 00 04 */	lwz r6, 4(r6)
/* 802124D8  38 E0 00 00 */	li r7, 0
/* 802124DC  39 00 00 00 */	li r8, 0
/* 802124E0  48 04 14 A5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802124E4  7C 60 1B 78 */	mr r0, r3
lbl_802124E8:
/* 802124E8  90 1D 02 C4 */	stw r0, 0x2c4(r29)
/* 802124EC  80 7D 02 C4 */	lwz r3, 0x2c4(r29)
/* 802124F0  80 63 00 04 */	lwz r3, 4(r3)
/* 802124F4  38 80 00 04 */	li r4, 4
/* 802124F8  48 0E 52 01 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 802124FC  3B 7B 00 01 */	addi r27, r27, 1
/* 80212500  2C 1B 00 04 */	cmpwi r27, 4
/* 80212504  3B 9C 00 08 */	addi r28, r28, 8
/* 80212508  41 80 FF 60 */	blt lbl_80212468
/* 8021250C  38 60 00 6C */	li r3, 0x6c
/* 80212510  48 0B C7 3D */	bl __nw__FUl
/* 80212514  7C 60 1B 79 */	or. r0, r3, r3
/* 80212518  41 82 00 24 */	beq lbl_8021253C
/* 8021251C  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212520  3C A0 70 69 */	lis r5, 0x7069 /* 0x70695F6E@ha */
/* 80212524  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x70695F6E@l */
/* 80212528  38 A0 72 75 */	li r5, 0x7275
/* 8021252C  38 E0 00 02 */	li r7, 2
/* 80212530  39 00 00 00 */	li r8, 0
/* 80212534  48 04 14 51 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212538  7C 60 1B 78 */	mr r0, r3
lbl_8021253C:
/* 8021253C  90 1F 02 B4 */	stw r0, 0x2b4(r31)
/* 80212540  38 60 00 6C */	li r3, 0x6c
/* 80212544  48 0B C7 09 */	bl __nw__FUl
/* 80212548  7C 60 1B 79 */	or. r0, r3, r3
/* 8021254C  41 82 00 28 */	beq lbl_80212574
/* 80212550  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212554  3C A0 75 5F */	lis r5, 0x755F /* 0x755F726E@ha */
/* 80212558  38 C5 72 6E */	addi r6, r5, 0x726E /* 0x755F726E@l */
/* 8021255C  3C A0 6D 6F */	lis r5, 0x6D6F /* 0x6D6F796F@ha */
/* 80212560  38 A5 79 6F */	addi r5, r5, 0x796F /* 0x6D6F796F@l */
/* 80212564  38 E0 00 02 */	li r7, 2
/* 80212568  39 00 00 00 */	li r8, 0
/* 8021256C  48 04 14 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212570  7C 60 1B 78 */	mr r0, r3
lbl_80212574:
/* 80212574  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 80212578  38 60 00 6C */	li r3, 0x6c
/* 8021257C  48 0B C6 D1 */	bl __nw__FUl
/* 80212580  7C 60 1B 79 */	or. r0, r3, r3
/* 80212584  41 82 00 28 */	beq lbl_802125AC
/* 80212588  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8021258C  3C A0 75 5F */	lis r5, 0x755F /* 0x755F6C6E@ha */
/* 80212590  38 C5 6C 6E */	addi r6, r5, 0x6C6E /* 0x755F6C6E@l */
/* 80212594  3C A0 6D 6F */	lis r5, 0x6D6F /* 0x6D6F796F@ha */
/* 80212598  38 A5 79 6F */	addi r5, r5, 0x796F /* 0x6D6F796F@l */
/* 8021259C  38 E0 00 02 */	li r7, 2
/* 802125A0  39 00 00 00 */	li r8, 0
/* 802125A4  48 04 13 E1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802125A8  7C 60 1B 78 */	mr r0, r3
lbl_802125AC:
/* 802125AC  90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 802125B0  80 7F 02 B4 */	lwz r3, 0x2b4(r31)
/* 802125B4  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 802125B8  48 04 32 19 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802125BC  80 7F 02 B8 */	lwz r3, 0x2b8(r31)
/* 802125C0  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 802125C4  48 04 32 0D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802125C8  80 7F 02 BC */	lwz r3, 0x2bc(r31)
/* 802125CC  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 802125D0  48 04 32 01 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802125D4  3B 40 00 00 */	li r26, 0
/* 802125D8  3B A0 00 00 */	li r29, 0
/* 802125DC  3B 80 00 00 */	li r28, 0
lbl_802125E0:
/* 802125E0  38 60 00 6C */	li r3, 0x6c
/* 802125E4  48 0B C6 69 */	bl __nw__FUl
/* 802125E8  7C 60 1B 79 */	or. r0, r3, r3
/* 802125EC  41 82 00 28 */	beq lbl_80212614
/* 802125F0  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802125F4  38 1E 05 A8 */	addi r0, r30, 0x5a8
/* 802125F8  7C C0 E2 14 */	add r6, r0, r28
/* 802125FC  80 A6 00 00 */	lwz r5, 0(r6)
/* 80212600  80 C6 00 04 */	lwz r6, 4(r6)
/* 80212604  38 E0 00 00 */	li r7, 0
/* 80212608  39 00 00 00 */	li r8, 0
/* 8021260C  48 04 13 79 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212610  7C 60 1B 78 */	mr r0, r3
lbl_80212614:
/* 80212614  3B 7D 02 E4 */	addi r27, r29, 0x2e4
/* 80212618  7C 1F D9 2E */	stwx r0, r31, r27
/* 8021261C  7C 7F D8 2E */	lwzx r3, r31, r27
/* 80212620  80 63 00 04 */	lwz r3, 4(r3)
/* 80212624  38 80 00 04 */	li r4, 4
/* 80212628  48 0E 50 D1 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 8021262C  7C 7F D8 2E */	lwzx r3, r31, r27
/* 80212630  48 04 2F D9 */	bl hide__13CPaneMgrAlphaFv
/* 80212634  3B 5A 00 01 */	addi r26, r26, 1
/* 80212638  2C 1A 00 05 */	cmpwi r26, 5
/* 8021263C  3B BD 00 04 */	addi r29, r29, 4
/* 80212640  3B 9C 00 08 */	addi r28, r28, 8
/* 80212644  41 80 FF 9C */	blt lbl_802125E0
/* 80212648  38 60 00 6C */	li r3, 0x6c
/* 8021264C  48 0B C6 01 */	bl __nw__FUl
/* 80212650  7C 60 1B 79 */	or. r0, r3, r3
/* 80212654  41 82 00 24 */	beq lbl_80212678
/* 80212658  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8021265C  3C A0 65 79 */	lis r5, 0x6579 /* 0x65795F6E@ha */
/* 80212660  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65795F6E@l */
/* 80212664  38 A0 00 6B */	li r5, 0x6b
/* 80212668  38 E0 00 02 */	li r7, 2
/* 8021266C  39 00 00 00 */	li r8, 0
/* 80212670  48 04 13 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212674  7C 60 1B 78 */	mr r0, r3
lbl_80212678:
/* 80212678  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 8021267C  80 7F 02 E0 */	lwz r3, 0x2e0(r31)
/* 80212680  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80212684  48 04 31 4D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80212688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021268C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80212690  A0 03 00 04 */	lhz r0, 4(r3)
/* 80212694  7F E3 FB 78 */	mr r3, r31
/* 80212698  7C 04 07 34 */	extsh r4, r0
/* 8021269C  48 00 3C 91 */	bl drawRupee__13dMeter2Draw_cFs
/* 802126A0  7F E3 FB 78 */	mr r3, r31
/* 802126A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802126A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802126AC  88 84 09 74 */	lbz r4, 0x974(r4)
/* 802126B0  48 00 43 91 */	bl drawKey__13dMeter2Draw_cFs
/* 802126B4  7F E3 FB 78 */	mr r3, r31
/* 802126B8  38 80 00 01 */	li r4, 1
/* 802126BC  48 00 3F C9 */	bl setAlphaRupeeChange__13dMeter2Draw_cFb
/* 802126C0  7F E3 FB 78 */	mr r3, r31
/* 802126C4  38 80 00 01 */	li r4, 1
/* 802126C8  48 00 44 61 */	bl setAlphaKeyChange__13dMeter2Draw_cFb
/* 802126CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802126D0  48 14 FB 4D */	bl _restgpr_26
/* 802126D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802126D8  7C 08 03 A6 */	mtlr r0
/* 802126DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802126E0  4E 80 00 20 */	blr 
