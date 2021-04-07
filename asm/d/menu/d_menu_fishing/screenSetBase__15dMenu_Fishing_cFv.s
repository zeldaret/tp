lbl_801C55D8:
/* 801C55D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C55DC  7C 08 02 A6 */	mflr r0
/* 801C55E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C55E4  39 61 00 50 */	addi r11, r1, 0x50
/* 801C55E8  48 19 CB C9 */	bl _savegpr_18
/* 801C55EC  7C 7F 1B 78 */	mr r31, r3
/* 801C55F0  3C 60 80 39 */	lis r3, fish_n@ha /* 0x80395D90@ha */
/* 801C55F4  3B C3 5D 90 */	addi r30, r3, fish_n@l /* 0x80395D90@l */
/* 801C55F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801C55FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801C5600  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 801C5604  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C5608  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C560C  3C A0 80 39 */	lis r5, d_menu_d_menu_fishing__stringBase0@ha /* 0x80396068@ha */
/* 801C5610  38 A5 60 68 */	addi r5, r5, d_menu_d_menu_fishing__stringBase0@l /* 0x80396068@l */
/* 801C5614  38 A5 00 18 */	addi r5, r5, 0x18
/* 801C5618  81 83 00 00 */	lwz r12, 0(r3)
/* 801C561C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C5620  7D 89 03 A6 */	mtctr r12
/* 801C5624  4E 80 04 21 */	bctrl 
/* 801C5628  7C 72 1B 78 */	mr r18, r3
/* 801C562C  38 60 01 50 */	li r3, 0x150
/* 801C5630  48 10 96 1D */	bl __nw__FUl
/* 801C5634  7C 60 1B 79 */	or. r0, r3, r3
/* 801C5638  41 82 00 10 */	beq lbl_801C5648
/* 801C563C  7E 44 93 78 */	mr r4, r18
/* 801C5640  48 13 70 C9 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C5644  7C 60 1B 78 */	mr r0, r3
lbl_801C5648:
/* 801C5648  90 1F 01 F0 */	stw r0, 0x1f0(r31)
/* 801C564C  38 60 00 00 */	li r3, 0
/* 801C5650  98 61 00 08 */	stb r3, 8(r1)
/* 801C5654  98 61 00 09 */	stb r3, 9(r1)
/* 801C5658  98 61 00 0A */	stb r3, 0xa(r1)
/* 801C565C  38 00 00 FF */	li r0, 0xff
/* 801C5660  98 01 00 0B */	stb r0, 0xb(r1)
/* 801C5664  80 01 00 08 */	lwz r0, 8(r1)
/* 801C5668  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C566C  98 61 00 10 */	stb r3, 0x10(r1)
/* 801C5670  98 61 00 11 */	stb r3, 0x11(r1)
/* 801C5674  98 61 00 12 */	stb r3, 0x12(r1)
/* 801C5678  98 61 00 13 */	stb r3, 0x13(r1)
/* 801C567C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C5680  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5684  80 7F 01 F0 */	lwz r3, 0x1f0(r31)
/* 801C5688  38 81 00 14 */	addi r4, r1, 0x14
/* 801C568C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801C5690  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5694  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801C5698  7D 89 03 A6 */	mtctr r12
/* 801C569C  4E 80 04 21 */	bctrl 
/* 801C56A0  38 60 01 18 */	li r3, 0x118
/* 801C56A4  48 10 95 A9 */	bl __nw__FUl
/* 801C56A8  7C 60 1B 79 */	or. r0, r3, r3
/* 801C56AC  41 82 00 0C */	beq lbl_801C56B8
/* 801C56B0  48 13 2D E9 */	bl __ct__9J2DScreenFv
/* 801C56B4  7C 60 1B 78 */	mr r0, r3
lbl_801C56B8:
/* 801C56B8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801C56BC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C56C0  3C 80 80 39 */	lis r4, d_menu_d_menu_fishing__stringBase0@ha /* 0x80396068@ha */
/* 801C56C4  38 84 60 68 */	addi r4, r4, d_menu_d_menu_fishing__stringBase0@l /* 0x80396068@l */
/* 801C56C8  38 84 00 28 */	addi r4, r4, 0x28
/* 801C56CC  3C A0 00 02 */	lis r5, 2
/* 801C56D0  80 DF 00 08 */	lwz r6, 8(r31)
/* 801C56D4  48 13 2F 75 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801C56D8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C56DC  48 08 FA 0D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801C56E0  38 60 00 6C */	li r3, 0x6c
/* 801C56E4  48 10 95 69 */	bl __nw__FUl
/* 801C56E8  7C 60 1B 79 */	or. r0, r3, r3
/* 801C56EC  41 82 00 24 */	beq lbl_801C5710
/* 801C56F0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C56F4  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801C56F8  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801C56FC  38 A0 00 6E */	li r5, 0x6e
/* 801C5700  38 E0 00 02 */	li r7, 2
/* 801C5704  39 00 00 00 */	li r8, 0
/* 801C5708  48 08 E2 7D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C570C  7C 60 1B 78 */	mr r0, r3
lbl_801C5710:
/* 801C5710  90 1F 00 48 */	stw r0, 0x48(r31)
/* 801C5714  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C5718  C0 22 A7 08 */	lfs f1, lit_3904(r2)
/* 801C571C  48 09 00 B5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801C5720  3B 80 00 00 */	li r28, 0
/* 801C5724  3B 60 00 00 */	li r27, 0
/* 801C5728  3B A0 00 00 */	li r29, 0
lbl_801C572C:
/* 801C572C  38 60 00 6C */	li r3, 0x6c
/* 801C5730  48 10 95 1D */	bl __nw__FUl
/* 801C5734  7C 60 1B 79 */	or. r0, r3, r3
/* 801C5738  41 82 00 28 */	beq lbl_801C5760
/* 801C573C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C5740  38 1E 00 00 */	addi r0, r30, 0
/* 801C5744  7C C0 EA 14 */	add r6, r0, r29
/* 801C5748  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C574C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C5750  38 E0 00 00 */	li r7, 0
/* 801C5754  39 00 00 00 */	li r8, 0
/* 801C5758  48 08 E2 2D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C575C  7C 60 1B 78 */	mr r0, r3
lbl_801C5760:
/* 801C5760  7E 5F DA 14 */	add r18, r31, r27
/* 801C5764  90 12 00 4C */	stw r0, 0x4c(r18)
/* 801C5768  38 60 00 6C */	li r3, 0x6c
/* 801C576C  48 10 94 E1 */	bl __nw__FUl
/* 801C5770  7C 60 1B 79 */	or. r0, r3, r3
/* 801C5774  41 82 00 28 */	beq lbl_801C579C
/* 801C5778  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C577C  38 1E 00 30 */	addi r0, r30, 0x30
/* 801C5780  7C C0 EA 14 */	add r6, r0, r29
/* 801C5784  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5788  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C578C  38 E0 00 00 */	li r7, 0
/* 801C5790  39 00 00 00 */	li r8, 0
/* 801C5794  48 08 E1 F1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C5798  7C 60 1B 78 */	mr r0, r3
lbl_801C579C:
/* 801C579C  90 12 00 64 */	stw r0, 0x64(r18)
/* 801C57A0  38 60 00 6C */	li r3, 0x6c
/* 801C57A4  48 10 94 A9 */	bl __nw__FUl
/* 801C57A8  7C 60 1B 79 */	or. r0, r3, r3
/* 801C57AC  41 82 00 28 */	beq lbl_801C57D4
/* 801C57B0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C57B4  38 1E 00 60 */	addi r0, r30, 0x60
/* 801C57B8  7C C0 EA 14 */	add r6, r0, r29
/* 801C57BC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C57C0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C57C4  38 E0 00 00 */	li r7, 0
/* 801C57C8  39 00 00 00 */	li r8, 0
/* 801C57CC  48 08 E1 B9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C57D0  7C 60 1B 78 */	mr r0, r3
lbl_801C57D4:
/* 801C57D4  90 12 00 7C */	stw r0, 0x7c(r18)
/* 801C57D8  38 60 00 6C */	li r3, 0x6c
/* 801C57DC  48 10 94 71 */	bl __nw__FUl
/* 801C57E0  7C 60 1B 79 */	or. r0, r3, r3
/* 801C57E4  41 82 00 28 */	beq lbl_801C580C
/* 801C57E8  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C57EC  38 1E 00 90 */	addi r0, r30, 0x90
/* 801C57F0  7C C0 EA 14 */	add r6, r0, r29
/* 801C57F4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C57F8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C57FC  38 E0 00 00 */	li r7, 0
/* 801C5800  39 00 00 00 */	li r8, 0
/* 801C5804  48 08 E1 81 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C5808  7C 60 1B 78 */	mr r0, r3
lbl_801C580C:
/* 801C580C  90 12 00 94 */	stw r0, 0x94(r18)
/* 801C5810  38 60 00 6C */	li r3, 0x6c
/* 801C5814  48 10 94 39 */	bl __nw__FUl
/* 801C5818  7C 60 1B 79 */	or. r0, r3, r3
/* 801C581C  41 82 00 28 */	beq lbl_801C5844
/* 801C5820  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C5824  38 1E 00 C0 */	addi r0, r30, 0xc0
/* 801C5828  7C C0 EA 14 */	add r6, r0, r29
/* 801C582C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5830  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C5834  38 E0 00 00 */	li r7, 0
/* 801C5838  39 00 00 00 */	li r8, 0
/* 801C583C  48 08 E1 49 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C5840  7C 60 1B 78 */	mr r0, r3
lbl_801C5844:
/* 801C5844  90 12 00 AC */	stw r0, 0xac(r18)
/* 801C5848  38 60 00 6C */	li r3, 0x6c
/* 801C584C  48 10 94 01 */	bl __nw__FUl
/* 801C5850  7C 60 1B 79 */	or. r0, r3, r3
/* 801C5854  41 82 00 28 */	beq lbl_801C587C
/* 801C5858  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C585C  38 1E 00 F0 */	addi r0, r30, 0xf0
/* 801C5860  7C C0 EA 14 */	add r6, r0, r29
/* 801C5864  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5868  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C586C  38 E0 00 00 */	li r7, 0
/* 801C5870  39 00 00 00 */	li r8, 0
/* 801C5874  48 08 E1 11 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C5878  7C 60 1B 78 */	mr r0, r3
lbl_801C587C:
/* 801C587C  90 12 00 C4 */	stw r0, 0xc4(r18)
/* 801C5880  38 60 00 6C */	li r3, 0x6c
/* 801C5884  48 10 93 C9 */	bl __nw__FUl
/* 801C5888  7C 60 1B 79 */	or. r0, r3, r3
/* 801C588C  41 82 00 28 */	beq lbl_801C58B4
/* 801C5890  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C5894  38 1E 01 20 */	addi r0, r30, 0x120
/* 801C5898  7C C0 EA 14 */	add r6, r0, r29
/* 801C589C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C58A0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C58A4  38 E0 00 00 */	li r7, 0
/* 801C58A8  39 00 00 00 */	li r8, 0
/* 801C58AC  48 08 E0 D9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C58B0  7C 60 1B 78 */	mr r0, r3
lbl_801C58B4:
/* 801C58B4  90 12 00 DC */	stw r0, 0xdc(r18)
/* 801C58B8  3B 9C 00 01 */	addi r28, r28, 1
/* 801C58BC  2C 1C 00 06 */	cmpwi r28, 6
/* 801C58C0  3B 7B 00 04 */	addi r27, r27, 4
/* 801C58C4  3B BD 00 08 */	addi r29, r29, 8
/* 801C58C8  41 80 FE 64 */	blt lbl_801C572C
/* 801C58CC  38 60 00 6C */	li r3, 0x6c
/* 801C58D0  48 10 93 7D */	bl __nw__FUl
/* 801C58D4  7C 60 1B 79 */	or. r0, r3, r3
/* 801C58D8  41 82 00 28 */	beq lbl_801C5900
/* 801C58DC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C58E0  3C A0 5F 62 */	lis r5, 0x5F62 /* 0x5F626C75@ha */
/* 801C58E4  38 C5 6C 75 */	addi r6, r5, 0x6C75 /* 0x5F626C75@l */
/* 801C58E8  3C A0 69 6E */	lis r5, 0x696E /* 0x696E666F@ha */
/* 801C58EC  38 A5 66 6F */	addi r5, r5, 0x666F /* 0x696E666F@l */
/* 801C58F0  38 E0 00 00 */	li r7, 0
/* 801C58F4  39 00 00 00 */	li r8, 0
/* 801C58F8  48 08 E0 8D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C58FC  7C 60 1B 78 */	mr r0, r3
lbl_801C5900:
/* 801C5900  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 801C5904  38 60 00 6C */	li r3, 0x6c
/* 801C5908  48 10 93 45 */	bl __nw__FUl
/* 801C590C  7C 60 1B 79 */	or. r0, r3, r3
/* 801C5910  41 82 00 28 */	beq lbl_801C5938
/* 801C5914  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801C5918  3C A0 5F 72 */	lis r5, 0x5F72 /* 0x5F726564@ha */
/* 801C591C  38 C5 65 64 */	addi r6, r5, 0x6564 /* 0x5F726564@l */
/* 801C5920  3C A0 69 6E */	lis r5, 0x696E /* 0x696E666F@ha */
/* 801C5924  38 A5 66 6F */	addi r5, r5, 0x666F /* 0x696E666F@l */
/* 801C5928  38 E0 00 00 */	li r7, 0
/* 801C592C  39 00 00 00 */	li r8, 0
/* 801C5930  48 08 E0 55 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801C5934  7C 60 1B 78 */	mr r0, r3
lbl_801C5938:
/* 801C5938  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 801C593C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5940  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801C5944  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801C5948  38 A0 00 66 */	li r5, 0x66
/* 801C594C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5950  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5954  7D 89 03 A6 */	mtctr r12
/* 801C5958  4E 80 04 21 */	bctrl 
/* 801C595C  7C 72 1B 78 */	mr r18, r3
/* 801C5960  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5964  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801C5968  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801C596C  38 A0 00 74 */	li r5, 0x74
/* 801C5970  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5974  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5978  7D 89 03 A6 */	mtctr r12
/* 801C597C  4E 80 04 21 */	bctrl 
/* 801C5980  38 00 00 00 */	li r0, 0
/* 801C5984  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801C5988  4B E4 F2 19 */	bl mDoExt_getSubFont__Fv
/* 801C598C  7C 64 1B 78 */	mr r4, r3
/* 801C5990  7E 43 93 78 */	mr r3, r18
/* 801C5994  81 92 00 00 */	lwz r12, 0(r18)
/* 801C5998  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C599C  7D 89 03 A6 */	mtctr r12
/* 801C59A0  4E 80 04 21 */	bctrl 
/* 801C59A4  7E 43 93 78 */	mr r3, r18
/* 801C59A8  38 80 02 00 */	li r4, 0x200
/* 801C59AC  3C A0 80 39 */	lis r5, d_menu_d_menu_fishing__stringBase0@ha /* 0x80396068@ha */
/* 801C59B0  38 A5 60 68 */	addi r5, r5, d_menu_d_menu_fishing__stringBase0@l /* 0x80396068@l */
/* 801C59B4  38 A5 00 3E */	addi r5, r5, 0x3e
/* 801C59B8  4C C6 31 82 */	crclr 6
/* 801C59BC  48 13 AD 91 */	bl setString__10J2DTextBoxFsPCce
/* 801C59C0  80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 801C59C4  38 80 05 A1 */	li r4, 0x5a1
/* 801C59C8  7E 45 93 78 */	mr r5, r18
/* 801C59CC  38 C0 00 00 */	li r6, 0
/* 801C59D0  38 E0 00 00 */	li r7, 0
/* 801C59D4  39 00 00 00 */	li r8, 0
/* 801C59D8  39 20 00 00 */	li r9, 0
/* 801C59DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C59E0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C59E4  7D 89 03 A6 */	mtctr r12
/* 801C59E8  4E 80 04 21 */	bctrl 
/* 801C59EC  3A E0 00 00 */	li r23, 0
/* 801C59F0  3A C0 00 00 */	li r22, 0
/* 801C59F4  3A A0 00 00 */	li r21, 0
/* 801C59F8  3B 1E 01 50 */	addi r24, r30, 0x150
/* 801C59FC  3C 60 80 39 */	lis r3, d_menu_d_menu_fishing__stringBase0@ha /* 0x80396068@ha */
/* 801C5A00  3B 23 60 68 */	addi r25, r3, d_menu_d_menu_fishing__stringBase0@l /* 0x80396068@l */
/* 801C5A04  3B 5E 01 80 */	addi r26, r30, 0x180
/* 801C5A08  3B BE 01 B0 */	addi r29, r30, 0x1b0
/* 801C5A0C  3B 9E 01 E0 */	addi r28, r30, 0x1e0
/* 801C5A10  3B 7E 02 10 */	addi r27, r30, 0x210
/* 801C5A14  3A 9E 02 40 */	addi r20, r30, 0x240
/* 801C5A18  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C5A1C  3A 43 01 88 */	addi r18, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C5A20  3B DE 02 70 */	addi r30, r30, 0x270
lbl_801C5A24:
/* 801C5A24  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5A28  7C D8 AA 14 */	add r6, r24, r21
/* 801C5A2C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5A30  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C5A34  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5A38  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5A3C  7D 89 03 A6 */	mtctr r12
/* 801C5A40  4E 80 04 21 */	bctrl 
/* 801C5A44  7E 7F B2 14 */	add r19, r31, r22
/* 801C5A48  90 73 01 24 */	stw r3, 0x124(r19)
/* 801C5A4C  4B E4 F1 55 */	bl mDoExt_getSubFont__Fv
/* 801C5A50  7C 64 1B 78 */	mr r4, r3
/* 801C5A54  80 73 01 24 */	lwz r3, 0x124(r19)
/* 801C5A58  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5A5C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5A60  7D 89 03 A6 */	mtctr r12
/* 801C5A64  4E 80 04 21 */	bctrl 
/* 801C5A68  80 73 01 24 */	lwz r3, 0x124(r19)
/* 801C5A6C  38 80 00 20 */	li r4, 0x20
/* 801C5A70  38 B9 00 3E */	addi r5, r25, 0x3e
/* 801C5A74  4C C6 31 82 */	crclr 6
/* 801C5A78  48 13 AC D5 */	bl setString__10J2DTextBoxFsPCce
/* 801C5A7C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5A80  7C DA AA 14 */	add r6, r26, r21
/* 801C5A84  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5A88  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C5A8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5A90  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5A94  7D 89 03 A6 */	mtctr r12
/* 801C5A98  4E 80 04 21 */	bctrl 
/* 801C5A9C  90 73 01 84 */	stw r3, 0x184(r19)
/* 801C5AA0  4B E4 F1 01 */	bl mDoExt_getSubFont__Fv
/* 801C5AA4  7C 64 1B 78 */	mr r4, r3
/* 801C5AA8  80 73 01 84 */	lwz r3, 0x184(r19)
/* 801C5AAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5AB0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5AB4  7D 89 03 A6 */	mtctr r12
/* 801C5AB8  4E 80 04 21 */	bctrl 
/* 801C5ABC  80 73 01 84 */	lwz r3, 0x184(r19)
/* 801C5AC0  38 80 00 20 */	li r4, 0x20
/* 801C5AC4  38 B9 00 3E */	addi r5, r25, 0x3e
/* 801C5AC8  4C C6 31 82 */	crclr 6
/* 801C5ACC  48 13 AC 81 */	bl setString__10J2DTextBoxFsPCce
/* 801C5AD0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5AD4  7C DD AA 14 */	add r6, r29, r21
/* 801C5AD8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5ADC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C5AE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5AE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5AE8  7D 89 03 A6 */	mtctr r12
/* 801C5AEC  4E 80 04 21 */	bctrl 
/* 801C5AF0  90 73 01 54 */	stw r3, 0x154(r19)
/* 801C5AF4  4B E4 F0 AD */	bl mDoExt_getSubFont__Fv
/* 801C5AF8  7C 64 1B 78 */	mr r4, r3
/* 801C5AFC  80 73 01 54 */	lwz r3, 0x154(r19)
/* 801C5B00  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5B04  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5B08  7D 89 03 A6 */	mtctr r12
/* 801C5B0C  4E 80 04 21 */	bctrl 
/* 801C5B10  80 73 01 54 */	lwz r3, 0x154(r19)
/* 801C5B14  38 80 00 20 */	li r4, 0x20
/* 801C5B18  38 B9 00 3E */	addi r5, r25, 0x3e
/* 801C5B1C  4C C6 31 82 */	crclr 6
/* 801C5B20  48 13 AC 2D */	bl setString__10J2DTextBoxFsPCce
/* 801C5B24  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5B28  7C DC AA 14 */	add r6, r28, r21
/* 801C5B2C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5B30  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C5B34  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5B38  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5B3C  7D 89 03 A6 */	mtctr r12
/* 801C5B40  4E 80 04 21 */	bctrl 
/* 801C5B44  90 73 01 B4 */	stw r3, 0x1b4(r19)
/* 801C5B48  4B E4 F0 59 */	bl mDoExt_getSubFont__Fv
/* 801C5B4C  7C 64 1B 78 */	mr r4, r3
/* 801C5B50  80 73 01 B4 */	lwz r3, 0x1b4(r19)
/* 801C5B54  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5B58  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5B5C  7D 89 03 A6 */	mtctr r12
/* 801C5B60  4E 80 04 21 */	bctrl 
/* 801C5B64  80 73 01 B4 */	lwz r3, 0x1b4(r19)
/* 801C5B68  38 80 00 20 */	li r4, 0x20
/* 801C5B6C  38 B9 00 3E */	addi r5, r25, 0x3e
/* 801C5B70  4C C6 31 82 */	crclr 6
/* 801C5B74  48 13 AB D9 */	bl setString__10J2DTextBoxFsPCce
/* 801C5B78  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5B7C  7C DB AA 14 */	add r6, r27, r21
/* 801C5B80  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5B84  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C5B88  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5B8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5B90  7D 89 03 A6 */	mtctr r12
/* 801C5B94  4E 80 04 21 */	bctrl 
/* 801C5B98  90 73 01 CC */	stw r3, 0x1cc(r19)
/* 801C5B9C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5BA0  7C D4 AA 14 */	add r6, r20, r21
/* 801C5BA4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801C5BA8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801C5BAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5BB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5BB4  7D 89 03 A6 */	mtctr r12
/* 801C5BB8  4E 80 04 21 */	bctrl 
/* 801C5BBC  38 00 00 00 */	li r0, 0
/* 801C5BC0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801C5BC4  4B E4 EF DD */	bl mDoExt_getSubFont__Fv
/* 801C5BC8  7C 64 1B 78 */	mr r4, r3
/* 801C5BCC  80 73 01 CC */	lwz r3, 0x1cc(r19)
/* 801C5BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5BD4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5BD8  7D 89 03 A6 */	mtctr r12
/* 801C5BDC  4E 80 04 21 */	bctrl 
/* 801C5BE0  80 73 01 CC */	lwz r3, 0x1cc(r19)
/* 801C5BE4  38 80 00 20 */	li r4, 0x20
/* 801C5BE8  38 B9 00 3E */	addi r5, r25, 0x3e
/* 801C5BEC  4C C6 31 82 */	crclr 6
/* 801C5BF0  48 13 AB 5D */	bl setString__10J2DTextBoxFsPCce
/* 801C5BF4  80 73 01 CC */	lwz r3, 0x1cc(r19)
/* 801C5BF8  48 13 AA 61 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C5BFC  7C 65 1B 78 */	mr r5, r3
/* 801C5C00  7E 43 93 78 */	mr r3, r18
/* 801C5C04  7C 9E B0 2E */	lwzx r4, r30, r22
/* 801C5C08  38 C0 00 00 */	li r6, 0
/* 801C5C0C  48 05 69 39 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801C5C10  3A F7 00 01 */	addi r23, r23, 1
/* 801C5C14  2C 17 00 06 */	cmpwi r23, 6
/* 801C5C18  3A D6 00 04 */	addi r22, r22, 4
/* 801C5C1C  3A B5 00 08 */	addi r21, r21, 8
/* 801C5C20  41 80 FE 04 */	blt lbl_801C5A24
/* 801C5C24  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5C28  3C 80 73 69 */	lis r4, 0x7369 /* 0x73697A65@ha */
/* 801C5C2C  38 C4 7A 65 */	addi r6, r4, 0x7A65 /* 0x73697A65@l */
/* 801C5C30  3C 80 69 6E */	lis r4, 0x696E /* 0x696E665F@ha */
/* 801C5C34  38 A4 66 5F */	addi r5, r4, 0x665F /* 0x696E665F@l */
/* 801C5C38  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5C3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5C40  7D 89 03 A6 */	mtctr r12
/* 801C5C44  4E 80 04 21 */	bctrl 
/* 801C5C48  90 7F 01 E4 */	stw r3, 0x1e4(r31)
/* 801C5C4C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C5C50  3C 80 5F 63 */	lis r4, 0x5F63 /* 0x5F636F75@ha */
/* 801C5C54  38 C4 6F 75 */	addi r6, r4, 0x6F75 /* 0x5F636F75@l */
/* 801C5C58  3C 80 00 69 */	lis r4, 0x0069 /* 0x00696E66@ha */
/* 801C5C5C  38 A4 6E 66 */	addi r5, r4, 0x6E66 /* 0x00696E66@l */
/* 801C5C60  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5C64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5C68  7D 89 03 A6 */	mtctr r12
/* 801C5C6C  4E 80 04 21 */	bctrl 
/* 801C5C70  90 7F 01 E8 */	stw r3, 0x1e8(r31)
/* 801C5C74  4B E4 ED 7D */	bl mDoExt_getMesgFont__Fv
/* 801C5C78  7C 64 1B 78 */	mr r4, r3
/* 801C5C7C  80 7F 01 E4 */	lwz r3, 0x1e4(r31)
/* 801C5C80  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5C84  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5C88  7D 89 03 A6 */	mtctr r12
/* 801C5C8C  4E 80 04 21 */	bctrl 
/* 801C5C90  4B E4 ED 61 */	bl mDoExt_getMesgFont__Fv
/* 801C5C94  7C 64 1B 78 */	mr r4, r3
/* 801C5C98  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 801C5C9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5CA0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5CA4  7D 89 03 A6 */	mtctr r12
/* 801C5CA8  4E 80 04 21 */	bctrl 
/* 801C5CAC  80 7F 01 E4 */	lwz r3, 0x1e4(r31)
/* 801C5CB0  38 80 00 20 */	li r4, 0x20
/* 801C5CB4  3C A0 80 39 */	lis r5, d_menu_d_menu_fishing__stringBase0@ha /* 0x80396068@ha */
/* 801C5CB8  38 A5 60 68 */	addi r5, r5, d_menu_d_menu_fishing__stringBase0@l /* 0x80396068@l */
/* 801C5CBC  38 A5 00 3E */	addi r5, r5, 0x3e
/* 801C5CC0  4C C6 31 82 */	crclr 6
/* 801C5CC4  48 13 AA 89 */	bl setString__10J2DTextBoxFsPCce
/* 801C5CC8  80 7F 01 E4 */	lwz r3, 0x1e4(r31)
/* 801C5CCC  48 13 A9 8D */	bl getStringPtr__10J2DTextBoxCFv
/* 801C5CD0  7C 65 1B 78 */	mr r5, r3
/* 801C5CD4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C5CD8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C5CDC  38 80 05 9F */	li r4, 0x59f
/* 801C5CE0  38 C0 00 00 */	li r6, 0
/* 801C5CE4  48 05 68 61 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801C5CE8  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 801C5CEC  38 80 00 20 */	li r4, 0x20
/* 801C5CF0  3C A0 80 39 */	lis r5, d_menu_d_menu_fishing__stringBase0@ha /* 0x80396068@ha */
/* 801C5CF4  38 A5 60 68 */	addi r5, r5, d_menu_d_menu_fishing__stringBase0@l /* 0x80396068@l */
/* 801C5CF8  38 A5 00 3E */	addi r5, r5, 0x3e
/* 801C5CFC  4C C6 31 82 */	crclr 6
/* 801C5D00  48 13 AA 4D */	bl setString__10J2DTextBoxFsPCce
/* 801C5D04  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 801C5D08  48 13 A9 51 */	bl getStringPtr__10J2DTextBoxCFv
/* 801C5D0C  7C 65 1B 78 */	mr r5, r3
/* 801C5D10  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C5D14  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C5D18  38 80 05 A0 */	li r4, 0x5a0
/* 801C5D1C  38 C0 00 00 */	li r6, 0
/* 801C5D20  48 05 68 25 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801C5D24  39 61 00 50 */	addi r11, r1, 0x50
/* 801C5D28  48 19 C4 D5 */	bl _restgpr_18
/* 801C5D2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C5D30  7C 08 03 A6 */	mtlr r0
/* 801C5D34  38 21 00 50 */	addi r1, r1, 0x50
/* 801C5D38  4E 80 00 20 */	blr 
