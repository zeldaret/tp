lbl_8007A52C:
/* 8007A52C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007A530  7C 08 02 A6 */	mflr r0
/* 8007A534  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007A538  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A53C  48 2E 7C 99 */	bl _savegpr_27
/* 8007A540  7C 7C 1B 78 */	mr r28, r3
/* 8007A544  7C 9D 23 78 */	mr r29, r4
/* 8007A548  7C BB 2B 78 */	mr r27, r5
/* 8007A54C  7C DE 33 78 */	mr r30, r6
/* 8007A550  38 BD 00 24 */	addi r5, r29, 0x24
/* 8007A554  80 03 00 A8 */	lwz r0, 0xa8(r3)
/* 8007A558  57 63 28 34 */	slwi r3, r27, 5
/* 8007A55C  38 63 00 04 */	addi r3, r3, 4
/* 8007A560  7C 60 1A 14 */	add r3, r0, r3
/* 8007A564  38 83 00 0C */	addi r4, r3, 0xc
/* 8007A568  38 C5 00 0C */	addi r6, r5, 0xc
/* 8007A56C  48 1E EA E5 */	bl cM3d_Cross_MinMaxBoxLine__FPC3VecPC3VecPC3VecPC3Vec
/* 8007A570  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A574  40 82 00 0C */	bne lbl_8007A580
/* 8007A578  38 60 00 00 */	li r3, 0
/* 8007A57C  48 00 00 C4 */	b lbl_8007A640
lbl_8007A580:
/* 8007A580  7F 83 E3 78 */	mr r3, r28
/* 8007A584  7F 64 DB 78 */	mr r4, r27
/* 8007A588  80 BD 00 04 */	lwz r5, 4(r29)
/* 8007A58C  7F C6 F3 78 */	mr r6, r30
/* 8007A590  81 9C 00 04 */	lwz r12, 4(r28)
/* 8007A594  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8007A598  7D 89 03 A6 */	mtctr r12
/* 8007A59C  4E 80 04 21 */	bctrl 
/* 8007A5A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A5A4  41 82 00 0C */	beq lbl_8007A5B0
/* 8007A5A8  38 60 00 00 */	li r3, 0
/* 8007A5AC  48 00 00 94 */	b lbl_8007A640
lbl_8007A5B0:
/* 8007A5B0  3B E0 00 00 */	li r31, 0
/* 8007A5B4  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007A5B8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007A5BC  1F 7B 00 34 */	mulli r27, r27, 0x34
/* 8007A5C0  7C 60 DA 14 */	add r3, r0, r27
/* 8007A5C4  A0 A3 00 2E */	lhz r5, 0x2e(r3)
/* 8007A5C8  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007A5CC  41 82 00 1C */	beq lbl_8007A5E8
/* 8007A5D0  7F 83 E3 78 */	mr r3, r28
/* 8007A5D4  7F A4 EB 78 */	mr r4, r29
/* 8007A5D8  4B FF FD C9 */	bl LineCheckRp__4cBgWFP11cBgS_LinChki
/* 8007A5DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A5E0  41 82 00 08 */	beq lbl_8007A5E8
/* 8007A5E4  3B E0 00 01 */	li r31, 1
lbl_8007A5E8:
/* 8007A5E8  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007A5EC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007A5F0  7C 60 DA 14 */	add r3, r0, r27
/* 8007A5F4  A3 63 00 28 */	lhz r27, 0x28(r3)
lbl_8007A5F8:
/* 8007A5F8  3C 1B 00 00 */	addis r0, r27, 0
/* 8007A5FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007A600  41 82 00 3C */	beq lbl_8007A63C
/* 8007A604  7F 83 E3 78 */	mr r3, r28
/* 8007A608  7F A4 EB 78 */	mr r4, r29
/* 8007A60C  7F 65 DB 78 */	mr r5, r27
/* 8007A610  38 DE 00 01 */	addi r6, r30, 1
/* 8007A614  4B FF FF 19 */	bl LineCheckGrpRp__4cBgWFP11cBgS_LinChkii
/* 8007A618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A61C  41 82 00 08 */	beq lbl_8007A624
/* 8007A620  3B E0 00 01 */	li r31, 1
lbl_8007A624:
/* 8007A624  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007A628  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007A62C  1C 7B 00 34 */	mulli r3, r27, 0x34
/* 8007A630  38 03 00 26 */	addi r0, r3, 0x26
/* 8007A634  7F 64 02 2E */	lhzx r27, r4, r0
/* 8007A638  4B FF FF C0 */	b lbl_8007A5F8
lbl_8007A63C:
/* 8007A63C  7F E3 FB 78 */	mr r3, r31
lbl_8007A640:
/* 8007A640  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A644  48 2E 7B DD */	bl _restgpr_27
/* 8007A648  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007A64C  7C 08 03 A6 */	mtlr r0
/* 8007A650  38 21 00 20 */	addi r1, r1, 0x20
/* 8007A654  4E 80 00 20 */	blr 
