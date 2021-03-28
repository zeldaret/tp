lbl_8018A564:
/* 8018A564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A568  7C 08 02 A6 */	mflr r0
/* 8018A56C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A570  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018A574  7C 7F 1B 78 */	mr r31, r3
/* 8018A578  A8 03 03 AC */	lha r0, 0x3ac(r3)
/* 8018A57C  2C 00 00 00 */	cmpwi r0, 0
/* 8018A580  41 82 00 48 */	beq lbl_8018A5C8
/* 8018A584  38 00 00 A9 */	li r0, 0xa9
/* 8018A588  90 01 00 10 */	stw r0, 0x10(r1)
/* 8018A58C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018A590  38 81 00 10 */	addi r4, r1, 0x10
/* 8018A594  38 A0 00 00 */	li r5, 0
/* 8018A598  38 C0 00 00 */	li r6, 0
/* 8018A59C  38 E0 00 00 */	li r7, 0
/* 8018A5A0  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018A5A4  FC 40 08 90 */	fmr f2, f1
/* 8018A5A8  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018A5AC  FC 80 18 90 */	fmr f4, f3
/* 8018A5B0  39 00 00 00 */	li r8, 0
/* 8018A5B4  48 12 1F 59 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018A5B8  A8 7F 03 AC */	lha r3, 0x3ac(r31)
/* 8018A5BC  38 03 FF FF */	addi r0, r3, -1
/* 8018A5C0  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018A5C4  48 00 01 20 */	b lbl_8018A6E4
lbl_8018A5C8:
/* 8018A5C8  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 8018A5CC  2C 00 00 02 */	cmpwi r0, 2
/* 8018A5D0  40 82 00 78 */	bne lbl_8018A648
/* 8018A5D4  38 00 00 AF */	li r0, 0xaf
/* 8018A5D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018A5DC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018A5E0  38 81 00 0C */	addi r4, r1, 0xc
/* 8018A5E4  38 A0 00 00 */	li r5, 0
/* 8018A5E8  38 C0 00 00 */	li r6, 0
/* 8018A5EC  38 E0 00 00 */	li r7, 0
/* 8018A5F0  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018A5F4  FC 40 08 90 */	fmr f2, f1
/* 8018A5F8  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018A5FC  FC 80 18 90 */	fmr f4, f3
/* 8018A600  39 00 00 00 */	li r8, 0
/* 8018A604  48 12 13 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018A608  7F E3 FB 78 */	mr r3, r31
/* 8018A60C  38 80 00 48 */	li r4, 0x48
/* 8018A610  38 A0 00 00 */	li r5, 0
/* 8018A614  38 C0 00 00 */	li r6, 0
/* 8018A618  48 00 2A CD */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 8018A61C  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8018A620  48 00 7A ED */	bl closeInit__15dFile_warning_cFv
/* 8018A624  7F E3 FB 78 */	mr r3, r31
/* 8018A628  38 80 00 01 */	li r4, 1
/* 8018A62C  48 00 2D 75 */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 8018A630  7F E3 FB 78 */	mr r3, r31
/* 8018A634  38 80 00 01 */	li r4, 1
/* 8018A638  48 00 2E C1 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018A63C  38 00 00 27 */	li r0, 0x27
/* 8018A640  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018A644  48 00 00 A0 */	b lbl_8018A6E4
lbl_8018A648:
/* 8018A648  2C 00 00 01 */	cmpwi r0, 1
/* 8018A64C  40 82 00 98 */	bne lbl_8018A6E4
/* 8018A650  38 00 00 AA */	li r0, 0xaa
/* 8018A654  90 01 00 08 */	stw r0, 8(r1)
/* 8018A658  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018A65C  38 81 00 08 */	addi r4, r1, 8
/* 8018A660  38 A0 00 00 */	li r5, 0
/* 8018A664  38 C0 00 00 */	li r6, 0
/* 8018A668  38 E0 00 00 */	li r7, 0
/* 8018A66C  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018A670  FC 40 08 90 */	fmr f2, f1
/* 8018A674  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018A678  FC 80 18 90 */	fmr f4, f3
/* 8018A67C  39 00 00 00 */	li r8, 0
/* 8018A680  48 12 13 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018A684  38 80 00 00 */	li r4, 0
/* 8018A688  98 9F 03 B1 */	stb r4, 0x3b1(r31)
/* 8018A68C  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018A690  54 00 10 3A */	slwi r0, r0, 2
/* 8018A694  7C 7F 02 14 */	add r3, r31, r0
/* 8018A698  80 63 01 58 */	lwz r3, 0x158(r3)
/* 8018A69C  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A6A0  88 1F 02 6D */	lbz r0, 0x26d(r31)
/* 8018A6A4  54 00 10 3A */	slwi r0, r0, 2
/* 8018A6A8  7C 7F 02 14 */	add r3, r31, r0
/* 8018A6AC  80 63 01 58 */	lwz r3, 0x158(r3)
/* 8018A6B0  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A6B4  88 1F 02 6D */	lbz r0, 0x26d(r31)
/* 8018A6B8  54 00 10 3A */	slwi r0, r0, 2
/* 8018A6BC  7C 7F 02 14 */	add r3, r31, r0
/* 8018A6C0  80 63 02 2C */	lwz r3, 0x22c(r3)
/* 8018A6C4  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A6C8  88 1F 02 6D */	lbz r0, 0x26d(r31)
/* 8018A6CC  54 00 10 3A */	slwi r0, r0, 2
/* 8018A6D0  7C 7F 02 14 */	add r3, r31, r0
/* 8018A6D4  80 63 02 20 */	lwz r3, 0x220(r3)
/* 8018A6D8  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A6DC  38 00 00 23 */	li r0, 0x23
/* 8018A6E0  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_8018A6E4:
/* 8018A6E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018A6E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018A6EC  7C 08 03 A6 */	mtlr r0
/* 8018A6F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8018A6F4  4E 80 00 20 */	blr 
