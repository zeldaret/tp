lbl_801E03D8:
/* 801E03D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801E03DC  7C 08 02 A6 */	mflr r0
/* 801E03E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E03E4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801E03E8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801E03EC  39 61 00 30 */	addi r11, r1, 0x30
/* 801E03F0  48 18 1D E1 */	bl _savegpr_26
/* 801E03F4  7C 7F 1B 78 */	mr r31, r3
/* 801E03F8  38 60 01 18 */	li r3, 0x118
/* 801E03FC  48 0E E8 51 */	bl __nw__FUl
/* 801E0400  7C 60 1B 79 */	or. r0, r3, r3
/* 801E0404  41 82 00 0C */	beq lbl_801E0410
/* 801E0408  48 11 80 91 */	bl __ct__9J2DScreenFv
/* 801E040C  7C 60 1B 78 */	mr r0, r3
lbl_801E0410:
/* 801E0410  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801E0414  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0418  3C 80 80 39 */	lis r4, d_menu_d_menu_letter__stringBase0@ha
/* 801E041C  38 84 6D C0 */	addi r4, r4, d_menu_d_menu_letter__stringBase0@l
/* 801E0420  38 84 00 78 */	addi r4, r4, 0x78
/* 801E0424  3C A0 00 02 */	lis r5, 2
/* 801E0428  80 DF 00 08 */	lwz r6, 8(r31)
/* 801E042C  48 11 82 1D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E0430  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0434  48 07 4C B5 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E0438  38 60 00 6C */	li r3, 0x6c
/* 801E043C  48 0E E8 11 */	bl __nw__FUl
/* 801E0440  7C 60 1B 79 */	or. r0, r3, r3
/* 801E0444  41 82 00 24 */	beq lbl_801E0468
/* 801E0448  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801E044C  3C A0 74 34 */	lis r5, 0x7434 /* 0x74345F73@ha */
/* 801E0450  38 C5 5F 73 */	addi r6, r5, 0x5F73 /* 0x74345F73@l */
/* 801E0454  38 A0 00 00 */	li r5, 0
/* 801E0458  38 E0 00 00 */	li r7, 0
/* 801E045C  39 00 00 00 */	li r8, 0
/* 801E0460  48 07 35 25 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E0464  7C 60 1B 78 */	mr r0, r3
lbl_801E0468:
/* 801E0468  90 1F 02 EC */	stw r0, 0x2ec(r31)
/* 801E046C  38 60 00 6C */	li r3, 0x6c
/* 801E0470  48 0E E7 DD */	bl __nw__FUl
/* 801E0474  7C 60 1B 79 */	or. r0, r3, r3
/* 801E0478  41 82 00 28 */	beq lbl_801E04A0
/* 801E047C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801E0480  3C A0 34 6C */	lis r5, 0x346C /* 0x346C696E@ha */
/* 801E0484  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x346C696E@l */
/* 801E0488  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F65@ha */
/* 801E048C  38 A5 5F 65 */	addi r5, r5, 0x5F65 /* 0x6D675F65@l */
/* 801E0490  38 E0 00 00 */	li r7, 0
/* 801E0494  39 00 00 00 */	li r8, 0
/* 801E0498  48 07 34 ED */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E049C  7C 60 1B 78 */	mr r0, r3
lbl_801E04A0:
/* 801E04A0  90 1F 02 F0 */	stw r0, 0x2f0(r31)
/* 801E04A4  38 60 00 00 */	li r3, 0
/* 801E04A8  7C 64 1B 78 */	mr r4, r3
/* 801E04AC  38 00 00 02 */	li r0, 2
/* 801E04B0  7C 09 03 A6 */	mtctr r0
lbl_801E04B4:
/* 801E04B4  38 03 02 F4 */	addi r0, r3, 0x2f4
/* 801E04B8  7C 9F 01 2E */	stwx r4, r31, r0
/* 801E04BC  38 63 00 04 */	addi r3, r3, 4
/* 801E04C0  42 00 FF F4 */	bdnz lbl_801E04B4
/* 801E04C4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E04C8  3C 80 33 66 */	lis r4, 0x3366 /* 0x33665F73@ha */
/* 801E04CC  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x33665F73@l */
/* 801E04D0  38 A0 00 74 */	li r5, 0x74
/* 801E04D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E04D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E04DC  7D 89 03 A6 */	mtctr r12
/* 801E04E0  4E 80 04 21 */	bctrl 
/* 801E04E4  38 00 00 00 */	li r0, 0
/* 801E04E8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E04EC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E04F0  3C 80 66 6C */	lis r4, 0x666C /* 0x666C696E@ha */
/* 801E04F4  38 C4 69 6E */	addi r6, r4, 0x696E /* 0x666C696E@l */
/* 801E04F8  3C 80 6D 67 */	lis r4, 0x6D67 /* 0x6D675F33@ha */
/* 801E04FC  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x6D675F33@l */
/* 801E0500  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0504  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0508  7D 89 03 A6 */	mtctr r12
/* 801E050C  4E 80 04 21 */	bctrl 
/* 801E0510  38 00 00 00 */	li r0, 0
/* 801E0514  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E0518  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E051C  3C 80 33 66 */	lis r4, 0x3366 /* 0x33665F73@ha */
/* 801E0520  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x33665F73@l */
/* 801E0524  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 801E0528  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 801E052C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0530  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0534  7D 89 03 A6 */	mtctr r12
/* 801E0538  4E 80 04 21 */	bctrl 
/* 801E053C  38 00 00 00 */	li r0, 0
/* 801E0540  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E0544  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0548  3C 80 67 5F */	lis r4, 0x675F /* 0x675F3366@ha */
/* 801E054C  38 C4 33 66 */	addi r6, r4, 0x3366 /* 0x675F3366@l */
/* 801E0550  38 A0 00 6D */	li r5, 0x6d
/* 801E0554  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0558  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E055C  7D 89 03 A6 */	mtctr r12
/* 801E0560  4E 80 04 21 */	bctrl 
/* 801E0564  38 00 00 00 */	li r0, 0
/* 801E0568  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E056C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0570  3C 80 74 33 */	lis r4, 0x7433 /* 0x74335F73@ha */
/* 801E0574  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x74335F73@l */
/* 801E0578  38 A0 00 00 */	li r5, 0
/* 801E057C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0580  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0584  7D 89 03 A6 */	mtctr r12
/* 801E0588  4E 80 04 21 */	bctrl 
/* 801E058C  38 00 00 00 */	li r0, 0
/* 801E0590  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E0594  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0598  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 801E059C  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 801E05A0  3C 80 6D 67 */	lis r4, 0x6D67 /* 0x6D675F33@ha */
/* 801E05A4  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x6D675F33@l */
/* 801E05A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E05AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E05B0  7D 89 03 A6 */	mtctr r12
/* 801E05B4  4E 80 04 21 */	bctrl 
/* 801E05B8  38 00 00 00 */	li r0, 0
/* 801E05BC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E05C0  38 60 00 6C */	li r3, 0x6c
/* 801E05C4  48 0E E6 89 */	bl __nw__FUl
/* 801E05C8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E05CC  41 82 00 24 */	beq lbl_801E05F0
/* 801E05D0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801E05D4  3C A0 75 73 */	lis r5, 0x7573 /* 0x75735F6E@ha */
/* 801E05D8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x75735F6E@l */
/* 801E05DC  38 A0 00 00 */	li r5, 0
/* 801E05E0  38 E0 00 00 */	li r7, 0
/* 801E05E4  39 00 00 00 */	li r8, 0
/* 801E05E8  48 07 33 9D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E05EC  7C 60 1B 78 */	mr r0, r3
lbl_801E05F0:
/* 801E05F0  90 1F 02 E8 */	stw r0, 0x2e8(r31)
/* 801E05F4  3B 40 00 00 */	li r26, 0
/* 801E05F8  3B A0 00 00 */	li r29, 0
/* 801E05FC  3B C0 00 00 */	li r30, 0
/* 801E0600  3C 60 80 39 */	lis r3, line_tag@ha
/* 801E0604  3B 83 6D 10 */	addi r28, r3, line_tag@l
lbl_801E0608:
/* 801E0608  7C 7C F2 14 */	add r3, r28, r30
/* 801E060C  80 A3 00 00 */	lwz r5, 0(r3)
/* 801E0610  80 C3 00 04 */	lwz r6, 4(r3)
/* 801E0614  38 80 00 00 */	li r4, 0
/* 801E0618  7C C3 22 78 */	xor r3, r6, r4
/* 801E061C  7C A0 22 78 */	xor r0, r5, r4
/* 801E0620  7C 60 03 79 */	or. r0, r3, r0
/* 801E0624  41 82 00 24 */	beq lbl_801E0648
/* 801E0628  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E062C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0630  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0634  7D 89 03 A6 */	mtctr r12
/* 801E0638  4E 80 04 21 */	bctrl 
/* 801E063C  38 1D 02 5C */	addi r0, r29, 0x25c
/* 801E0640  7C 7F 01 2E */	stwx r3, r31, r0
/* 801E0644  48 00 00 0C */	b lbl_801E0650
lbl_801E0648:
/* 801E0648  38 1D 02 5C */	addi r0, r29, 0x25c
/* 801E064C  7C 9F 01 2E */	stwx r4, r31, r0
lbl_801E0650:
/* 801E0650  3B 5A 00 01 */	addi r26, r26, 1
/* 801E0654  2C 1A 00 0C */	cmpwi r26, 0xc
/* 801E0658  3B BD 00 04 */	addi r29, r29, 4
/* 801E065C  3B DE 00 08 */	addi r30, r30, 8
/* 801E0660  41 80 FF A8 */	blt lbl_801E0608
/* 801E0664  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0668  3C 80 72 69 */	lis r4, 0x7269 /* 0x72695F6E@ha */
/* 801E066C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x72695F6E@l */
/* 801E0670  3C 80 6A 70 */	lis r4, 0x6A70 /* 0x6A705F66@ha */
/* 801E0674  38 A4 5F 66 */	addi r5, r4, 0x5F66 /* 0x6A705F66@l */
/* 801E0678  81 83 00 00 */	lwz r12, 0(r3)
/* 801E067C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0680  7D 89 03 A6 */	mtctr r12
/* 801E0684  4E 80 04 21 */	bctrl 
/* 801E0688  38 00 00 00 */	li r0, 0
/* 801E068C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E0690  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0694  3C 80 6A 70 */	lis r4, 0x6A70 /* 0x6A705F6E@ha */
/* 801E0698  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6A705F6E@l */
/* 801E069C  38 A0 00 00 */	li r5, 0
/* 801E06A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E06A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E06A8  7D 89 03 A6 */	mtctr r12
/* 801E06AC  4E 80 04 21 */	bctrl 
/* 801E06B0  38 00 00 00 */	li r0, 0
/* 801E06B4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E06B8  3B C0 00 00 */	li r30, 0
/* 801E06BC  3B A0 00 00 */	li r29, 0
/* 801E06C0  3C 60 80 39 */	lis r3, d_menu_d_menu_letter__stringBase0@ha
/* 801E06C4  3B 83 6D C0 */	addi r28, r3, d_menu_d_menu_letter__stringBase0@l
lbl_801E06C8:
/* 801E06C8  7F 5F EA 14 */	add r26, r31, r29
/* 801E06CC  80 7A 02 EC */	lwz r3, 0x2ec(r26)
/* 801E06D0  83 63 00 04 */	lwz r27, 4(r3)
/* 801E06D4  4B E3 43 1D */	bl mDoExt_getMesgFont__Fv
/* 801E06D8  7C 64 1B 78 */	mr r4, r3
/* 801E06DC  7F 63 DB 78 */	mr r3, r27
/* 801E06E0  81 9B 00 00 */	lwz r12, 0(r27)
/* 801E06E4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E06E8  7D 89 03 A6 */	mtctr r12
/* 801E06EC  4E 80 04 21 */	bctrl 
/* 801E06F0  80 7A 02 EC */	lwz r3, 0x2ec(r26)
/* 801E06F4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E06F8  38 80 02 00 */	li r4, 0x200
/* 801E06FC  38 BC 00 3B */	addi r5, r28, 0x3b
/* 801E0700  4C C6 31 82 */	crclr 6
/* 801E0704  48 12 00 49 */	bl setString__10J2DTextBoxFsPCce
/* 801E0708  80 7A 02 F4 */	lwz r3, 0x2f4(r26)
/* 801E070C  28 03 00 00 */	cmplwi r3, 0
/* 801E0710  41 82 00 44 */	beq lbl_801E0754
/* 801E0714  83 63 00 04 */	lwz r27, 4(r3)
/* 801E0718  4B E3 42 D9 */	bl mDoExt_getMesgFont__Fv
/* 801E071C  7C 64 1B 78 */	mr r4, r3
/* 801E0720  7F 63 DB 78 */	mr r3, r27
/* 801E0724  81 9B 00 00 */	lwz r12, 0(r27)
/* 801E0728  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E072C  7D 89 03 A6 */	mtctr r12
/* 801E0730  4E 80 04 21 */	bctrl 
/* 801E0734  80 7A 02 F4 */	lwz r3, 0x2f4(r26)
/* 801E0738  80 63 00 04 */	lwz r3, 4(r3)
/* 801E073C  38 80 02 00 */	li r4, 0x200
/* 801E0740  3C A0 80 39 */	lis r5, d_menu_d_menu_letter__stringBase0@ha
/* 801E0744  38 A5 6D C0 */	addi r5, r5, d_menu_d_menu_letter__stringBase0@l
/* 801E0748  38 A5 00 3B */	addi r5, r5, 0x3b
/* 801E074C  4C C6 31 82 */	crclr 6
/* 801E0750  48 11 FF FD */	bl setString__10J2DTextBoxFsPCce
lbl_801E0754:
/* 801E0754  3B DE 00 01 */	addi r30, r30, 1
/* 801E0758  2C 1E 00 02 */	cmpwi r30, 2
/* 801E075C  3B BD 00 04 */	addi r29, r29, 4
/* 801E0760  41 80 FF 68 */	blt lbl_801E06C8
/* 801E0764  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0768  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787473@ha */
/* 801E076C  38 C4 74 73 */	addi r6, r4, 0x7473 /* 0x65787473@l */
/* 801E0770  3C 80 00 70 */	lis r4, 0x0070 /* 0x00705F74@ha */
/* 801E0774  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00705F74@l */
/* 801E0778  81 83 00 00 */	lwz r12, 0(r3)
/* 801E077C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0780  7D 89 03 A6 */	mtctr r12
/* 801E0784  4E 80 04 21 */	bctrl 
/* 801E0788  90 7F 01 E4 */	stw r3, 0x1e4(r31)
/* 801E078C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E0790  3C 80 74 65 */	lis r4, 0x7465 /* 0x74657874@ha */
/* 801E0794  38 C4 78 74 */	addi r6, r4, 0x7874 /* 0x74657874@l */
/* 801E0798  38 A0 70 5F */	li r5, 0x705f
/* 801E079C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E07A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E07A4  7D 89 03 A6 */	mtctr r12
/* 801E07A8  4E 80 04 21 */	bctrl 
/* 801E07AC  90 7F 01 E8 */	stw r3, 0x1e8(r31)
/* 801E07B0  3B 60 00 00 */	li r27, 0
/* 801E07B4  3B C0 00 00 */	li r30, 0
/* 801E07B8  3C 60 80 39 */	lis r3, d_menu_d_menu_letter__stringBase0@ha
/* 801E07BC  3B A3 6D C0 */	addi r29, r3, d_menu_d_menu_letter__stringBase0@l
lbl_801E07C0:
/* 801E07C0  4B E3 43 E1 */	bl mDoExt_getSubFont__Fv
/* 801E07C4  7C 64 1B 78 */	mr r4, r3
/* 801E07C8  3B 5E 01 E4 */	addi r26, r30, 0x1e4
/* 801E07CC  7C 7F D0 2E */	lwzx r3, r31, r26
/* 801E07D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E07D4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E07D8  7D 89 03 A6 */	mtctr r12
/* 801E07DC  4E 80 04 21 */	bctrl 
/* 801E07E0  7C 7F D0 2E */	lwzx r3, r31, r26
/* 801E07E4  38 80 00 10 */	li r4, 0x10
/* 801E07E8  38 BD 00 3B */	addi r5, r29, 0x3b
/* 801E07EC  4C C6 31 82 */	crclr 6
/* 801E07F0  48 11 FF 5D */	bl setString__10J2DTextBoxFsPCce
/* 801E07F4  3B 7B 00 01 */	addi r27, r27, 1
/* 801E07F8  2C 1B 00 02 */	cmpwi r27, 2
/* 801E07FC  3B DE 00 04 */	addi r30, r30, 4
/* 801E0800  41 80 FF C0 */	blt lbl_801E07C0
/* 801E0804  38 60 01 18 */	li r3, 0x118
/* 801E0808  48 0E E4 45 */	bl __nw__FUl
/* 801E080C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E0810  41 82 00 0C */	beq lbl_801E081C
/* 801E0814  48 11 7C 85 */	bl __ct__9J2DScreenFv
/* 801E0818  7C 60 1B 78 */	mr r0, r3
lbl_801E081C:
/* 801E081C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 801E0820  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801E0824  3C 80 80 39 */	lis r4, d_menu_d_menu_letter__stringBase0@ha
/* 801E0828  38 84 6D C0 */	addi r4, r4, d_menu_d_menu_letter__stringBase0@l
/* 801E082C  38 84 00 95 */	addi r4, r4, 0x95
/* 801E0830  3C A0 00 02 */	lis r5, 2
/* 801E0834  80 DF 00 08 */	lwz r6, 8(r31)
/* 801E0838  48 11 7E 11 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E083C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801E0840  48 07 48 A9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E0844  3B 60 00 00 */	li r27, 0
/* 801E0848  3B C0 00 00 */	li r30, 0
/* 801E084C  C3 E2 A8 E0 */	lfs f31, lit_3827(r2)
lbl_801E0850:
/* 801E0850  38 60 00 6C */	li r3, 0x6c
/* 801E0854  48 0E E3 F9 */	bl __nw__FUl
/* 801E0858  7C 60 1B 79 */	or. r0, r3, r3
/* 801E085C  41 82 00 28 */	beq lbl_801E0884
/* 801E0860  38 1E 00 28 */	addi r0, r30, 0x28
/* 801E0864  7C 9F 00 2E */	lwzx r4, r31, r0
/* 801E0868  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801E086C  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801E0870  38 A0 00 6E */	li r5, 0x6e
/* 801E0874  38 E0 00 02 */	li r7, 2
/* 801E0878  39 00 00 00 */	li r8, 0
/* 801E087C  48 07 31 09 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E0880  7C 60 1B 78 */	mr r0, r3
lbl_801E0884:
/* 801E0884  3B 5E 02 E0 */	addi r26, r30, 0x2e0
/* 801E0888  7C 1F D1 2E */	stwx r0, r31, r26
/* 801E088C  7C 7F D0 2E */	lwzx r3, r31, r26
/* 801E0890  80 63 00 04 */	lwz r3, 4(r3)
/* 801E0894  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801E0898  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801E089C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E08A0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E08A4  7D 89 03 A6 */	mtctr r12
/* 801E08A8  4E 80 04 21 */	bctrl 
/* 801E08AC  7C 7F D0 2E */	lwzx r3, r31, r26
/* 801E08B0  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801E08B4  48 07 4F 1D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801E08B8  3B 7B 00 01 */	addi r27, r27, 1
/* 801E08BC  2C 1B 00 02 */	cmpwi r27, 2
/* 801E08C0  3B DE 00 04 */	addi r30, r30, 4
/* 801E08C4  41 80 FF 8C */	blt lbl_801E0850
/* 801E08C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801E08CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801E08D0  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 801E08D4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801E08D8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801E08DC  3C A0 80 39 */	lis r5, d_menu_d_menu_letter__stringBase0@ha
/* 801E08E0  38 A5 6D C0 */	addi r5, r5, d_menu_d_menu_letter__stringBase0@l
/* 801E08E4  38 A5 00 B2 */	addi r5, r5, 0xb2
/* 801E08E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E08EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801E08F0  7D 89 03 A6 */	mtctr r12
/* 801E08F4  4E 80 04 21 */	bctrl 
/* 801E08F8  7C 7A 1B 78 */	mr r26, r3
/* 801E08FC  38 60 01 50 */	li r3, 0x150
/* 801E0900  48 0E E3 4D */	bl __nw__FUl
/* 801E0904  7C 60 1B 79 */	or. r0, r3, r3
/* 801E0908  41 82 00 10 */	beq lbl_801E0918
/* 801E090C  7F 44 D3 78 */	mr r4, r26
/* 801E0910  48 11 BD F9 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801E0914  7C 60 1B 78 */	mr r0, r3
lbl_801E0918:
/* 801E0918  90 1F 02 B4 */	stw r0, 0x2b4(r31)
/* 801E091C  38 60 00 00 */	li r3, 0
/* 801E0920  98 61 00 08 */	stb r3, 8(r1)
/* 801E0924  98 61 00 09 */	stb r3, 9(r1)
/* 801E0928  98 61 00 0A */	stb r3, 0xa(r1)
/* 801E092C  38 00 00 FF */	li r0, 0xff
/* 801E0930  98 01 00 0B */	stb r0, 0xb(r1)
/* 801E0934  80 01 00 08 */	lwz r0, 8(r1)
/* 801E0938  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E093C  98 61 00 10 */	stb r3, 0x10(r1)
/* 801E0940  98 61 00 11 */	stb r3, 0x11(r1)
/* 801E0944  98 61 00 12 */	stb r3, 0x12(r1)
/* 801E0948  98 61 00 13 */	stb r3, 0x13(r1)
/* 801E094C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801E0950  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E0954  80 7F 02 B4 */	lwz r3, 0x2b4(r31)
/* 801E0958  38 81 00 14 */	addi r4, r1, 0x14
/* 801E095C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801E0960  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0964  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801E0968  7D 89 03 A6 */	mtctr r12
/* 801E096C  4E 80 04 21 */	bctrl 
/* 801E0970  80 7F 02 B4 */	lwz r3, 0x2b4(r31)
/* 801E0974  38 80 00 00 */	li r4, 0
/* 801E0978  81 83 00 00 */	lwz r12, 0(r3)
/* 801E097C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E0980  7D 89 03 A6 */	mtctr r12
/* 801E0984  4E 80 04 21 */	bctrl 
/* 801E0988  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801E098C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801E0990  39 61 00 30 */	addi r11, r1, 0x30
/* 801E0994  48 18 18 89 */	bl _restgpr_26
/* 801E0998  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801E099C  7C 08 03 A6 */	mtlr r0
/* 801E09A0  38 21 00 40 */	addi r1, r1, 0x40
/* 801E09A4  4E 80 00 20 */	blr 
