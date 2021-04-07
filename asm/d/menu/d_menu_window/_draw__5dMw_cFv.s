lbl_801FD450:
/* 801FD450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FD454  7C 08 02 A6 */	mflr r0
/* 801FD458  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FD45C  39 61 00 20 */	addi r11, r1, 0x20
/* 801FD460  48 16 4D 79 */	bl _savegpr_28
/* 801FD464  7C 7F 1B 78 */	mr r31, r3
/* 801FD468  80 C3 01 0C */	lwz r6, 0x10c(r3)
/* 801FD46C  28 06 00 00 */	cmplwi r6, 0
/* 801FD470  41 82 00 5C */	beq lbl_801FD4CC
/* 801FD474  88 06 00 04 */	lbz r0, 4(r6)
/* 801FD478  28 00 00 00 */	cmplwi r0, 0
/* 801FD47C  41 82 00 50 */	beq lbl_801FD4CC
/* 801FD480  88 06 00 05 */	lbz r0, 5(r6)
/* 801FD484  28 00 00 00 */	cmplwi r0, 0
/* 801FD488  41 82 00 44 */	beq lbl_801FD4CC
/* 801FD48C  88 06 00 06 */	lbz r0, 6(r6)
/* 801FD490  28 00 00 00 */	cmplwi r0, 0
/* 801FD494  41 82 00 20 */	beq lbl_801FD4B4
/* 801FD498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD49C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD4A0  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801FD4A4  38 83 00 AC */	addi r4, r3, 0xac
/* 801FD4A8  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 801FD4AC  4B E5 92 E9 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801FD4B0  48 00 00 1C */	b lbl_801FD4CC
lbl_801FD4B4:
/* 801FD4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD4B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD4BC  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801FD4C0  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801FD4C4  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801FD4C8  4B E5 92 CD */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801FD4CC:
/* 801FD4CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD4D0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD4D4  88 04 5E B5 */	lbz r0, 0x5eb5(r4)
/* 801FD4D8  28 00 00 01 */	cmplwi r0, 1
/* 801FD4DC  40 82 01 84 */	bne lbl_801FD660
/* 801FD4E0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FD4E4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FD4E8  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FD4EC  28 00 00 03 */	cmplwi r0, 3
/* 801FD4F0  40 82 00 18 */	bne lbl_801FD508
/* 801FD4F4  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 801FD4F8  28 03 00 00 */	cmplwi r3, 0
/* 801FD4FC  41 82 01 64 */	beq lbl_801FD660
/* 801FD500  4B FB A5 C1 */	bl draw__15dMenu_Collect_cFv
/* 801FD504  48 00 01 5C */	b lbl_801FD660
lbl_801FD508:
/* 801FD508  28 00 00 04 */	cmplwi r0, 4
/* 801FD50C  40 82 00 18 */	bne lbl_801FD524
/* 801FD510  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FD514  28 03 00 00 */	cmplwi r3, 0
/* 801FD518  41 82 01 48 */	beq lbl_801FD660
/* 801FD51C  4B FC A1 35 */	bl _draw__12dMenu_Fmap_cFv
/* 801FD520  48 00 01 40 */	b lbl_801FD660
lbl_801FD524:
/* 801FD524  28 00 00 05 */	cmplwi r0, 5
/* 801FD528  40 82 00 18 */	bne lbl_801FD540
/* 801FD52C  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 801FD530  28 03 00 00 */	cmplwi r3, 0
/* 801FD534  41 82 01 2C */	beq lbl_801FD660
/* 801FD538  4B FC 12 A9 */	bl _draw__12dMenu_Dmap_cFv
/* 801FD53C  48 00 01 24 */	b lbl_801FD660
lbl_801FD540:
/* 801FD540  28 00 00 0A */	cmplwi r0, 0xa
/* 801FD544  40 82 00 CC */	bne lbl_801FD610
/* 801FD548  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 801FD54C  28 03 00 00 */	cmplwi r3, 0
/* 801FD550  41 82 00 08 */	beq lbl_801FD558
/* 801FD554  4B FF 94 A9 */	bl _draw2__12dMenu_save_cFv
lbl_801FD558:
/* 801FD558  80 DF 01 24 */	lwz r6, 0x124(r31)
/* 801FD55C  28 06 00 00 */	cmplwi r6, 0
/* 801FD560  41 82 00 1C */	beq lbl_801FD57C
/* 801FD564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD56C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801FD570  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801FD574  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801FD578  4B E5 92 1D */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801FD57C:
/* 801FD57C  80 DF 01 28 */	lwz r6, 0x128(r31)
/* 801FD580  28 06 00 00 */	cmplwi r6, 0
/* 801FD584  41 82 00 1C */	beq lbl_801FD5A0
/* 801FD588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD590  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801FD594  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801FD598  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801FD59C  4B E5 91 F9 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801FD5A0:
/* 801FD5A0  80 DF 01 2C */	lwz r6, 0x12c(r31)
/* 801FD5A4  28 06 00 00 */	cmplwi r6, 0
/* 801FD5A8  41 82 00 1C */	beq lbl_801FD5C4
/* 801FD5AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD5B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD5B4  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801FD5B8  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801FD5BC  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801FD5C0  4B E5 91 D5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801FD5C4:
/* 801FD5C4  80 DF 01 30 */	lwz r6, 0x130(r31)
/* 801FD5C8  28 06 00 00 */	cmplwi r6, 0
/* 801FD5CC  41 82 00 1C */	beq lbl_801FD5E8
/* 801FD5D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD5D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD5D8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801FD5DC  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801FD5E0  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801FD5E4  4B E5 91 B1 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801FD5E8:
/* 801FD5E8  80 DF 01 34 */	lwz r6, 0x134(r31)
/* 801FD5EC  28 06 00 00 */	cmplwi r6, 0
/* 801FD5F0  41 82 00 70 */	beq lbl_801FD660
/* 801FD5F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FD5F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FD5FC  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801FD600  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801FD604  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801FD608  4B E5 91 8D */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801FD60C  48 00 00 54 */	b lbl_801FD660
lbl_801FD610:
/* 801FD610  28 00 00 02 */	cmplwi r0, 2
/* 801FD614  40 82 00 4C */	bne lbl_801FD660
/* 801FD618  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 801FD61C  28 03 00 00 */	cmplwi r3, 0
/* 801FD620  41 82 00 40 */	beq lbl_801FD660
/* 801FD624  38 00 00 00 */	li r0, 0
/* 801FD628  98 03 06 BD */	stb r0, 0x6bd(r3)
/* 801FD62C  3B C4 5F 64 */	addi r30, r4, 0x5f64
/* 801FD630  7F C3 F3 78 */	mr r3, r30
/* 801FD634  3B 9E 01 B4 */	addi r28, r30, 0x1b4
/* 801FD638  7F 84 E3 78 */	mr r4, r28
/* 801FD63C  3B BE 01 B8 */	addi r29, r30, 0x1b8
/* 801FD640  7F A5 EB 78 */	mr r5, r29
/* 801FD644  80 DF 01 10 */	lwz r6, 0x110(r31)
/* 801FD648  4B E5 91 4D */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801FD64C  7F C3 F3 78 */	mr r3, r30
/* 801FD650  7F 84 E3 78 */	mr r4, r28
/* 801FD654  7F A5 EB 78 */	mr r5, r29
/* 801FD658  80 DF 01 10 */	lwz r6, 0x110(r31)
/* 801FD65C  4B E5 91 39 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801FD660:
/* 801FD660  38 60 00 01 */	li r3, 1
/* 801FD664  39 61 00 20 */	addi r11, r1, 0x20
/* 801FD668  48 16 4B BD */	bl _restgpr_28
/* 801FD66C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FD670  7C 08 03 A6 */	mtlr r0
/* 801FD674  38 21 00 20 */	addi r1, r1, 0x20
/* 801FD678  4E 80 00 20 */	blr 
