lbl_8065764C:
/* 8065764C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80657650  7C 08 02 A6 */	mflr r0
/* 80657654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80657658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065765C  7C 7F 1B 78 */	mr r31, r3
/* 80657660  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80657664  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80657668  40 82 00 50 */	bne lbl_806576B8
/* 8065766C  28 1F 00 00 */	cmplwi r31, 0
/* 80657670  41 82 00 3C */	beq lbl_806576AC
/* 80657674  4B 9C 14 F1 */	bl __ct__10fopAc_ac_cFv
/* 80657678  3C 60 80 65 */	lis r3, __vt__11daCoach2D_c@ha /* 0x80657A54@ha */
/* 8065767C  38 03 7A 54 */	addi r0, r3, __vt__11daCoach2D_c@l /* 0x80657A54@l */
/* 80657680  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80657684  3C 60 80 65 */	lis r3, __vt__12dDlst_base_c@ha /* 0x80657A48@ha */
/* 80657688  38 03 7A 48 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x80657A48@l */
/* 8065768C  90 1F 07 70 */	stw r0, 0x770(r31)
/* 80657690  3C 60 80 65 */	lis r3, __vt__Q211daCoach2D_c6c_list@ha /* 0x80657A60@ha */
/* 80657694  38 03 7A 60 */	addi r0, r3, __vt__Q211daCoach2D_c6c_list@l /* 0x80657A60@l */
/* 80657698  90 1F 07 70 */	stw r0, 0x770(r31)
/* 8065769C  38 00 00 00 */	li r0, 0
/* 806576A0  90 1F 07 74 */	stw r0, 0x774(r31)
/* 806576A4  7F E3 FB 78 */	mr r3, r31
/* 806576A8  4B FF FB 85 */	bl initiate__11daCoach2D_cFv
lbl_806576AC:
/* 806576AC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806576B0  60 00 00 08 */	ori r0, r0, 8
/* 806576B4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806576B8:
/* 806576B8  7F E3 FB 78 */	mr r3, r31
/* 806576BC  4B FF F6 5D */	bl create__11daCoach2D_cFv
/* 806576C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806576C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806576C8  7C 08 03 A6 */	mtlr r0
/* 806576CC  38 21 00 10 */	addi r1, r1, 0x10
/* 806576D0  4E 80 00 20 */	blr 
