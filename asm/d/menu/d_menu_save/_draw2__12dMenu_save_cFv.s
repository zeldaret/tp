lbl_801F69FC:
/* 801F69FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F6A00  7C 08 02 A6 */	mflr r0
/* 801F6A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F6A08  39 61 00 20 */	addi r11, r1, 0x20
/* 801F6A0C  48 16 B7 C5 */	bl _savegpr_26
/* 801F6A10  7C 7A 1B 78 */	mr r26, r3
/* 801F6A14  88 03 21 A1 */	lbz r0, 0x21a1(r3)
/* 801F6A18  28 00 00 00 */	cmplwi r0, 0
/* 801F6A1C  40 82 00 A8 */	bne lbl_801F6AC4
/* 801F6A20  80 1A 21 8C */	lwz r0, 0x218c(r26)
/* 801F6A24  28 00 00 00 */	cmplwi r0, 0
/* 801F6A28  41 82 00 20 */	beq lbl_801F6A48
/* 801F6A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801F6A30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801F6A34  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801F6A38  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801F6A3C  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801F6A40  38 DA 00 10 */	addi r6, r26, 0x10
/* 801F6A44  4B E5 FD 51 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801F6A48:
/* 801F6A48  88 1A 01 B0 */	lbz r0, 0x1b0(r26)
/* 801F6A4C  28 00 00 00 */	cmplwi r0, 0
/* 801F6A50  41 82 00 64 */	beq lbl_801F6AB4
/* 801F6A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801F6A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801F6A5C  3B C3 5F 64 */	addi r30, r3, 0x5f64
/* 801F6A60  7F C3 F3 78 */	mr r3, r30
/* 801F6A64  3B 9E 01 B4 */	addi r28, r30, 0x1b4
/* 801F6A68  7F 84 E3 78 */	mr r4, r28
/* 801F6A6C  3B BE 01 B8 */	addi r29, r30, 0x1b8
/* 801F6A70  7F A5 EB 78 */	mr r5, r29
/* 801F6A74  38 DA 00 18 */	addi r6, r26, 0x18
/* 801F6A78  4B E5 FD 1D */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801F6A7C  3B 60 00 00 */	li r27, 0
/* 801F6A80  3B E0 00 00 */	li r31, 0
lbl_801F6A84:
/* 801F6A84  38 1F 00 34 */	addi r0, r31, 0x34
/* 801F6A88  7C 7A 00 2E */	lwzx r3, r26, r0
/* 801F6A8C  4B F9 C2 D5 */	bl _draw__12dFile_info_cFv
/* 801F6A90  3B 7B 00 01 */	addi r27, r27, 1
/* 801F6A94  2C 1B 00 03 */	cmpwi r27, 3
/* 801F6A98  3B FF 00 04 */	addi r31, r31, 4
/* 801F6A9C  41 80 FF E8 */	blt lbl_801F6A84
/* 801F6AA0  7F C3 F3 78 */	mr r3, r30
/* 801F6AA4  7F 84 E3 78 */	mr r4, r28
/* 801F6AA8  7F A5 EB 78 */	mr r5, r29
/* 801F6AAC  80 DA 00 2C */	lwz r6, 0x2c(r26)
/* 801F6AB0  4B E5 FC E5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_801F6AB4:
/* 801F6AB4  80 7A 00 30 */	lwz r3, 0x30(r26)
/* 801F6AB8  28 03 00 00 */	cmplwi r3, 0
/* 801F6ABC  41 82 00 08 */	beq lbl_801F6AC4
/* 801F6AC0  4B F9 B6 D1 */	bl _draw__15dFile_warning_cFv
lbl_801F6AC4:
/* 801F6AC4  39 61 00 20 */	addi r11, r1, 0x20
/* 801F6AC8  48 16 B7 55 */	bl _restgpr_26
/* 801F6ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F6AD0  7C 08 03 A6 */	mtlr r0
/* 801F6AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6AD8  4E 80 00 20 */	blr 
