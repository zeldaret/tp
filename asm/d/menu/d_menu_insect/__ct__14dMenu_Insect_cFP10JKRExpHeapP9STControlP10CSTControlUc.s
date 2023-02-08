lbl_801D8114:
/* 801D8114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D8118  7C 08 02 A6 */	mflr r0
/* 801D811C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D8120  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D8124  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D8128  7C 7F 1B 78 */	mr r31, r3
/* 801D812C  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801D8130  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801D8134  90 1F 00 00 */	stw r0, 0(r31)
/* 801D8138  3C 60 80 3C */	lis r3, __vt__14dMenu_Insect_c@ha /* 0x803BD8AC@ha */
/* 801D813C  38 03 D8 AC */	addi r0, r3, __vt__14dMenu_Insect_c@l /* 0x803BD8AC@l */
/* 801D8140  90 1F 00 00 */	stw r0, 0(r31)
/* 801D8144  90 9F 00 04 */	stw r4, 4(r31)
/* 801D8148  38 00 00 00 */	li r0, 0
/* 801D814C  90 1F 00 08 */	stw r0, 8(r31)
/* 801D8150  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801D8154  90 BF 00 0C */	stw r5, 0xc(r31)
/* 801D8158  90 DF 00 10 */	stw r6, 0x10(r31)
/* 801D815C  38 60 00 01 */	li r3, 1
/* 801D8160  98 7F 00 F2 */	stb r3, 0xf2(r31)
/* 801D8164  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801D8168  B0 1F 00 F0 */	sth r0, 0xf0(r31)
/* 801D816C  98 1F 00 F4 */	stb r0, 0xf4(r31)
/* 801D8170  98 1F 00 F5 */	stb r0, 0xf5(r31)
/* 801D8174  98 FF 00 F6 */	stb r7, 0xf6(r31)
/* 801D8178  38 00 00 FF */	li r0, 0xff
/* 801D817C  98 1F 00 F8 */	stb r0, 0xf8(r31)
/* 801D8180  98 1F 00 F9 */	stb r0, 0xf9(r31)
/* 801D8184  98 1F 00 FA */	stb r0, 0xfa(r31)
/* 801D8188  98 1F 00 FB */	stb r0, 0xfb(r31)
/* 801D818C  98 7F 00 F7 */	stb r3, 0xf7(r31)
/* 801D8190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801D8194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801D8198  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 801D819C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801D81A0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801D81A4  3C A0 80 39 */	lis r5, d_menu_d_menu_insect__stringBase0@ha /* 0x803968C0@ha */
/* 801D81A8  38 A5 68 C0 */	addi r5, r5, d_menu_d_menu_insect__stringBase0@l /* 0x803968C0@l */
/* 801D81AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D81B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801D81B4  7D 89 03 A6 */	mtctr r12
/* 801D81B8  4E 80 04 21 */	bctrl 
/* 801D81BC  7C 7E 1B 78 */	mr r30, r3
/* 801D81C0  38 60 01 50 */	li r3, 0x150
/* 801D81C4  48 0F 6A 89 */	bl __nw__FUl
/* 801D81C8  7C 60 1B 79 */	or. r0, r3, r3
/* 801D81CC  41 82 00 10 */	beq lbl_801D81DC
/* 801D81D0  7F C4 F3 78 */	mr r4, r30
/* 801D81D4  48 12 45 35 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801D81D8  7C 60 1B 78 */	mr r0, r3
lbl_801D81DC:
/* 801D81DC  90 1F 00 60 */	stw r0, 0x60(r31)
/* 801D81E0  38 60 00 00 */	li r3, 0
/* 801D81E4  98 61 00 08 */	stb r3, 8(r1)
/* 801D81E8  98 61 00 09 */	stb r3, 9(r1)
/* 801D81EC  98 61 00 0A */	stb r3, 0xa(r1)
/* 801D81F0  38 00 00 FF */	li r0, 0xff
/* 801D81F4  98 01 00 0B */	stb r0, 0xb(r1)
/* 801D81F8  80 01 00 08 */	lwz r0, 8(r1)
/* 801D81FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D8200  98 61 00 10 */	stb r3, 0x10(r1)
/* 801D8204  98 61 00 11 */	stb r3, 0x11(r1)
/* 801D8208  98 61 00 12 */	stb r3, 0x12(r1)
/* 801D820C  98 61 00 13 */	stb r3, 0x13(r1)
/* 801D8210  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D8214  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8218  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801D821C  38 81 00 14 */	addi r4, r1, 0x14
/* 801D8220  38 A1 00 0C */	addi r5, r1, 0xc
/* 801D8224  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8228  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801D822C  7D 89 03 A6 */	mtctr r12
/* 801D8230  4E 80 04 21 */	bctrl 
/* 801D8234  38 00 00 00 */	li r0, 0
/* 801D8238  98 1F 00 FC */	stb r0, 0xfc(r31)
/* 801D823C  38 60 00 B8 */	li r3, 0xb8
/* 801D8240  48 0F 6A 0D */	bl __nw__FUl
/* 801D8244  7C 60 1B 79 */	or. r0, r3, r3
/* 801D8248  41 82 00 18 */	beq lbl_801D8260
/* 801D824C  38 80 00 02 */	li r4, 2
/* 801D8250  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D8254  38 A0 00 00 */	li r5, 0
/* 801D8258  4B FB BF C9 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801D825C  7C 60 1B 78 */	mr r0, r3
lbl_801D8260:
/* 801D8260  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801D8264  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8268  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D826C  FC 40 08 90 */	fmr f2, f1
/* 801D8270  C0 62 A8 3C */	lfs f3, lit_3835(r2)
/* 801D8274  C0 82 A8 40 */	lfs f4, lit_3836(r2)
/* 801D8278  FC A0 20 90 */	fmr f5, f4
/* 801D827C  4B FB CF 35 */	bl setParam__16dSelect_cursor_cFfffff
/* 801D8280  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8284  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D8288  4B FB D0 19 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801D828C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8290  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D8294  4B FB CF 35 */	bl setScale__16dSelect_cursor_cFf
/* 801D8298  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D829C  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801D82A0  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 801D82A4  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801D82A8  38 60 01 18 */	li r3, 0x118
/* 801D82AC  48 0F 69 A1 */	bl __nw__FUl
/* 801D82B0  7C 60 1B 79 */	or. r0, r3, r3
/* 801D82B4  41 82 00 0C */	beq lbl_801D82C0
/* 801D82B8  48 06 0D FD */	bl __ct__17dMsgScrn3Select_cFv
/* 801D82BC  7C 60 1B 78 */	mr r0, r3
lbl_801D82C0:
/* 801D82C0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801D82C4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801D82C8  38 80 0C 00 */	li r4, 0xc00
/* 801D82CC  38 A0 00 20 */	li r5, 0x20
/* 801D82D0  48 0F 62 05 */	bl alloc__7JKRHeapFUli
/* 801D82D4  90 7F 00 EC */	stw r3, 0xec(r31)
/* 801D82D8  7F E3 FB 78 */	mr r3, r31
/* 801D82DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D82E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D82E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D82E8  7C 08 03 A6 */	mtlr r0
/* 801D82EC  38 21 00 20 */	addi r1, r1, 0x20
/* 801D82F0  4E 80 00 20 */	blr 
