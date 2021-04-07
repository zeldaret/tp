lbl_801FC520:
/* 801FC520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC524  7C 08 02 A6 */	mflr r0
/* 801FC528  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC52C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC530  7C 7F 1B 78 */	mr r31, r3
/* 801FC534  48 00 0B 61 */	bl markMemSize__5dMw_cFv
/* 801FC538  38 60 21 A4 */	li r3, 0x21a4
/* 801FC53C  48 0D 27 11 */	bl __nw__FUl
/* 801FC540  7C 60 1B 79 */	or. r0, r3, r3
/* 801FC544  41 82 00 0C */	beq lbl_801FC550
/* 801FC548  4B FF 31 59 */	bl __ct__12dMenu_save_cFv
/* 801FC54C  7C 60 1B 78 */	mr r0, r3
lbl_801FC550:
/* 801FC550  90 1F 01 20 */	stw r0, 0x120(r31)
/* 801FC554  38 00 00 01 */	li r0, 1
/* 801FC558  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 801FC55C  98 03 01 BC */	stb r0, 0x1bc(r3)
/* 801FC560  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 801FC564  4B FF 32 49 */	bl _create__12dMenu_save_cFv
/* 801FC568  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 801FC56C  4B FF 43 CD */	bl initialize__12dMenu_save_cFv
/* 801FC570  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 801FC574  28 00 00 00 */	cmplwi r0, 0
/* 801FC578  40 82 00 44 */	bne lbl_801FC5BC
/* 801FC57C  38 60 00 08 */	li r3, 8
/* 801FC580  48 0D 26 CD */	bl __nw__FUl
/* 801FC584  28 03 00 00 */	cmplwi r3, 0
/* 801FC588  41 82 00 30 */	beq lbl_801FC5B8
/* 801FC58C  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801FC590  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801FC594  90 03 00 00 */	stw r0, 0(r3)
/* 801FC598  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha /* 0x803BF0D4@ha */
/* 801FC59C  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l /* 0x803BF0D4@l */
/* 801FC5A0  90 03 00 00 */	stw r0, 0(r3)
/* 801FC5A4  38 80 00 00 */	li r4, 0
/* 801FC5A8  98 83 00 04 */	stb r4, 4(r3)
/* 801FC5AC  38 00 00 FF */	li r0, 0xff
/* 801FC5B0  98 03 00 05 */	stb r0, 5(r3)
/* 801FC5B4  98 83 00 06 */	stb r4, 6(r3)
lbl_801FC5B8:
/* 801FC5B8  90 7F 01 0C */	stw r3, 0x10c(r31)
lbl_801FC5BC:
/* 801FC5BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC5C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC5C4  7C 08 03 A6 */	mtlr r0
/* 801FC5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC5CC  4E 80 00 20 */	blr 
