lbl_8018DD38:
/* 8018DD38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018DD3C  7C 08 02 A6 */	mflr r0
/* 8018DD40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018DD44  39 61 00 20 */	addi r11, r1, 0x20
/* 8018DD48  48 1D 44 89 */	bl _savegpr_26
/* 8018DD4C  7C 7A 1B 78 */	mr r26, r3
/* 8018DD50  88 03 23 75 */	lbz r0, 0x2375(r3)
/* 8018DD54  28 00 00 00 */	cmplwi r0, 0
/* 8018DD58  40 82 01 4C */	bne lbl_8018DEA4
/* 8018DD5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8018DD60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8018DD64  3B C3 5F 64 */	addi r30, r3, 0x5f64
/* 8018DD68  7F C3 F3 78 */	mr r3, r30
/* 8018DD6C  3B 9E 01 B4 */	addi r28, r30, 0x1b4
/* 8018DD70  7F 84 E3 78 */	mr r4, r28
/* 8018DD74  3B BE 01 B8 */	addi r29, r30, 0x1b8
/* 8018DD78  7F A5 EB 78 */	mr r5, r29
/* 8018DD7C  38 DA 00 10 */	addi r6, r26, 0x10
/* 8018DD80  4B EC 8A 15 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8018DD84  3B 60 00 00 */	li r27, 0
/* 8018DD88  3B E0 00 00 */	li r31, 0
lbl_8018DD8C:
/* 8018DD8C  38 1F 00 70 */	addi r0, r31, 0x70
/* 8018DD90  7C 7A 00 2E */	lwzx r3, r26, r0
/* 8018DD94  48 00 4F CD */	bl _draw__12dFile_info_cFv
/* 8018DD98  3B 7B 00 01 */	addi r27, r27, 1
/* 8018DD9C  2C 1B 00 03 */	cmpwi r27, 3
/* 8018DDA0  3B FF 00 04 */	addi r31, r31, 4
/* 8018DDA4  41 80 FF E8 */	blt lbl_8018DD8C
/* 8018DDA8  7F C3 F3 78 */	mr r3, r30
/* 8018DDAC  7F 84 E3 78 */	mr r4, r28
/* 8018DDB0  7F A5 EB 78 */	mr r5, r29
/* 8018DDB4  38 DA 00 24 */	addi r6, r26, 0x24
/* 8018DDB8  4B EC 89 DD */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8018DDBC  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8018DDC0  48 00 27 E9 */	bl draw__16dFile_select3D_cFv
/* 8018DDC4  88 1A 00 3C */	lbz r0, 0x3c(r26)
/* 8018DDC8  28 00 00 00 */	cmplwi r0, 0
/* 8018DDCC  41 82 00 3C */	beq lbl_8018DE08
/* 8018DDD0  7F C3 F3 78 */	mr r3, r30
/* 8018DDD4  7F 84 E3 78 */	mr r4, r28
/* 8018DDD8  7F A5 EB 78 */	mr r5, r29
/* 8018DDDC  38 DA 00 34 */	addi r6, r26, 0x34
/* 8018DDE0  4B EC 89 B5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8018DDE4  3B 60 00 00 */	li r27, 0
/* 8018DDE8  3B E0 00 00 */	li r31, 0
lbl_8018DDEC:
/* 8018DDEC  38 1F 00 7C */	addi r0, r31, 0x7c
/* 8018DDF0  7C 7A 00 2E */	lwzx r3, r26, r0
/* 8018DDF4  48 00 4F 6D */	bl _draw__12dFile_info_cFv
/* 8018DDF8  3B 7B 00 01 */	addi r27, r27, 1
/* 8018DDFC  2C 1B 00 02 */	cmpwi r27, 2
/* 8018DE00  3B FF 00 04 */	addi r31, r31, 4
/* 8018DE04  41 80 FF E8 */	blt lbl_8018DDEC
lbl_8018DE08:
/* 8018DE08  88 1A 01 28 */	lbz r0, 0x128(r26)
/* 8018DE0C  28 00 00 00 */	cmplwi r0, 0
/* 8018DE10  41 82 00 0C */	beq lbl_8018DE1C
/* 8018DE14  80 7A 00 68 */	lwz r3, 0x68(r26)
/* 8018DE18  48 0C 27 49 */	bl _draw__7dName_cFv
lbl_8018DE1C:
/* 8018DE1C  7F C3 F3 78 */	mr r3, r30
/* 8018DE20  7F 84 E3 78 */	mr r4, r28
/* 8018DE24  7F A5 EB 78 */	mr r5, r29
/* 8018DE28  38 DA 00 54 */	addi r6, r26, 0x54
/* 8018DE2C  4B EC 89 69 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8018DE30  7F C3 F3 78 */	mr r3, r30
/* 8018DE34  7F 84 E3 78 */	mr r4, r28
/* 8018DE38  7F A5 EB 78 */	mr r5, r29
/* 8018DE3C  38 DA 00 48 */	addi r6, r26, 0x48
/* 8018DE40  4B EC 89 55 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8018DE44  80 7A 00 6C */	lwz r3, 0x6c(r26)
/* 8018DE48  48 00 43 49 */	bl _draw__15dFile_warning_cFv
/* 8018DE4C  7F C3 F3 78 */	mr r3, r30
/* 8018DE50  7F 84 E3 78 */	mr r4, r28
/* 8018DE54  7F A5 EB 78 */	mr r5, r29
/* 8018DE58  80 DA 00 60 */	lwz r6, 0x60(r26)
/* 8018DE5C  4B EC 89 39 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8018DE60  7F C3 F3 78 */	mr r3, r30
/* 8018DE64  7F 84 E3 78 */	mr r4, r28
/* 8018DE68  7F A5 EB 78 */	mr r5, r29
/* 8018DE6C  80 DA 00 64 */	lwz r6, 0x64(r26)
/* 8018DE70  4B EC 89 25 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8018DE74  80 7A 23 78 */	lwz r3, 0x2378(r26)
/* 8018DE78  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018DE7C  FC 40 08 90 */	fmr f2, f1
/* 8018DE80  C0 62 9F A4 */	lfs f3, lit_6879(r2)
/* 8018DE84  C0 82 9F A8 */	lfs f4, lit_6880(r2)
/* 8018DE88  38 80 00 00 */	li r4, 0
/* 8018DE8C  38 A0 00 00 */	li r5, 0
/* 8018DE90  38 C0 00 00 */	li r6, 0
/* 8018DE94  81 83 00 00 */	lwz r12, 0(r3)
/* 8018DE98  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8018DE9C  7D 89 03 A6 */	mtctr r12
/* 8018DEA0  4E 80 04 21 */	bctrl 
lbl_8018DEA4:
/* 8018DEA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8018DEA8  48 1D 43 75 */	bl _restgpr_26
/* 8018DEAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018DEB0  7C 08 03 A6 */	mtlr r0
/* 8018DEB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8018DEB8  4E 80 00 20 */	blr 
