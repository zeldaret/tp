lbl_80B4A4E0:
/* 80B4A4E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4A4E4  7C 08 02 A6 */	mflr r0
/* 80B4A4E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4A4EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4A4F0  4B 81 7C ED */	bl _savegpr_29
/* 80B4A4F4  7C 7D 1B 78 */	mr r29, r3
/* 80B4A4F8  88 03 0F 81 */	lbz r0, 0xf81(r3)
/* 80B4A4FC  7C 00 07 75 */	extsb. r0, r0
/* 80B4A500  41 82 00 0C */	beq lbl_80B4A50C
/* 80B4A504  38 60 00 00 */	li r3, 0
/* 80B4A508  48 00 00 68 */	b lbl_80B4A570
lbl_80B4A50C:
/* 80B4A50C  83 DD 09 6C */	lwz r30, 0x96c(r29)
/* 80B4A510  28 1E 00 00 */	cmplwi r30, 0
/* 80B4A514  41 82 00 30 */	beq lbl_80B4A544
/* 80B4A518  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B4A51C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B4A520  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B4A524  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B4A528  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B4A52C  7D 89 03 A6 */	mtctr r12
/* 80B4A530  4E 80 04 21 */	bctrl 
/* 80B4A534  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B4A538  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B4A53C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B4A540  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B4A544:
/* 80B4A544  7F A3 EB 78 */	mr r3, r29
/* 80B4A548  38 80 00 00 */	li r4, 0
/* 80B4A54C  38 A0 00 00 */	li r5, 0
/* 80B4A550  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B4A554  38 C0 00 00 */	li r6, 0
/* 80B4A558  3C E0 80 B5 */	lis r7, lit_4193@ha /* 0x80B4CE48@ha */
/* 80B4A55C  C0 47 CE 48 */	lfs f2, lit_4193@l(r7)  /* 0x80B4CE48@l */
/* 80B4A560  38 E0 00 01 */	li r7, 1
/* 80B4A564  39 00 00 00 */	li r8, 0
/* 80B4A568  39 20 00 00 */	li r9, 0
/* 80B4A56C  4B 5F E3 01 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
lbl_80B4A570:
/* 80B4A570  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4A574  4B 81 7C B5 */	bl _restgpr_29
/* 80B4A578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4A57C  7C 08 03 A6 */	mtlr r0
/* 80B4A580  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4A584  4E 80 00 20 */	blr 
