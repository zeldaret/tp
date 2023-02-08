lbl_801D9644:
/* 801D9644  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9648  7C 08 02 A6 */	mflr r0
/* 801D964C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9650  39 61 00 20 */	addi r11, r1, 0x20
/* 801D9654  48 18 8B 81 */	bl _savegpr_27
/* 801D9658  7C 7D 1B 78 */	mr r29, r3
/* 801D965C  38 60 01 18 */	li r3, 0x118
/* 801D9660  48 0F 55 ED */	bl __nw__FUl
/* 801D9664  7C 60 1B 79 */	or. r0, r3, r3
/* 801D9668  41 82 00 0C */	beq lbl_801D9674
/* 801D966C  48 11 EE 2D */	bl __ct__9J2DScreenFv
/* 801D9670  7C 60 1B 78 */	mr r0, r3
lbl_801D9674:
/* 801D9674  90 1D 00 20 */	stw r0, 0x20(r29)
/* 801D9678  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801D967C  3C 80 80 39 */	lis r4, d_menu_d_menu_insect__stringBase0@ha /* 0x803968C0@ha */
/* 801D9680  38 84 68 C0 */	addi r4, r4, d_menu_d_menu_insect__stringBase0@l /* 0x803968C0@l */
/* 801D9684  38 84 00 33 */	addi r4, r4, 0x33
/* 801D9688  3C A0 00 02 */	lis r5, 2
/* 801D968C  80 DD 00 08 */	lwz r6, 8(r29)
/* 801D9690  48 11 EF B9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801D9694  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801D9698  48 07 BA 51 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801D969C  38 60 00 6C */	li r3, 0x6c
/* 801D96A0  48 0F 55 AD */	bl __nw__FUl
/* 801D96A4  7C 60 1B 79 */	or. r0, r3, r3
/* 801D96A8  41 82 00 24 */	beq lbl_801D96CC
/* 801D96AC  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 801D96B0  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801D96B4  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801D96B8  38 A0 00 6E */	li r5, 0x6e
/* 801D96BC  38 E0 00 02 */	li r7, 2
/* 801D96C0  39 00 00 00 */	li r8, 0
/* 801D96C4  48 07 A2 C1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D96C8  7C 60 1B 78 */	mr r0, r3
lbl_801D96CC:
/* 801D96CC  90 1D 00 64 */	stw r0, 0x64(r29)
/* 801D96D0  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 801D96D4  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D96D8  48 07 C0 F9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D96DC  3B 60 00 00 */	li r27, 0
/* 801D96E0  3B 80 00 00 */	li r28, 0
/* 801D96E4  3B C0 00 00 */	li r30, 0
/* 801D96E8  3C 60 80 39 */	lis r3, insect_tag@ha /* 0x80396690@ha */
/* 801D96EC  3B E3 66 90 */	addi r31, r3, insect_tag@l /* 0x80396690@l */
lbl_801D96F0:
/* 801D96F0  38 60 00 6C */	li r3, 0x6c
/* 801D96F4  48 0F 55 59 */	bl __nw__FUl
/* 801D96F8  7C 64 1B 79 */	or. r4, r3, r3
/* 801D96FC  41 82 00 24 */	beq lbl_801D9720
/* 801D9700  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 801D9704  7C DF F2 14 */	add r6, r31, r30
/* 801D9708  80 A6 00 00 */	lwz r5, 0(r6)
/* 801D970C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801D9710  38 E0 00 00 */	li r7, 0
/* 801D9714  39 00 00 00 */	li r8, 0
/* 801D9718  48 07 A2 6D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D971C  7C 64 1B 78 */	mr r4, r3
lbl_801D9720:
/* 801D9720  38 1C 00 6C */	addi r0, r28, 0x6c
/* 801D9724  7C 9D 01 2E */	stwx r4, r29, r0
/* 801D9728  3B 7B 00 01 */	addi r27, r27, 1
/* 801D972C  2C 1B 00 18 */	cmpwi r27, 0x18
/* 801D9730  3B 9C 00 04 */	addi r28, r28, 4
/* 801D9734  3B DE 00 08 */	addi r30, r30, 8
/* 801D9738  41 80 FF B8 */	blt lbl_801D96F0
/* 801D973C  3B E0 00 00 */	li r31, 0
lbl_801D9740:
/* 801D9740  3B C0 00 00 */	li r30, 0
/* 801D9744  3B 80 00 00 */	li r28, 0
lbl_801D9748:
/* 801D9748  7F 7F E2 14 */	add r27, r31, r28
/* 801D974C  7F A3 EB 78 */	mr r3, r29
/* 801D9750  7F E4 FB 78 */	mr r4, r31
/* 801D9754  7F C5 F3 78 */	mr r5, r30
/* 801D9758  48 00 06 8D */	bl isGetInsect__14dMenu_Insect_cFii
/* 801D975C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9760  41 82 00 18 */	beq lbl_801D9778
/* 801D9764  57 63 10 3A */	slwi r3, r27, 2
/* 801D9768  38 03 00 6C */	addi r0, r3, 0x6c
/* 801D976C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801D9770  48 07 BE 59 */	bl show__13CPaneMgrAlphaFv
/* 801D9774  48 00 00 14 */	b lbl_801D9788
lbl_801D9778:
/* 801D9778  57 63 10 3A */	slwi r3, r27, 2
/* 801D977C  38 03 00 6C */	addi r0, r3, 0x6c
/* 801D9780  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801D9784  48 07 BE 85 */	bl hide__13CPaneMgrAlphaFv
lbl_801D9788:
/* 801D9788  7F A3 EB 78 */	mr r3, r29
/* 801D978C  7F E4 FB 78 */	mr r4, r31
/* 801D9790  7F C5 F3 78 */	mr r5, r30
/* 801D9794  48 00 06 8D */	bl isGiveInsect__14dMenu_Insect_cFii
/* 801D9798  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D979C  41 82 00 3C */	beq lbl_801D97D8
/* 801D97A0  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801D97A4  57 65 18 38 */	slwi r5, r27, 3
/* 801D97A8  3C 80 80 39 */	lis r4, ageha_tag@ha /* 0x80396750@ha */
/* 801D97AC  38 04 67 50 */	addi r0, r4, ageha_tag@l /* 0x80396750@l */
/* 801D97B0  7C 80 2A 14 */	add r4, r0, r5
/* 801D97B4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D97B8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D97BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D97C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D97C4  7D 89 03 A6 */	mtctr r12
/* 801D97C8  4E 80 04 21 */	bctrl 
/* 801D97CC  38 00 00 01 */	li r0, 1
/* 801D97D0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D97D4  48 00 00 38 */	b lbl_801D980C
lbl_801D97D8:
/* 801D97D8  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801D97DC  57 65 18 38 */	slwi r5, r27, 3
/* 801D97E0  3C 80 80 39 */	lis r4, ageha_tag@ha /* 0x80396750@ha */
/* 801D97E4  38 04 67 50 */	addi r0, r4, ageha_tag@l /* 0x80396750@l */
/* 801D97E8  7C 80 2A 14 */	add r4, r0, r5
/* 801D97EC  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D97F0  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D97F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801D97F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D97FC  7D 89 03 A6 */	mtctr r12
/* 801D9800  4E 80 04 21 */	bctrl 
/* 801D9804  38 00 00 00 */	li r0, 0
/* 801D9808  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801D980C:
/* 801D980C  3B DE 00 01 */	addi r30, r30, 1
/* 801D9810  2C 1E 00 04 */	cmpwi r30, 4
/* 801D9814  3B 9C 00 06 */	addi r28, r28, 6
/* 801D9818  41 80 FF 30 */	blt lbl_801D9748
/* 801D981C  3B FF 00 01 */	addi r31, r31, 1
/* 801D9820  2C 1F 00 06 */	cmpwi r31, 6
/* 801D9824  41 80 FF 1C */	blt lbl_801D9740
/* 801D9828  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801D982C  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801D9830  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801D9834  38 A0 00 66 */	li r5, 0x66
/* 801D9838  81 83 00 00 */	lwz r12, 0(r3)
/* 801D983C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9840  7D 89 03 A6 */	mtctr r12
/* 801D9844  4E 80 04 21 */	bctrl 
/* 801D9848  7C 7B 1B 78 */	mr r27, r3
/* 801D984C  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801D9850  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801D9854  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801D9858  38 A0 00 74 */	li r5, 0x74
/* 801D985C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9860  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9864  7D 89 03 A6 */	mtctr r12
/* 801D9868  4E 80 04 21 */	bctrl 
/* 801D986C  38 00 00 00 */	li r0, 0
/* 801D9870  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D9874  4B E3 B3 2D */	bl mDoExt_getSubFont__Fv
/* 801D9878  7C 64 1B 78 */	mr r4, r3
/* 801D987C  7F 63 DB 78 */	mr r3, r27
/* 801D9880  81 9B 00 00 */	lwz r12, 0(r27)
/* 801D9884  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D9888  7D 89 03 A6 */	mtctr r12
/* 801D988C  4E 80 04 21 */	bctrl 
/* 801D9890  7F 63 DB 78 */	mr r3, r27
/* 801D9894  38 80 02 00 */	li r4, 0x200
/* 801D9898  3C A0 80 39 */	lis r5, d_menu_d_menu_insect__stringBase0@ha /* 0x803968C0@ha */
/* 801D989C  38 A5 68 C0 */	addi r5, r5, d_menu_d_menu_insect__stringBase0@l /* 0x803968C0@l */
/* 801D98A0  38 A5 00 32 */	addi r5, r5, 0x32
/* 801D98A4  4C C6 31 82 */	crclr 6
/* 801D98A8  48 12 6E A5 */	bl setString__10J2DTextBoxFsPCce
/* 801D98AC  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 801D98B0  38 80 05 BA */	li r4, 0x5ba
/* 801D98B4  7F 65 DB 78 */	mr r5, r27
/* 801D98B8  38 C0 00 00 */	li r6, 0
/* 801D98BC  38 E0 00 00 */	li r7, 0
/* 801D98C0  39 00 00 00 */	li r8, 0
/* 801D98C4  39 20 00 00 */	li r9, 0
/* 801D98C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D98CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D98D0  7D 89 03 A6 */	mtctr r12
/* 801D98D4  4E 80 04 21 */	bctrl 
/* 801D98D8  39 61 00 20 */	addi r11, r1, 0x20
/* 801D98DC  48 18 89 45 */	bl _restgpr_27
/* 801D98E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D98E4  7C 08 03 A6 */	mtlr r0
/* 801D98E8  38 21 00 20 */	addi r1, r1, 0x20
/* 801D98EC  4E 80 00 20 */	blr 
