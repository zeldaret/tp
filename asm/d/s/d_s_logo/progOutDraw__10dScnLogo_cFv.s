lbl_802568E0:
/* 802568E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802568E4  7C 08 02 A6 */	mflr r0
/* 802568E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802568EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802568F0  48 10 B8 E9 */	bl _savegpr_28
/* 802568F4  7C 7F 1B 78 */	mr r31, r3
/* 802568F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802568FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80256900  3B C3 5F 64 */	addi r30, r3, 0x5f64
/* 80256904  7F C3 F3 78 */	mr r3, r30
/* 80256908  3B 9E 01 B4 */	addi r28, r30, 0x1b4
/* 8025690C  7F 84 E3 78 */	mr r4, r28
/* 80256910  3B BE 01 B8 */	addi r29, r30, 0x1b8
/* 80256914  7F A5 EB 78 */	mr r5, r29
/* 80256918  80 DF 01 EC */	lwz r6, 0x1ec(r31)
/* 8025691C  4B DF FE 79 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256920  7F C3 F3 78 */	mr r3, r30
/* 80256924  7F 84 E3 78 */	mr r4, r28
/* 80256928  7F A5 EB 78 */	mr r5, r29
/* 8025692C  80 DF 01 F0 */	lwz r6, 0x1f0(r31)
/* 80256930  4B DF FE 65 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256934  7F C3 F3 78 */	mr r3, r30
/* 80256938  7F 84 E3 78 */	mr r4, r28
/* 8025693C  7F A5 EB 78 */	mr r5, r29
/* 80256940  80 DF 01 F4 */	lwz r6, 0x1f4(r31)
/* 80256944  4B DF FE 51 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256948  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 8025694C  28 00 00 00 */	cmplwi r0, 0
/* 80256950  40 82 00 D4 */	bne lbl_80256A24
/* 80256954  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 80256958  28 03 00 00 */	cmplwi r3, 0
/* 8025695C  41 82 00 24 */	beq lbl_80256980
/* 80256960  88 1F 02 09 */	lbz r0, 0x209(r31)
/* 80256964  28 00 00 00 */	cmplwi r0, 0
/* 80256968  40 82 00 18 */	bne lbl_80256980
/* 8025696C  38 00 00 0D */	li r0, 0xd
/* 80256970  98 1F 02 08 */	stb r0, 0x208(r31)
/* 80256974  38 00 00 96 */	li r0, 0x96
/* 80256978  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 8025697C  48 00 00 A8 */	b lbl_80256A24
lbl_80256980:
/* 80256980  28 03 00 00 */	cmplwi r3, 0
/* 80256984  40 82 00 6C */	bne lbl_802569F0
/* 80256988  88 1F 02 09 */	lbz r0, 0x209(r31)
/* 8025698C  28 00 00 00 */	cmplwi r0, 0
/* 80256990  41 82 00 60 */	beq lbl_802569F0
/* 80256994  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80256998  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8025699C  28 00 00 00 */	cmplwi r0, 0
/* 802569A0  41 82 00 18 */	beq lbl_802569B8
/* 802569A4  38 00 00 5A */	li r0, 0x5a
/* 802569A8  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 802569AC  38 00 00 03 */	li r0, 3
/* 802569B0  98 1F 02 08 */	stb r0, 0x208(r31)
/* 802569B4  48 00 00 14 */	b lbl_802569C8
lbl_802569B8:
/* 802569B8  38 00 00 78 */	li r0, 0x78
/* 802569BC  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 802569C0  38 00 00 00 */	li r0, 0
/* 802569C4  98 1F 02 08 */	stb r0, 0x208(r31)
lbl_802569C8:
/* 802569C8  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 802569CC  80 63 00 04 */	lwz r3, 4(r3)
/* 802569D0  28 03 00 00 */	cmplwi r3, 0
/* 802569D4  41 82 00 50 */	beq lbl_80256A24
/* 802569D8  38 80 00 1E */	li r4, 0x1e
/* 802569DC  81 83 00 00 */	lwz r12, 0(r3)
/* 802569E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802569E4  7D 89 03 A6 */	mtctr r12
/* 802569E8  4E 80 04 21 */	bctrl 
/* 802569EC  48 00 00 38 */	b lbl_80256A24
lbl_802569F0:
/* 802569F0  38 00 00 0B */	li r0, 0xb
/* 802569F4  98 1F 02 08 */	stb r0, 0x208(r31)
/* 802569F8  38 00 00 96 */	li r0, 0x96
/* 802569FC  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256A00  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80256A04  80 63 00 04 */	lwz r3, 4(r3)
/* 80256A08  28 03 00 00 */	cmplwi r3, 0
/* 80256A0C  41 82 00 18 */	beq lbl_80256A24
/* 80256A10  38 80 00 1E */	li r4, 0x1e
/* 80256A14  81 83 00 00 */	lwz r12, 0(r3)
/* 80256A18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80256A1C  7D 89 03 A6 */	mtctr r12
/* 80256A20  4E 80 04 21 */	bctrl 
lbl_80256A24:
/* 80256A24  39 61 00 20 */	addi r11, r1, 0x20
/* 80256A28  48 10 B7 FD */	bl _restgpr_28
/* 80256A2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80256A30  7C 08 03 A6 */	mtlr r0
/* 80256A34  38 21 00 20 */	addi r1, r1, 0x20
/* 80256A38  4E 80 00 20 */	blr 
