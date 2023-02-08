lbl_801B91DC:
/* 801B91DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B91E0  7C 08 02 A6 */	mflr r0
/* 801B91E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B91E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B91EC  93 C1 00 08 */	stw r30, 8(r1)
/* 801B91F0  7C 7F 1B 78 */	mr r31, r3
/* 801B91F4  38 60 01 18 */	li r3, 0x118
/* 801B91F8  48 11 5A 55 */	bl __nw__FUl
/* 801B91FC  7C 60 1B 79 */	or. r0, r3, r3
/* 801B9200  41 82 00 0C */	beq lbl_801B920C
/* 801B9204  48 13 F2 95 */	bl __ct__9J2DScreenFv
/* 801B9208  7C 60 1B 78 */	mr r0, r3
lbl_801B920C:
/* 801B920C  90 1F 0C A4 */	stw r0, 0xca4(r31)
/* 801B9210  80 7F 0C A4 */	lwz r3, 0xca4(r31)
/* 801B9214  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha /* 0x80395760@ha */
/* 801B9218  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l /* 0x80395760@l */
/* 801B921C  38 84 00 70 */	addi r4, r4, 0x70
/* 801B9220  3C A0 00 02 */	lis r5, 2
/* 801B9224  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B9228  3B C6 61 C0 */	addi r30, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B922C  80 DE 5C C0 */	lwz r6, 0x5cc0(r30)
/* 801B9230  48 13 F4 19 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801B9234  80 7F 0C A4 */	lwz r3, 0xca4(r31)
/* 801B9238  48 09 BE B1 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801B923C  38 60 01 18 */	li r3, 0x118
/* 801B9240  48 11 5A 0D */	bl __nw__FUl
/* 801B9244  7C 60 1B 79 */	or. r0, r3, r3
/* 801B9248  41 82 00 0C */	beq lbl_801B9254
/* 801B924C  48 13 F2 4D */	bl __ct__9J2DScreenFv
/* 801B9250  7C 60 1B 78 */	mr r0, r3
lbl_801B9254:
/* 801B9254  90 1F 0C BC */	stw r0, 0xcbc(r31)
/* 801B9258  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B925C  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha /* 0x80395760@ha */
/* 801B9260  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l /* 0x80395760@l */
/* 801B9264  38 84 00 8B */	addi r4, r4, 0x8b
/* 801B9268  3C A0 00 02 */	lis r5, 2
/* 801B926C  80 DE 5C C0 */	lwz r6, 0x5cc0(r30)
/* 801B9270  48 13 F3 D9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801B9274  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801B9278  48 09 BE 71 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801B927C  80 7F 0C A4 */	lwz r3, 0xca4(r31)
/* 801B9280  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801B9284  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801B9288  3C 80 00 77 */	lis r4, 0x0077 /* 0x00775F62@ha */
/* 801B928C  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x00775F62@l */
/* 801B9290  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9294  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9298  7D 89 03 A6 */	mtctr r12
/* 801B929C  4E 80 04 21 */	bctrl 
/* 801B92A0  38 00 00 00 */	li r0, 0
/* 801B92A4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B92A8  38 60 00 2C */	li r3, 0x2c
/* 801B92AC  48 11 59 A1 */	bl __nw__FUl
/* 801B92B0  7C 60 1B 79 */	or. r0, r3, r3
/* 801B92B4  41 82 00 24 */	beq lbl_801B92D8
/* 801B92B8  80 9F 0C A4 */	lwz r4, 0xca4(r31)
/* 801B92BC  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 801B92C0  38 C5 4F 54 */	addi r6, r5, 0x4F54 /* 0x524F4F54@l */
/* 801B92C4  38 A0 00 00 */	li r5, 0
/* 801B92C8  38 E0 00 02 */	li r7, 2
/* 801B92CC  39 00 00 00 */	li r8, 0
/* 801B92D0  48 09 C9 99 */	bl __ct__17CPaneMgrAlphaMorfFP9J2DScreenUxUcP10JKRExpHeap
/* 801B92D4  7C 60 1B 78 */	mr r0, r3
lbl_801B92D8:
/* 801B92D8  90 1F 0C CC */	stw r0, 0xccc(r31)
/* 801B92DC  38 60 00 2C */	li r3, 0x2c
/* 801B92E0  48 11 59 6D */	bl __nw__FUl
/* 801B92E4  7C 60 1B 79 */	or. r0, r3, r3
/* 801B92E8  41 82 00 24 */	beq lbl_801B930C
/* 801B92EC  80 9F 0C BC */	lwz r4, 0xcbc(r31)
/* 801B92F0  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 801B92F4  38 C5 4F 54 */	addi r6, r5, 0x4F54 /* 0x524F4F54@l */
/* 801B92F8  38 A0 00 00 */	li r5, 0
/* 801B92FC  38 E0 00 02 */	li r7, 2
/* 801B9300  39 00 00 00 */	li r8, 0
/* 801B9304  48 09 C9 65 */	bl __ct__17CPaneMgrAlphaMorfFP9J2DScreenUxUcP10JKRExpHeap
/* 801B9308  7C 60 1B 78 */	mr r0, r3
lbl_801B930C:
/* 801B930C  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 801B9310  38 60 00 B8 */	li r3, 0xb8
/* 801B9314  48 11 59 39 */	bl __nw__FUl
/* 801B9318  7C 60 1B 79 */	or. r0, r3, r3
/* 801B931C  41 82 00 18 */	beq lbl_801B9334
/* 801B9320  38 80 00 02 */	li r4, 2
/* 801B9324  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801B9328  38 A0 00 00 */	li r5, 0
/* 801B932C  4B FD AE F5 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801B9330  7C 60 1B 78 */	mr r0, r3
lbl_801B9334:
/* 801B9334  90 1F 0C C0 */	stw r0, 0xcc0(r31)
/* 801B9338  80 7F 0C C0 */	lwz r3, 0xcc0(r31)
/* 801B933C  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801B9340  4B FD BF 61 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801B9344  80 7F 0C C0 */	lwz r3, 0xcc0(r31)
/* 801B9348  C0 22 A6 10 */	lfs f1, lit_4312(r2)
/* 801B934C  C0 42 A6 14 */	lfs f2, lit_4313(r2)
/* 801B9350  C0 62 A6 18 */	lfs f3, lit_4314(r2)
/* 801B9354  C0 82 A6 1C */	lfs f4, lit_4315(r2)
/* 801B9358  C0 A2 A6 0C */	lfs f5, lit_4249(r2)
/* 801B935C  4B FD BE 55 */	bl setParam__16dSelect_cursor_cFfffff
/* 801B9360  80 7F 0C A4 */	lwz r3, 0xca4(r31)
/* 801B9364  3C 80 74 5F */	lis r4, 0x745F /* 0x745F3030@ha */
/* 801B9368  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x745F3030@l */
/* 801B936C  38 A0 66 5F */	li r5, 0x665f
/* 801B9370  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9374  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B9378  7D 89 03 A6 */	mtctr r12
/* 801B937C  4E 80 04 21 */	bctrl 
/* 801B9380  7C 7E 1B 78 */	mr r30, r3
/* 801B9384  80 7F 0C A4 */	lwz r3, 0xca4(r31)
/* 801B9388  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801B938C  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801B9390  38 A0 00 74 */	li r5, 0x74
/* 801B9394  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9398  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B939C  7D 89 03 A6 */	mtctr r12
/* 801B93A0  4E 80 04 21 */	bctrl 
/* 801B93A4  38 00 00 00 */	li r0, 0
/* 801B93A8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B93AC  4B E5 B7 F5 */	bl mDoExt_getSubFont__Fv
/* 801B93B0  7C 64 1B 78 */	mr r4, r3
/* 801B93B4  7F C3 F3 78 */	mr r3, r30
/* 801B93B8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B93BC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B93C0  7D 89 03 A6 */	mtctr r12
/* 801B93C4  4E 80 04 21 */	bctrl 
/* 801B93C8  7F C3 F3 78 */	mr r3, r30
/* 801B93CC  38 80 00 20 */	li r4, 0x20
/* 801B93D0  3C A0 80 39 */	lis r5, d_menu_d_menu_dmap__stringBase0@ha /* 0x80395760@ha */
/* 801B93D4  38 A5 57 60 */	addi r5, r5, d_menu_d_menu_dmap__stringBase0@l /* 0x80395760@l */
/* 801B93D8  38 A5 00 6F */	addi r5, r5, 0x6f
/* 801B93DC  4C C6 31 82 */	crclr 6
/* 801B93E0  48 14 73 6D */	bl setString__10J2DTextBoxFsPCce
/* 801B93E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B93E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B93EC  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 801B93F0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801B93F4  7D 89 03 A6 */	mtctr r12
/* 801B93F8  4E 80 04 21 */	bctrl 
/* 801B93FC  A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 801B9400  28 00 00 00 */	cmplwi r0, 0
/* 801B9404  41 82 00 30 */	beq lbl_801B9434
/* 801B9408  80 7F 0C C8 */	lwz r3, 0xcc8(r31)
/* 801B940C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 801B9410  7F C5 F3 78 */	mr r5, r30
/* 801B9414  38 C0 00 00 */	li r6, 0
/* 801B9418  38 E0 00 00 */	li r7, 0
/* 801B941C  39 00 00 00 */	li r8, 0
/* 801B9420  39 20 00 00 */	li r9, 0
/* 801B9424  81 83 00 00 */	lwz r12, 0(r3)
/* 801B9428  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B942C  7D 89 03 A6 */	mtctr r12
/* 801B9430  4E 80 04 21 */	bctrl 
lbl_801B9434:
/* 801B9434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B9438  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B943C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B9440  7C 08 03 A6 */	mtlr r0
/* 801B9444  38 21 00 10 */	addi r1, r1, 0x10
/* 801B9448  4E 80 00 20 */	blr 
