lbl_8018E2B4:
/* 8018E2B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E2B8  7C 08 02 A6 */	mflr r0
/* 8018E2BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E2C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018E2C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8018E2C8  7C 7F 1B 78 */	mr r31, r3
/* 8018E2CC  7C 9E 23 78 */	mr r30, r4
/* 8018E2D0  2C 05 00 00 */	cmpwi r5, 0
/* 8018E2D4  41 82 00 1C */	beq lbl_8018E2F0
/* 8018E2D8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8018E2DC  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8018E2E0  38 A0 00 00 */	li r5, 0
/* 8018E2E4  38 C0 00 00 */	li r6, 0
/* 8018E2E8  4B FF ED FD */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 8018E2EC  48 00 00 14 */	b lbl_8018E300
lbl_8018E2F0:
/* 8018E2F0  38 80 00 01 */	li r4, 1
/* 8018E2F4  38 A0 00 00 */	li r5, 0
/* 8018E2F8  38 C0 00 00 */	li r6, 0
/* 8018E2FC  4B FF ED E9 */	bl headerTxtSet__14dFile_select_cFUsUcUc
lbl_8018E300:
/* 8018E300  38 00 00 00 */	li r0, 0
/* 8018E304  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8018E308  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018E30C  54 00 10 3A */	slwi r0, r0, 2
/* 8018E310  7C 7F 02 14 */	add r3, r31, r0
/* 8018E314  80 63 01 38 */	lwz r3, 0x138(r3)
/* 8018E318  38 80 00 FF */	li r4, 0xff
/* 8018E31C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018E320  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018E324  7D 89 03 A6 */	mtctr r12
/* 8018E328  4E 80 04 21 */	bctrl 
/* 8018E32C  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018E330  68 00 00 01 */	xori r0, r0, 1
/* 8018E334  54 00 10 3A */	slwi r0, r0, 2
/* 8018E338  7C 7F 02 14 */	add r3, r31, r0
/* 8018E33C  80 63 01 38 */	lwz r3, 0x138(r3)
/* 8018E340  38 80 00 00 */	li r4, 0
/* 8018E344  81 83 00 00 */	lwz r12, 0(r3)
/* 8018E348  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018E34C  7D 89 03 A6 */	mtctr r12
/* 8018E350  4E 80 04 21 */	bctrl 
/* 8018E354  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018E358  54 00 10 3A */	slwi r0, r0, 2
/* 8018E35C  7C 7F 02 14 */	add r3, r31, r0
/* 8018E360  80 63 01 38 */	lwz r3, 0x138(r3)
/* 8018E364  80 A3 00 04 */	lwz r5, 4(r3)
/* 8018E368  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8018E36C  7F C4 F3 78 */	mr r4, r30
/* 8018E370  38 C0 00 00 */	li r6, 0
/* 8018E374  80 FF 00 18 */	lwz r7, 0x18(r31)
/* 8018E378  39 00 00 00 */	li r8, 0
/* 8018E37C  39 20 00 00 */	li r9, 0
/* 8018E380  81 83 00 00 */	lwz r12, 0(r3)
/* 8018E384  81 8C 00 08 */	lwz r12, 8(r12)
/* 8018E388  7D 89 03 A6 */	mtctr r12
/* 8018E38C  4E 80 04 21 */	bctrl 
/* 8018E390  88 1F 01 4A */	lbz r0, 0x14a(r31)
/* 8018E394  28 00 00 00 */	cmplwi r0, 0
/* 8018E398  40 82 00 10 */	bne lbl_8018E3A8
/* 8018E39C  88 1F 01 4B */	lbz r0, 0x14b(r31)
/* 8018E3A0  28 00 00 00 */	cmplwi r0, 0
/* 8018E3A4  41 82 00 14 */	beq lbl_8018E3B8
lbl_8018E3A8:
/* 8018E3A8  7F E3 FB 78 */	mr r3, r31
/* 8018E3AC  38 80 0B 2B */	li r4, 0xb2b
/* 8018E3B0  38 A0 0B 21 */	li r5, 0xb21
/* 8018E3B4  4B FF FD 7D */	bl errorMoveAnmInitSet__14dFile_select_cFii
lbl_8018E3B8:
/* 8018E3B8  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 8018E3BC  28 00 00 00 */	cmplwi r0, 0
/* 8018E3C0  40 82 00 10 */	bne lbl_8018E3D0
/* 8018E3C4  88 1F 00 B9 */	lbz r0, 0xb9(r31)
/* 8018E3C8  28 00 00 00 */	cmplwi r0, 0
/* 8018E3CC  41 82 00 20 */	beq lbl_8018E3EC
lbl_8018E3D0:
/* 8018E3D0  38 00 00 00 */	li r0, 0
/* 8018E3D4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8018E3D8  90 03 00 08 */	stw r0, 8(r3)
/* 8018E3DC  7F E3 FB 78 */	mr r3, r31
/* 8018E3E0  38 80 00 21 */	li r4, 0x21
/* 8018E3E4  38 A0 00 01 */	li r5, 1
/* 8018E3E8  4B FF 68 CD */	bl selectDataBaseMoveAnmInitSet__14dFile_select_cFii
lbl_8018E3EC:
/* 8018E3EC  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8018E3F0  28 00 00 00 */	cmplwi r0, 0
/* 8018E3F4  40 82 00 10 */	bne lbl_8018E404
/* 8018E3F8  88 1F 02 81 */	lbz r0, 0x281(r31)
/* 8018E3FC  28 00 00 00 */	cmplwi r0, 0
/* 8018E400  41 82 00 14 */	beq lbl_8018E414
lbl_8018E404:
/* 8018E404  7F E3 FB 78 */	mr r3, r31
/* 8018E408  38 80 04 7D */	li r4, 0x47d
/* 8018E40C  38 A0 04 73 */	li r5, 0x473
/* 8018E410  4B FF A7 AD */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
lbl_8018E414:
/* 8018E414  88 1F 03 60 */	lbz r0, 0x360(r31)
/* 8018E418  28 00 00 00 */	cmplwi r0, 0
/* 8018E41C  40 82 00 10 */	bne lbl_8018E42C
/* 8018E420  88 1F 02 83 */	lbz r0, 0x283(r31)
/* 8018E424  28 00 00 00 */	cmplwi r0, 0
/* 8018E428  41 82 00 14 */	beq lbl_8018E43C
lbl_8018E42C:
/* 8018E42C  7F E3 FB 78 */	mr r3, r31
/* 8018E430  38 80 03 29 */	li r4, 0x329
/* 8018E434  38 A0 03 1F */	li r5, 0x31f
/* 8018E438  4B FF 87 11 */	bl menuMoveAnmInitSet__14dFile_select_cFii
lbl_8018E43C:
/* 8018E43C  88 1F 01 28 */	lbz r0, 0x128(r31)
/* 8018E440  28 00 00 00 */	cmplwi r0, 0
/* 8018E444  41 82 00 14 */	beq lbl_8018E458
/* 8018E448  7F E3 FB 78 */	mr r3, r31
/* 8018E44C  38 80 0D 29 */	li r4, 0xd29
/* 8018E450  38 A0 0D 1F */	li r5, 0xd1f
/* 8018E454  48 00 1C 21 */	bl nameMoveAnmInitSet__14dFile_select_cFii
lbl_8018E458:
/* 8018E458  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 8018E45C  28 00 00 00 */	cmplwi r0, 0
/* 8018E460  41 82 00 14 */	beq lbl_8018E474
/* 8018E464  7F E3 FB 78 */	mr r3, r31
/* 8018E468  38 80 0D 29 */	li r4, 0xd29
/* 8018E46C  38 A0 0D 1F */	li r5, 0xd1f
/* 8018E470  4B FF 97 79 */	bl copySelMoveAnmInitSet__14dFile_select_cFii
lbl_8018E474:
/* 8018E474  7F E3 FB 78 */	mr r3, r31
/* 8018E478  38 80 00 00 */	li r4, 0
/* 8018E47C  4B FF EF 25 */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 8018E480  7F E3 FB 78 */	mr r3, r31
/* 8018E484  38 80 00 00 */	li r4, 0
/* 8018E488  4B FF F0 71 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018E48C  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8018E490  48 00 3C D1 */	bl init__15dFile_warning_cFv
/* 8018E494  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018E498  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018E49C  48 00 6E 05 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018E4A0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8018E4A4  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018E4A8  48 00 6D F9 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018E4AC  38 00 00 16 */	li r0, 0x16
/* 8018E4B0  98 1F 02 71 */	stb r0, 0x271(r31)
/* 8018E4B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018E4B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018E4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018E4C0  7C 08 03 A6 */	mtlr r0
/* 8018E4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018E4C8  4E 80 00 20 */	blr 
