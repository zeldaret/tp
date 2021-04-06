lbl_8019B7C4:
/* 8019B7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019B7C8  7C 08 02 A6 */	mflr r0
/* 8019B7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019B7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019B7D4  7C 7F 1B 78 */	mr r31, r3
/* 8019B7D8  80 C3 01 04 */	lwz r6, 0x104(r3)
/* 8019B7DC  28 06 00 00 */	cmplwi r6, 0
/* 8019B7E0  41 82 00 28 */	beq lbl_8019B808
/* 8019B7E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8019B7E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8019B7EC  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 8019B7F0  28 00 00 00 */	cmplwi r0, 0
/* 8019B7F4  41 82 00 14 */	beq lbl_8019B808
/* 8019B7F8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8019B7FC  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8019B800  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 8019B804  4B EB AF 91 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8019B808:
/* 8019B808  88 1F 01 19 */	lbz r0, 0x119(r31)
/* 8019B80C  28 00 00 00 */	cmplwi r0, 0
/* 8019B810  41 82 00 3C */	beq lbl_8019B84C
/* 8019B814  88 1F 01 18 */	lbz r0, 0x118(r31)
/* 8019B818  28 00 00 02 */	cmplwi r0, 2
/* 8019B81C  41 80 00 30 */	blt lbl_8019B84C
/* 8019B820  80 DF 01 00 */	lwz r6, 0x100(r31)
/* 8019B824  28 06 00 00 */	cmplwi r6, 0
/* 8019B828  41 82 00 1C */	beq lbl_8019B844
/* 8019B82C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8019B830  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8019B834  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8019B838  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8019B83C  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 8019B840  4B EB AF 55 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8019B844:
/* 8019B844  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8019B848  48 05 B1 B5 */	bl _draw2__12dMenu_save_cFv
lbl_8019B84C:
/* 8019B84C  38 60 00 01 */	li r3, 1
/* 8019B850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019B854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019B858  7C 08 03 A6 */	mtlr r0
/* 8019B85C  38 21 00 10 */	addi r1, r1, 0x10
/* 8019B860  4E 80 00 20 */	blr 
